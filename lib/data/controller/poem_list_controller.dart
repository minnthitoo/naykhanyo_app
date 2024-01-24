import 'package:get/get.dart';
import 'package:naykhanyo/data/service/api_service.dart';

import '../model/poem_list_model.dart';

class PoemListController extends GetxController{
  final APIService _apiService = Get.find();

  final Rx<PoemListState> poemListState = PoemListState().obs;

  @override
  void onInit() {
    super.onInit();
    getPoems();
  }

  void getPoems(){
    poemListState.value = PoemListLoadingState();
    _apiService.getPoems()
    .then((poemList){
      poemListState.value = PoemListSuccessState(poemList);
    })
    .catchError((error){
      print(error);
      poemListState.value = PoemListErrorState();
    });
  }
}

class PoemListState{}

class PoemListLoadingState extends PoemListState{}

class PoemListSuccessState extends PoemListState{
  final List<PoemListModel> poemList;
  PoemListSuccessState(this.poemList);
}

class PoemListErrorState extends PoemListState{}