import 'package:flutter/material.dart';
import 'package:flutter_grocery/data/model/response/onboarding_model.dart';
import 'package:flutter_grocery/utill/dimensions.dart';
import 'package:flutter_grocery/utill/styles.dart';

class OnBoardingWidget extends StatelessWidget {
  final OnBoardingModel onBoardingModel;
  const OnBoardingWidget({Key? key, required this.onBoardingModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('-00000------0000000000000000000');
    print(onBoardingModel.imageUrl);
    return Column(children: [

      Expanded(flex: 7, child: Image.asset(onBoardingModel.imageUrl, fit: BoxFit.fill,)),

      SizedBox(height: 10,),

      Expanded(
        flex: 1,
        child: Text(
          onBoardingModel.title,
          style: poppinsMedium.copyWith(
            fontSize: Dimensions.fontSizeLarge,
            color: Theme.of(context).primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),

      Expanded(
        flex: 2,
        child: Text(
          onBoardingModel.description,
          style: poppinsLight.copyWith(
            fontSize: Dimensions.fontSizeLarge,
          ),
          textAlign: TextAlign.center,
        ),
      )

    ]);
  }
}
