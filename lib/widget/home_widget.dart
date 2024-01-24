import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naykhanyo/data/model/poem_list_model.dart';
import 'package:naykhanyo/data/service/api_service.dart';
import 'package:naykhanyo/screen/detail.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key, required this.poemList});
  final List<PoemListModel> poemList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: poemList.length,
      itemBuilder: (context, index){
        return InkWell(
          onTap: (){
            Get.to(() => Detail(id: poemList[index].id ?? 0, title: poemList[index].title ?? ''));
          },
          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://naykhanyo.shwehash.com${poemList[index].image}'),
              ),
              title: Text(poemList[index].title ?? ''),
              subtitle: Text(poemList[index].category?.name ?? ''),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon( Icons.favorite_border, ),
              ),
            ),
          ),
        );
      },
    );
  }
}
