import 'Meals.dart';

class Restaurant {
  Restaurant({
      this.id, 
      this.hotelId, 
      this.name, 
      this.image, 
      this.status, 
      this.description, 
      this.tell, 

      this.meals,});

  Restaurant.fromJson(dynamic json) {
    id = json['id'];
    hotelId = json['hotel_id'];
    name = json['name'];
    image = json['image'];
    status = json['status'];
    description = json['description'];
    tell = json['tell'];

    if (json['meals'] != null) {
      meals = [];
      json['meals'].forEach((v) {
        meals?.add(Meals.fromJson(v));
      });
    }
  }
  int? id;
  int? hotelId;
  String? name;
  String? image;
  int? status;
  String? description;
  String? tell;
  List<Meals>? meals;



}