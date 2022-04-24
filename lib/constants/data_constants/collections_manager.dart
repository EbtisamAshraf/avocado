

import 'package:avocado_healthy_food/constants/data_constants/assets_manager.dart';

import '../../data/model/recipe_model.dart';

class CollectionsManager {



  // static  List<RecipeModel> recipesList= [
  //   RecipeModel(
  //       title:'عصير الليمون بالنعناع' ,
  //       image: ImageAssets.lemonDrink,
  //       category: avocadoCategory.drinks ,
  //       ingredients: ['الليمون' , 'النعناع', 'عسل' , 'ماء بارد'],
  //       preparation: ['قطعي الليمون وضعيه في الخلاط','أضيفي النعناع والسكر وقليل من الماء','اخلطي هذا المزيج معا','صفيه واسكبيه في الكأس','استمتعي بالمذاق الطيب',],
  //       isBookMark: false),
  //   RecipeModel(
  //       title:'عصير الفراولة' ,
  //       image: ImageAssets.strawberryDrink,
  //       category: avocadoCategory.drinks ,
  //       ingredients: ['الفراولة' , 'عصير الليمون', 'عسل' , 'ماء بارد'],
  //       preparation: ['قطعي الفراولة وضعيها في الخلاط','أضيفي عصير الليمون والعسل وقليل من الماء','اخلطي هذا المزيج معا','اسكبيه في الكأس وضعي مكعبات الثلج','استمتعي بالمذاق الطيب',],
  //       isBookMark: false),
  //   RecipeModel(
  //       title:'عصير البطيخ' ,
  //       image: ImageAssets.watermelonDrink,
  //       category: avocadoCategory.drinks ,
  //       ingredients: ['البطيخ' , 'مكعبات ثلج', 'عسل' , ],
  //       preparation: ['قطعي البطيخ وضعيه في الخلاط','أضيفي العسل ','اخلطي هذا المزيج معا','اسكبيه في الكأس وضعي مكعبات الثلج','استمتعي بالمذاق الطيب',],
  //       isBookMark: false),
  //   RecipeModel(
  //       title:'عصير الأناناس' ,
  //       image: ImageAssets.watermelonDrink,
  //       category: avocadoCategory.drinks ,
  //       ingredients: ['اناناس' , 'زنجبيل', 'عسل' , 'مكعبات ثلج'],
  //       preparation: ['قطعي الأناناس وضعيه في الخلاط','أضيفي العسل والزنجبيل ','اخلطي هذا المزيج معا','اسكبيه في الكأس وضعي مكعبات الثلج','استمتعي بالمذاق الطيب',],
  //       isBookMark: false),
  //   RecipeModel(
  //       title:'سلطة حاره' ,
  //       image: ImageAssets.salad3,
  //       category: avocadoCategory.salads ,
  //       ingredients: ['طماطم' , 'فلفل حار', 'بقدونس' , 'بهارات'],
  //       preparation: ['قطعي الطماطم شرائح متوسطة الحجم','قطعي الفلفل وبالبقدونس لقطع صغيرة ','أضيفي بهاراتك الخاصة','اخلطي هذا المزيج معا','اسكبيه في الأناء وضعي رشة بقدونس للتزيين','استمتعي بالمذاق الطيب',],
  //       isBookMark: false),
  //   RecipeModel(
  //       title:'سلطة بالجبنة والزيتون' ,
  //       image: ImageAssets.salad2,
  //       category: avocadoCategory.salads ,
  //       ingredients: ['طماطم' , 'جزر', 'خيار' , 'جبنة', 'زيتون', 'بقدونس' 'فلفل ألوان'],
  //       preparation: ['قطعي الطماطم والخيار لشرائح متوسطة الحجم','قطعي الجزر شرائح رفيعة ','قطعي الفلفل لقطع صغيرة ','أضيفي الزيتون','اخلطي هذا المزيج معا','أضيفي بعض قطع الجبنة','استمتعي بالمذاق الطيب',],
  //       isBookMark: false),
  //   RecipeModel(
  //       title:'سلطة خضراء' ,
  //       image: ImageAssets.salad3,
  //       category: avocadoCategory.salads ,
  //       ingredients: ['طماطم' , 'خس', 'جرجير' , 'بقدونس','زيت زيتون' ],
  //       preparation: ['قطعي الطماطم الصغيرة ألي نصفين','قطعي الخص والجرجير والبقدونس  ','أضيفي زيت الزيتون','اخلطي هذا المزيج معا','استمتعي بالمذاق الطيب',],
  //       isBookMark: false),
  //     ];


 static List categories = [
    {"name": "الكل", "icon": ImageAssets.logo},
    {"name": "الوجبات", "icon": ImageAssets.meal1},
    {"name": "السلطات", "icon": ImageAssets.salad1},
    {"name": "العصائر", "icon": ImageAssets.strawberryDrink},

  ];


}

enum avocadoCategory {meals ,drinks , salads}