import 'package:flutter/material.dart';

class SixPage extends StatelessWidget {
  late double getFontsize;

  SixPage({super.key, required this.getFontsize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 0,
        ),
        child: ListView(children: [
          RichText(
              text: TextSpan(children: [
            const TextSpan(
                text: 'အညွှန်း\n',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 30)),
            TextSpan(
                text:
                    "ဤ၅မျိုး သမ္ဗုဒ္ဓေ ဂါထာတော်ကြီး အားနေ့စဉ်ရွတ်ဖတ်သရဇ္ဈာယ်ခြင်းအားဖြင့် \nအန္တရာယ်ဆိုးကြမ္မာဆိုးအမျိုးမျိုးမှ ကင်းဝေးစေခြင်း၊\nလူနတ်အများ ချစ်ခင်မြတ်နိုး၏။\nကြောင့်ကြဗျာပါ မရှိစိုးရိမ်သောက ကင်းဝေးစေသည်။\nကျက်သရေမင်္ဂလာအပေါင်းနှင့်ပြည့်စုံ၍ အန္တရာယ်ကင်းခြင်း အကျိုးချက်ချင်းလက်ငင်းခံစားရမည်။\nကြီးပွားရေး စီးပွားရေး အစစအရာရာ တနေ့တခြားဒီရေလားကဲ့သို့ တိုးတက်စေမည်ဖြစ်သည်။\nမဟာလာဘ သမ္ဗုဒ္ဓေဂါထာတော်ကြီးမှာ ဘေးဆိုးအမျိုးမျိုး ၊ အန္တရာယ်ဆိုးအဖုံဖုံ ၊ ဂြိုလ်စီးဒသာအဝဝတို့ကို ဖယ်ရှားနိုင်ရုံသာမက မိမိတို့ရသင့်ရထိုက်သော စီးပွားများလည်းအလျင်အမြန်ရရှိနိုင်ပါသည်။"
                    "  ဂါထာတစ်ပုဒ်ကို ၉ ၊ ၂၇ ၊ ၁၀၈ ခေါက် မိမိ အဆင်ပြေသလိုအဓိဌာန်ပြီး စိပ်နိုင်ပါတယ်။ \n\n"
                    "သမ္ဗုဒ္ဓေ အစွမ်းထက်ကြောင်း အထူးပြောစရာမလိုပါ။ ထို့ကြောင့် နတ်ပေးသည့် သမ္ဗုဒ္ဓေ (၅) မျိုးအား နေ့ညမပြတ်"
                    "ယုံကြည်စွာ ရွတ်ဖတ်ပူဇော်ကြ၍ အကျိုးထူးများရရှိနိုင်ပါကြောင်း စေတနာ ၊ မေတ္တာဖြင့် ဓမ္မဒါနအဖြစ် ရှာဖွေစုဆောင်းလှူဒါန်းပါသည်။"
                    "\n\nဤကောင်းမှု၏ အဖို့ဘာဂသည် နိဗ္ဗာန်ရောက်ကြောင်း အထောာက်အပံ့ ဖြစ်ပါစေသတည်း။\n",
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
