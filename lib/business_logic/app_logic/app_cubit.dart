import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants/data_constants/assets_manager.dart';
import '../../constants/data_constants/strings_manager.dart';
import '../../data/local_data/shared_preferences/shared_pref.dart';
import '../../data/model/recipe_model.dart';
import 'app_state.dart';


class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

 static AppCubit get(context)=> BlocProvider.of<AppCubit>(context);

  List categories = [
    {"name": StringsManager.home.tr(), "icon": ImageAssets.logo},
    {"name": StringsManager.meals.tr(), "icon": ImageAssets.meal1},
    {"name": StringsManager.salads.tr(), "icon": ImageAssets.salad1},
    {"name": StringsManager.drinks.tr(), "icon": ImageAssets.strawberryDrink},
  ];

  int selectedCategoryIndex = 0;
   changeCategoryIndex(int index){
     selectedCategoryIndex = index;
     emit(ChangeCategoryIndexStats());
     return selectedCategoryIndex;
   }

    List<RecipeModel> recipesList= [
    RecipeModel(
        title:'سلطة خضراء' ,
        image: ImageAssets.salad1,
        ingredients: ['طماطم' , 'خس', 'جرجير' , 'بقدونس','زيت زيتون' ],
        preparation: ['قطع الطماطم لقطع صغيرة','قطع الخس والجرجير والبقدونس  ','أضف زيت الزيتون','اخلط هذا المزيج معا','استمتع بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle: StringsManager.salads.tr(),
        rate: 1,),
    RecipeModel(
        title:'دجاج مشوي' ,
        image: ImageAssets.meal4,
        ingredients: ['دجاج' , 'طماطم', 'خس' , 'ذرة','خيار','بهارات' ],
        preparation: ['إشوي الدجاج في الفرن','قطع الخضروات قطع متوسطة الحجم','ضع بهاراتك المفضلة','اسكب الخليط في إناء','زين الإناء بالقليل من البقدونس','استمتع بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle:  StringsManager.meals.tr(),
        rate: 1,),
    RecipeModel(
        title:'عصير الليمون بالنعناع' ,
        image: ImageAssets.lemonDrink,
        ingredients: ['الليمون' , 'النعناع', 'عسل' , 'ماء بارد'],
        preparation: ['قطع الليمون وضعه في الخلاط','أضف النعناع والسكر وقليل من الماء','اخلط هذا المزيج معا','صفي الخليط واسكبه في الكأس','استمتع بالمذاق الطيب',],
        isBookMark: false,
      rate: 4,
      categoryTitle:  StringsManager.drinks.tr()

    ),
    RecipeModel(
        title:'دجاج بالخضروات' ,
        image: ImageAssets.meal3,
        ingredients: ['دجاج' , 'فلفل', 'طماطم' , 'زيتون','أفوكادو','جرجير' ],
        preparation: ['إشوي الدجاج بالفرن ','قطع الخضروات قطع صغيرة','اسكب الخضراوات  في إناء','ضع الدجاج وزينه بالأفوكادو والجرجير','استمتع بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle:  StringsManager.meals.tr(),
        rate: 4,),
    RecipeModel(
        title:'عصير الفراولة' ,
        image: ImageAssets.strawberryDrink,
        ingredients: ['الفراولة' , 'عصير الليمون', 'عسل' , 'ماء بارد'],
        preparation: ['قطع الفراولة وضعها في الخلاط','أضف عصير الليمون والعسل وقليل من الماء','اخلط هذا المزيج معا','اسكبه في الكأس وضع مكعبات الثلج','استمتع بالمذاق الطيب',],
        isBookMark: false ,
        rate: 3,
        categoryTitle:  StringsManager.drinks.tr()
    ),
    RecipeModel(
          title:'عصير الأناناس' ,
          image: ImageAssets.pineappleDrink,
          ingredients: ['اناناس' , 'زنجبيل', 'عسل' , 'مكعبات ثلج'],
          preparation: ['قطع الأناناس وضعه في الخلاط','أضف العسل والزنجبيل ','اخلط هذا المزيج معا','اسكبه في الكأس وضعي مكعبات الثلج','استمتع بالمذاق الطيب',],
          isBookMark: false ,
          rate: 2,
        categoryTitle:  StringsManager.drinks.tr()),
    RecipeModel(
        title:'عصير البطيخ' ,
        image: ImageAssets.watermelonDrink,
        ingredients: ['البطيخ' , 'مكعبات ثلج', 'عسل' , ],
        preparation: ['قطع البطيخ وضعه في الخلاط','أضيف العسل ','اخلط هذا المزيج معا','اسكبه في الكأس وضع مكعبات الثلج','استمتع بالمذاق الطيب',],
        isBookMark: false, rate: 2,
        categoryTitle: StringsManager.drinks.tr()),
    RecipeModel(
        title:'سلطة حاره' ,
        image: ImageAssets.salad3,
        ingredients: ['طماطم' , 'فلفل حار', 'بقدونس' , 'بهارات'],
        preparation: ['قطع الطماطم شرائح متوسطة الحجم','قطع الفلفل وبالبقدونس لقطع صغيرة ','أضف بهاراتك الخاصة','اخلط هذا المزيج معا','اسكبه في الأناء وضع رشة بقدونس للتزيين','استمتع بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle:  StringsManager.salads.tr(),
    rate: 4),
    RecipeModel(
        title:'سلطة بالجبنة والزيتون' ,
        image: ImageAssets.salad2,
        ingredients: ['طماطم' , 'جزر', 'خيار' , 'جبنة', 'زيتون', 'بقدونس', 'فلفل ألوان'],
        preparation: ['قطع الطماطم والخيار لشرائح متوسطة الحجم','قطع الجزر شرائح رفيعة ','قطع الفلفل لقطع صغيرة ','أضف الزيتون','اخلط هذا المزيج معا','أضف بعض قطع الجبنة','استمتع بالمذاق الطيب',],
        isBookMark: false ,
        categoryTitle:  StringsManager.salads.tr(),
    rate: 1),
    RecipeModel(
        title:'أرز بالبسلة والجزر' ,
        image: ImageAssets.meal1,
        ingredients: ['أرز' , 'بسلة', 'جزر' , 'بهارات','بقدونس' ],
        preparation: ['نضع البسلة والجزر بماء على النار حتى ينضج','ثم نضغ الأرز مع التقليب','قم بتهدئة النار حتى ينضج','اسكب الخليط في إناء','زين الإناء بالقليل من البقدونس','استمتع بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle:  StringsManager.meals.tr(),
        rate: 1,),
    RecipeModel(
        title:'سمك مشوي' ,
        image: ImageAssets.meal2,
        ingredients: ['سمك' , 'أرز', 'بسلة' , 'جزر','أفوكادو','ليمون' ],
        preparation: ['إشوي السمك ','نضع البسلة والجزر بماء على النار حتى ينضج','ثم نضغ الأرز مع التقليب','قم بتهدئة النار حتى ينضج','اسكب الأرز في إناء','ضع السمك وزينه بالأفوكادو بالليمون','استمتع بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle:  StringsManager.meals.tr(),
        rate: 4,),
  ];



 changeBookMark(title){
  int index =  recipesList.indexWhere((element) => element.title == title);
   recipesList[index].isBookMark = !(recipesList[index].isBookMark);

   emit(ChangeBookMarkStats());
   return recipesList;
 }

  bool isDark = false;

  initDarkMode({ bool? isDarkMode }){

    if(isDarkMode != null){
      isDark = isDarkMode;
      emit(ChangeDarkStats());
    }else{
      isDark = !isDark;
      SharedPref.saveData(key: 'isDark', value: isDark);
      emit(ChangeDarkStats());
    }

    return isDark;
  }





}
