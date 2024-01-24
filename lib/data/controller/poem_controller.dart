import 'package:get/get.dart';
import 'package:naykhanyo/data/model/poem_model.dart';
import 'package:naykhanyo/data/service/api_service.dart';

class PoemController extends GetxController{

  final APIService _apiService = Get.find();

  Rx<PoemState> poemState = PoemState().obs;

  getPoem(int id){
    poemState.value = PoemLoadingState();
    _apiService.getPoem(id)
    .then((poems){
      print("DATA $poems");
      if(poems.isNotEmpty){
        poemState.value = PoemSuccessState(poems[0]);
      }
    })
    .catchError((error){
      poemState.value = PoemErrorState();
    });
  }

}

class PoemState{}

class PoemLoadingState extends PoemState{}

class PoemSuccessState extends PoemState{
  final PoemModel poem;

  PoemSuccessState(this.poem);
}

class PoemErrorState extends PoemState{}