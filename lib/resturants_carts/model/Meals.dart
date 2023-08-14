import 'FoodTypes.dart';
import 'Week.dart';

class Meals {
  Meals({
      this.id, 
      this.restaurantId, 
      this.name, 
      this.status, 
      this.image, 

      this.active, 
      this.foodTypes, 
      this.week,});

  Meals.fromJson(dynamic json) {
    id = json['id'];
    restaurantId = json['restaurant_id'];
    name = json['name'];
    status = json['status'];
    image = json['image'];

    active = json['active'];
    if (json['food_types'] != null) {
      foodTypes = [];
      json['food_types'].forEach((v) {
        foodTypes?.add(FoodTypes.fromJson(v));
      });
    }
    if (json['week'] != null) {
      week = [];
      json['week'].forEach((v) {
        week?.add(Week.fromJson(v));
      });
    }
  }
  int? id;
  int? restaurantId;
  String? name;
  int? status;
  String? image;
  bool? active;
  List<FoodTypes>? foodTypes;
  List<Week>? week;



}