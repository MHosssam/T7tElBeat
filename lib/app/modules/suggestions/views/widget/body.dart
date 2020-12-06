import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/controllers/suggestions_controller.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/views/widget/card_body.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/views/widget/sug_body.dart';

class Body extends GetView<SuggestionsController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Get.to(SuggestionBody(
              SuggestionContent: 'الفاكهه ليست طازجه و التوصيل ليس جيد',
              SuggestionOwnerName: 'Mohamed',
              SuggestionName: 'الفاكهه ليست طازجه',
              SuggestionOwnerPhone: '01001234567',
            ));
          },
          child: CardBody(),
        );
      },
      itemCount: 20,
    );
  }
}
