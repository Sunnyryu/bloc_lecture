import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(ColorState.initial()) {
    // TODO: implement event handler
  }

  void changeColor() {
    if (state.color == Colors.red) {
      emit(state.copyWith(color: Colors.green));
    } else if (state.color == Colors.green) {
      emit(state.copyWith(color: Colors.blue));
    } else if (state.color == Colors.blue) {
      emit(state.copyWith(color: Colors.black));
    } else if (state.color == Colors.black) {
      emit(state.copyWith(color: Colors.red));
    }
  }
}