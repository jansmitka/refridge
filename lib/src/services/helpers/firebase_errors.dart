class FirebaseErrors {
  final String codeId;
  final String desc;
  FirebaseErrors(this.codeId, this.desc);
}

List<FirebaseErrors> firebaseErrors = [
  FirebaseErrors('invalid-email', 'E-mail is badly formated'),
  FirebaseErrors('user-not-found', 'Incorrect E-mail or password'),
  FirebaseErrors('invalid-credential', 'Incorrect E-mail or password'),
  FirebaseErrors('wrong-password', 'Incorrect E-mail or password'),
  FirebaseErrors('email-already-in-use', 'E-mail is already taken'),
  FirebaseErrors('operation-not-allowed', 'The accnout has been disabled'),
  FirebaseErrors('user-disabled', 'The accnout has been disabled'),
  FirebaseErrors('other', 'Undefined error'),
];
