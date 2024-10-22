import 'package:flutter_bloc/flutter_bloc.dart';

class BannerCubit extends Cubit<int> {
  BannerCubit() : super(0);
  void changeImage(int index) {
    emit(index);
  }

  void nextImage(int totalImages) {
    emit((state + 1) % totalImages);
  }
}