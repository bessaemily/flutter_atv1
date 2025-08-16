import 'package:flutter/material.dart';

class AppConstants {
  static const Color primaryColor = Color(0xFF1565C0);
  static const Color secondaryColor = Color(0xFFBBDEFB);
  
  static const Color easyColor = Colors.green;
  static const Color mediumColor = Colors.orange;
  static const Color hardColor = Colors.red;
  
  static const String appTitle = 'Atividade Dart - 28 Questões';
  static const String homeTitle = 'Atividade Dart - 28 Questões';
  static const String solutionComingSoon = 'Solução em breve...';
  static const String solutionDescription = 'A resolução desta questão será implementada em uma próxima versão.';
  static const String backToMenuButton = 'Voltar ao Menu';
  static const String questionDescriptionTitle = 'Descrição da Questão:';
  static const String solutionTitle = 'Solução:';
  static const String allCategoriesFilter = 'Todas';
  
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  
  static const double cardElevation = 4.0;
  static const double borderRadius = 12.0;
  static const double avatarRadius = 25.0;
  
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);
}

class AppTextStyles {
  static const TextStyle titleLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  
  static const TextStyle titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  
  static const TextStyle titleSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    height: 1.5,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    height: 1.4,
  );
  
  static const TextStyle chipText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
