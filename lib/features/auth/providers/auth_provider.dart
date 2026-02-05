import 'package:firebase_auth/firebase_auth.dart';
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

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
