import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionDetailScreen extends StatefulWidget {
  final Question question;

  const QuestionDetailScreen({super.key, required this.question});

  @override
  State<QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<QuestionDetailScreen> {
  // Controladores para os campos de texto da questão 3
  final TextEditingController _numero1Controller = TextEditingController();
  final TextEditingController _numero2Controller = TextEditingController();
  String _resultadoCalculos = '';
  bool _mostrarResultado = false;

  // Controlador para a questão 4
  final TextEditingController _numeroController = TextEditingController();
  String _resultadoConversao = '';
  bool _mostrarResultadoConversao = false;

  // Controlador para a questão 5
  final TextEditingController _numeroParImparController = TextEditingController();
  String _resultadoParImpar = '';
  bool _mostrarResultadoParImpar = false;

  // Controlador para a questão 6
  final TextEditingController _diaSemanaController = TextEditingController();
  String _resultadoSwitchCase = '';
  bool _mostrarResultadoSwitchCase = false;

  // Controlador para a questão 7
  String _resultadoLoopFor = '';
  bool _mostrarResultadoLoopFor = false;

  // Controlador para a questão 8
  String _resultadoLoopWhile = '';
  bool _mostrarResultadoLoopWhile = false;

  // Controlador para a questão 9
  String _resultadoLista = '';
  bool _mostrarResultadoLista = false;

  // Controlador para a questão 10
  String _resultadoMapa = '';
  bool _mostrarResultadoMapa = false;

  @override
  void dispose() {
    _numero1Controller.dispose();
    _numero2Controller.dispose();
    _numeroController.dispose();
    _numeroParImparController.dispose();
    _diaSemanaController.dispose();
    super.dispose();
  }

  String _runQuestion2Example() {
    // Simulando a execução do código da questão 2 - apenas os 4 tipos básicos
    int numeroInteiro = 42;
    double numeroDecimal = 3.14159;
    String texto = "Olá, Dart!";
    bool verdadeiroOuFalso = true;
    
    String output = '';
    output += 'Número inteiro: $numeroInteiro\n';
    output += 'Número decimal: $numeroDecimal\n';
    output += 'Texto: $texto\n';
    output += 'Boolean: $verdadeiroOuFalso';
    
    return output;
  }

  void _calcularOperacoes() {
    String texto1 = _numero1Controller.text.trim();
    String texto2 = _numero2Controller.text.trim();
    
    if (texto1.isEmpty || texto2.isEmpty) {
      setState(() {
        _resultadoCalculos = 'Por favor, digite ambos os números!';
        _mostrarResultado = true;
      });
      return;
    }

    try {
      double numero1 = double.parse(texto1);
      double numero2 = double.parse(texto2);
      
      double soma = numero1 + numero2;
      double subtracao = numero1 - numero2;
      double multiplicacao = numero1 * numero2;
      
      String output = '';
      output += 'Primeiro número: $numero1\n';
      output += 'Segundo número: $numero2\n';
      output += '\nOperações Matemáticas:\n';
      output += 'Soma: $numero1 + $numero2 = $soma\n';
      output += 'Subtração: $numero1 - $numero2 = $subtracao\n';
      output += 'Multiplicação: $numero1 × $numero2 = $multiplicacao\n';
      
      if (numero2 != 0) {
        double divisao = numero1 / numero2;
        output += 'Divisão: $numero1 ÷ $numero2 = ${divisao.toStringAsFixed(2)}';
      } else {
        output += 'Divisão: Não é possível dividir por zero!';
      }
      
      setState(() {
        _resultadoCalculos = output;
        _mostrarResultado = true;
      });
    } catch (e) {
      setState(() {
        _resultadoCalculos = 'Erro: Digite apenas números válidos!';
        _mostrarResultado = true;
      });
    }
  }

  void _realizarConversoes() {
    String texto = _numeroController.text.trim();
    
    if (texto.isEmpty) {
      setState(() {
        _resultadoConversao = 'Por favor, digite um número!';
        _mostrarResultadoConversao = true;
      });
      return;
    }

    try {
      // Tentando converter a entrada para double primeiro
      double numeroDouble = double.parse(texto);
      
      // Conversão de double para int (trunca a parte decimal)
      int numeroInt = numeroDouble.toInt();
      
      // Conversão de int de volta para double
      double intParaDouble = numeroInt.toDouble();
      
      String output = '';
      output += 'Número digitado: $numeroDouble\n\n';
      output += 'Conversões de Tipos:\n';
      output += '• Double original: $numeroDouble\n';
      output += '• Convertido para int: $numeroInt\n';
      output += '• Int convertido de volta para double: $intParaDouble\n\n';
      output += 'Observações:\n';
      output += '• toInt() trunca (remove) a parte decimal\n';
      output += '• toDouble() adiciona .0 ao número inteiro\n';
      
      if (numeroDouble != numeroDouble.toInt()) {
        double parteDecimal = numeroDouble - numeroInt;
        output += '• Parte decimal removida: ${parteDecimal.toStringAsFixed(6)}';
      } else {
        output += '• Nenhuma parte decimal foi perdida na conversão';
      }
      
      setState(() {
        _resultadoConversao = output;
        _mostrarResultadoConversao = true;
      });
    } catch (e) {
      setState(() {
        _resultadoConversao = 'Erro: Digite apenas números válidos!';
        _mostrarResultadoConversao = true;
      });
    }
  }

  void _verificarParImpar() {
    String texto = _numeroParImparController.text.trim();
    
    if (texto.isEmpty) {
      setState(() {
        _resultadoParImpar = 'Por favor, digite um número!';
        _mostrarResultadoParImpar = true;
      });
      return;
    }

    try {
      // Convertendo para int (arredondando se necessário)
      int numero = double.parse(texto).round();
      
      // Verificando se é par ou ímpar
      bool ehPar = numero % 2 == 0;
      
      String output = '';
      output += 'Número digitado: $numero\n\n';
      output += 'Verificação Par/Ímpar:\n';
      output += '• Operação: $numero % 2 = ${numero % 2}\n';
      output += '• Resultado: $numero é ${ehPar ? "PAR" : "ÍMPAR"}';
      
      setState(() {
        _resultadoParImpar = output;
        _mostrarResultadoParImpar = true;
      });
    } catch (e) {
      setState(() {
        _resultadoParImpar = 'Erro: Digite apenas números válidos!';
        _mostrarResultadoParImpar = true;
      });
    }
  }

  void _verificarDiaSemana() {
    String texto = _diaSemanaController.text.trim().toLowerCase();
    
    if (texto.isEmpty) {
      setState(() {
        _resultadoSwitchCase = 'Por favor, digite um dia da semana!';
        _mostrarResultadoSwitchCase = true;
      });
      return;
    }

    // Normalizando entrada (removendo acentos e convertendo para minúsculas)
    String diaNormalizado = texto
        .replaceAll('á', 'a')
        .replaceAll('é', 'e')
        .replaceAll('ç', 'c');

    String mensagem;
    String categoria;
    String dica;

    // Switch case para verificar o dia da semana
    switch (diaNormalizado) {
      case 'domingo':
        mensagem = 'Domingo é dia de descanso!';
        categoria = 'Final de semana';
        dica = 'Aproveite para relaxar e se preparar para a semana!';
        break;
      
      case 'segunda':
      case 'segunda-feira':
        mensagem = 'Segunda-feira: Começando a semana com energia!';
        categoria = 'Dia útil';
        dica = 'É o primeiro dia da semana de trabalho/estudo.';
        break;
      
      case 'terca':
      case 'terca-feira':
        mensagem = 'Terça-feira: Vamos com tudo! ';
        categoria = 'Dia útil';
        dica = 'Um ótimo dia para produtividade!';
        break;
      
      case 'quarta':
      case 'quarta-feira':
        mensagem = 'Quarta-feira: Meio da semana! ';
        categoria = 'Dia útil';
        dica = 'Já passamos do meio da semana!';
        break;
      
      case 'quinta':
      case 'quinta-feira':
        mensagem = 'Quinta-feira: Quase lá! ';
        categoria = 'Dia útil';
        dica = 'Sexta-feira está chegando!';
        break;
      
      case 'sexta':
      case 'sexta-feira':
        mensagem = 'Sexta-feira: SEXTOU! ';
        categoria = 'Dia útil (mas especial!)';
        dica = 'Último dia útil da semana!';
        break;
      
      case 'sabado':
      case 'sábado':
        mensagem = 'Sábado é dia de diversão! ';
        categoria = 'Final de semana';
        dica = 'Aproveite o fim de semana!';
        break;
      
      default:
        mensagem = 'Ops! "$texto" não é um dia da semana válido! ❌';
        categoria = 'Entrada inválida';
        dica = 'Digite um dia da semana como: segunda, terça, quarta, etc.';
        break;
    }

    String output = '';
    output += 'Entrada digitada: "$texto"\n';
    output += 'Dia normalizado: "$diaNormalizado"\n\n';
    output += 'Resultado do Switch Case:\n';
    output += '• Mensagem: $mensagem\n';
    output += '• Categoria: $categoria\n';
    output += '• Dica: $dica\n\n';
   
    setState(() {
      _resultadoSwitchCase = output;
      _mostrarResultadoSwitchCase = true;
    });
  }

  void _executarLoopFor() {
    String output = '';
    output += 'Executando loop for de 1 a 10:\n\n';
    output += 'for (int i = 1; i <= 10; i++) {\n';
    output += '  print("Número: \$i");\n';
    output += '}\n\n';
    output += 'Saída do programa:\n';
    
    // Simulando a execução do loop for
    for (int i = 1; i <= 10; i++) {
      output += 'Número: $i\n';
    }

    setState(() {
      _resultadoLoopFor = output;
      _mostrarResultadoLoopFor = true;
    });
  }

  void _executarLoopWhile() {
    String output = '';
    output += 'Executando loop while de 1 a 100:\n\n';
    output += 'int i = 1;\n';
    output += 'int soma = 0;\n';
    output += 'while (i <= 100) {\n';
    output += '  soma += i;\n';
    output += '  i++;\n';
    output += '}\n';
    output += 'print("A soma dos números de 1 a 100 é: \$soma");\n\n';
    output += 'Saída do programa:\n';
    
    // Simulando a execução do loop while
    int i = 1;
    int soma = 0;
    while (i <= 100) {
      soma += i;
      i++;
    }
    
    output += 'A soma dos números de 1 a 100 é: $soma\n\n';


    setState(() {
      _resultadoLoopWhile = output;
      _mostrarResultadoLoopWhile = true;
    });
  }

  void _executarLista() {
    String output = '';
    output += 'Criando uma lista de frutas e imprimindo com loop:\n\n';
    output += 'List<String> frutas = [\n';
    output += '  "Maçã",\n';
    output += '  "Banana",\n';
    output += '  "Laranja",\n';
    output += '  "Uva",\n';
    output += '  "Manga",\n';
    output += '  "Abacaxi",\n';
    output += '  "Morango"\n';
    output += '];\n\n';
    output += 'for (String fruta in frutas) {\n';
    output += '  print("Fruta: \$fruta");\n';
    output += '}\n\n';
    output += 'Saída do programa:\n';
    
    // Simulando a execução da lista de frutas
    List<String> frutas = [
      "Maçã",
      "Banana", 
      "Laranja",
      "Uva",
      "Manga",
      "Abacaxi",
      "Morango"
    ];
    
    for (String fruta in frutas) {
      output += 'Fruta: $fruta\n';
    }
    
    output += '\nTotal de frutas na lista: ${frutas.length}';

    setState(() {
      _resultadoLista = output;
      _mostrarResultadoLista = true;
    });
  }

  void _executarMapa() {
    String output = '';
    output += 'Criando um mapa com nomes e idades e exibindo os valores:\n\n';
    output += 'Map<String, int> pessoas = {\n';
    output += '  "João": 25,\n';
    output += '  "Maria": 30,\n';
    output += '  "Carlos": 35,\n';
    output += '  "Ana": 28,\n';
    output += '  "Pedro": 42,\n';
    output += '  "Lucia": 33\n';
    output += '};\n\n';
    output += 'Percorrendo e exibindo os valores do mapa:\n\n';
    output += 'for (var entrada in pessoas.entries) {\n';
    output += '  print("Nome: \${entrada.key}, Idade: \${entrada.value}");\n';
    output += '}\n\n';
    output += 'Saída do programa:\n';
    
    // Simulando a execução do mapa
    Map<String, int> pessoas = {
      "João": 25,
      "Maria": 30,
      "Carlos": 35,
      "Ana": 28,
      "Pedro": 42,
      "Lucia": 33
    };
    
    for (var entrada in pessoas.entries) {
      output += 'Nome: ${entrada.key}, Idade: ${entrada.value}\n';
    }
    
    output += '\nOperações adicionais com o mapa:\n';
    output += 'Total de pessoas: ${pessoas.length}\n';
    output += 'Chaves (nomes): ${pessoas.keys.join(", ")}\n';
    output += 'Valores (idades): ${pessoas.values.join(", ")}\n';
    
    // Calculando a idade média
    double idadeMedia = pessoas.values.reduce((a, b) => a + b) / pessoas.length;
    output += 'Idade média: ${idadeMedia.toStringAsFixed(1)} anos';

    setState(() {
      _resultadoMapa = output;
      _mostrarResultadoMapa = true;
    });
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty) {
      case 'Fácil':
        return Colors.green;
      case 'Médio':
        return Colors.orange;
      case 'Difícil':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Questão ${widget.question.id}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[800],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabeçalho com informações da questão
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blue[800],
                          child: Text(
                            widget.question.id.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.question.title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Text(
                                      widget.question.category,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue[800],
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: _getDifficultyColor(widget.question.difficulty).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Text(
                                      widget.question.difficulty,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: _getDifficultyColor(widget.question.difficulty),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Descrição da questão
            const Text(
              'Descrição da Questão:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.question.description,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Exemplo da questão 2 (exibido diretamente)
            if (widget.question.id == 2) ...[
              const Text(
                'Exemplo de Execução:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Card(
                elevation: 2,
                color: Colors.grey[900],
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    _runQuestion2Example(),
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                      color: Colors.green,
                      height: 1.4,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],

            // Exemplo da questão 3 (interface interativa)
            if (widget.question.id == 3) ...[
              const Text(
                'Digite os números para calcular:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // Campos de entrada
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _numero1Controller,
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: const InputDecoration(
                          labelText: 'Primeiro número',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.calculate),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _numero2Controller,
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: const InputDecoration(
                          labelText: 'Segundo número',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.calculate),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _calcularOperacoes,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[700],
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Calcular Operações',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Resultado dos cálculos
              if (_mostrarResultado) ...[
                const SizedBox(height: 16),
                const Text(
                  'Resultado:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  color: Colors.grey[900],
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _resultadoCalculos,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 14,
                        color: Colors.green,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
            ],

            // Exemplo da questão 4 (interface interativa)
            if (widget.question.id == 4) ...[
              const Text(
                'Digite um número para realizar conversões de tipos:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // Campo de entrada
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _numeroController,
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: const InputDecoration(
                          labelText: 'Digite um número (ex: 3.14, 42, 7.0)',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.transform),
                          helperText: 'Pode usar números inteiros ou decimais',
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _realizarConversoes,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[700],
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Converter Tipos',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Resultado das conversões
              if (_mostrarResultadoConversao) ...[
                const SizedBox(height: 16),
                const Text(
                  'Resultado das Conversões:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  color: Colors.grey[900],
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _resultadoConversao,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 14,
                        color: Colors.cyan,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
            ],

            // Exemplo da questão 5 (interface interativa)
            if (widget.question.id == 5) ...[
              const Text(
                'Digite um número para verificar se é par ou ímpar:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // Campo de entrada
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _numeroParImparController,
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: const InputDecoration(
                          labelText: 'Digite um número (ex: 42, 13, 0)',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.numbers),
                          helperText: 'Qualquer número inteiro ou decimal',
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _verificarParImpar,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo[700],
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Verificar Par/Ímpar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Resultado da verificação par/ímpar
              if (_mostrarResultadoParImpar) ...[
                const SizedBox(height: 16),
                const Text(
                  'Resultado da Verificação:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  color: Colors.grey[900],
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _resultadoParImpar,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 14,
                        color: Colors.lightBlue,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
            ],

            // Exemplo da questão 6 (interface interativa - Switch Case)
            if (widget.question.id == 6) ...[
              const Text(
                'Digite um dia da semana:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // Campo de entrada
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _diaSemanaController,
                        decoration: const InputDecoration(
                          labelText: 'Digite um dia da semana',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.calendar_today),
                          helperText: 'Ex: segunda, terça, quarta, domingo...',
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _verificarDiaSemana,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[700],
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Verificar Dia da Semana',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Resultado do switch case
              if (_mostrarResultadoSwitchCase) ...[
                const SizedBox(height: 16),
                const Text(
                  'Resultado do Switch Case:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  color: Colors.grey[900],
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _resultadoSwitchCase,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 14,
                        color: Colors.orange,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
            ],

            // Exemplo da questão 7 (Loop for - execução direta)
            if (widget.question.id == 7) ...[
              const Text(
                'Clique no botão para executar o loop for:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // Botão para executar o loop
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue[200]!),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Código do Loop For:',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[800],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Text(
                                'for (int i = 1; i <= 10; i++) {\n  print("Número: \$i");\n}',
                                style: TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 13,
                                  color: Colors.green,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _executarLoopFor,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal[700],
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                'Executar Loop For',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Resultado do loop for
              if (_mostrarResultadoLoopFor) ...[
                const SizedBox(height: 16),
                const Text(
                  'Resultado da Execução:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  color: Colors.grey[900],
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _resultadoLoopFor,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 14,
                        color: Colors.teal,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
            ],

            // Exemplo da questão 8 (Loop while - execução direta)
            if (widget.question.id == 8) ...[
              const Text(
                'Clique no botão para executar o loop while:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // Botão para executar o loop
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.purple[50],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.purple[200]!),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Código do Loop While:',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[800],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Text(
                                'int i = 1;\nint soma = 0;\nwhile (i <= 100) {\n  soma += i;\n  i++;\n}\nprint("A soma é: \$soma");',
                                style: TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 13,
                                  color: Colors.green,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _executarLoopWhile,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[700],
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                'Executar Loop While',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Resultado do loop while
              if (_mostrarResultadoLoopWhile) ...[
                const SizedBox(height: 16),
                const Text(
                  'Resultado da Execução:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  color: Colors.grey[900],
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _resultadoLoopWhile,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 14,
                        color: Colors.purple,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
            ],

            // Exemplo da questão 9 (Lista Simples - execução direta)
            if (widget.question.id == 9) ...[
              const Text(
                'Clique no botão para executar o exemplo de lista:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        color: Colors.blue[50],
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Código da Lista de Frutas:',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'List<String> frutas = [\n  "Maçã", "Banana", "Laranja",\n  "Uva", "Manga", "Abacaxi", "Morango"\n];\n\nfor (String fruta in frutas) {\n  print("Fruta: \$fruta");\n}',
                                  style: TextStyle(
                                    fontFamily: 'monospace',
                                    fontSize: 13,
                                    color: Colors.green,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _executarLista,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[700],
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.list, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                'Executar Lista de Frutas',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Resultado da lista
              if (_mostrarResultadoLista) ...[
                const SizedBox(height: 16),
                const Text(
                  'Resultado da Execução:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  color: Colors.grey[900],
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _resultadoLista,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 14,
                        color: Colors.orange,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
            ],

            // Exemplo da questão 10 (Mapa/Dicionário - execução direta)
            if (widget.question.id == 10) ...[
              const Text(
                'Clique no botão para executar o exemplo de mapa (dicionário):',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        color: Colors.blue[50],
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Código do Mapa com Nomes e Idades:',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  'Map<String, int> pessoas = {\n'
                                  '  "João": 25,\n'
                                  '  "Maria": 30,\n'
                                  '  "Carlos": 35,\n'
                                  '  "Ana": 28,\n'
                                  '  "Pedro": 42,\n'
                                  '  "Lucia": 33\n'
                                  '};\n\n'
                                  'for (var entrada in pessoas.entries) {\n'
                                  '  print("Nome: \${entrada.key}, Idade: \${entrada.value}");\n'
                                  '}',
                                  style: TextStyle(
                                    fontFamily: 'monospace',
                                    fontSize: 13,
                                    color: Colors.orange,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _executarMapa,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[700],
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Executar Código do Mapa',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Resultado do mapa
              if (_mostrarResultadoMapa) ...[
                const SizedBox(height: 16),
                const Text(
                  'Resultado da Execução:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  color: Colors.grey[900],
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _resultadoMapa,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 14,
                        color: Colors.orange,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
            ],
            
            const SizedBox(height: 24),
            
            // Botão de navegação
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[800],
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Voltar ao Menu',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
