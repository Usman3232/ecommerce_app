class ChatModel {
  final String message;
  final bool isme;

  ChatModel({required this.message, required this.isme});
}

List<ChatModel> chat_model = [
  ChatModel(message: "Hello, good morning", isme: true),
  ChatModel(message: "Good morning", isme: false),
  ChatModel(message: "Can i help you ?", isme: false),
  ChatModel(
      message:
          "I want to ask for the stock iphone 12 pro with purple color is it still available?",
      isme: true),
  ChatModel(
      message:
          "Sorry for the stock iphone 12 pro with the purple color variant, it's out of stock",
      isme: false),
  ChatModel(message: "Ohh, I see", isme: true),
  ChatModel(message: "How about iphone 13 pro already available?", isme: true),
];
