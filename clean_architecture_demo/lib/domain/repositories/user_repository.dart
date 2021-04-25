import 'package:CleanArchitectureDemo/domain/models/user.dart';

abstract class UserRepository {
  Future<User> createUser(User user);
}
