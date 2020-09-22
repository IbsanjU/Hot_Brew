import 'package:firebase_auth/firebase_auth.dart';
import 'package:hot_brew/models/user.dart';

class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object on Firebase User
  Users _userFromFirebaseuser(User user){
    return user !=null ? Users(uid: user.uid) : null;
  }

// Sign in anonomously
  Future sigiInAnon() async {
    
    try {
      UserCredential result = await _auth.signInAnonymously();
      final User user = result.user;
      return _userFromFirebaseuser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// Sign in with email and password

// Register with email & password

// Sign out

}
