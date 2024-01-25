import 'package:fchats/models/users_models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/state_manager.dart';

class UserController extends GetxController {
  var usersList = <UserModel>[].obs;

//setsThe Users
  addNewUsers(User user) {
    UserModel newUsers = UserModel(
        uid: user.uid,
        email: user.email ?? "",
        displayName: user.displayName ?? "",
        photoURL: user.photoURL ?? "");

    usersList.add(newUsers);
  }
}
