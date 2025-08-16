# Atividade Dart - 28 Questões

Uma aplicação Flutter que apresenta 28 questões de programação Dart organizadas por categoria e nível de dificuldade.

## 📱 Funcionalidades

- **Menu Principal**: Lista todas as 28 questões organizadas em cards visuais
- **Filtros por Categoria**: Filtragem das questões por categorias (Básico, Loops, Funções, OOP, etc.)
- **Níveis de Dificuldade**: Indicadores visuais para Fácil, Médio e Difícil
- **Detalhes da Questão**: Tela individual para cada questão com descrição completa
- **Interface Responsiva**: Design adaptativo para diferentes tamanhos de tela

## 🏗️ Estrutura do Projeto

```
lib/
├── main.dart                 # Ponto de entrada da aplicação
├── data/
│   └── questions_data.dart   # Dados das 28 questões
├── models/
│   └── question.dart         # Modelo de dados da questão
├── screens/
│   ├── home_screen.dart      # Tela principal com lista de questões
│   └── question_detail_screen.dart # Tela de detalhes da questão
└── widgets/
    └── question_card.dart    # Widget customizado para exibir questões
```

## 📚 Categorias das Questões

- **Básico** (4 questões): Variáveis, tipos, operações
- **Controle de Fluxo** (2 questões): Condicionais, switch case
- **Loops** (2 questões): for, while
- **Coleções** (3 questões): Listas, mapas, manipulação
- **Funções** (3 questões): Simples, recursivas, parâmetros
- **Tratamento de Erros** (1 questão): Exceções
- **Orientação a Objetos** (4 questões): Classes, herança, encapsulamento
- **Assincronismo** (2 questões): Future, Stream
- **I/O** (1 questão): Manipulação de arquivos
- **Pacotes** (1 questão): HTTP requests
- **Funcional** (1 questão): map, reduce, where
- **Avançado** (4 questões): Generics, extensões, operadores

## 🚀 Como Executar

### Web
```bash
flutter run -d chrome
```

### Mobile
```bash
flutter run
```

### Desktop
```bash
flutter run -d windows  # ou macos/linux
```

## 🎨 Design

- **Tema**: Material Design com cores azuis
- **Cards**: Elevação e bordas arredondadas
- **Indicadores**: Chips coloridos para categorias e dificuldade
- **Ícones**: Indicadores visuais para cada nível de dificuldade
- **Navegação**: AppBar com título e botão de voltar

## 📝 Próximos Passos

- [ ] Implementar as soluções das questões
- [ ] Adicionar syntax highlighting para código
- [ ] Implementar sistema de progresso/favoritos
- [ ] Adicionar busca por texto
- [ ] Implementar modo escuro
- [ ] Adicionar testes unitários

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework de desenvolvimento
- **Dart**: Linguagem de programação
- **Material Design**: Sistema de design

## 📄 Licença

Este projeto foi desenvolvido para fins educacionais como parte da Atividade Aula 01 de Dart (09-08-2025).
