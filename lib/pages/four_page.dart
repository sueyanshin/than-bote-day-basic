import 'package:flutter/material.dart';

class FourPage extends StatelessWidget {
  late double getFontsize;

  FourPage({super.key, required this.getFontsize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 0, bottom: 100),
        child: ListView(children: [
          RichText(
              text: TextSpan(children: [
            const TextSpan(
                text: 'မြောက်ကျွန်းသမ္ဗုဒ္ဓေဂါထာတော်\n',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 30)),
            TextSpan(
                text:
                    'သမ္ဗု​​ဒ္ဓေ အဋ္ဌဝီသဉ္စ ၊ ပဉ္စ သတ သဟဿာနိ။\nဒွါဒသဉ္စ သဟဿ​ကေ၊ ဂင်္ဂါယံ ဝါလုကာ စု​ဏ္ဏေ။\nပရာ​ဇေတွာ မဟာဖု​လ္လေ ၊ နမာမိ သိရသာမဟံ ။\n​တေသံ ဓမ္မဉ္စ သံဃဉ္စ၊ အာဒ​ရေန နမာမဟံ။\nနမက္ကာရာ နုဘာ​ဝေန၊ ဟိတွာ သ​ဗ္ဗေ ဥပ​ဒ္ဒ​ဝေ။\nအ​နေက အန္တရာယာပိ၊ ဝိနဿန္တု အ​သေသ​တော ။',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
          ])),
          SizedBox(
            height: 100,
          )
        ]),
      ),
    );
  }
}
