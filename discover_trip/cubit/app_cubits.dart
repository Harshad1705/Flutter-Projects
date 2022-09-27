import 'package:bloc/bloc.dart';
import 'package:trip_discover_yt/services/data_services.dart';
import '../model/data_model.dart';
import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialStates()) {
    emit(WelcomeStates());
  }
  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {
      print(e);
    }
  }

  void detailPage(DataModel data) {
    emit(DetailState(data));
  }

  void goHome(){
    emit(LoadedState(places));
  }

}
