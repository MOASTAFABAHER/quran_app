import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/service/dio_helper.dart';

import '../../../models/get_date.dart';

part 'get_date_state.dart';

class GetDateCubit extends Cubit<GetDateState> {
  GetDateCubit() : super(GetDateInitial());
  static GetDateCubit get(context) => BlocProvider.of(context);
jDate jGetDate =jDate();
  getDate() {
    emit(GetDateLoding());
    DioHelper.getData(url: 'timingsByAddress',query: {
      'address':'aswan',
      'method':'5'
    })
        .then((value) {
          jGetDate=jDate.fromJson(value.data);
          emit(GetDateSuccess());
          print('suc$value');
        })
        .catchError((e) {
          print('err$e');
          emit(GetDateError());
        });
  }
}
