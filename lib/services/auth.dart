import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;

// Sign in anonomously
  Future sigiInAnon() async {
    
    try {
      UserCredential result = await _auth.signInAnonymously();
      final User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// Sign in with email and password

// Register with email & password

// Sign out

}
