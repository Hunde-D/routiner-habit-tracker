import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routiner/app/blocs/auth_state.dart';
import 'package:routiner/features/auth/services/auth_service.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authService) : super(const AuthLoading()) {
    _observeAuthChange();
  }
  final AuthService _authService;
  late StreamSubscription<User?> _userSubscription;

  void _observeAuthChange() {
    _userSubscription = _authService.firebaseUserStream.listen(
      (User? firebaseUser) {
        if (firebaseUser != null) {
          emit(AuthAuthenticated(firebaseUser.uid));
        } else {
          emit(AuthUnauthenticated());
        }
      },
      onError: (error) {
        emit(AuthError(error.toString()));
      },
    );
  }

  Future<void> initialize() async {
    emit(AuthLoading());
    try {
      final User? user = _authService.currentUser;
      if (user != null) {
        emit(AuthAuthenticated(user.uid));
      } else {
        emit(AuthUnauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(AuthUnauthenticated()); 
    }
  }

  Future<void> signIn(String email, String password) async {
    emit(const AuthLoading());
    try {
      final user = await _authService.signInWithEmailAndPassword(
        email,
        password,
      );
      if (user != null) {
        emit(AuthAuthenticated(user.uid));
      } else {
        emit(const AuthError('Sign in failed'));
        emit(AuthUnauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(AuthUnauthenticated());
    }
  }

  Future<void> signUp(String email, String password) async {
    emit(const AuthLoading());
    try {
      final user = await _authService.signUpWithEmailAndPassword(
        email,
        password,
      );
      if (user != null) {
        emit(AuthAuthenticated(user.uid));
      } else {
        emit(const AuthError('Sign up failed'));
        emit(AuthUnauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(AuthUnauthenticated());
    }
  }
  Future<void> signInWithGoogle() async {
    emit(const AuthLoading());
    try {
      final user = await _authService.signInWithGoogle();
      if (user != null) {
        emit(AuthAuthenticated(user.uid));
      } else {
        emit(const AuthError('Google sign in failed'));
        emit(AuthUnauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(AuthUnauthenticated());
    }
  }

  Future<void> signOut() async {
    final currState = state;
    emit(const AuthLoading());
    try {
      await _authService.signOut();
      emit(AuthUnauthenticated());
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(currState); // Revert to previous state on error
    }
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
