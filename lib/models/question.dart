class Question {
  final int id;
  final String title;
  final String description;
  final String category;
  final String difficulty;
  
  Question({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.difficulty,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'difficulty': difficulty,
    };
  }

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      difficulty: json['difficulty'],
    );
  }
}
