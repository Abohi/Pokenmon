import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon/models/pokenmon_form_model/pokenmon_sprite.dart';
import 'package:pokemon/models/types_model/type_model.dart';
import 'package:pokemon/models/types_model/types_model.dart';
import 'package:pokemon/pages/widgets/custom_rectangular_button.dart';
import 'package:pokemon/pages/widgets/custom_textfield.dart';

import '../models/pokenmon_form_model/pokenmon_form_model.dart';
import '../models/pokenmon_names_model/pokenmon_results_model.dart';
import '../providers/state_provider/pokenmonFormStateProvider.dart';
List<PokenmonResultModel>pokeList=[];
class AddPokemonPage extends HookWidget {
  const AddPokemonPage();

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var nameTextEditingController = useTextEditingController();
    var typeTextEditingController = useTextEditingController();
    var heightTextEditingController=useTextEditingController();
    var weightTextEditingController=useTextEditingController();
    var nameErrorText = useState<String>("");
    var typeErrorText = useState<String>("");
    var heightErrorText = useState<String>("");
    var weightErrorText = useState<String>("");
    var pokenmonAddListState=useProvider(pokenMonFormProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h,),
                Center(
                  child: Text("Add Pokenmon",style: TextStyle(
                      color: Colors.black,fontSize: 20.sp
                  ),),
                ),
                SizedBox(height: 20.h,),
                CustomTextField(errorText:nameErrorText.value,textFieldLabel:Text("Name",style:TextStyle(fontSize: 14,color: Colors.black),), textEditingController: nameTextEditingController, isTextFieldObscure: false, textInputType: TextInputType.name),
                SizedBox(height: 10,),
                CustomTextField(errorText:typeErrorText.value,textFieldLabel:Text("Type",style:TextStyle(fontSize: 14,color: Colors.black),), textEditingController: typeTextEditingController, isTextFieldObscure: false, textInputType: TextInputType.name),
                SizedBox(height: 10,),
                CustomTextField(errorText: heightErrorText.value,textFieldLabel:Text("Height",style:TextStyle(fontSize: 14,color: Colors.black),), textEditingController:heightTextEditingController, isTextFieldObscure: false, textInputType: TextInputType.number),
                SizedBox(height: 10,),
                CustomTextField(errorText: weightErrorText.value,textFieldLabel:Text("Weight",style:TextStyle(fontSize: 14,color: Colors.black),), textEditingController: weightTextEditingController, isTextFieldObscure: false, textInputType: TextInputType.number),
                SizedBox(height: 20,),
                CustomRectangularButton(onButtonPressed: ()async{
                  if(nameTextEditingController.text.isEmpty){
                    nameErrorText.value="Feild cannot be empty";
                    return;
                  }else{
                    nameErrorText.value="";
                  }
                  if(typeTextEditingController.text.isEmpty){
                    typeErrorText.value="Feild cannot be empty";
                    return;
                  }else{
                    typeErrorText.value="";
                  }
                  if(heightTextEditingController.text.isEmpty){
                    heightErrorText.value="Feild cannot be empty";
                    return;
                  }else{
                    heightErrorText.value="";
                  }
                  if(weightTextEditingController.text.isEmpty){
                    weightErrorText.value="Feild cannot be empty";
                    return;
                  }else{
                    weightErrorText.value="";
                  }
                  pokeList.add(PokenmonResultModel(name: nameTextEditingController.text, url: "",dummyPokenmon: PokenmonFormModel(weight: num.tryParse(weightTextEditingController.text), height: num.tryParse(heightTextEditingController.text),
                      types: [TypesModel(slot: 0, type: TypeModel(name: typeTextEditingController.text))], sprites: PokenmonSpriteModel(front_female: '',
                          back_female: '', back_shiny_female: '', back_shiny: '', front_shiny_female: '', front_default: '', front_shiny: '', back_default: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png'), name: nameTextEditingController.text)));

                  await Fluttertoast.showToast(msg: "Pokenmon added successfully",toastLength: Toast.LENGTH_SHORT);
                  pokenmonAddListState.state=pokeList;
                }, buttonLabelBg: Colors.white, buttonLabel: 'Add Pokemon', buttonBg: Colors.cyan,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
