package edu.ban7.e3chatbotback.service;

import com.google.genai.Client;
import com.google.genai.types.GenerateContentResponse;
import org.springframework.stereotype.Service;

@Service
public class ChatService {

    private final Client client;

    public ChatService(Client client) {
        this.client = client;
    }

    public String askGemini(String prompt) {
        try {
            GenerateContentResponse response = client.models.generateContent(
                    "gemini-3.1-flash-lite-preview", prompt, null);
            return response.text();
        } catch (Exception e) {
            return "Erreur : " + e.getMessage();
        }
    }
}
