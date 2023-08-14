import 'Pivot.dart';

class Foods {
  Foods({
      this.id, 
      this.restaurantId, 
      this.name, 
      this.capacity, 
      this.price, 
      this.description, 
      this.image, 
      this.status, 

      this.pivot,});

  Foods.fromJson(dynamic json) {
    id = json['id'];
    restaurantId = json['restaurant_id'];
    name = json['name'];
    capacity = json['capacity'];
    price = json['price'];
    description = json['description'];
    image = json['image'];
    status = json['status'];

    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }
  int? id;
  int? restaurantId;
  String? name;
  int? capacity;
  int? price;
  String? description;
  String? image;
  int? status;

  Pivot? pivot;



}