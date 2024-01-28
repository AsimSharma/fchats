import 'dart:developer';

import 'package:fchats/controller/users_controller.dart';
import 'package:fchats/models/users_models.dart';
import 'package:fchats/screen/Home/home_chatsApps.dart';
import 'package:fchats/screen/signin/login_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthControlller extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSign = GoogleSignIn();

  var userList = <UserModel>[].obs;

  late Rx<User?> firebaseUser;
  late Rx<GoogleSignInAccount?> googleSignInAccount;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
  }

  verifyUser() async {
    // auth.authStateChanges().listen((user) {
    //   if (user == null) {
    //     log('User is currently signed out!');
    //     Get.offAll(() => const SignIn());
    //   } else {
    //     log('User is signed in!');
    //     Get.offAll(() => const ChatApps());
    //   }
    // });
  }

  signInWithGoogle() async {
    log("signInWithGoogle");
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await auth
            .signInWithCredential(credential)
            .catchError((onErr) => log(onErr));
      }
    } catch (err) {
      log(err.toString());
      Fluttertoast.showToast(
          msg: err.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  //SignUp users

  signUpUsers(String email, String password) async {
    log("This is email-- $email and password-- $password");
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await auth.createUserWithEmailAndPassword(
            email: email, password: password);
      } else {
        Fluttertoast.showToast(
            msg: "add your all Crenditatioals",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (err) {
      log(err.toString());
      Fluttertoast.showToast(
          msg: err.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  //SignIn
  login({
    required String email,
    required String password,
  }) async {
    try {
      log("email $email and password $password");
      if (email.isNotEmpty || password.isNotEmpty) {
        await auth.signInWithEmailAndPassword(email: email, password: password);
      } else {
        Fluttertoast.showToast(
            msg: "email or password doesn't match",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (err) {
      Fluttertoast.showToast(
          msg: err.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

//logOut
  logOut() async {
    try {
      await auth.signOut();
    } catch (err) {
      log(err.toString());
    }
  }
}
