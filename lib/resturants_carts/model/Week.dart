class Week {
  Week({
      this.id, 
      this.mealId, 
      this.day, 
      this.start, 
      this.end, 


  });

  Week.fromJson(dynamic json) {
    id = json['id'];
    mealId = json['meal_id'];
    day = json['day'];
    start = json['start'];
    end = json['end'];


  }
  int? id;
  int? mealId;
  int? day;
  String? start;
  String? end;





}