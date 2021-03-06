import "model.dart";

class User extends Model{
  var name="";
  var lastName="";
  var age=0;

  User(){
    this.name= makeRandomString(10);
    this.lastName= makeRandomString(10);
    this.age= getRandomInt(10);
  }
}
