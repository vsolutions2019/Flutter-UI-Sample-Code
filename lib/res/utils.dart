


import 'package:flutterxui/res/color/color_dark.dart';
import 'package:flutterxui/res/color/color_light.dart';
import 'package:flutterxui/res/color/global_color.dart';

class Utils {

  GlobalColor _themColor= lightColor;
  bool _isLight=true;




  void setThem(GlobalColor them){
    if(them!=null)
      _themColor=them;
    _isLight=!_isLight;
    print('---------------------THEM--------------:$_themColor');
  }
  GlobalColor getThem(){
    if(_themColor == lightColor){
      _isLight =true;
      return lightColor;

    }

    else{
      _isLight =false;
      return darkColor;}
  }
  isLight (){
    return _isLight;
  }
}



Utils utils=Utils();