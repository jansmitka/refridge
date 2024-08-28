import 'package:flutter/material.dart';
import 'package:refridge/src/domain/extensions/groceries_extension.dart';
import 'package:refridge/src/settings/constants/images.dart';

enum GroceryType {
  liquid,
  solid,
}

extension GroceryTypeExt on GroceryType {
  int toInt() {
    switch (this) {
      case GroceryType.liquid:
        return 1;
      case GroceryType.solid:
        return 2;
    }
  }
}

enum GroceryUnits {
  ml,
  l,
  g,
  kg,
  pcs,
}

extension GroceryUnitsExt on GroceryUnits {
  int toInt() {
    switch (this) {
      case GroceryUnits.ml:
        return 1;
      case GroceryUnits.l:
        return 2;
      case GroceryUnits.g:
        return 3;
      case GroceryUnits.kg:
        return 4;
      case GroceryUnits.pcs:
        return 5;
    }
  }

  String getLabel(BuildContext context) {
    switch (this) {
      case GroceryUnits.ml:
        return "ml";
      case GroceryUnits.l:
        return "l";
      case GroceryUnits.g:
        return "g";
      case GroceryUnits.kg:
        return "Kg";
      case GroceryUnits.pcs:
        return "Pcs";
    }
  }
}

class GroceryTemplate {
  final String id;
  final String label;
  final String imgPath;
  final GroceryType defaultType;
  final GroceryUnits defaultUnit;

  const GroceryTemplate({
    required this.id,
    required this.label,
    this.imgPath = RFImages.milk,
    this.defaultType = GroceryType.solid,
    this.defaultUnit = GroceryUnits.ml,
  });

  static List<GroceryTemplate> searchGroceries(
    BuildContext context,
    String query,
  ) {
    return defaultGroceries.where((grocery) {
      final groceryLabel = grocery.getLabel(context).toLowerCase();
      final searchQuery = query.toLowerCase();
      return groceryLabel.contains(searchQuery);
    }).toList();
  }

  static const List<GroceryTemplate> defaultGroceries = [
    // Fruits
    GroceryTemplate(
        id: '1',
        label: 'Apple',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '2',
        label: 'Banana',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '3',
        label: 'Orange',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '4',
        label: 'Grapes',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '5',
        label: 'Berries',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '6',
        label: 'Melon',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '7',
        label: 'Mango',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '8',
        label: 'Pineapple',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '9',
        label: 'Lemon',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '10',
        label: 'Lime',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '11',
        label: 'Avocado',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '12',
        label: 'Pear',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '13',
        label: 'Peach',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '14',
        label: 'Plum',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '15',
        label: 'Cherry',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '16',
        label: 'Kiwi',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '17',
        label: 'Pomegranate',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Vegetables
    GroceryTemplate(
        id: '18',
        label: 'Carrot',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '19',
        label: 'Potato',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '20',
        label: 'Sweet Potato',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '21',
        label: 'Tomato',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '22',
        label: 'Cucumber',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '23',
        label: 'Lettuce',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '24',
        label: 'Spinach',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '25',
        label: 'Kale',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '26',
        label: 'Broccoli',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '27',
        label: 'Cauliflower',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '28',
        label: 'Bell Pepper',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '29',
        label: 'Onion',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '30',
        label: 'Garlic',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '31',
        label: 'Mushroom',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '32',
        label: 'Zucchini',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '33',
        label: 'Eggplant',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '34',
        label: 'Asparagus',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '35',
        label: 'Brussels Sprouts',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '36',
        label: 'Green Beans',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '37',
        label: 'Cabbage',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),

    // Dairy
    GroceryTemplate(
        id: '38',
        label: 'Milk',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.l),
    GroceryTemplate(
        id: '39',
        label: 'Cheese',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '40',
        label: 'Yogurt',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '41',
        label: 'Butter',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '42',
        label: 'Cream',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '43',
        label: 'Eggs',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Meats & Seafood
    GroceryTemplate(
        id: '44',
        label: 'Chicken',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '45',
        label: 'Beef',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '46',
        label: 'Pork',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '47',
        label: 'Lamb',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '48',
        label: 'Turkey',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '49',
        label: 'Salmon',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '50',
        label: 'Tuna',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '51',
        label: 'Shrimp',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '52',
        label: 'Cod',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '53',
        label: 'Crab',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '54',
        label: 'Lobster',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '55',
        label: 'Scallops',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '56',
        label: 'Tilapia',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '57',
        label: 'Sardines',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '58',
        label: 'Oysters',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Grains & Pasta
    GroceryTemplate(
        id: '59',
        label: 'Bread',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '60',
        label: 'Rice',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '61',
        label: 'Pasta',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '62',
        label: 'Oats',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '63',
        label: 'Quinoa',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '64',
        label: 'Tortillas',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Baking & Cooking Ingredients
    GroceryTemplate(
        id: '65',
        label: 'Flour',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '66',
        label: 'Sugar',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '67',
        label: 'Baking Soda',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '68',
        label: 'Baking Powder',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '69',
        label: 'Salt',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '70',
        label: 'Oil',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '71',
        label: 'Vinegar',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '72',
        label: 'Honey',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '73',
        label: 'Maple Syrup',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '74',
        label: 'Molasses',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '75',
        label: 'Spices',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Canned & Jarred Goods
    GroceryTemplate(
        id: '76',
        label: 'Canned Vegetables',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '77',
        label: 'Canned Fruits',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '78',
        label: 'Canned Beans',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '79',
        label: 'Canned Tomatoes',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '80',
        label: 'Soups',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '81',
        label: 'Sauces',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '82',
        label: 'Peanut Butter',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '83',
        label: 'Jam/Jelly',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Snacks & Sweets
    GroceryTemplate(
        id: '84',
        label: 'Chips',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '85',
        label: 'Crackers',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '86',
        label: 'Cookies',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '87',
        label: 'Chocolate',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '88',
        label: 'Candy',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '89',
        label: 'Nuts',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '90',
        label: 'Popcorn',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Beverages
    GroceryTemplate(
        id: '91',
        label: 'Coffee',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '92',
        label: 'Tea',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '93',
        label: 'Juice',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.l),
    GroceryTemplate(
        id: '94',
        label: 'Soda',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '95',
        label: 'Bottled Water',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.l),
    GroceryTemplate(
        id: '96',
        label: 'Sparkling Water',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.l),

    // Frozen Foods
    GroceryTemplate(
        id: '97',
        label: 'Frozen Vegetables',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '98',
        label: 'Frozen Fruits',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '99',
        label: 'Ice Cream',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '100',
        label: 'Frozen Dinners',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '101',
        label: 'Frozen Meats',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '102',
        label: 'Frozen Bread',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Condiments & Sauces
    GroceryTemplate(
        id: '103',
        label: 'Ketchup',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '104',
        label: 'Mustard',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '105',
        label: 'Mayonnaise',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '106',
        label: 'Salad Dressing',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '107',
        label: 'Hot Sauce',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '108',
        label: 'BBQ Sauce',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '109',
        label: 'Soy Sauce',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '110',
        label: 'Relish',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '111',
        label: 'Pickles',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '112',
        label: 'Salsa',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Breakfast Items
    GroceryTemplate(
        id: '113',
        label: 'Cereal',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '114',
        label: 'Pancake/Waffle Mix',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '115',
        label: 'Syrup',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '116',
        label: 'Instant Oatmeal',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '117',
        label: 'Breakfast Bars',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '118',
        label: 'Bagels',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '119',
        label: 'English Muffins',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Household Essentials
    GroceryTemplate(
        id: '120',
        label: 'Paper Towels',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '121',
        label: 'Toilet Paper',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '122',
        label: 'Dish Soap',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '123',
        label: 'Laundry Detergent',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '124',
        label: 'Cleaning Supplies',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '125',
        label: 'Trash Bags',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '126',
        label: 'Aluminum Foil',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '127',
        label: 'Plastic Wrap',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '128',
        label: 'Napkins',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Personal Care
    GroceryTemplate(
        id: '129',
        label: 'Toothpaste',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '130',
        label: 'Shampoo',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '131',
        label: 'Conditioner',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '132',
        label: 'Soap',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '133',
        label: 'Deodorant',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '134',
        label: 'Lotion',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '135',
        label: 'Shaving Cream',
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '136',
        label: 'Razors',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '137',
        label: 'Feminine Hygiene Products',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '138',
        label: 'Baby Care',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Pet Supplies
    GroceryTemplate(
        id: '139',
        label: 'Dog Food',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '140',
        label: 'Cat Food',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '141',
        label: 'Pet Treats',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '142',
        label: 'Kitty Litter',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '143',
        label: 'Ham',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '144',
        label: 'Tartar Sauce',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '145',
        label: 'Cheddar Cheese',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '146',
        label: 'Mozzarella Cheese',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '147',
        label: 'Swiss Cheese',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '148',
        label: 'Feta Cheese',
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
  ];
}
