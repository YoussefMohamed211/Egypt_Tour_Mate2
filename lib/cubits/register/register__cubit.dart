import 'package:egypt_tour/cubits/register/register__state.dart';
import 'package:egypt_tour/model/UserModel.dart';
import 'package:egypt_tour/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/authentication_helper.dart';
import '../../screens/sing_in.dart';
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  UserModel userModel = UserModel();

  void UserRegister(
      {required String email,
      required String pass,
      required String phoneNumber,
      required String username}) {
    emit(RegisterLoadingState());
    DioHelper.postData(url: '/api/Adminstration/register', data: {
      "email": email,
      "password": pass,
      "phoneNumber": phoneNumber,
      "username": username
    }).then((value) {
      userModel = UserModel.fromJson(value.data);
       Navigator(initialRoute: SingIn.routeName,);
      emit(RegisterSuccessState(userModel));
    }).catchError((error) {
      emit(RegisterErrorState(error.toString()));
      print(error.toString());
    });
  }
}
