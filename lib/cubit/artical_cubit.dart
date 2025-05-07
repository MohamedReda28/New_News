

import 'package:bloc/bloc.dart';
import 'package:project2/cubit/artical_state.dart';
import 'package:project2/models/artical_model.dart';
import 'package:project2/services/services.dart';

class ArticalCubit extends Cubit<ArticalState> {
  ArticalCubit() : super(ArticalInitial());

  getData(String? category) async{
    emit(ArticalLoading( ));
    try {
     List<ArticalModel>articalList= await Services().getdata(category);
      emit(ArticalSuccess(articalList: articalList));
    } on Exception catch (e) {
      emit(Articalfailure(errorMessege: e.toString()));
    }
  }
}
