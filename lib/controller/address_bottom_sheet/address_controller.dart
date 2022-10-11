import 'package:get/get.dart';

class AddressController extends GetxController {

  String mainLocation='GREEN PLAZA, MOTA VARACHHA';
  String fullAddress='101, Green plaza, MOTA VARACHHA, 394101';
  List<String> mainLocationList=['GREEN PLAZA, MOTA VARACHHA','AVADH, SARTHANA','THE GALLERIA, KIRAN CHOWK',];
  List<String> fullAddressList=['101, Green plaza, MOTA VARACHHA, 394101','170,171, Avadh Viceroy,Sarthana, 395006','1,THE Galleria,Kiran Chowk, 395006',];

  selectedAddress(int index){
    mainLocation=mainLocationList[index];
    update();
  }

}