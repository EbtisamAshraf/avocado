import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchForClinicCubit extends Cubit<SearchForClinicState> {

  SearchForClinicCubit(): super(SearchForClinicInitial());

  static SearchForClinicCubit get(context) =>
      BlocProvider.of<SearchForClinicCubit>(context);
  //
  // List<ClinicsModel> clinicsList = [
  //   ClinicsModel(
  //       name: "clinic name 6",
  //       physicianId: "physician Id",
  //       address: "address",
  //       longitude: "767.9878997",
  //       latitude: "23.4567876",
  //       landline1: "6787667897",
  //       landline2: "345678765",
  //       area: "area",
  //       rated: 5,
  //       physicianList: [
  //         PhysicianList(
  //             name: "doctor name 1",
  //             email: "sdf@sdfds.com",
  //             mobile: "8765678",
  //             npi: "npi",
  //             licenseCode: "licenseCode")
  //       ]),
  //   ClinicsModel(
  //       name: "clinic name 5",
  //       physicianId: "physician Id",
  //       address: "address",
  //       longitude: "767.9878997",
  //       latitude: "23.4567876",
  //       landline1: "6787667897",
  //       landline2: "345678765",
  //       area: "area",
  //       rated: 2.5,
  //       physicianList: [
  //         PhysicianList(
  //             name: "doctor name 2",
  //             email: "sdf@sdfds.com",
  //             mobile: "8765678",
  //             npi: "npi",
  //             licenseCode: "licenseCode")
  //       ]),
  //   ClinicsModel(
  //       name: "clinic name 4",
  //       physicianId: "physician Id",
  //       address: "address",
  //       longitude: "767.9878997",
  //       latitude: "23.4567876",
  //       landline1: "6787667897",
  //       landline2: "345678765",
  //       area: "area",
  //       rated: 4,
  //       physicianList: [
  //         PhysicianList(
  //             name: "doctor name 3",
  //             email: "sdf@sdfds.com",
  //             mobile: "8765678",
  //             npi: "npi",
  //             licenseCode: "licenseCode")
  //       ]),
  // ];
  //
  // List<ClinicsModel> searchedClinics = [];
  //
  // Rated? rated = Rated.top;
  //
  // bool isSearching = false;
  //
  // sortByRated({required Rated value, required List list}) {
  //   rated = value;
  //
  //   if (rated == Rated.top) {
  //     list.sort((a, b) => b.rated!.compareTo(a.rated));
  //   }
  //   if (rated == Rated.lowest) {
  //     list.sort((a, b) => a.rated!.compareTo(b.rated));
  //   }
  //   log(rated.toString());
  //   emit(SortByRatedState());
  //   return rated;
  // }
  //
  // num changeRate(double rating, index) {
  //   emit(ChangeRateState());
  //   return clinicsList[index].rated = rating;
  // }
  //
  // List<ClinicsModel> getClinicsList() {
  //   clinicsRepository.getData().then((value) {
  //     emit(ClinicLoaded(value));
  //     clinicsList = clinicsList;
  //   });
  //   return clinicsList;
  // }

  search(value) {
    // isSearching = true;
    // searchedClinics = clinicsList
    //     .where((element) =>
    //         element.physicianList![0].name!
    //             .toLowerCase()
    //             .toString()
    //             .contains(value) ||
    //         element.name!.toLowerCase().toString().contains(value))
    //     .toList();
    // emit(SearchState());
    // return searchedClinics;
  }
}
