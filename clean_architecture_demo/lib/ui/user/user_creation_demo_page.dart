import 'package:CleanArchitectureDemo/di/service_locator.dart';
import 'package:CleanArchitectureDemo/ui/user/user_store.dart';
import 'package:flutter/material.dart';

class UserCreationDemoPage extends StatefulWidget {
  UserCreationDemoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UserCreationDemoPageState createState() => _UserCreationDemoPageState();
}

class _UserCreationDemoPageState extends State<UserCreationDemoPage> {

  UserStore _userStore = serviceLocator<UserStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    validator: (value) => value.isEmpty ? "Please enter first name" :  null,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black)),
                        labelText: "First Name",
                        labelStyle: TextStyle(color: Colors.black))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    validator: (value) => value.isEmpty ? "Please enter last name" :  null,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelText: "Last Name")),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () => { _userStore.createNewUser() },
                  child: Text(
                    "Create me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}