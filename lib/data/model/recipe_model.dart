class RecipeModel {
  String title;
  String image;
  List ingredients;
  List preparation;
  String categoryTitle = '';
  bool isBookMark;
  int rate;

  RecipeModel({
    required this.title,
    required this.image,
    required this.ingredients,
    required this.preparation,
    required this.isBookMark,
    required this.rate,
    required this.categoryTitle,
  });
}

class Arguments {
  final List<RecipeModel> list;
  final int indexOfRecipeList;

  Arguments(this.list, this.indexOfRecipeList);
}
