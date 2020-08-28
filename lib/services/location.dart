import 'package:geolocator/geolocator.dart';

class Location{

  double latitude;
  double longitude;

  //returns the current location
  Future<void> getCurrentLocation() async {
      try{
        Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
        latitude = position.latitude;
        longitude = position.longitude;
      }// try
      catch(e){
        print(e);
      }// catch
    }//getCurrentLocation
  }// class



