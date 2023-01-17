import 'package:flutter/cupertino.dart';
import 'package:restaurant_app/model/menumodel.dart';
import 'package:restaurant_app/service/firebase/firebase_firestore.dart';


class FirestoreViewModel with ChangeNotifier{
  FirebaseFireStoreServis _servis = FirebaseFireStoreServis();

  Future <List<MenuModel>?> fetchmenu()async{
    try{
       return await _servis.fetchMenu();
    }catch(e){
      print(e);
      return null;
    }
  }

   Future sendData(List<MenuModel> json)async{
    try{
       return await _servis.sendData(json);
    }catch(e){
      print(e);
      return null;
    }
  
  }

}