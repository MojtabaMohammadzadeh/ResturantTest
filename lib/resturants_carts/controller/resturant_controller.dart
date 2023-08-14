


import 'package:get/get.dart';

import '../model/Meals.dart';
import '../remote/resturant_remote.dart';

class ResturantController extends GetxController {
  var isLoading = true.obs;
  var MealsData = <Meals>[];
  var selectedMeal = 0.obs;
  var selectedFoodType = 0.obs;

  changeMeal(int i){
    selectedMeal.value = i;
  }

  changeFoodType(int i){
    selectedFoodType.value = i;
  }



  fetchresturant(int id) async {
    isLoading(true);

    var Resturant_Resturant = await Resturantrepository().fetchResturant(id);

    if (Resturant_Resturant != null) {
      MealsData.clear();
      Resturant_Resturant.restaurant?.meals?.forEach((element) {
        MealsData.add(element);
      });

      isLoading(false);
    }
  }
}