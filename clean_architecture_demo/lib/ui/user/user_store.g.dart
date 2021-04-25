// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on UserStoreBase, Store {
  final _$currentUserAtom = Atom(name: 'UserStoreBase.currentUser');

  @override
  User get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(User value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  final _$firstNameControllerAtom =
      Atom(name: 'UserStoreBase.firstNameController');

  @override
  TextEditingController get firstNameController {
    _$firstNameControllerAtom.reportRead();
    return super.firstNameController;
  }

  @override
  set firstNameController(TextEditingController value) {
    _$firstNameControllerAtom.reportWrite(value, super.firstNameController, () {
      super.firstNameController = value;
    });
  }

  final _$lastNameControllerAtom =
      Atom(name: 'UserStoreBase.lastNameController');

  @override
  TextEditingController get lastNameController {
    _$lastNameControllerAtom.reportRead();
    return super.lastNameController;
  }

  @override
  set lastNameController(TextEditingController value) {
    _$lastNameControllerAtom.reportWrite(value, super.lastNameController, () {
      super.lastNameController = value;
    });
  }

  final _$createNewUserAsyncAction = AsyncAction('UserStoreBase.createNewUser');

  @override
  Future<void> createNewUser() {
    return _$createNewUserAsyncAction.run(() => super.createNewUser());
  }

  final _$UserStoreBaseActionController =
      ActionController(name: 'UserStoreBase');

  @override
  void setCurrentUser(User user) {
    final _$actionInfo = _$UserStoreBaseActionController.startAction(
        name: 'UserStoreBase.setCurrentUser');
    try {
      return super.setCurrentUser(user);
    } finally {
      _$UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
firstNameController: ${firstNameController},
lastNameController: ${lastNameController}
    ''';
  }
}
