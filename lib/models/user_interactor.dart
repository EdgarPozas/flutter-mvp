
import 'package:flutter_mvp/models/i_interactor.dart';
import 'package:flutter_mvp/models/user.dart';
import 'package:flutter_mvp/presenters/i_presenter.dart';
import 'package:flutter_mvp/presenters/user_presenter.dart';

class UserInteractor implements IInteractor{
  IPresenter userPresenter;

  UserInteractor(UserPresenter userPresenter){
    this.userPresenter=userPresenter;
  }

  @override
  void getUser() {
    var user=User();
    userPresenter.showUser(user);
  }
}