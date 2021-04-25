import 'dart:async';
import 'package:CleanArchitectureDemo/domain/models/user.dart';
import 'package:CleanArchitectureDemo/domain/repositories/user_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseUserRepository extends UserRepository {

  final Firestore _firestore = Firestore.instance;
  static const USER_COLLECTION_PATH = 'users';

  @override
  Future<User> createUser(User user) async {
    await _firestore.collection(USER_COLLECTION_PATH).document(user.id)
        .setData(user.toJson());
    return Future.value(user);
  }
}
