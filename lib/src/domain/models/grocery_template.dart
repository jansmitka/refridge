import 'package:flutter/material.dart';
import 'package:refridge/src/settings/constants/images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
}

class GroceryTemplate {
  final String id;
  final String label;
  final String imgPath;
  final GroceryType defaultType;
  final GroceryUnits defaultUnit;

  GroceryTemplate({
    required this.id,
    required this.label,
    this.imgPath = RFImages.milkBottled,
    this.defaultType = GroceryType.solid,
    this.defaultUnit = GroceryUnits.ml,
  });
}

extension GroceryTemplateExt on GroceryTemplate {
  String getLabel(BuildContext context) {
    switch (id) {
      case "1":
        return AppLocalizations.of(context)!.grocery_apple;
      case "2":
        return AppLocalizations.of(context)!.grocery_banana;
      case "3":
        return AppLocalizations.of(context)!.grocery_orange;
      case "4":
        return AppLocalizations.of(context)!.grocery_grapes;
      case "5":
        return AppLocalizations.of(context)!.grocery_berries;
      case "6":
        return AppLocalizations.of(context)!.grocery_melon;
      case "7":
        return AppLocalizations.of(context)!.grocery_mango;
      case "8":
        return AppLocalizations.of(context)!.grocery_pineapple;
      case "9":
        return AppLocalizations.of(context)!.grocery_lemon;
      case "10":
        return AppLocalizations.of(context)!.grocery_lime;
      case "11":
        return AppLocalizations.of(context)!.grocery_avocado;
      case "12":
        return AppLocalizations.of(context)!.grocery_pear;
      case "13":
        return AppLocalizations.of(context)!.grocery_peach;
      case "14":
        return AppLocalizations.of(context)!.grocery_plum;
      case "15":
        return AppLocalizations.of(context)!.grocery_cherry;
      case "16":
        return AppLocalizations.of(context)!.grocery_kiwi;
      case "17":
        return AppLocalizations.of(context)!.grocery_pomegranate;
      case "18":
        return AppLocalizations.of(context)!.grocery_carrot;
      case "19":
        return AppLocalizations.of(context)!.grocery_potato;
      case "20":
        return AppLocalizations.of(context)!.grocery_sweet_potato;
      case "21":
        return AppLocalizations.of(context)!.grocery_tomato;
      case "22":
        return AppLocalizations.of(context)!.grocery_cucumber;
      case "23":
        return AppLocalizations.of(context)!.grocery_lettuce;
      case "24":
        return AppLocalizations.of(context)!.grocery_spinach;
      case "25":
        return AppLocalizations.of(context)!.grocery_kale;
      case "26":
        return AppLocalizations.of(context)!.grocery_broccoli;
      case "27":
        return AppLocalizations.of(context)!.grocery_cauliflower;
      case "28":
        return AppLocalizations.of(context)!.grocery_bell_pepper;
      case "29":
        return AppLocalizations.of(context)!.grocery_onion;
      case "30":
        return AppLocalizations.of(context)!.grocery_garlic;
      case "31":
        return AppLocalizations.of(context)!.grocery_mushroom;
      case "32":
        return AppLocalizations.of(context)!.grocery_zucchini;
      case "33":
        return AppLocalizations.of(context)!.grocery_eggplant;
      case "34":
        return AppLocalizations.of(context)!.grocery_asparagus;
      case "35":
        return AppLocalizations.of(context)!.grocery_brussels_sprouts;
      case "36":
        return AppLocalizations.of(context)!.grocery_green_beans;
      case "37":
        return AppLocalizations.of(context)!.grocery_cabbage;
      case "38":
        return AppLocalizations.of(context)!.grocery_milk;
      case "39":
        return AppLocalizations.of(context)!.grocery_cheese;
      case "40":
        return AppLocalizations.of(context)!.grocery_yogurt;
      case "41":
        return AppLocalizations.of(context)!.grocery_butter;
      case "42":
        return AppLocalizations.of(context)!.grocery_cream;
      case "43":
        return AppLocalizations.of(context)!.grocery_eggs;
      case "44":
        return AppLocalizations.of(context)!.grocery_chicken;
      case "45":
        return AppLocalizations.of(context)!.grocery_beef;
      case "46":
        return AppLocalizations.of(context)!.grocery_pork;
      case "47":
        return AppLocalizations.of(context)!.grocery_lamb;
      case "48":
        return AppLocalizations.of(context)!.grocery_turkey;
      case "49":
        return AppLocalizations.of(context)!.grocery_salmon;
      case "50":
        return AppLocalizations.of(context)!.grocery_tuna;
      case "51":
        return AppLocalizations.of(context)!.grocery_shrimp;
      case "52":
        return AppLocalizations.of(context)!.grocery_cod;
      case "53":
        return AppLocalizations.of(context)!.grocery_crab;
      case "54":
        return AppLocalizations.of(context)!.grocery_lobster;
      case "55":
        return AppLocalizations.of(context)!.grocery_scallops;
      case "56":
        return AppLocalizations.of(context)!.grocery_tilapia;
      case "57":
        return AppLocalizations.of(context)!.grocery_sardines;
      case "58":
        return AppLocalizations.of(context)!.grocery_oysters;
      case "59":
        return AppLocalizations.of(context)!.grocery_bread;
      case "60":
        return AppLocalizations.of(context)!.grocery_rice;
      case "61":
        return AppLocalizations.of(context)!.grocery_pasta;
      case "62":
        return AppLocalizations.of(context)!.grocery_oats;
      case "63":
        return AppLocalizations.of(context)!.grocery_quinoa;
      case "64":
        return AppLocalizations.of(context)!.grocery_tortillas;
      case "65":
        return AppLocalizations.of(context)!.grocery_flour;
      case "66":
        return AppLocalizations.of(context)!.grocery_sugar;
      case "67":
        return AppLocalizations.of(context)!.grocery_baking_soda;
      case "68":
        return AppLocalizations.of(context)!.grocery_baking_powder;
      case "69":
        return AppLocalizations.of(context)!.grocery_salt;
      case "70":
        return AppLocalizations.of(context)!.grocery_oil;
      case "71":
        return AppLocalizations.of(context)!.grocery_vinegar;
      case "72":
        return AppLocalizations.of(context)!.grocery_honey;
      case "73":
        return AppLocalizations.of(context)!.grocery_maple_syrup;
      case "74":
        return AppLocalizations.of(context)!.grocery_molasses;
      case "75":
        return AppLocalizations.of(context)!.grocery_spices;
      case "76":
        return AppLocalizations.of(context)!.grocery_canned_vegetables;
      case "77":
        return AppLocalizations.of(context)!.grocery_canned_fruits;
      case "78":
        return AppLocalizations.of(context)!.grocery_canned_beans;
      case "79":
        return AppLocalizations.of(context)!.grocery_canned_tomatoes;
      case "80":
        return AppLocalizations.of(context)!.grocery_soups;
      case "81":
        return AppLocalizations.of(context)!.grocery_sauces;
      case "82":
        return AppLocalizations.of(context)!.grocery_peanut_butter;
      case "83":
        return AppLocalizations.of(context)!.grocery_jam_jelly;
      case "84":
        return AppLocalizations.of(context)!.grocery_chips;
      case "85":
        return AppLocalizations.of(context)!.grocery_crackers;
      case "86":
        return AppLocalizations.of(context)!.grocery_cookies;
      case "87":
        return AppLocalizations.of(context)!.grocery_chocolate;
      case "88":
        return AppLocalizations.of(context)!.grocery_candy;
      case "89":
        return AppLocalizations.of(context)!.grocery_nuts;
      case "90":
        return AppLocalizations.of(context)!.grocery_popcorn;
      case "91":
        return AppLocalizations.of(context)!.grocery_coffee;
      case "92":
        return AppLocalizations.of(context)!.grocery_tea;
      case "93":
        return AppLocalizations.of(context)!.grocery_juice;
      case "94":
        return AppLocalizations.of(context)!.grocery_soda;
      case "95":
        return AppLocalizations.of(context)!.grocery_bottled_water;
      case "96":
        return AppLocalizations.of(context)!.grocery_sparkling_water;
      case "97":
        return AppLocalizations.of(context)!.grocery_frozen_vegetables;
      case "98":
        return AppLocalizations.of(context)!.grocery_frozen_fruits;
      case "99":
        return AppLocalizations.of(context)!.grocery_ice_cream;
      case "100":
        return AppLocalizations.of(context)!.grocery_frozen_dinners;
      case "101":
        return AppLocalizations.of(context)!.grocery_frozen_meats;
      case "102":
        return AppLocalizations.of(context)!.grocery_frozen_bread;
      case "103":
        return AppLocalizations.of(context)!.grocery_ketchup;
      case "104":
        return AppLocalizations.of(context)!.grocery_mustard;
      case "105":
        return AppLocalizations.of(context)!.grocery_mayonnaise;
      case "106":
        return AppLocalizations.of(context)!.grocery_salad_dressing;
      case "107":
        return AppLocalizations.of(context)!.grocery_hot_sauce;
      case "108":
        return AppLocalizations.of(context)!.grocery_bbq_sauce;
      case "109":
        return AppLocalizations.of(context)!.grocery_soy_sauce;
      case "110":
        return AppLocalizations.of(context)!.grocery_relish;
      case "111":
        return AppLocalizations.of(context)!.grocery_pickles;
      case "112":
        return AppLocalizations.of(context)!.grocery_salsa;
      case "113":
        return AppLocalizations.of(context)!.grocery_cereal;
      case "114":
        return AppLocalizations.of(context)!.grocery_pancake_waffle_mix;
      case "115":
        return AppLocalizations.of(context)!.grocery_syrup;
      case "116":
        return AppLocalizations.of(context)!.grocery_instant_oatmeal;
      case "117":
        return AppLocalizations.of(context)!.grocery_breakfast_bars;
      case "118":
        return AppLocalizations.of(context)!.grocery_bagels;
      case "119":
        return AppLocalizations.of(context)!.grocery_english_muffins;
      case "120":
        return AppLocalizations.of(context)!.grocery_paper_towels;
      case "121":
        return AppLocalizations.of(context)!.grocery_toilet_paper;
      case "122":
        return AppLocalizations.of(context)!.grocery_dish_soap;
      case "123":
        return AppLocalizations.of(context)!.grocery_laundry_detergent;
      case "124":
        return AppLocalizations.of(context)!.grocery_cleaning_supplies;
      case "125":
        return AppLocalizations.of(context)!.grocery_trash_bags;
      case "126":
        return AppLocalizations.of(context)!.grocery_aluminum_foil;
      case "127":
        return AppLocalizations.of(context)!.grocery_plastic_wrap;
      case "128":
        return AppLocalizations.of(context)!.grocery_napkins;
      case "129":
        return AppLocalizations.of(context)!.grocery_toothpaste;
      case "130":
        return AppLocalizations.of(context)!.grocery_shampoo;
      case "131":
        return AppLocalizations.of(context)!.grocery_conditioner;
      case "132":
        return AppLocalizations.of(context)!.grocery_soap;
      case "133":
        return AppLocalizations.of(context)!.grocery_deodorant;
      case "134":
        return AppLocalizations.of(context)!.grocery_lotion;
      case "135":
        return AppLocalizations.of(context)!.grocery_shaving_cream;
      case "136":
        return AppLocalizations.of(context)!.grocery_razors;
      case "137":
        return AppLocalizations.of(context)!.grocery_feminine_hygiene_products;
      case "138":
        return AppLocalizations.of(context)!.grocery_baby_care;
      case "139":
        return AppLocalizations.of(context)!.grocery_dog_food;
      case "140":
        return AppLocalizations.of(context)!.grocery_cat_food;
      case "141":
        return AppLocalizations.of(context)!.grocery_pet_treats;
      case "142":
        return AppLocalizations.of(context)!.grocery_kitty_litter;

      default:
        return AppLocalizations.of(context)!.account_screen_title;
    }
  }
}

List<GroceryTemplate> defaultGroceries = [
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
];
