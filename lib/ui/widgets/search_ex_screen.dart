// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_app/ui/screens/search%20_view/search%20_components/rank_map_filter.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../business_logic/search_for_clinic_logic/search_for_clinic_cubit.dart';
// import '../../../../constants/design_constants/colors_manager.dart';
// import '../../../../constants/design_constants/fonts_manager.dart';
// import '../../../../data/apis/clinics_api.dart';
// import '../../../../data/model/clinics_model.dart';
// import '../../../../data/repositories/clinics_repository.dart';
// import '../../../widgets/doctor_and_clinics_details.dart';
// import '../../../widgets/search_bar.dart';
//
//
// class SearchClinicsScreen extends StatelessWidget {
//    const SearchClinicsScreen({Key? key}) : super(key: key);
//
//
//    @override
//    Widget build(BuildContext context) {
//
//      TextEditingController searchController = TextEditingController();
//
//      SearchForClinicCubit searchForClinicCubit = SearchForClinicCubit(ClinicsRepository(ClinicsAPI()));
//
//      return Scaffold(
//        body: BlocProvider.value(
//          value: searchForClinicCubit,
//          child:  BlocBuilder<SearchForClinicCubit, SearchForClinicState>(
//            builder: (context, state) {
//              return Column(
//                children: [
//                  // SearchBar
//                  Padding(
//                    padding: const EdgeInsetsDirectional.only(
//                      top: 98.0,  bottom: 25.0 ,),
//                    child: SearchBar(
//                      searchController: searchController,
//                        onChanged: (value){
//                      SearchForClinicCubit.get(context).search(searchController.text);
//                    },
//                    ),
//
//                  ),
//                  // sort
//                  // path the list
//                  RankMapFilter(searchForClinicCubit: searchForClinicCubit,),
//                  const SizedBox(height: 24),
//                  // doctor card
//                  Expanded(
//                    child: SearchForClinicCubit.get(context).isSearching?
//                    buildClinicView(context: context, list:SearchForClinicCubit.get(context).searchedClinics ):
//                    buildClinicView(context: context, list:SearchForClinicCubit.get(context).clinicsList ),
//
//                  ),
//                ],
//              );
//            },
//          ),
//
//        ),
//      );
//
//
//    }
//
// Widget buildClinicView({required BuildContext context, required List<ClinicsModel> list,}){
//      return ListView.separated(
//        itemCount:  list.length,
//        separatorBuilder: (BuildContext context, int index) {
//          return  const SizedBox(height: 20, );
//        },
//        itemBuilder:(BuildContext context, int index){
//          return Center(
//            child: Stack(
//              children: [
//                DoctorAndClinicsDetails(
//                 initialRating: list[index].rated as double,
//                  height: 170,
//                  borderRadiusGeometry: const BorderRadius.all(Radius.circular(25.0)),
//                  title: list[index].name,
//                  name: list[index].physicianList![0].name,
//                  nameColor: ColorsManager.deepBlue,
//                  specialist: 'Dog detection specialist',
//                  time: 'Available today 06:00 pm',
//                  timeColor: ColorsManager.black45,
//                  onRatingUpdate:  (rating) {
//                    SearchForClinicCubit.get(context).changeRate(rating, index);
//                    log( 'rating = ' + rating.toString());
//
//                  },
//
//                ),
//                Padding(
//                  padding: const EdgeInsets.only(top: 140.0),
//                  child: Container(
//                    height: 38,
//                    width: 376,
//                    decoration: BoxDecoration(
//                      color: ColorsManager.deepBlue,
//                      borderRadius: BorderRadius.circular(15.0),
//                    ),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: [
//                        Padding(
//                          padding: const EdgeInsets.only(left: 18.0),
//                          child: TextButton(
//                            child: const Text(
//                              'Review',
//                              style: TextStyle(
//                                  color: ColorsManager.white,
//                                  fontSize: FontSizeManager.s15,
//                                  fontWeight: FontWeight.normal
//                              ),
//                            ),
//                            onPressed: () {  },
//                          ),
//                        ),
//                        MaterialButton(
//                          height: 38,
//                          minWidth: 116,
//                          color: ColorsManager.primaryColor,
//                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//                          child: const Text(
//                            "Book now",
//                            style: TextStyle(
//                              color: ColorsManager.white,
//                              fontSize: FontSizeManager.s16,
//                            ),
//                          ),
//                          onPressed: () {},
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          );
//        } ,
//      );
// }
//
//
// }
