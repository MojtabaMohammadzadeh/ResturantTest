class Pivot {
  Pivot({
      this.foodTypeId, 
      this.foodsId,});

  Pivot.fromJson(dynamic json) {
    foodTypeId = json['food_type_id'];
    foodsId = json['foods_id'];
  }
  int? foodTypeId;
  int? foodsId;



}