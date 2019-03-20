import './question.dart';

 class Quiz {
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions){
    _questions.shuffle();
  }

  Future<List<Question>> get questions async => _questions;
  int get length => _questions.length;
  Future<int> get questionNumber async => _currentQuestionIndex+1;
  Future<int> get score async => _score;

  Future<Question> get nextQuestion async {
    _currentQuestionIndex++;
    if (_currentQuestionIndex >= length){
      return null;
    }
    else {
      return _questions[_currentQuestionIndex];
    }
  }

  void answer(bool isCorrect){
    if(isCorrect){
      _score++;
    }
  }

}