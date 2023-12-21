import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  Future<void> loginUser({required email, required password}) async {
    emit(LoadingLOgin());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      emit(sucessLogin());
    } catch (ex) {
      emit(fauilerLogin(loginerr: ex.toString()));
    }
  }
}
