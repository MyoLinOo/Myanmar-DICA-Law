import 'package:flutter_mdetect/flutter_mdetect.dart';
import 'package:rabbit_converter/rabbit_converter.dart';

import 'item.dart';

class MyTheme {
  MyTheme._();

  static String mmText(String text) {
    return MDetect.isUnicode() ? text : Rabbit.uni2zg(text);
  }

  static final List<Item> myaitemBank = [
    Item(i: 'နိုင်ငံတော်၏ စီးပွားရေးမူဝါဒ', p: "invest.pdf"),
    Item(i: 'ရင်းနှီးမြှုပ်နှံမှု မူဝါဒ', p: "uago.pdf"),
    Item(i: 'မြန်မာနိုင်ငံရင်းနှီးမြှုပ်နှံမှု ဥပဒေ', p: "invest.pdf"),
    Item(
        i: "မြန်မာနိုင်ငံရင်းနှီးမြှုပ်နှံမှု နည်းဥပဒေ",
        p: "assets/invest.pdf"),
    Item(i: "ဝန်ဆောင်မှုနှုန်းထားများ", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၄၉/၂ဝ၁၄)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၅၀/၂ဝ၁၄)", p: "invest.pdf"),
    Item(i: "ကြေညာချက်အမှတ် (၅၁/၂ဝ၁၄)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၆၂/၂ဝ၁၅)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၂၆/၂ဝ၁၆)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၁၀/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၁၁/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၁၃/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၁၅/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၃၅/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၈၄/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၈၅/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၈၆/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၈၇/၂ဝ၁၇)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၅/၂ဝ၁၈)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၇/၂ဝ၁၈)", p: "invest.pdf"),
    Item(i: "ပုံစံ (၁)", p: "invest.pdf"),
    Item(i: "ပုံစံ (၂)", p: "invest.pdf"),
    Item(i: "ပုံစံ (၃)", p: "invest.pdf"),
    Item(i: " ပုံစံ (၄-က)", p: "invest.pdf"),
    Item(i: " ပုံစံ (၄-ခ)", p: "invest.pdf"),
    Item(i: "ပုံစံ (၅-က) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၅-ခ) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၆) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၇-က) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၇-ခ) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၈) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၉) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၁၀) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၁၁) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၁၂-က) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၁၂-ခ) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၁၃) ", p: "invest.pdf"),
    Item(i: "ပုံစံ (၁၄) ", p: "invest.pdf"),
    Item(
        i: "နိုင်ငံခြားသားကျွမ်းကျင်သူဝန်ထမ်းခန့်ထားမှု ရှင်းလင်းတင်ပြချက် ",
        p: "invest.pdf"),
    Item(i: "မြန်မာကုမ္ပဏီများ ဥပဒေ ", p: "invest.pdf"),
    Item(
        i: "မြန်မာကုမ္ပဏီများဆိုင်ရာ စည်းမျဉ်းနှင့်အမိန့်ကြော်ငြာစာများ ",
        p: "invest.pdf"),
    Item(i: "ကုမ္ပဏီဒါရိုက်တာများ လမ်းညွှန်စာအုပ် ", p: "invest.pdf"),
    Item(i: "မြန်မာအထူးစီးပွားရေးဇုန် ဥပဒေ ", p: "invest.pdf"),
    Item(i: "မြန်မာအထူးစီးပွားရေးဇုန် နည်းဥပဒေ ", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၈၁/၂ဝ၁၄) ", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၈၆/၂ဝ၁၆) ", p: "invest.pdf"),
    Item(i: "နိုင်ငံ့ဝန်ထမ်း ဥပဒေ ", p: "invest.pdf"),
    Item(i: "နိုင်ငံ့ဝန်ထမ်း နည်းဥပဒေ ", p: "invest.pdf"),
    Item(
        i: "ပြည်ထောင်စုသမ္မတမြန်မာနိုင်ငံတော် ဖွဲ့စည်းပုံအခြေခံဥပဒေ ",
        p: "invest.pdf"),
    Item(
        i: "ပြည်ထောင်စုသမ္မတမြန်မာနိုင်ငံတော် ဖွဲ့စည်းပုံအခြေခံဥပဒေကို ပြင်ဆင်သည့်ဥပဒေ",
        p: "invest.pdf"),
    Item(i: "နှစ်နိုင်ငံအကာအကွယ်ရေး သဘောတူစာချုပ်များ", p: "invest.pdf"),
    Item(
        i: " မြန်မာနိုင်ငံရင်းနှီးမြှုပ်နှံမှုမြှင့်တင်ရေးစီမံကိန်း",
        p: "assets/invest.pdf"),
    Item(i: "DICA Annual Report 2017-2018 ", p: "invest.pdf"),
    Item(i: "ကမ္ဘာ့ကုန်သွယ်ရေးအဖွဲ့၏ သဘောတူညီချက်များ", p: "invest.pdf"),
    Item(i: "မြန်မာ့ဘက်စုံဖွံ့ဖြိုးရေး မျှော်မှန်းချက်", p: "invest.pdf"),
    Item(
        i: "ပုဂ္ဂလိက ကဏ္ဍ ဖွံ့ဖြိုးရေး မူဘောင်နှင့် လုပ်ငန်းစီမံချက်",
        p: "assets/invest.pdf"),
    Item(i: "အထူးကုမ္ပဏီ အက်ဥပဒေ", p: "invest.pdf"),
    Item(i: "ကြေညာချက်အမှတ် (၂/၂ဝ၁၃)", p: "invest.pdf"),
    Item(i: "အမိန့်ကြော်ငြာစာအမှတ် (၅၉/၂ဝ၁၄)", p: "invest.pdf"),
    Item(i: "အစုစပ်လုပ်ငန်း ဥပဒေမူကြမ်း ", p: "invest.pdf"),
    Item(i: "ပို့ကုန် သွင်းကုန် ဥပဒေ ", p: "invest.pdf"),
    Item(
        i: "မြန်မာနိုင်ငံ၏ ပို့ကုန် သွင်းကုန် ဆိုင်ရာ လုပ်ထုံးလုပ်နည်းများ (2015) ",
        p: "invest.pdf"),
    Item(
        i: "တစ်နိုင်ငံလုံး ပစ်ခတ်တိုက်ခိုက်မှု ရပ်စဲရေး သဘောတူစာချုပ် ",
        p: "invest.pdf"),
    Item(
        i: "သွင်းကုန် အစားထိုး လုပ်ငန်းများအား ရင်းနှီးမြှုပ်နှံမှု ဖိတ်ခေါ်ခြင်း ",
        p: "invest.pdf"),
    Item(
        i: "အုပ်ချုပ်ထောက်ပံ့မှုဆိုင်ရာ ရင်းနှီးမြှုပ်နှံမှုလုပ်ငန်းများ ဖိတ်ခေါ်ခြင်း ",
        p: "invest.pdf"),
    Item(i: "ညွှန်ကြားချက်အမှတ် (၁/၂ဝ၁၃) ", p: "invest.pdf"),
    Item(
        i: "၂ဝ၁၇-၂ဝ၁၈ ဘဏ္ဍာနှစ် လုပ်ငန်းဆောင်ရွက်မှု အစီရင်ခံစာ ",
        p: "invest.pdf"),
    Item(i: "Digitalize DICA Year 2018 Plan", p: "invest.pdf"),
    Item(
        i: "မျှော်မှန်းချက်နှင့် လုပ်ငန်းစဉ်များ (၂ဝ၁၆-၂ဝ၁၇ မှ ၂ဝ၂ဝ-၂ဝ၂၁ အထိ)",
        p: "invest.pdf"),
    Item(
        i: " မြန်မာနိုင်ငံ၏ ရေရှည်တည်တံ့ခိုင်မြဲပြီး ဟန်ချက်ညီသော ဖွံ့ဖြိုးတိုးတက်မှု စီမံကိန်း",
        p: "invest.pdf"),
    Item(i: "လူသားအရင်းအမြစ် ဖွံ့ဖြိုးတိုးတက်ရေး စီမံချက်", p: "invest.pdf"),
    Item(
        i: "ညွှန်ကြားချက်အမှတ် (၂/၂ဝ၁၈) စီမံကိန်းဘဏ် (Project Bank) ဆိုင်ရာ ညွှန်ကြားချက်",
        p: "invest.pdf"),
    Item(i: "COVID-19 အားလုံးတစ်ပေါင်းတည်း ကျော်လွှားခြင်း", p: "invest.pdf"),
    Item(
        i: "တင်ဒါလုပ်ငန်းစဉ်၊ နိုင်ငံတော်ပိုင်မြေ၊ သဘောတူစာချုပ်ချုပ်ဆိုခြင်းဆိုင်ရာ မူဝါဒနှင့် ညွှန်ကြားချက်များ",
        p: "invest.pdf"),
  ];

  static final List<Item> engitemBank = [
    Item(i: "Myanmar Economic Policies", p: "mya_economy.pdf"),
    Item(i: "Investment Policies", p: "economic_eng.pdf"),
    Item(i: "Myanmar Investment Law", p: "economic_eng.pdf"),
    Item(i: "Myanmar Investment Rule", p: "economic_eng.pdf"),
    Item(i: "MIC Services Fees", p: "economic_eng.pdf"),
    Item(i: "Notification No. (49/2014)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (50/2014)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (51/2014)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (10/2017)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (11/2017)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (13/2017)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (15/2017)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (84/2017)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (85/2017)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (86/2017)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (87/2017)", p: "economic_eng.pdf"),
    Item(i: "Announcement of Myanmar ", p: "economic_eng.pdf"),
    Item(i: "Notification No. (5/2018)", p: "economic_eng.pdf"),
    Item(i: "Notification No. (7/2018)", p: "economic_eng.pdf"),
    Item(i: "Form (1)", p: "economic_eng.pdf"),
    Item(i: "Form (2)", p: "economic_eng.pdf"),
    Item(i: "Form (3)", p: "economic_eng.pdf"),
    Item(i: "Form (4-A)", p: "economic_eng.pdf"),
    Item(i: "Form (4-A)", p: "economic_eng.pdf"),
    Item(i: "Form (4-B)", p: "economic_eng.pdf"),
    Item(i: "Form (5-A)", p: "economic_eng.pdf"),
    Item(i: "Form (5-B)", p: "economic_eng.pdf"),
    Item(i: "Form (6)", p: "economic_eng.pdf"),
    Item(i: "Form (7-A)", p: "economic_eng.pdf"),
    Item(i: "Form (7-B)", p: "economic_eng.pdf"),
    Item(i: "Form (8)", p: "economic_eng.pdf"),
    Item(i: "Form (9)", p: "economic_eng.pdf"),
    Item(i: "Form (10)", p: "economic_eng.pdf"),
    Item(i: "Form (11)", p: "economic_eng.pdf"),
    Item(i: "Form (12-A)", p: "economic_eng.pdf"),
    Item(i: "Form (12-B)", p: "economic_eng.pdf"),
    Item(i: "Form (13)", p: "economic_eng.pdf"),
    Item(i: "Form (14)", p: "economic_eng.pdf"),
    Item(i: "Announcement of Myanmar ", p: "economic_eng.pdf"),
    Item(i: "Appointment of foreign experts", p: "economic_eng.pdf"),
    Item(i: "Myanmar Company Law", p: "economic_eng.pdf"),
    Item(i: "Myanmar Companies Regulations", p: "economic_eng.pdf"),
    Item(i: "Company Director Guide", p: "economic_eng.pdf"),
    Item(i: "Myanmar Economic Zone Law", p: "economic_eng.pdf"),
    Item(i: "Special Economic Zone Rule", p: "economic_eng.pdf"),
    Item(
        i: "Constitution of the Republic of the Union of Myanmar",
        p: "economic_eng.pdf"),
    Item(
        i: "OECD Benchmark Definition of FDI (4th Edition 2008)",
        p: "economic_eng.pdf"),
    Item(
        i: "Balance of Payment and International Investment Position Manual 6th Edition)",
        p: "economic_eng.pdf"),
    Item(i: "Myanmar Investment Promotion Plan - MIPP", p: "economic_eng.pdf"),
    Item(i: "ISIC Code", p: "economic_eng.pdf"),
    Item(i: "CPC Code", p: "economic_eng.pdf"),
    Item(i: "MDCV", p: "economic_eng.pdf"),
    Item(i: "ACIA", p: "economic_eng.pdf"),
    Item(i: "Protocol to Amend the ACIA", p: "economic_eng.pdf"),
    Item(i: "PSD Framework and Action Plan", p: "economic_eng.pdf"),
    Item(i: "Cost of Doing Business Survey Report", p: "economic_eng.pdf"),
    Item(i: "PPP Framework", p: "economic_eng.pdf"),
    Item(
        i: "Policy Framework for Investment - PFI (2015 Edition)",
        p: "economic_eng.pdf"),
    Item(i: "SDG Goals (2016)", p: "economic_eng.pdf"),
    Item(i: "WTO (Legal Texts)", p: "economic_eng.pdf"),
    Item(i: "OECD Investment Policy Review", p: "economic_eng.pdf"),
    Item(i: "The Export and Import Law", p: "economic_eng.pdf"),
    Item(i: "Investment Policy Framework", p: "economic_eng.pdf"),
    Item(i: "International Practices Policy ", p: "economic_eng.pdf"),
    Item(
        i: "International Practices Policy Framework of Investing Across Bor",
        p: "economic_eng.pdf"),
    Item(
        i: "Aftercare Services International Practices of FDI",
        p: "economic_eng.pdf"),
    Item(i: "Role of Investment Promotion Agency", p: "economic_eng.pdf"),
    Item(
        i: "Framework for FDI promotion Framework for FDI promotion",
        p: "economic_eng.pdf"),
    Item(
        i: "Inf Consolidated Text for Investment Facilities in WTO",
        p: "economic_eng.pdf"),
    Item(i: "Investment Application Guidebook", p: "economic_eng.pdf"),
    Item(
        i: "Multilateral Trading System and Foreign Multilateral Trading System and Foreign Direct Investment and FDIS Compilation",
        p: "economic_eng.pdf"),
    Item(i: "Myanmar Systainable Development Plan", p: "economic_eng.pdf"),
    Item(i: "The ASEAN Charter", p: "economic_eng.pdf"),
    Item(i: "ASEAN Economic Community Blueprint 2025", p: "economic_eng.pdf"),
    Item(
        i: "Notification No. (2/2018) Project Bank Notification",
        p: "economic_eng.pdf"),
    Item(i: "COVID-19 Economic Relief Plan(CERP)", p: "economic_eng.pdf"),
  ];
}
