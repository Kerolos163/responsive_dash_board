import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(IniteState());
  static AppCubit get(context) => BlocProvider.of(context);
  String selectedItem = "Dashboard";
  changeSelectedItem({required String newItem}) {
    selectedItem = newItem;
    log(selectedItem);
    emit(ChangeSelectedItem());
  }
}
