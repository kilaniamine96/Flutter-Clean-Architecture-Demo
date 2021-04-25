import 'package:CleanArchitectureDemo/data/repositories/firebase_user_repository.dart';
import 'package:CleanArchitectureDemo/domain/interactor/create_user_interactor.dart';
import 'package:CleanArchitectureDemo/domain/repositories/user_repository.dart';
import 'package:CleanArchitectureDemo/ui/user/user_store.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.I;

Future<void> setupLocator() async {

  //Repositories
  serviceLocator.registerFactory<UserRepository>(() => FirebaseUserRepository());

  //Interactors
  serviceLocator.registerFactory<CreateUserInteractor>(() => CreateUserInteractor());

  //Stores
  serviceLocator.registerSingleton<UserStore>(() => UserStore());
}
