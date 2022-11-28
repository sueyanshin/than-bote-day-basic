import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  late double getFontsize;

  SecondPage({super.key, required this.getFontsize});

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
                text: 'အနောက်ကျွန်းသမ္ဗုဒ္ဓေဂါထာတော် \n',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 30)),
            TextSpan(
                text: 'သမ္ဗုဒ္ဓေ အဌဝီသဉ္စ ၊ ဒွါဝီသဉ္စ ဣမေဗုဒ္ဓါ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(သမ်ဗုတ်ဓေ အက်ထဝီသင်စ ၊ ဒွါဝီသင်စ ဣမေဗုဒ္ဓါ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'ဧကတိံသ သဗ္ဗေဗုဒ္ဓါ ၊ ဒွတ္တိံသဉ္စ မဟာဗုဒ္ဓေါ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(အေကတိန်သ သတ်ဗေဗုတ်ဓါ ၊ ဒွတ်တိန်သစ မဟာဗုတ်ဓေါ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'ပဉ္စဝီသာ ဗုဒ္ဓါနတ္တိ ၊ တတ္တိံသ ဗုဒ္ဓဘာဝနာ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(ပင်စဝီသာဗုတ်ဓါနတ်တိ ၊ တစ်တိန်သဗုဒ္ဓဘာဝနာ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'ဧတေန ဗုဒ္ဓဂုဏေန ၊ တေသံ ဓမ္မဉ္စ သံဃဉ္စ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(အေတေန ဗုတ်ဓဂုနေန ၊ တေတံ ဓမ်မင်စ သံဃင်စ )\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'အာဒရေန နမာမဟံ\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(အာဒရေန နမာမဟံ။)\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'နမက္ကာရာ နုဘာဝေန ၊ ဟိတွာ သဗ္ဗေ ဥပဒ္ဒဝေ ။\n',
                style:
                    TextStyle(color: Colors.teal, fontSize: 20 + getFontsize)),
            TextSpan(
                text: '(နမက်ကာရာနုဘာဝေန ၊ ဟိတ်တဝါ သဗ်ဗေ အုပဒ်ဒဝေ ။)\n',
                style:
                    TextStyle(color: Colors.white, fontSize: 18 + getFontsize)),
            TextSpan(
                text: 'အနေကအန္တရာယာပိ ၊ ဝိနဿန္တု အသေသတော ။ \n',
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
