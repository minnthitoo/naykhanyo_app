import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naykhanyo/data/controller/poem_list_controller.dart';
import 'package:naykhanyo/data/model/poem_list_model.dart';
import 'package:naykhanyo/widget/home_widget.dart';
import 'package:shimmer/shimmer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final PoemListController _poemListController = Get.put(PoemListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Poems'),
      ),
      body: Obx(
          (){
            PoemListState poemListState = _poemListController.poemListState.value;
            if(poemListState is PoemListLoadingState){
              return Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),

                      ],
                    ),
                  ),
                ),
              );
            }else if(poemListState is PoemListSuccessState){
              List<PoemListModel> poemList = poemListState.poemList;
              return HomeWidget(poemList: poemList);
            }else if(poemListState is PoemListErrorState){
              return const Center(
                child: Text('Error'),
              );
            }
            return const Center();

          }
      ),
    );
  }
}
