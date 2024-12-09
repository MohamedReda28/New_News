
import 'package:project2/models/artical_model.dart';

abstract class ArticalState {}

class ArticalSuccess extends ArticalState {
    List<ArticalModel> articalList;
  ArticalSuccess({required this.articalList});
}

class ArticalInitial extends ArticalState {}

class ArticalLoading extends ArticalState {

}

class Articalfailure extends ArticalState {
  final String errorMessege;
  Articalfailure({required this.errorMessege});
}
