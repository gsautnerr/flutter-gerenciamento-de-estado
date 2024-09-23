import 'package:flutter/material.dart';
import 'package:gerenciamentodeestado/screens/controller/fruit_get.cotroller.dart';
import 'package:get/get.dart';

class ContentGetWidget extends StatelessWidget {

  final FruitGetCotroller controller;

  const ContentGetWidget({super.key, required this.controller});





  @override
  Widget build(BuildContext context) {
    return Obx((){
        return ListView.builder(
          itemCount: controller.fruit.length,
          itemBuilder: (BuildContext context, int index){
            final fruit = controller.fruit[index];
            return ListTile(
              title: Text(fruit.name),
              subtitle: Text(fruit.price),
            );
          }
          );
      }
    );
  }
}
