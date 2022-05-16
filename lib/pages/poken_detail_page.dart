import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/models/pokenmon_form_model/pokenmon_form_model.dart';

class PokenmonDetailPage extends HookWidget {
  final PokenmonFormModel? pokenmonFormModel;
  const PokenmonDetailPage({required this.pokenmonFormModel});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.cyan,
        body: Container(
          width: size.width,
          height: size.height,
          child: bodyWidget(context),
        ),
      ),
    );
  }
  bodyWidget(BuildContext context){
    if(pokenmonFormModel==null){
      return Center(
        child: Text("No detail"),
      );
    }else{
      return Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 20,
            left: 10.0,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                  ),
                  Text(
                    pokenmonFormModel!.name,
                    style:
                    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Text("Height: ${pokenmonFormModel!.height??""}"),
                  Text("Weight: ${pokenmonFormModel!.weight??""}"),
                  Text(
                    "Types",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  pokenmonFormModel!.types==null?SizedBox.shrink():Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokenmonFormModel!.types
                    !.map((t) => FilterChip(
                        backgroundColor: Colors.amber,
                        label: Text(t.type.name),
                        onSelected: (b) {}))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: pokenmonFormModel!.sprites.back_default==null?SizedBox.shrink():Hero(
                tag:pokenmonFormModel!.sprites.back_default!,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(pokenmonFormModel!.sprites.back_default!))),
                )),
          )
        ],
      );
    }
  }
}
