import 'package:application/screens/bottom-nav/profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screens/bottom-nav/home.dart';
import '../../screens/bottom-nav/market.dart';

part 'mall_state.dart';

class MallCubit extends Cubit<MallState> {
  static MallCubit get(context) => BlocProvider.of(context);
  MallCubit() : super(MallInitial());
  bool pass = true;
  void visibility() {
    pass = !pass;
    emit(Visibility());
  }

  int index = 0;
  List page = const [
    Home(),
    Market(),
    Profile(),
  ];
  void selectPage(int value) {
    index = value;
    emit(SelectPage());
  }
}
