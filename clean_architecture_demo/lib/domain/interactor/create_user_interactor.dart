import 'package:CleanArchitectureDemo/di/service_locator.dart';
import 'package:CleanArchitectureDemo/domain/repositories/user_repository.dart';
import '../models/user.dart';

class CreateUserInteractor {
  UserRepository userRepository = serviceLocator<UserRepository>();

  Future<User> execute(User user) async {
    final createdUser =  await userRepository.createUser(user);
    return Future.value(createdUser);
  }
}