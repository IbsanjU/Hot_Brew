import 'package:firebase_auth/firebase_auth.dart';
import 'package:hot_brew/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object on Firebase User
  Users _userFromFirebaseUser(User user) {
    return user != null ? Users(uid: user.uid) : null;
  }

// auth change user stream
  Stream<Users> get user {
    return _auth
        .authStateChanges()
        //.map((User user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

// Sign in anonomously
  Future sigiInAnon() async {
    
    try {
      UserCredential result = await _auth.signInAnonymously();
      final User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// Sign in with email and password

// Register with email & password

// Sign out

}
