import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
final Firestore _db = Firestore.instance;

String name;
String email;
String imageUrl;

// Agregar condicion para cuando el usuario no inicia sesion, puede ser con un try-except/catch
// aun esta el bug de cuando eso no sucede 
Future<FirebaseUser> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  // Viendo si no esta guardado
  assert(user.email != null);
  assert(user.displayName != null);
  assert(user.photoUrl != null);

  name = user.displayName;
  email = user.email;
  imageUrl = user.photoUrl;

  // Que solo muestre el primer nombre
  if (name.contains(" ")) {
    name = name.substring(0, name.indexOf(" "));
  }

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  updateUserData(user);

  return user;
}

void updateUserData(FirebaseUser user) async {
  DocumentReference ref = _db.collection('users').document(user.uid); // creas la coleccion de usuarios

  return ref.setData({
    'u_id': user.uid,
    'email': user.email,
    'photoURL': user.photoUrl,
    'name': user.displayName,
    'lastEntry': DateTime.now()
  }, merge: true);
}

void signOutGoogle() async {
  await googleSignIn.signOut();

  print("El usuario salio");
}

