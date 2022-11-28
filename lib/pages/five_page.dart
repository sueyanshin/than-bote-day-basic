import 'package:flutter/material.dart';

class FivePage extends StatelessWidget {
  late double getFontsize;

  FivePage({super.key, required this.getFontsize});

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
                text: 'အောင်သမ္ဗုဒ္ဓေဂါထာတော်\n',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 30)),
            TextSpan(
                text:
                    'သမ္ဗုဒ္ဓေ အဌဝီသတိ၊ မမ ဂစ္ဆတိ ပုရတော။\n ပဉ္စဗုဒ္ဓါ မဟာတေဇော၊ မမ သိသေနိ သေသတိ။\n ဒိဗ္ဗတီတံ မာရက္ခန္တု၊ မေဇယမင်္ဂလံ၊ အဂ္ဂံ။\n သဗ္ဗေပိ မေ နမဿာမိ၊ ဂုဏေ အာပတ္တိ ပုဂ္ဂလေ။ \nအရိယာနဉ္စ သဗ္ဗေသံ၊ သာဝကာနဉ္စ သဗ္ဗသော။',
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
