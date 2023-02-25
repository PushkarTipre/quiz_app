import 'questions.dart';

class QuizBrain
{
  int _questionNumber = 0;

   final List<Questions> _qb = [
    Questions('You can lead a cow down stairs but not upstairs',false),
    Questions( 'A slug\'s blood is green',  true),
    Questions('Approximately one quarter of human bones are in feat',  true),
     Questions('Is Mount Kilimanjaro the world’s tallest peak?',false),
     Questions('The longest river in the world is the Amazon River. ',false ),
     Questions('Walt Disney has the record for most Academy Awards.', true ),
     Questions('In Scotland, the unicorn is their national animal. ', true),
     Questions('There is no English word that rhymes with orange. ', true),
     Questions('Switzerland’s currency is the Euro.', false),
     Questions('The USA has the longest coastline in the world.', false),
     Questions('Nepal is the only country in the world without a rectangular flag. ', true),
     Questions('In the famous movie Harry Potter, Draco Malfoy doesn’t have a sibling. ', false)
  ];

  void nextQuestion()
  {
    if(_questionNumber<_qb.length-1)
      {
        _questionNumber++;
      }
  }


  String getQuestionText()
  {
    return _qb[_questionNumber].questionText;
  }

  bool getQuestionAnswer()
  {
    return _qb[_questionNumber].questionAnswer;
  }

  bool isFinished()
  {
    if(_questionNumber>=_qb.length-1)
    {
      return true;
    }
    else
      {
        return false;
      }
  }
  void reset()
  {
    _questionNumber=-1;
  }
}