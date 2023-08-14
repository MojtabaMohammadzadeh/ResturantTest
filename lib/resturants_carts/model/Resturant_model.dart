import 'Restaurant.dart';

class ResturantModel {
  ResturantModel({
      this.status, 
      this.restaurant,});

  ResturantModel.fromJson(dynamic json) {
    status = json['status'];
    restaurant = json['restaurant'] != null ? Restaurant.fromJson(json['restaurant']) : null;
  }
  bool? status;
  Restaurant? restaurant;



}