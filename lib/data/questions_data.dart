import '../models/question.dart';

class QuestionsData {
  static List<Question> getAllQuestions() {
    return [
      Question(
        id: 1,
        title: "Hello, Dart!",
        description: "Imprima \"Hello, Dart!\"",
        category: "Básico",
        difficulty: "Fácil",
      ),
      Question(
        id: 2,
        title: "Variáveis e Tipos",
        description: "Crie variáveis do tipo int, double, String, bool e imprima seus valores.",
        category: "Básico",
        difficulty: "Fácil",
      ),
      Question(
        id: 3,
        title: "Operações Matemáticas",
        description: "Peça dois números ao usuário e exiba a soma, subtração, multiplicação e divisão.",
        category: "Básico",
        difficulty: "Fácil",
      ),
      Question(
        id: 4,
        title: "Conversão de Tipos",
        description: "Converta um número double para int e vice-versa.",
        category: "Básico",
        difficulty: "Fácil",
      ),
      Question(
        id: 5,
        title: "Estruturas Condicionais",
        description: "Verifique se um número é par ou ímpar.",
        category: "Controle de Fluxo",
        difficulty: "Fácil",
      ),
      Question(
        id: 6,
        title: "Switch Case",
        description: "Crie um programa que leia um dia da semana e exiba uma mensagem correspondente.",
        category: "Controle de Fluxo",
        difficulty: "Fácil",
      ),
      Question(
        id: 7,
        title: "Loop for",
        description: "Exiba os números de 1 a 10.",
        category: "Loops",
        difficulty: "Fácil",
      ),
      Question(
        id: 8,
        title: "Loop while",
        description: "Some os números de 1 a 100 e exiba o resultado.",
        category: "Loops",
        difficulty: "Fácil",
      ),
      Question(
        id: 9,
        title: "Lista Simples",
        description: "Crie uma lista de frutas e imprima cada uma delas usando um loop.",
        category: "Coleções",
        difficulty: "Fácil",
      ),
      Question(
        id: 10,
        title: "Mapa (Dicionário)",
        description: "Crie um mapa com nomes e idades e exiba os valores.",
        category: "Coleções",
        difficulty: "Fácil",
      ),
    ];
  }

  static List<String> getCategories() {
    return [
      'Básico',
      'Controle de Fluxo',
      'Loops',
      'Coleções',
    ];
  }

  static List<Question> getQuestionsByCategory(String category) {
    return getAllQuestions().where((question) => question.category == category).toList();
  }
}
