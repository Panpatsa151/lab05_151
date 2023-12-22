class Food {
  final String thFood;
  final String enFood;
  final double price;
  final String value;

  Food(
      {required this.thFood,
      required this.enFood,
      required this.price,
      required this.value});

  static List<Food> getFood() {
    return [
      Food(thFood: "ส้มตำ", enFood: "Somtam", price: 120, value: "ส้มตำ"),
      Food(
          thFood: "ไก่ย่าง",
          enFood: "Roast chicken",
          price: 100,
          value: "ไก่ย่าง"),
      Food(
          thFood: "ข้าวเหนียว",
          enFood: "Glutinous rice",
          price: 10,
          value: "ข้าวเหนียว"),
      Food(
          thFood: "ลาบหมู",
          enFood: "Spicy minced pork",
          price: 150,
          value: "ลาบหมู"),
    ];
  }
}
