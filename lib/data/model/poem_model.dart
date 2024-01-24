class PoemModel {
  int? id;
  String? title;
  String? content;
  String? image;
  int? categoryId;
  int? status;
  String? createdAt;
  String? updatedAt;

  PoemModel(
      {this.id,
        this.title,
        this.content,
        this.image,
        this.categoryId,
        this.status,
        this.createdAt,
        this.updatedAt});

  PoemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    image = json['image'];
    categoryId = json['category_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['image'] = image;
    data['category_id'] = categoryId;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}