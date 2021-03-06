import 'package:flutter_mvp/models/i_interactor.dart';
import 'package:flutter_mvp/models/user.dart';
import 'package:flutter_mvp/models/user_interactor.dart';
import 'package:flutter_mvp/views/i_view.dart';

import 'i_presenter.dart';

class UserPresenter implements IPresenter{
  IView userView;
  IInteractor userInteractor;

  UserPresenter(userView){
    this.userView=userView;
    this.userInteractor=UserInteractor(this);
  }

  @override
  void getUser() {
    userInteractor.getUser();
  }

  @override
  void showUser(User user) {
    userView.showUser(user);
  }
}