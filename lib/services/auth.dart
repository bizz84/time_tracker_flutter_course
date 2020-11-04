import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  final _firebaseAuth = FirebaseAuth.instance;

  Stream<User> authStateChanges() => _firebaseAuth.authStateChanges();

  User get currentUser => _firebaseAuth.currentUser;

  Future<User> signInAnonymously() async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential.user;
  }

  Future<User> signInWithEmailAndPassword(String email, String password) async {
    final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return userCredential.user;
  }

  Future<User> createUserWithEmailAndPassword(
      String email, String password) async {
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userCredential.user;
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      if (googleAuth.idToken != null) {
        final userCredential = await FirebaseAuth.instance
            .signInWithCredential(GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          // Note: Access token is null when running on web, so we don't check for it above
          accessToken: googleAuth.accessToken,
        ));
        return userCredential.user;
      } else {
        throw FirebaseAuthException(
            code: 'ERROR_MISSING_GOOGLE_ID_TOKEN',
            message: 'Missing Google ID Token');
      }
    } else {
      throw FirebaseAuthException(
          code: 'ERROR_ABORTED_BY_USER', message: 'Sign in aborted by user');
    }
  }

  Future<User> signInWithFacebook() async {
    throw UnimplementedError();
    // final facebookLogin = FacebookLogin();
    // final result = await facebookLogin.logInWithReadPermissions(
    //   ['public_profile'],
    // );
    // if (result.accessToken != null) {
    //   final authResult = await _firebaseAuth.signInWithCredential(
    //     FacebookAuthProvider.getCredential(
    //       accessToken: result.accessToken.token,
    //     ),
    //   );
    //   return _userFromFirebase(authResult.user);
    // } else {
    //   throw PlatformException(
    //     code: 'ERROR_ABORTED_BY_USER',
    //     message: 'Sign in aborted by user',
    //   );
    // }
  }

  Future<void> signOut() async {
    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    final facebookLogin = FacebookLogin();
    await facebookLogin.logOut();
    await _firebaseAuth.signOut();
  }
}
