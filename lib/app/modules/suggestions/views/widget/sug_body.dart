import 'package:flutter/material.dart';
import 'package:ta7t_elbeet/app/data/TextData.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/views/widget/sug_container.dart';
import 'package:ta7t_elbeet/utilities/ColorsUtilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestionBody extends StatelessWidget {

  final String SuggestionOwnerName;
  final String SuggestionContent;
  final String SuggestionOwnerPhone;
  final String SuggestionName ;

  SuggestionBody({
    @required this.SuggestionOwnerPhone,
    @required this.SuggestionOwnerName,
    @required this.SuggestionName,
    @required this.SuggestionContent,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          // complaint head.
          SuggestionContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextData(
                      SuggestionOwnerName,
                      color: ColorsUtilities.appBlue,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    TextData(
                      SuggestionOwnerPhone,
                      color: ColorsUtilities.appYellow,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextData(SuggestionName,
                    //ProviderSubscriptionService.to.formatTime(complaintDate),
                    color: ColorsUtilities.appGrey100,
                  ),
                ),
              ],
            ),
          ),

          // complaint body.
          Expanded(
            child: SuggestionContainer(
              child: SingleChildScrollView(
                child: TextData(
                  SuggestionContent,
                  textOverflow: TextOverflow.visible,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}