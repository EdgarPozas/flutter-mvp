
import 'package:flutter_mvp/models/user.dart';

abstract class IPresenter{
  void getUser();
  void showUser(User user);
}