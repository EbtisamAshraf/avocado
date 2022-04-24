import 'package:avocado_healthy_food/data/local_data/%20shared_preferences/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../constants/data_constants/assets_manager.dart';
import '../../data/model/recipe_model.dart';
part 'App_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

 static AppCubit get(context)=> BlocProvider.of<AppCubit>(context);


    List<RecipeModel> recipesList= [
    RecipeModel(
        title:'سلطة خضراء' ,
        image: ImageAssets.salad1,
        category: AvocadoCategory.salads ,
        ingredients: ['طماطم' , 'خس', 'جرجير' , 'بقدونس','زيت زيتون' ],
        preparation: ['قطعي الطماطم الصغيرة ألي نصفين','قطعي الخص والجرجير والبقدونس  ','أضيفي زيت الزيتون','اخلطي هذا المزيج معا','استمتعي بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle: 'سلطات',
        rate: 1,),
    RecipeModel(
        title:'دجاج مشوي' ,
        image: ImageAssets.meal4,
        category: AvocadoCategory.meals ,
        ingredients: ['دجاج' , 'طماطم', 'خس' , 'ذرة','خيار','بهارات' ],
        preparation: ['إشوي الدجاج في الفرن','قطعي الخضروات قطع متوسطة الحجم','ضع بهاراتك المفضلة','اسكب الخليط في إناء','زين الإناء بالقليل من البقدونس','استمتعي بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle: 'وجبات',
        rate: 1,),
    RecipeModel(
        title:'عصير الليمون بالنعناع' ,
        image: ImageAssets.lemonDrink,
        category: AvocadoCategory.drinks ,
        ingredients: ['الليمون' , 'النعناع', 'عسل' , 'ماء بارد'],
        preparation: ['قطعي الليمون وضعيه في الخلاط','أضيفي النعناع والسكر وقليل من الماء','اخلطي هذا المزيج معا','صفيه واسكبيه في الكأس','استمتعي بالمذاق الطيب',],
        isBookMark: false,
      rate: 4,
      categoryTitle: 'مشروبات'

    ),
    RecipeModel(
        title:'دجاج بالخضروات' ,
        image: ImageAssets.meal3,
        category: AvocadoCategory.meals ,
        ingredients: ['دجاج' , 'فلفل', 'طماطم' , 'زيتون','أفوكادو','جرجير' ],
        preparation: ['إشوي الدجاج بالفرن ','قطع الخضروات قطع صغيرة','اسكب الخضراوات  في إناء','ضع الدجاج وزينه بالأفوكادو والجرجير','استمتعي بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle: 'وجبات',
        rate: 4,),
    RecipeModel(
        title:'عصير الفراولة' ,
        image: ImageAssets.strawberryDrink,
        category: AvocadoCategory.drinks ,
        ingredients: ['الفراولة' , 'عصير الليمون', 'عسل' , 'ماء بارد'],
        preparation: ['قطعي الفراولة وضعيها في الخلاط','أضيفي عصير الليمون والعسل وقليل من الماء','اخلطي هذا المزيج معا','اسكبيه في الكأس وضعي مكعبات الثلج','استمتعي بالمذاق الطيب',],
        isBookMark: false ,
        rate: 3,
        categoryTitle: 'مشروبات'
    ),
    RecipeModel(
          title:'عصير الأناناس' ,
          image: ImageAssets.pineappleDrink,
          category: AvocadoCategory.drinks ,
          ingredients: ['اناناس' , 'زنجبيل', 'عسل' , 'مكعبات ثلج'],
          preparation: ['قطعي الأناناس وضعيه في الخلاط','أضيفي العسل والزنجبيل ','اخلطي هذا المزيج معا','اسكبيه في الكأس وضعي مكعبات الثلج','استمتعي بالمذاق الطيب',],
          isBookMark: false ,
          rate: 2,
        categoryTitle: 'مشروبات'),
    RecipeModel(
        title:'عصير البطيخ' ,
        image: ImageAssets.watermelonDrink,
        category: AvocadoCategory.drinks ,
        ingredients: ['البطيخ' , 'مكعبات ثلج', 'عسل' , ],
        preparation: ['قطعي البطيخ وضعيه في الخلاط','أضيفي العسل ','اخلطي هذا المزيج معا','اسكبيه في الكأس وضعي مكعبات الثلج','استمتعي بالمذاق الطيب',],
        isBookMark: false, rate: 2,
        categoryTitle: 'مشروبات'),
    RecipeModel(
        title:'سلطة حاره' ,
        image: ImageAssets.salad3,
        category: AvocadoCategory.salads ,
        ingredients: ['طماطم' , 'فلفل حار', 'بقدونس' , 'بهارات'],
        preparation: ['قطعي الطماطم شرائح متوسطة الحجم','قطعي الفلفل وبالبقدونس لقطع صغيرة ','أضيفي بهاراتك الخاصة','اخلطي هذا المزيج معا','اسكبيه في الأناء وضعي رشة بقدونس للتزيين','استمتعي بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle: 'سلطات',
    rate: 4),
    RecipeModel(
        title:'سلطة بالجبنة والزيتون' ,
        image: ImageAssets.salad2,
        category: AvocadoCategory.salads ,
        ingredients: ['طماطم' , 'جزر', 'خيار' , 'جبنة', 'زيتون', 'بقدونس', 'فلفل ألوان'],
        preparation: ['قطعي الطماطم والخيار لشرائح متوسطة الحجم','قطعي الجزر شرائح رفيعة ','قطعي الفلفل لقطع صغيرة ','أضيفي الزيتون','اخلطي هذا المزيج معا','أضيفي بعض قطع الجبنة','استمتعي بالمذاق الطيب',],
        isBookMark: false ,
        categoryTitle: 'سلطات',
    rate: 1),
    RecipeModel(
        title:'أرز بالبسلة والجزر' ,
        image: ImageAssets.meal1,
        category: AvocadoCategory.meals ,
        ingredients: ['أرز' , 'بسلة', 'جزر' , 'بهارات','بقدونس' ],
        preparation: ['نضع البسلة والجزر بماء على النار حتى ينضج','ثم نضغ الأرز مع التقليب','قم بتهدئة النار حتى ينضج','اسكب الخليط في إناء','زين الإناء بالقليل من البقدونس','استمتعي بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle: 'وجبات',
        rate: 1,),
    RecipeModel(
        title:'سمك مشوي' ,
        image: ImageAssets.meal2,
        category: AvocadoCategory.meals ,
        ingredients: ['سمك' , 'أرز', 'بسلة' , 'جزر','أفوكادو','ليمون' ],
        preparation: ['إشوي السمك ','نضع البسلة والجزر بماء على النار حتى ينضج','ثم نضغ الأرز مع التقليب','قم بتهدئة النار حتى ينضج','اسكب الأرز في إناء','ضع السمك وزينه بالأفوكادو بالليمون','استمتعي بالمذاق الطيب',],
        isBookMark: false,
        categoryTitle: 'وجبات',
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
enum AvocadoCategory {meals ,drinks , salads}