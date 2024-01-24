import 'package:flutter/cupertino.dart';
import 'package:naykhanyo/data/service/api_service.dart';

import '../data/model/poem_model.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key, required this.poem});
  final PoemModel poem;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(poem.content ?? ''),
            const SizedBox(
              height: 20,
            ),
            Image.network('${APIService.imageUrl}${poem.image}')
          ],
        ),
      ),
    );
  }
}
