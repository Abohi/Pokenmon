import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon/app_route/app_pages_route.gr.dart';

import 'package:pokemon/pages/widgets/custom_rectangular_button.dart';
import 'package:pokemon/pages/widgets/pokenmon_card.dart';
import 'package:pokemon/providers/state_controller_provider/pokenmon_mainpage_statecontroller_provider.dart';
import 'package:pokemon/providers/state_provider/pokenmonFormStateProvider.dart';
import 'package:pokemon/providers/state_provider/pokenmon_pageindex_holder_provider.dart';
import 'package:pokemon/services/pokenmon_repository/pokenmon_repository.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../models/network_failure_model/network_failure.dart';
import '../models/pokenmon_names_model/pokenmon_names_model.dart';
import '../providers/state_provider/pokenmonDefaultImageUrlProvider.dart';

class MainPokemonPage extends HookWidget {
  const MainPokemonPage();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var pokenPageIndexState = useProvider(pokenmonPageIndexHolderProvider);
    var pokenmonAddListState=useProvider(pokenMonFormProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:Padding(
          padding: EdgeInsets.only(left: 10.w,right: 10.w,bottom: 10.w),
          child: CustomRectangularButton(onButtonPressed: (){
                  context.router.navigate(const AddPokemonRoute());
          }, buttonLabelBg: Colors.white, buttonLabel: 'Add Pokemon', buttonBg: Colors.cyan,),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Center(
                child: Text("Pokenmon App",style: TextStyle(
                  color: Colors.black,fontSize: 20.sp
                ),),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: size.width,
                height: size.height*0.85,
                child: NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification)=>_handleScrollNotification(scrollNotification, context,pokenPageIndexState),
                  child: CustomScrollView(
                    slivers: [
                      FutureBuilder<Either<NetworkFailure, PokenmonNamesModel>>(
                          future: context.read(pokenmonRepositoryProvider).getPokenmon(),builder: (context,snapshot){
                        if(snapshot.hasData){
                          return snapshot.data!.fold((l){
                            showTopSnackBar(
                              context,
                              CustomSnackBar.error(
                                backgroundColor: const Color(0xffcf4537),
                                message:l.prefix??"",
                              ),
                            );
                            return SliverToBoxAdapter(child: SizedBox.shrink());
                          }, (r){
                            WidgetsBinding.instance!.addPostFrameCallback((_){
                              r.results.addAll(pokenmonAddListState.state);
                            });
                            return SliverToBoxAdapter(
                              child: SizedBox(
                                width: size.width,
                                height: size.height*0.85,
                                child: GridView.builder(itemBuilder:  (context, index){
                                  return PokenmonCard(id: index+1, pokenmonResultModel: r.results[index], onButtonPressed: (pokenForm){
                                      context.router.navigate(PokenmonDetailRoute(pokenmonFormModel: pokenForm));
                                  },);
                                },
                                  itemCount: r.results.length,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 15.h,crossAxisSpacing: 10.w),),
                              ),
                            );
                          });
                        }else if(snapshot.connectionState==ConnectionState.waiting){
                          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
                        }else{
                          return SliverToBoxAdapter(
                            child: Center(child: Text("No Pokemon",style: TextStyle(
                                color: Colors.black,fontSize: 16.sp
                            ),)),
                          );
                        }
                      })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  bool _handleScrollNotification(ScrollNotification notification,BuildContext context,StateController<num> pokenMonPageIndexState) {
    if (notification is ScrollEndNotification && notification.metrics.extentAfter == 0) {
      loadMore(context,pokenMonPageIndexState);
    }
    return false;
  }
  loadMore(BuildContext context,StateController<num> pokenMonPageIndexState)async{
    pokenMonPageIndexState.state=pokenMonPageIndexState.state+10;
    if(context.read(pokenmonPageIndexHolderProvider).state<=context.read(pokenmonTotalCountHolderProvider).state){
      context.read(pokenmonRepositoryProvider).getPokenmon();
    }else{
      pokenMonPageIndexState.state=10;
      context.read(pokenmonRepositoryProvider).getPokenmon();
    }
  }
}
