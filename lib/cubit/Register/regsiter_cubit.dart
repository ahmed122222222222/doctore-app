import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'regsiter_state.dart';

class RegsiterCubit extends Cubit<RegsiterState> {
  RegsiterCubit() : super(RegsiterInitial());

  Future<void> registerUser({required email, required password,required phone,required  username}) async {
    emit(LoadingRegister());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      emit(sucessRegister());
      await FirebaseFirestore.instance.collection('users').add({"email":email,
      "phone":phone,"username":username});
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(faulierRegister(errmass: 'weak password'));
      } else if (ex.code == 'email-already-in-use') {
        emit(faulierRegister(errmass: 'email already exists'));
      }
    } catch (ex) {
      emit(faulierRegister(errmass: "there was an erro"));
    }
  }
}
