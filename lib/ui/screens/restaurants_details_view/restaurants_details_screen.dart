import 'package:avocado_healthy_food/constants/data_constants/assets_manager.dart';
import 'package:avocado_healthy_food/constants/design_constants/colors_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class RestaurantsDetailsScreen extends StatelessWidget {
  const RestaurantsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(

                  child: const BuildRestaurantImage(),
              height: MediaQuery.of(context).size.height * 0.3),
              PositionedDirectional(
                top: 35,
                start: 16,
                child: CircleAvatar(
                    backgroundColor: ColorsManager.primaryColor.withOpacity(0.4),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        }, icon: Icon(Icons.adaptive.arrow_back))),
              ),
              PositionedDirectional(
                top: 35,
                end: 16,
                child: CircleAvatar(
                    backgroundColor: ColorsManager.primaryColor.withOpacity(0.4),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmarks_outlined))),
              ),
               PositionedDirectional(
                start: 0,
                bottom:5,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration:  const BoxDecoration(
                      color: ColorsManager.black40,
                    borderRadius: BorderRadiusDirectional.only(topEnd:Radius.circular(30.0) ,bottomEnd:Radius.circular(30.0) )

                     ),

                  child: Column(
                    children:  [
                      Text('مخبوزات الجزيرة', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color:ColorsManager.white ) ,),
                      // Text('مخبوزات صحية ولذيذة', style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
              ),

            ],

          ),
          const SizedBox(height: 20,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: ColorsManager.black40,
                  border: BorderDirectional(end: BorderSide(style: BorderStyle.solid))
              ),
              child: Column(
                children:  [

                 Text('قائمة الطعام', style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40,),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2/ 2.5,
                    crossAxisSpacing:0.2,
                    mainAxisSpacing: 15.0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                 padding: EdgeInsets.zero,
                itemCount: 6,
                itemBuilder: (c, index) => GestureDetector(
                  onTap: () { },
                  child: Container(

                   margin: const EdgeInsetsDirectional.only(start: 20,end:10),
                    child: Card(
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Image.asset(
                              ImageAssets.bakery1,
                              fit: BoxFit.cover,
                            ),

                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'خبز',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '\$5000',
                              style: TextStyle(
                                  color: ColorsManager.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
          const SizedBox(height: 50,)

        ],
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 30),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(child: const Text('أطلب الآن'),onPressed: (){})),
    );
  }


}

class BuildRestaurantImage extends StatelessWidget {
  const BuildRestaurantImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(ImageAssets.bakery,
          fit: BoxFit.contain),
    );
  }
}