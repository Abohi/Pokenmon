import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon/models/pokenmon_form_model/pokenmon_form_model.dart';
import 'package:pokemon/models/pokenmon_names_model/pokenmon_results_model.dart';
import 'package:pokemon/services/pokenmon_repository/pokenmon_repository.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../models/network_failure_model/network_failure.dart';
import '../../providers/state_provider/pokenmonFormStateProvider.dart';

class PokenmonCard extends HookWidget {
  final int id;
  final PokenmonResultModel pokenmonResultModel;
  final Function(PokenmonFormModel? formModel) onButtonPressed;
  const PokenmonCard({required this.id,required this.pokenmonResultModel,required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.15),
            blurRadius: 10,
            offset: Offset(0,0)
          )
        ]
      ),
      child: FutureBuilder<Either<NetworkFailure, PokenmonFormModel>>(
          future: context.read(pokenmonRepositoryProvider).getPokenmonForm(pokenmonResultModel.url),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return snapshot.data!.fold((l){
                showTopSnackBar(
                  context,
                  CustomSnackBar.error(
                    backgroundColor: const Color(0xffcf4537),
                    message:l.prefix??"",
                  ),
                );
                return SizedBox.shrink();
              }, (r){
                return GestureDetector(
                  onTap: (){
                    onButtonPressed(r);
                  },
                  child: Column(children: [
                    r.sprites.back_default==null?SizedBox.shrink():Center(child: Image.network(r.sprites.back_default!)),
                    SizedBox(height: 15,),
                    Center(child: Text(pokenmonResultModel.name.toUpperCase(),style: TextStyle(fontSize: 16,color: Colors.black),))
                  ]),
                );
              });
            }else if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }else{
              return GestureDetector(
                onTap: (){
                  onButtonPressed(null);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox.shrink(),
                    Center(child: Text(pokenmonResultModel.name.toUpperCase(),style: TextStyle(fontSize: 16,color: Colors.black),))
                  ],
                ),
              );
            }
          }),
    );
  }
}
//