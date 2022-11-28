import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  late double getFontsize;

  ThirdPage({super.key, required this.getFontsize});

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
                text: 'တောင်ကျွန်းသမ္ဗုဒ္ဓေဂါထာတော်\n',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 30)),
            TextSpan(
                text: 'သမ္ဗုဒ္ဓေ အဌဝီသဉ္စ ၊ ဒွါဒသဉ္စ သဟဿကေ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(သမ်ဗုတ်ဒေ အတ်ထဝီသင်စ ၊ ဒွါဒသင်စ သဟတ်သကေ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'ပဉ္စသတ သဟဿာနိ ၊ နမာမိ သိရသာမဟံ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(ပင်စသတ သဟတ်သာနိ ၊ နမာမိ သိရသာမဟံ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'အက်ပကာ ဝါလုကာ ဂင်္ဂါ ၊ အနတ္တာ နိဗ္ဗုတာ ဇိနာ\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '( အပ်ပကာ ဝါလုကာ ဂင်ဂါ ၊ အနန်တာ နိတ်ဗုတာ ဇိနာ)\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'တေတံ ဓမ္မဉ္စ သံဃဉ္စ ၊ အာဒရေန နမာမဟံ \n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(တေတံ ဓမ်မင်စ သံဃင်စ ၊ အာဒရေန နမာမဟံ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'နမက္ကာရာ နုဘာဝေန ၊ ဟိတွာ သဗ္ဗေ ဥပဒ္ဒဝေ\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(နမက်ကာရာ နုဘာဝေန ၊ ဟိတ်တွာ သဗ်ဗေ ဥပတ်ဒဝေ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'အနေကအန္တရာယာပိ ၊ ဝိနဿန္တု အသေသတော ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(အနေက အန်တရာယာပိ ဝိနတ်သန်တု အသေသတော ။။)\n',
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
