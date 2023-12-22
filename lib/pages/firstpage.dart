import 'package:flutter/material.dart';
import 'package:lab05_151/food.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Food> foods = [];
  String foodValue = "กรุณาเลือกอาหาร";

  @override
  void initState() {
    super.initState();
    foods = Food.getFood();
  }

  List<Widget> createRadioFood() {
    List<Widget> myFoods = [];

    for (var fd in foods) {
      myFoods.add(RadioListTile(
        title: Text(fd.thFood),
        subtitle: Text(fd.enFood),
        secondary: Text("${fd.price}บาท"),
        value: fd.value,
        groupValue: foodValue,
        onChanged: (value) {
          setState(() {
            foodValue = value!;
          });
        },
      ));
    }
    return myFoods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food 151"),
      ),
      body: Column(
        children: [
          const Text(
            "เลือกเมนูอาหาร",
            style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
          ),
          Column(
            children: createRadioFood(),
          ),
          Text(
            foodValue,
            style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
