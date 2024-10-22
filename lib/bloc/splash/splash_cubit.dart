import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_care_app/bloc/splash/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(const Duration(seconds: 3));

    var isLoggedIn = true;

    if (isLoggedIn) {
      emit(UnAuthenticated());
    } else {
      emit(Authenticated());
    }
  }
}
