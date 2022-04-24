
import 'package:avocado_healthy_food/constants/data_constants/assets_manager.dart';
import 'package:avocado_healthy_food/constants/design_constants/colors_manager.dart';
import 'package:flutter/material.dart';

class RestaurantsHomeScreen extends StatelessWidget {
  const RestaurantsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Text('مطاعم لأكلات صحية ولذيذة',style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 20,),
        SizedBox(
          height: 300,
          child: Image.asset(ImageAssets.onBoardingImage4),
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListTile(
                        title: const Text('مخبوزات الجزيرة'),
                        subtitle: const Text('مخبوزات صحية ولذيذة'),
                        leading: Image.asset(ImageAssets.bakery),
                        trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios),onPressed: (){}),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListTile(
                        title: const Text('مخبوزات الجزيرة'),
                        subtitle: const Text('مخبوزات صحية ولذيذة'),
                        leading: Image.asset(ImageAssets.bakery),
                        trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios),onPressed: (){}),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListTile(
                        title: const Text('مخبوزات الجزيرة'),
                        subtitle: const Text('مخبوزات صحية ولذيذة'),
                        leading: Image.asset(ImageAssets.bakery),
                        trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios),onPressed: (){}),
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
