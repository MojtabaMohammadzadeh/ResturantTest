import 'Pivot.dart';
import 'Foods.dart';

class FoodTypes {
  FoodTypes({
      this.id, 
      this.restaurantId, 
      this.name, 

      this.pivot, 
      this.foods,});

  FoodTypes.fromJson(dynamic json) {
    id = json['id'];
    restaurantId = json['restaurant_id'];
    name = json['name'];

    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
    if (json['foods'] != null) {
      foods = [];
      json['foods'].forEach((v) {
        foods?.add(Foods.fromJson(v));
      });
    }
  }
  int? id;
  int? restaurantId;
  String? name;
  Pivot? pivot;
  List<Foods>? foods;



}