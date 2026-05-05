package edu.ban7.e3chatbotback.controller;

import edu.ban7.e3chatbotback.dao.RecipeDao;
import edu.ban7.e3chatbotback.model.Recipe;
import edu.ban7.e3chatbotback.service.ChatService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@CrossOrigin
@RequiredArgsConstructor
public class ChatController {

    private final RecipeDao recipeDao;
    private final ChatService chatService;

    @PostMapping(
            value = "/chat",
            consumes = { MediaType.APPLICATION_JSON_VALUE, MediaType.TEXT_PLAIN_VALUE },
            produces = MediaType.TEXT_PLAIN_VALUE
    )
    public ResponseEntity<String> chat(@RequestBody(required = false) Object body) {

        String question;

        if (body == null) {
            return new ResponseEntity<>("Question vide.", HttpStatus.BAD_REQUEST);
        }

        if (body instanceof String) {
            question = (String) body;
        } else if (body instanceof Map) {
            question = (String) ((Map<?, ?>) body).get("content");
        } else {
            question = body.toString();
        }

        if (question == null || question.isBlank()) {
            return new ResponseEntity<>("Question vide.", HttpStatus.BAD_REQUEST);
        }

        System.out.println("✅ CHAT REÇU : " + question);

        StringBuilder prompt = new StringBuilder();
        prompt.append("Un client a cette demande : '")
                .append(question)
                .append("'. Parmi les recettes suivantes, ")
                .append("donne les 3 les plus pertinentes, ")
                .append("réponds comme un serveur à un client : ");

        List<Recipe> recipes = recipeDao.findAll();

        for (Recipe recipe : recipes) {
            String ingredients = recipe.getProducts().stream()
                    .map(p -> p.getName())
                    .collect(Collectors.joining(", "));

            String tags = recipe.getTags().stream()
                    .map(t -> t.getName())
                    .collect(Collectors.joining(", "));

            prompt.append("\n{ ")
                    .append("name: ").append(recipe.getName()).append(", ")
                    .append("description: ").append(recipe.getDescription()).append(", ")
                    .append("ingredients: [").append(ingredients).append("], ")
                    .append("tags: [").append(tags).append("]")
                    .append(" }");
        }

        String response = chatService.askGemini(prompt.toString());

        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}