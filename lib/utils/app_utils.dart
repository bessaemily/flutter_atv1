import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class AppUtils {
  /// Retorna a cor correspondente ao nível de dificuldade
  static Color getDifficultyColor(String difficulty) {
    switch (difficulty) {
      case 'Fácil':
        return AppConstants.easyColor;
      case 'Médio':
        return AppConstants.mediumColor;
      case 'Difícil':
        return AppConstants.hardColor;
      default:
        return Colors.grey;
    }
  }

  /// Retorna o ícone correspondente ao nível de dificuldade
  static IconData getDifficultyIcon(String difficulty) {
    switch (difficulty) {
      case 'Fácil':
        return Icons.sentiment_satisfied;
      case 'Médio':
        return Icons.sentiment_neutral;
      case 'Difícil':
        return Icons.sentiment_very_dissatisfied;
      default:
        return Icons.help_outline;
    }
  }

  /// Retorna um widget Container estilizado para chips
  static Widget buildChip({
    required String text,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: AppTextStyles.chipText.copyWith(color: textColor),
      ),
    );
  }

  /// Cria um chip de categoria
  static Widget buildCategoryChip(String category) {
    return buildChip(
      text: category,
      backgroundColor: AppConstants.secondaryColor,
      textColor: AppConstants.primaryColor,
    );
  }

  /// Cria um chip de dificuldade
  static Widget buildDifficultyChip(String difficulty) {
    final color = getDifficultyColor(difficulty);
    return buildChip(
      text: difficulty,
      backgroundColor: color.withOpacity(0.2),
      textColor: color,
    );
  }

  /// Mostra um SnackBar personalizado
  static void showCustomSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppConstants.primaryColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  /// Navega para uma nova tela com animação
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionDuration: AppConstants.defaultAnimationDuration,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
                  .chain(CurveTween(curve: Curves.easeInOut)),
            ),
            child: child,
          );
        },
      ),
    );
  }
}
