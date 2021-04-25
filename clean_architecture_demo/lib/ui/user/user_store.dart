import 'package:CleanArchitectureDemo/di/service_locator.dart';
import 'package:CleanArchitectureDemo/domain/interactor/create_user_interactor.dart';
import 'package:CleanArchitectureDemo/domain/models/user.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'user_store.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {

  CreateUserInteractor createUserInteractor = serviceLocator<CreateUserInteractor>();

  @observable
  User currentUser;

  @observable
  TextEditingController firstNameController = TextEditingController();

  @observable
  TextEditingController lastNameController = TextEditingController();

  UserStoreBase() {}

  @action
  Future<void> createNewUser() async {
    final user = User(Uuid().v1(), firstNameController.text, lastNameController.text);
    final newUser = await createUserInteractor.execute(user);
    setCurrentUser(newUser);
  }

  @action
  void setCurrentUser(User user) { currentUser = user; }
}