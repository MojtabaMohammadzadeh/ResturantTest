




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/resturant_controller.dart';

class ResturantScreen extends StatelessWidget {
  final int ID;
     ResturantScreen({super.key, required this.ID});

    ResturantController _controller = Get.put(ResturantController());

    Future<void> initializeSettings() async {

      _controller.fetchresturant(ID);


      //Simulate other services for 3 seconds
      await Future.delayed(Duration(seconds: 2));
    }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
        future: initializeSettings(),
        builder: (context, snapshot){
          return Scaffold(
            appBar: AppBar(),
            body:Obx((){
              return _controller.isLoading.isTrue ?
                  Center(child: CircularProgressIndicator(),)
                  :  Column(

                children: [
                  // *************Tab Bar***********************
                  Container(
                    height: 80,
                    width: screenWidth,
                    
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _controller.MealsData.length,
                        itemBuilder: (context , index){
                          return  Obx((){
                            return GestureDetector(
                              onTap: (){
                                _controller.changeMeal(index);
                              },
                              child: Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  color:(_controller.selectedMeal.value == index)? Colors.lightBlueAccent: CupertinoColors.inactiveGray,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Center(child: Text(_controller.MealsData[index].name??"")),
                              ),
                            );
                          });
                        }),
                  ),


                  SizedBox(height: 32,),

                  Container(
                    height: 80,
                    width: screenWidth,

                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _controller.MealsData[_controller.selectedMeal.value].foodTypes?.length,
                        itemBuilder: (context , index){
                          return  Obx((){
                            return GestureDetector(
                              onTap: (){
                                _controller.changeFoodType(index);
                              },
                              child: Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  color:(_controller.selectedFoodType.value == index)? Colors.green: CupertinoColors.inactiveGray,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Center(child: Text(_controller.MealsData[_controller.selectedMeal.value].foodTypes?[index].name??"")),
                              ),
                            );
                          });
                        }),
                  ),



                ],
              );
            }
            ),
          );
    }



    );
  }
}
