import 'dart:math';

class Model{
  String makeRandomString(int size){
    String cad="";

    for(var i=0;i<size;i++){
      cad+=getRandomInt(10).toString();
    }
    return cad;
  }

  int getRandomInt(int max){
    var random=Random();
    return random.nextInt(10);
  }
}