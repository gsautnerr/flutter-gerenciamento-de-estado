import 'package:gerenciamentodeestado/domain/fruit.dart';
import 'package:get/get.dart';

class FruitGetCotroller extends GetxController{
     final Rx<List<Fruit>> _fruits = Rx([]);


FruitGetCotroller();


List<Fruit> get fruit => _fruits.value;


addFruit(Fruit value){

  _fruits.value = List.from(_fruits.value)..add(value);

}

removeFruit(Fruit value){
  _fruits.value = List.from(_fruits.value)..remove(value);
}


}