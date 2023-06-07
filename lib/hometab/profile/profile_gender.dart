import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/comman_widget.dart';
import 'package:instagramflutter/comman/strings.dart';


class ProfileGender extends StatefulWidget {
  const ProfileGender({Key? key}) : super(key: key);

  @override
  State<ProfileGender> createState() => _ProfileGenderState();
}

class _ProfileGenderState extends State<ProfileGender> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context, false);
                        },
                        child: Icon(
                          Icons.close,
                          size: 30,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    CommanWidget.textLayoutWithWeight(strings.gender,
                        18, Colors.black, FontWeight.bold),
                  ],
                ),

                InkWell(
                  onTap: (){
                    gender;
                    Navigator.pop(context, gender.toString());

                    print("Gender: " +gender.toString());
                  },
                  child: CommanWidget.textLayoutWithWeight(
                      strings.save, 15, Colors.lightBlue, FontWeight.normal),
                ),

              ],
            ),
          ),

          CommanWidget.textLayout(strings.this_wont_be, 14, Colors.grey),

          RadioListTile(
            title: Text(strings.male),
            value: strings.male,
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text(strings.female),
            value: strings.female,
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text(strings.prefer_not_to_say),
            value: strings.prefer_not_to_say,
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          )
        ],
      ) ,
    ));
  }
}
