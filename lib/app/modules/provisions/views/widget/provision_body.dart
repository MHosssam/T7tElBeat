import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta7t_elbeet/app/modules/provisions/views/widget/body.dart';
import 'package:ta7t_elbeet/app/modules/provisions/views/widget/provision_title.dart';


class ProvisionsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // logo.
          Container(
            width: 1080.w,
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              height: 500.h,
              width: 500.h,
            ),
          ),
          ProvisionTitle('الشروط والأحكام'),
          Body(
            'تدرس النصوص العربية (عند القدماء) دراسة مستقلة بل كانت هذه الدراسة مقسمة بين النقد والبلاغة وعلم القوعد وغيرها وفي الحقيقة، درست النصوص العربية صرفاً أو نحواً وغيرهما في الزمن القديم على مستوى الجملة أو تتآل من الجمل لكن علم لغة النص الحديث لا يرى أن النص تتآل من الجمل الكثيرة فالنص هو ليس بمجرد جانب من جوانب الواقع اللغوي بل هو جزء فعلي من الواقع بلحمه ودمه. ولذلك لا يتوقف "علم لغة النص" عند كلمات النص وتحليلها في مستويات الدرس اللغوي صوتاً ونحواً وصرفاً ودلالةً فقط، بل يهتم أن ينفذ ما يكون وراء النص من جميع العوامل المعرفية والنفسية والاجتماعية ومن العمليات العقلية \nم  لأن النص حصيلة لتفاعل جميع هذه العوامل ونجد أن علم لغة النص يركز على العلوم الأخرى أيضاً التي تهتم بالاتصال الإنساني مثل علم الاجتماع وعلم النفس وغيرها. ولعلم لغة النص ملامح واضحة والقسمات فقد بنى لنفسه معايير تأسيسية وتنظيمية وكلاهما يساعدان في أن يتميز النص عن غيره من المنطوقات ويدرسان جودة النص وفعاليته وملائمته !',
          ),
        ],
      ),
    );
  }
}
