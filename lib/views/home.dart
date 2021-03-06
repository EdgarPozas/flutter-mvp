import 'package:flutter/material.dart';
import 'package:flutter_mvp/models/user.dart';
import 'package:flutter_mvp/presenters/user_presenter.dart';
import 'package:flutter_mvp/views/i_view.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

// ignore: must_be_immutable
class _Home extends State<Home> implements IView{
  var userPresenter;
  User auxUser;

  @override
  Widget build(BuildContext context) {
    userPresenter=UserPresenter(this);

    return Scaffold(
      appBar: AppBar(
        title: Text("MVP"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text("Name"),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                labelText: auxUser==null?"":auxUser.name
              ),
            ),
            Text("LastName"),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                  labelText: auxUser==null?"":auxUser.lastName
              ),
            ),
            Text("Age"),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                  labelText: auxUser==null?"0":auxUser.age.toString()
              ),
            ),
            TextButton(
              onPressed: getUser,
              child: Text("Get User")
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void getUser(){
    userPresenter.getUser();
  }

  @override
  void showUser(User user) {
    setState(() {
      this.auxUser=user;
    });
  }
}
