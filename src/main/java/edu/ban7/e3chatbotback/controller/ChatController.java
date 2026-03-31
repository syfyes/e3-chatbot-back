package edu.ban7.e3chatbotback.controller;

import com.google.genai.Client;
import com.google.genai.types.GenerateContentResponse;
import edu.ban7.e3chatbotback.dao.RecipeDao;
import edu.ban7.e3chatbotback.model.Question;
import edu.ban7.e3chatbotback.model.Recipe;
import edu.ban7.e3chatbotback.security.IsUser;
import edu.ban7.e3chatbotback.service.ChatService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@CrossOrigin
@RequiredArgsConstructor
public class ChatController {

    private final RecipeDao recipeDao;
    private final ChatService chatService;

    @PostMapping(value = "/ask", produces = MediaType.TEXT_PLAIN_VALUE)
    @IsUser
    public ResponseEntity<String> ask(
            @RequestBody Question question
        ) {
        String prompt = "Un client a cette demande : '"
                + question.getContent()
                + "' parmis les recettes suivantes, " +
                "donne les 3 recettes correspondant le mieux, " +
                "répond comme un serveur répondrait à un client : ";

        List<Recipe> recipes = recipeDao.findAll();

        for (Recipe recipe : recipes) {

            String listeIngredients = recipe.getProducts().stream()
                    .map(p -> p.getName())
                    .collect(Collectors.joining(","));

            String listeEtiquettes = recipe.getTags().stream()
                    .map(p -> p.getName())
                    .collect(Collectors.joining(","));

            prompt += "{" +
                    "'name' : " + recipe.getName() + ", " +
                    "'description' : " + recipe.getDescription() + ", " +
                    "'products' : [" + listeIngredients + "]," +
                    "'tags' : [" + listeEtiquettes + "]}";
        }

        String reponse = chatService.askGemini(prompt);

        return new ResponseEntity<>(reponse, HttpStatus.OK);
    }
}
