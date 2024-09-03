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

  String getUnit(BuildContext context) {
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
        return "x";
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
        imgPath: RFImages.apple,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '2',
        label: 'Banana',
        imgPath: RFImages.banana,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '3',
        label: 'Orange',
        imgPath: RFImages.orange,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '4',
        label: 'Grapes',
        imgPath: RFImages.grapes,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '5',
        label: 'Berries',
        imgPath: RFImages.berries,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '6',
        label: 'Melon',
        imgPath: RFImages.melon,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '7',
        label: 'Mango',
        imgPath: RFImages.mango,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '8',
        label: 'Pineapple',
        imgPath: RFImages.pineapple,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '9',
        label: 'Lemon',
        imgPath: RFImages.lemon,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '10',
        label: 'Lime',
        imgPath: RFImages.lime,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '11',
        label: 'Avocado',
        imgPath: RFImages.avocado,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '12',
        label: 'Pear',
        imgPath: RFImages.pear,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '13',
        label: 'Peach',
        imgPath: RFImages.peach,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '14',
        label: 'Plum',
        imgPath: RFImages.plum,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '15',
        label: 'Cherry',
        imgPath: RFImages.cherry,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '16',
        label: 'Kiwi',
        imgPath: RFImages.kiwi,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '17',
        label: 'Pomegranate',
        imgPath: RFImages.pomegranate,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Vegetables
    GroceryTemplate(
        id: '18',
        label: 'Carrot',
        imgPath: RFImages.carrot,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '19',
        label: 'Potato',
        imgPath: RFImages.potato,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '20',
        label: 'Sweet Potato',
        imgPath: RFImages.sweetPotato,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '21',
        label: 'Tomato',
        imgPath: RFImages.tomato,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '22',
        label: 'Cucumber',
        imgPath: RFImages.cucumber,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '23',
        label: 'Lettuce',
        imgPath: RFImages.lettuce,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '24',
        label: 'Spinach',
        imgPath: RFImages.spinach,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '25',
        label: 'Kale',
        imgPath: RFImages.kale,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '26',
        label: 'Broccoli',
        imgPath: RFImages.broccoli,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '27',
        label: 'Cauliflower',
        imgPath: RFImages.cauliflower,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '28',
        label: 'Bell Pepper',
        imgPath: RFImages.bellPepper,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '29',
        label: 'Onion',
        imgPath: RFImages.onion,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '30',
        label: 'Garlic',
        imgPath: RFImages.garlic,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '31',
        label: 'Mushroom',
        imgPath: RFImages.mushroom,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '32',
        label: 'Zucchini',
        imgPath: RFImages.zucchini,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '33',
        label: 'Eggplant',
        imgPath: RFImages.eggplant,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '34',
        label: 'Asparagus',
        imgPath: RFImages.asparagus,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '35',
        label: 'Brussels Sprouts',
        imgPath: RFImages.brusselsSprouts,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '36',
        label: 'Green Beans',
        imgPath: RFImages.greenBeans,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '37',
        label: 'Cabbage',
        imgPath: RFImages.cabbage,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),

    // Dairy
    GroceryTemplate(
        id: '38',
        label: 'Milk',
        imgPath: RFImages.milk,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.l),
    GroceryTemplate(
        id: '39',
        label: 'Cheese',
        imgPath: RFImages.cheese,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '40',
        label: 'Yogurt',
        imgPath: RFImages.yogurt,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '41',
        label: 'Butter',
        imgPath: RFImages.butter,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '42',
        label: 'Cream',
        imgPath: RFImages.cream,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '43',
        label: 'Eggs',
        imgPath: RFImages.eggs,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Meats & Seafood
    GroceryTemplate(
        id: '44',
        label: 'Chicken',
        imgPath: RFImages.chicken,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '45',
        label: 'Beef',
        imgPath: RFImages.beef,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '46',
        label: 'Pork',
        imgPath: RFImages.pork,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '47',
        label: 'Lamb',
        imgPath: RFImages.lamb,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '48',
        label: 'Turkey',
        imgPath: RFImages.turkey,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '49',
        label: 'Salmon',
        imgPath: RFImages.salmon,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '50',
        label: 'Tuna',
        imgPath: RFImages.tuna,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '51',
        label: 'Shrimp',
        imgPath: RFImages.shrimp,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '52',
        label: 'Cod',
        imgPath: RFImages.cod,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '53',
        label: 'Crab',
        imgPath: RFImages.crab,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '54',
        label: 'Lobster',
        imgPath: RFImages.lobster,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '55',
        label: 'Scallops',
        imgPath: RFImages.scallops,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '56',
        label: 'Tilapia',
        imgPath: RFImages.tilapia,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '57',
        label: 'Sardines',
        imgPath: RFImages.sardines,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '58',
        label: 'Oysters',
        imgPath: RFImages.oysters,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Grains & Pasta
    GroceryTemplate(
        id: '59',
        label: 'Bread',
        imgPath: RFImages.bread,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '60',
        label: 'Rice',
        imgPath: RFImages.rice,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '61',
        label: 'Pasta',
        imgPath: RFImages.pasta,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '62',
        label: 'Oats',
        imgPath: RFImages.oats,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '63',
        label: 'Quinoa',
        imgPath: RFImages.quinoa,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '64',
        label: 'Tortillas',
        imgPath: RFImages.tortillas,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Baking & Cooking Ingredients
    GroceryTemplate(
        id: '65',
        label: 'Flour',
        imgPath: RFImages.flour,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '66',
        label: 'Sugar',
        imgPath: RFImages.sugar,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '67',
        label: 'Baking Soda',
        imgPath: RFImages.bakingSoda,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '68',
        label: 'Baking Powder',
        imgPath: RFImages.bakingPowder,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '69',
        label: 'Salt',
        imgPath: RFImages.salt,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '70',
        label: 'Oil',
        imgPath: RFImages.oil,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '71',
        label: 'Vinegar',
        imgPath: RFImages.vinegar,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '72',
        label: 'Honey',
        imgPath: RFImages.honey,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '73',
        label: 'Maple Syrup',
        imgPath: RFImages.mapleSyrup,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '74',
        label: 'Molasses',
        imgPath: RFImages.molasses,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '75',
        label: 'Spices',
        imgPath: RFImages.spices,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Canned & Jarred Goods
    GroceryTemplate(
        id: '76',
        label: 'Canned Vegetables',
        imgPath: RFImages.cannedVegetables,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '77',
        label: 'Canned Fruits',
        imgPath: RFImages.cannedFruits,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '78',
        label: 'Canned Beans',
        imgPath: RFImages.cannedBeans,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '79',
        label: 'Canned Tomatoes',
        imgPath: RFImages.cannedTomatoes,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '80',
        label: 'Soups',
        imgPath: RFImages.soups,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '81',
        label: 'Sauces',
        imgPath: RFImages.sauces,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '82',
        label: 'Peanut Butter',
        imgPath: RFImages.peanutButter,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '83',
        label: 'Jam/Jelly',
        imgPath: RFImages.jamJelly,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Snacks & Sweets
    GroceryTemplate(
        id: '84',
        label: 'Chips',
        imgPath: RFImages.chips,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '85',
        label: 'Crackers',
        imgPath: RFImages.crackers,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '86',
        label: 'Cookies',
        imgPath: RFImages.cookies,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '87',
        label: 'Chocolate',
        imgPath: RFImages.chocolate,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '88',
        label: 'Candy',
        imgPath: RFImages.candy,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '89',
        label: 'Nuts',
        imgPath: RFImages.nuts,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '90',
        label: 'Popcorn',
        imgPath: RFImages.popcorn,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Beverages
    GroceryTemplate(
        id: '91',
        label: 'Coffee',
        imgPath: RFImages.coffee,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '92',
        label: 'Tea',
        imgPath: RFImages.tea,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '93',
        label: 'Juice',
        imgPath: RFImages.juice,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.l),
    GroceryTemplate(
        id: '94',
        label: 'Soda',
        imgPath: RFImages.soda,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '95',
        label: 'Bottled Water',
        imgPath: RFImages.bottledWater,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.l),
    GroceryTemplate(
        id: '96',
        label: 'Sparkling Water',
        imgPath: RFImages.sparklingWater,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.l),

    // Frozen Foods
    GroceryTemplate(
        id: '97',
        label: 'Frozen Vegetables',
        imgPath: RFImages.frozenVegetables,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '98',
        label: 'Frozen Fruits',
        imgPath: RFImages.frozenFruits,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '99',
        label: 'Ice Cream',
        imgPath: RFImages.iceCream,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '100',
        label: 'Frozen Dinners',
        imgPath: RFImages.frozenDinners,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '101',
        label: 'Frozen Meats',
        imgPath: RFImages.frozenMeats,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '102',
        label: 'Frozen Bread',
        imgPath: RFImages.frozenBread,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Condiments & Sauces
    GroceryTemplate(
        id: '103',
        label: 'Ketchup',
        imgPath: RFImages.ketchup,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '104',
        label: 'Mustard',
        imgPath: RFImages.mustard,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '105',
        label: 'Mayonnaise',
        imgPath: RFImages.mayonnaise,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '106',
        label: 'Salad Dressing',
        imgPath: RFImages.saladDressing,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '107',
        label: 'Hot Sauce',
        imgPath: RFImages.hotSauce,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '108',
        label: 'BBQ Sauce',
        imgPath: RFImages.bbqSauce,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '109',
        label: 'Soy Sauce',
        imgPath: RFImages.soySauce,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '110',
        label: 'Relish',
        imgPath: RFImages.relish,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '111',
        label: 'Pickles',
        imgPath: RFImages.pickles,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '112',
        label: 'Salsa',
        imgPath: RFImages.salsa,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),

    // Breakfast Items
    GroceryTemplate(
        id: '113',
        label: 'Cereal',
        imgPath: RFImages.cereal,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '114',
        label: 'Pancake/Waffle Mix',
        imgPath: RFImages.pancakeWaffleMix,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '115',
        label: 'Syrup',
        imgPath: RFImages.syrup,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '116',
        label: 'Instant Oatmeal',
        imgPath: RFImages.instantOatmeal,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '117',
        label: 'Breakfast Bars',
        imgPath: RFImages.breakfastBars,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '118',
        label: 'Bagels',
        imgPath: RFImages.bagels,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '119',
        label: 'English Muffins',
        imgPath: RFImages.englishMuffins,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Household Essentials
    GroceryTemplate(
        id: '120',
        label: 'Paper Towels',
        imgPath: RFImages.paperTowels,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '121',
        label: 'Toilet Paper',
        imgPath: RFImages.toiletPaper,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '122',
        label: 'Dish Soap',
        imgPath: RFImages.dishSoap,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '123',
        label: 'Laundry Detergent',
        imgPath: RFImages.laundryDetergent,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '124',
        label: 'Cleaning Supplies',
        imgPath: RFImages.cleaningSupplies,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '125',
        label: 'Trash Bags',
        imgPath: RFImages.trashBags,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '126',
        label: 'Aluminum Foil',
        imgPath: RFImages.aluminumFoil,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '127',
        label: 'Plastic Wrap',
        imgPath: RFImages.plasticWrap,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '128',
        label: 'Napkins',
        imgPath: RFImages.napkins,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Personal Care
    GroceryTemplate(
        id: '129',
        label: 'Toothpaste',
        imgPath: RFImages.toothpaste,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '130',
        label: 'Shampoo',
        imgPath: RFImages.shampoo,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '131',
        label: 'Conditioner',
        imgPath: RFImages.conditioner,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '132',
        label: 'Soap',
        imgPath: RFImages.soap,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '133',
        label: 'Deodorant',
        imgPath: RFImages.deodorant,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '134',
        label: 'Lotion',
        imgPath: RFImages.lotion,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '135',
        label: 'Shaving Cream',
        imgPath: RFImages.shavingCream,
        defaultType: GroceryType.liquid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '136',
        label: 'Razors',
        imgPath: RFImages.razors,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '137',
        label: 'Feminine Hygiene Products',
        imgPath: RFImages.feminineHygieneProducts,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),
    GroceryTemplate(
        id: '138',
        label: 'Baby Care',
        imgPath: RFImages.babyCare,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.pcs),

    // Pet Supplies
    GroceryTemplate(
        id: '139',
        label: 'Dog Food',
        imgPath: RFImages.dogFood,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '140',
        label: 'Cat Food',
        imgPath: RFImages.catFood,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),
    GroceryTemplate(
        id: '141',
        label: 'Pet Treats',
        imgPath: RFImages.petTreats,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '142',
        label: 'Kitty Litter',
        imgPath: RFImages.kittyLitter,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.kg),

    // New entries
    GroceryTemplate(
        id: '143',
        label: 'Ham',
        imgPath: RFImages.ham,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '144',
        label: 'Tartar Sauce',
        imgPath: RFImages.tartarSauce,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.ml),
    GroceryTemplate(
        id: '145',
        label: 'Cheddar Cheese',
        imgPath: RFImages.cheddarCheese,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '146',
        label: 'Mozzarella Cheese',
        imgPath: RFImages.mozzarellaCheese,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '147',
        label: 'Swiss Cheese',
        imgPath: RFImages.swissCheese,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
    GroceryTemplate(
        id: '148',
        label: 'Feta Cheese',
        imgPath: RFImages.fetaCheese,
        defaultType: GroceryType.solid,
        defaultUnit: GroceryUnits.g),
  ];
}
