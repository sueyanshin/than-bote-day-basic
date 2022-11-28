import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  late double getFontsize;

  FirstPage({super.key, required this.getFontsize});

  // TextStyle bodyText1 = TextStyle(color: Colors.teal, fontSize: 20);

  // TextStyle bodyText2 = TextStyle(color: Colors.white, fontSize: 18);

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
                text: 'အ​ရှေ့ကျွန်းသ​မ္ဗု​ဒ္ဓေဂါထာတော် \n',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 30)),
            TextSpan(
                text: 'သမ္ဗု​ဒ္ဓေ အဋ္ဌဝီသဥ္စ ၊ သဗ္ဗ​တေဇံ သဗ္ဗဂုဏံ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(သမ်‌ဗုတ်ဒေ အက်ထဝီသင်စ ၊ သပ်ဗတေဇံ သပ်ဗဂုဏံ ။ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'သဗ္ဗသုခံ လဘတုမေ ၊ ဆရဝီ ဆာရံ ဆရီစ ဆာယံ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(သပ်ဗသုခံ လဘတုမေ ၊ ဆာရဝီ ဆာရန် ဆရီစ ဆာယံ ။ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'ပဉ္စဗုဒ္ဓါ မဟာတေဇံ ၊ သဗ္ဗေညုတ ဉာဏဝရံ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(ပင်စဗုတ်ဓမဟာတေဇံ ၊ သပ်ဗေညုတ ဉာဏဝရံ ။ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'သဗ္ဗသတ္တရု သဗ္ဗဘယံ ၊ ဝိနဿန္တု အသေ-သတော ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(သပ်ဗသတ်တရု သပ်ဗဘယံ ၊ ဝိနတ်သန်တု အသေ-သတော ။ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
          ])),
          SizedBox(
            height: 100,
          )
        ]),
      ),
    );
  }
}
