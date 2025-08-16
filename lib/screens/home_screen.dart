import 'package:flutter/material.dart';
import '../data/questions_data.dart';
import '../models/question.dart';
import '../widgets/question_card.dart';
import 'question_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Todas';
  List<Question> filteredQuestions = QuestionsData.getAllQuestions();

  void _filterByCategory(String category) {
    setState(() {
      selectedCategory = category;
      if (category == 'Todas') {
        filteredQuestions = QuestionsData.getAllQuestions();
      } else {
        filteredQuestions = QuestionsData.getQuestionsByCategory(category);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Atividade Dart - 28 Questões',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Filtro por categoria
          Container(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryChip('Todas'),
                  ...QuestionsData.getCategories().map(
                    (category) => _buildCategoryChip(category),
                  ),
                ],
              ),
            ),
          ),
          
          // Lista de questões
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: filteredQuestions.length,
              itemBuilder: (context, index) {
                final question = filteredQuestions[index];
                return QuestionCard(
                  question: question,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionDetailScreen(question: question),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String category) {
    final isSelected = selectedCategory == category;
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: FilterChip(
        label: Text(category),
        selected: isSelected,
        onSelected: (selected) {
          _filterByCategory(category);
        },
        selectedColor: Colors.blue[200],
        checkmarkColor: Colors.blue[800],
      ),
    );
  }
}
