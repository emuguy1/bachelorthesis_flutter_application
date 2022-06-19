import 'package:de_num42_sharing/widget/persistentFooter.dart';
import 'package:de_num42_sharing/widget/topBar2.dart';

import 'dataProtection.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class ImprintPage extends StatefulWidget {
  const ImprintPage({Key? key}) : super(key: key);
  final String title = 'Sharing.';

  @override
  State<ImprintPage> createState() => _ImprintPageState();
}

class _ImprintPageState extends State<ImprintPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(hasBackArrow: true),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical:5.w,horizontal:10.h),
          child: HtmlWidget(
              '<div>'
                  '<h1>Impressum</h1>'
                  '<p><strong>Number42 GmbH</strong><br>Franz-Mayer-Straße 1<br>93053 Regensburg<br>Germany</p>'
              '<p>E-Mail:&nbsp;info@num42.de<br>Tel.&nbsp'
              '+49(0)941 / 20 00 08 70</p>'
              '<p>Geschäftsführer: Daniel Dengler<br>Handelsregister-Gericht: Amtsgericht Regensburg<br>Handelsregister-Nr.: HRB'
              '16147<br>USt-IdNr. DE 313 579 989</p>'
              '<p>Inhaltlich verantwortlich: Daniel Dengler</p>'
              '</div>',
            factoryBuilder: () => MyWidgetFactory(),),
        ),
      ),
      persistentFooterButtons: [
        PersistentFooter(),
      ],
    );
  }
}
