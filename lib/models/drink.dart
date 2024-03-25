class Drink {

  int drinkId;
  String drinkName;
  String drinkImageName;
  String pricePerLiter;
  String rating;

  Drink({
    required this.drinkId,
    required this.drinkName,
    required this.drinkImageName,
    required this.pricePerLiter,
    required this.rating
  });

  int get getDrinkId {
    return drinkId;
  }

  String get getDrinkImageUrl {
    return drinkImageName;
  }

  String get getDrinkName {
    return drinkName;
  }

  String get getRating {
    return rating;
  }

  String get getPricePerLitter {
    return pricePerLiter;
  }

}