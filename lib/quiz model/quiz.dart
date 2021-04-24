import 'package:project3/quiz%20model/questions.dart';

class Quiz{
  List<Questions> quiz = [
     Questions('An octopus has five hearts?', 'False','https://png.pngtree.com/png-clipart/20210108/ourmid/pngtree-pink-cute-octopus-clipart-png-image_2678854.jpg'),
     Questions('Pengins can\'t be found on the continent of Africa? ', 'False','https://www.freeiconspng.com/thumbs/penguin-png/madagascar-penguin-png-1.png'),
     Questions('Despite their brain size, elephant memory is short-lived?', 'False','https://img.favpng.com/2/22/23/indian-elephant-png-favpng-9qYj15fu2kerqctM5z9vUDbcr.jpg'),
    Questions('Horses can sleep standing up?', 'True','https://toppng.com/uploads/preview/horse-cartoon-easy-cartoon-drawing-of-a-horse-115635447914pvuellpnw.png')
  ];
  static String score;
  static int score_s=0;
}