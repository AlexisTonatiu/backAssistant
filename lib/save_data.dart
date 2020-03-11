import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final Firestore _db = Firestore.instance;

FirebaseAuth auth = FirebaseAuth.instance;


void updateTrainingData(trainingExercise) async {
  final FirebaseUser user = await auth.currentUser();
  DocumentReference ref = _db.collection('users').document(user.uid).collection('training_sessions').document();
  print('Data stored mothafuckaaaaaaaaaaaa');
  return ref.setData({
    'trainingSessionDateTime': DateTime.now(),
    'trainingExercise' : trainingExercise
  }, merge: true);
}