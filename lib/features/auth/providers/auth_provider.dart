import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_planner/features/auth/models/auth_state.dart';

part 'auth_provider.g.dart';

@riverpod
class AuthStateNotifier extends _$AuthStateNotifier {
  @override
  AuthState build() {
    _init();
    return const AuthState(isInitialized: false, isLoggedIn: false);
  }

  Future<void> _init() async {
    User? user = FirebaseAuth.instance.currentUser;

    state = AuthState(isInitialized: true, isLoggedIn: user != null);

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      state = AuthState(isInitialized: true, isLoggedIn: user != null);
    });
  }

  Future<void> signInAnonymously() async {
    await FirebaseAuth.instance.signInAnonymously();
  }

  Future<void> signInWithGoogle() async {
    if (kIsWeb) {
      final provider = GoogleAuthProvider();
      await FirebaseAuth.instance.signInWithPopup(provider);
    } else {
      final googleSignIn = GoogleSignIn.instance;
      await googleSignIn.initialize();
      final googleUser = await googleSignIn.authenticate();
      // TODO: mobile flow
    }
  }

  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> registerWithEmail({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
