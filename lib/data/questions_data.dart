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
      Question(
        id: 11,
        title: "Função Simples",
        description: "Crie uma função que receba dois números e retorne a soma deles.",
        category: "Funções",
        difficulty: "Médio",
      ),
      Question(
        id: 12,
        title: "Função com Valor Padrão",
        description: "Faça uma função que receba um nome e exiba uma saudação. Se nenhum nome for passado, use \"Visitante\".",
        category: "Funções",
        difficulty: "Médio",
      ),
      Question(
        id: 13,
        title: "Função Recursiva",
        description: "Calcule o fatorial de um número.",
        category: "Funções",
        difficulty: "Médio",
      ),
      Question(
        id: 14,
        title: "Manipulação de Listas",
        description: "Ordene uma lista de números.",
        category: "Coleções",
        difficulty: "Médio",
      ),
      Question(
        id: 15,
        title: "Filtro em Listas",
        description: "Filtre os números pares de uma lista usando .where().",
        category: "Coleções",
        difficulty: "Médio",
      ),
      Question(
        id: 16,
        title: "Exceções",
        description: "Crie um programa que tente dividir um número por zero e trate o erro.",
        category: "Tratamento de Erros",
        difficulty: "Médio",
      ),
      Question(
        id: 17,
        title: "Classe e Objeto",
        description: "Crie uma classe Carro com propriedades marca, modelo e ano, e um método para exibir as informações.",
        category: "Orientação a Objetos",
        difficulty: "Médio",
      ),
      Question(
        id: 18,
        title: "Encapsulamento",
        description: "Modifique a classe Carro para que modelo seja privado e crie métodos getter e setter.",
        category: "Orientação a Objetos",
        difficulty: "Médio",
      ),
      Question(
        id: 19,
        title: "Herança",
        description: "Crie uma classe Animal com um método emitirSom(), e classes Cachorro e Gato que herdam Animal e implementam emitirSom().",
        category: "Orientação a Objetos",
        difficulty: "Difícil",
      ),
      Question(
        id: 20,
        title: "Mixin",
        description: "Crie um mixin chamado Volante e aplique-o a uma classe Carro.",
        category: "Orientação a Objetos",
        difficulty: "Difícil",
      ),
      Question(
        id: 21,
        title: "Futuro e Assincronismo",
        description: "Simule uma requisição assíncrona usando Future.delayed().",
        category: "Assincronismo",
        difficulty: "Difícil",
      ),
      Question(
        id: 22,
        title: "Stream",
        description: "Crie uma Stream que emita números de 1 a 5 com intervalo de 1 segundo entre eles.",
        category: "Assincronismo",
        difficulty: "Difícil",
      ),
      Question(
        id: 23,
        title: "Manipulação de Arquivos",
        description: "Leia e escreva em um arquivo usando dart:io.",
        category: "I/O",
        difficulty: "Difícil",
      ),
      Question(
        id: 24,
        title: "Uso de Pacotes Externos",
        description: "Instale o pacote http e faça uma requisição GET para uma API pública.",
        category: "Pacotes",
        difficulty: "Difícil",
      ),
      Question(
        id: 25,
        title: "Programação Funcional",
        description: "Use map, reduce e where para transformar uma lista de números.",
        category: "Funcional",
        difficulty: "Difícil",
      ),
      Question(
        id: 26,
        title: "Generics",
        description: "Crie uma classe genérica Caixa<T> que armazena um valor de qualquer tipo.",
        category: "Avançado",
        difficulty: "Difícil",
      ),
      Question(
        id: 27,
        title: "Extensão de Classes",
        description: "Crie uma extensão para a classe String que adiciona um método toCamelCase().",
        category: "Avançado",
        difficulty: "Difícil",
      ),
      Question(
        id: 28,
        title: "Operadores Avançados",
        description: "Use o operador ?? (null-aware) para tratar valores nulos em um mapa de configurações.",
        category: "Avançado",
        difficulty: "Difícil",
      ),
    ];
  }

  static List<String> getCategories() {
    return [
      'Básico',
      'Controle de Fluxo',
      'Loops',
      'Coleções',
      'Funções',
      'Tratamento de Erros',
      'Orientação a Objetos',
      'Assincronismo',
      'I/O',
      'Pacotes',
      'Funcional',
      'Avançado',
    ];
  }

  static List<Question> getQuestionsByCategory(String category) {
    return getAllQuestions().where((question) => question.category == category).toList();
  }
}
