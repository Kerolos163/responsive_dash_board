import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(IniteState());
  static AppCubit get(context) => BlocProvider.of(context);
  String selectedDrawerItem = "Dashboard";
  changeSelectedDrawerItem({required String newItem}) {
    selectedDrawerItem = newItem;
    log(selectedDrawerItem);
    emit(ChangeSelectedItem());
  }

  String selectedAllExpensessItem = "Balance";
  changeSelectedAllExpensessItem({required String newItem}) {
    selectedAllExpensessItem = newItem;
    log(selectedAllExpensessItem);
    emit(ChangeSelectedItem());
  }

  int currentPageView = 0;
  changeCurrentPageView({required int newPageView}) {
    currentPageView = newPageView;
    emit(ChangeSelectedPageView());
  }
}
