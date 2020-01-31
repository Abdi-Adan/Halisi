// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// // import 'package:playground/models/user.dart';

// class AuthService with ChangeNotifier {
//   //create instance of FirebaseAuth
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   //create user object based on user
//   User _userFromFirebase(FirebaseUser user) {
//     return user != null ? User(uid: user.uid) : null;
//   }

//   //sign in with email and password
//   Future signInEmailPass(String user_email, String user_password) async {
//     try {
//       //Make a request
//       AuthResult result = await _auth.signInWithEmailAndPassword(
//           email: user_email, password: user_password);
//       FirebaseUser user = result.user;
//       return _userFromFirebase(user);
//     } catch (e) {
//       if (e.toString().contains("ERROR_WRONG_PASSWORD")) {
//         print('Invalid credentials. Please try again');
//       }
//       if (e.toString().contains("ERROR_INVALID_EMAIL")) {
//         print('Invalid Email. Please enter the correct email');
//       }
//       if (e.toString().contains("ERROR_USER_NOT_FOUND")) {
//         print('Please register first');
//       }
//       if (e.toString().contains("ERROR_USER_DISABLED")) {
//         print('Your account has been disabled');
//       }
//       if (e.toString().contains("ERROR_TOO_MANY_REQUESTS")) {
//         print('Too many requests. Try again after one hour');
//       }
//       return null;
//     }
//   }

//   //sign in anon
//   Future signInAnon() async {
//     try {
//       //Make a request
//       AuthResult result = await _auth.signInAnonymously();
//       //gain access to user
//       FirebaseUser user = result.user;
//       return user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

//   Future logoutUser() async {
//     dynamic result = _auth.signOut();
//     print(result);
//   }

//   //create user with email and password
//   Future createUserEmailPass(String user_email, String user_password) async {
//     try {
//       AuthResult result = await _auth.createUserWithEmailAndPassword(
//           email: user_email, password: user_password);
//       FirebaseUser user = result.user;
//       return _userFromFirebase(user);
//     } catch (e) {
//       if (e.toString().contains("ERROR_WEAK_PASSWORD")) {
//         print('Your password is weak. Please choose another.');
//       }
//       if (e.toString().contains("ERROR_INVALID_EMAIL")) {
//         print('Invalid Email. Please enter the correct email');
//       }
//       if (e.toString().contains("ERROR_EMAIL_ALREADY_IN_USE")) {
//         print('An account with the same email exists');
//       }
//       return null;
//     }
//   }

//   //Reset User Password with email
//   Future resetUserPass(String user_email) async {
//     //Make a request
//     try {
//       await _auth.sendPasswordResetEmail(email: user_email);
//       return true;
//     } catch (e) {
//       if (e.toString().contains("ERROR_INVALID_EMAIL")) {
//         print('Invalid Email. Please enter the correct email');
//       }
//       if (e.toString().contains("ERROR_USER_NOT_FOUND")) {
//         print('Please register first');
//       }
//       return null;
//     }
//   }

//   Future saveUsertoDb(String uid,String fname, String lname) async {
//     try {
//       Firestore.instance.collection('users').document(uid).setData(
//           {'First Name':fname,'Last Name':lname});
//       return true;
//     }
//     catch (e) {
//       print(e.toString());
//       return false;
//     }
//   }
// }