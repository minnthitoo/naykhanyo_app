import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naykhanyo/data/controller/poem_controller.dart';
import 'package:naykhanyo/data/model/poem_model.dart';
import 'package:naykhanyo/widget/detail_widget.dart';
import 'package:shimmer/shimmer.dart';

class Detail extends StatefulWidget {
  const Detail({super.key, required this.id, required this.title});
  final int id;
  final String title;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final PoemController _poemController = Get.put(PoemController());
  @override
  void initState() {
    super.initState();
    getDetail();
  }

  getDetail() async {
    await _poemController.getPoem(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Obx(() {
        PoemState poemState = _poemController.poemState.value;
        if (poemState is PoemLoadingState) {
          return Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 20,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 20,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 300,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (poemState is PoemSuccessState) {
          PoemModel poem = poemState.poem;
          return DetailWidget(poem: poem);
        } else if (poemState is PoemErrorState) {}
        return const Center();
      }),
    );
  }
}
