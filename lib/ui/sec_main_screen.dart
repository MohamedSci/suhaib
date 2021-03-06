import 'package:flutter/material.dart';
import 'package:suhaib/Auth/auth_logic/auth_api_REMOTE_1630.dart';


class SecMainScreen extends StatefulWidget {
  const SecMainScreen({Key key, this.appBarTxt}) : super(key: key);
final String appBarTxt;

  @override
  _SecMainScreenState createState() => _SecMainScreenState();
}

class _SecMainScreenState extends State<SecMainScreen> {
  List<String> listTxt =
  ["الأدوات البحثية","الدرسات والأبحاث الشخصية",
    "الرسائل الجامعية باللغات الأجنبية","الرسائل الجامعية باللغة العربية",
    "الدرسات الأجنبية المنشورة"," الدرسات العربية المنشورة"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        reverse: true,
        itemCount: listTxt.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
         return InkWell(
           onTap: () {
             AuthApi.get(context).setCurrentIndex(3);
             AuthApi.get(context).setAppBarTxt(txt: listTxt[index]??"");
           },
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 12),
             child: Container(
               height: 72,
               child: Card(
                 semanticContainer: true,
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16.0),
                 ),
                 child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        listTxt[index],
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 17,
                          color: const Color(0xff242126),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],),),
             ),
           ),
         );
        },
      ),
    );
  }
}
