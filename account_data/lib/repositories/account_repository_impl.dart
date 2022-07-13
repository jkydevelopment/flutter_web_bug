import 'dart:io';

// import 'package:account_data/account_data_library.dart';
import 'package:account_domain/account_domain_library.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:core/core_library.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart' as google;
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';
// import 'package:locator/locator_library.dart';

class AccountRepositoryImpl extends AccountRepository {
  // final ErrorReporter _errorReporter = locator<ErrorReporter>();

  // @override
  // Future<GenericResponse> signIn(String email, String password) async {
  //   try {
  //     final UserCredential userCredential = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: email, password: password);
  //     if (userCredential.user != null) {
  //      return CorrectResponse(data: 'any');
  //     }
  //     _errorReporter.report('signIn error -> userCredetial.user == null.', StackTrace.current);
  //     return Future.error(AppTranslations.globalErrorSignIn.tr);
  //   } on FirebaseAuthException catch (e) {
  //     //return Future.error(getAccountExceptionMessage(error.code));
  //     _errorReporter.report(e, StackTrace.current);
  //     return Future.error(AppTranslations.globalErrorSignIn.tr);
  //   } on Exception catch (e) {
  //     _errorReporter.report(e, StackTrace.current);
  //     return Future.error(AppTranslations.globalErrorSignIn.tr);
  //   }
  // }
}
