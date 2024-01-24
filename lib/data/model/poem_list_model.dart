import 'package:naykhanyo/data/model/category_model.dart';

class PoemListModel {
  int? id;
  String? title;
  String? content;
  String? image;
  int? categoryId;
  String? date;
  CategoryModel? category;

  PoemListModel(
      {this.id,
        this.title,
        this.content,
        this.image,
        this.categoryId,
        this.date,
        this.category});

  PoemListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    image = json['image'];
    categoryId = json['category_id'];
    date = json['date'];
    category = json['category'] != null
        ? CategoryModel.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['image'] = image;
    data['category_id'] = categoryId;
    data['date'] = date;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}