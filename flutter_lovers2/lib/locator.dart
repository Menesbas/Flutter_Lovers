import 'package:flutter_lovers2/repository/user_repository.dart';
import 'package:flutter_lovers2/services/fake_auth_service.dart';
import 'package:flutter_lovers2/services/firebase_auth_service.dart';
import 'package:flutter_lovers2/services/firebase_storage_service.dart';
import 'package:flutter_lovers2/services/firestore_db_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => FirebaseAuthService());
  locator.registerLazySingleton(() => FakeAuthenticationService());
  locator.registerLazySingleton(() => FirestoreDBService());
  locator.registerLazySingleton(() => FirebaseStorageService());
  locator.registerLazySingleton(() => UserRepository());
}
