import './question.dart';

 class Quiz {
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions){
    _questions.shuffle();
  }

  Future<List<Question>> get questions async => _questions;
  Future<int> get length async => _questions.length;
  Future<int> get questionNumber async => _currentQuestionIndex+1;
  Future<int> get score async => _score;

  Future<Question> get nextQuestion async {
    
  }

}