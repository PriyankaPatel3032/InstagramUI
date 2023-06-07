
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/comman_widget.dart';
import 'package:instagramflutter/comman/strings.dart';
import 'package:instagramflutter/hometab/profile/profile_gender.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String gender_val = strings.prefer_not_to_say;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
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
                        CommanWidget.textLayoutWithWeight(strings.edit_profile,
                            18, Colors.black, FontWeight.bold)
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context, false);
                      },
                      child: CommanWidget.textLayoutWithWeight(
                          strings.save, 15, Colors.lightBlue, FontWeight.normal),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.person_rounded,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CommanWidget.textLayoutWithWeight(strings.edit_picture,
                          13, Colors.lightBlue, FontWeight.normal),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              initialValue: 'Priyanka Patel',
                              readOnly: true,
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                                labelText: strings.name,

                              ),
                            ),
                            TextFormField(
                              initialValue: 'Priyanka3032',
                              readOnly: true,
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                                labelText: strings.username,

                              ),
                            ),
                            TextFormField(
                              initialValue: 'she/her',
                              readOnly: true,
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                                labelText: strings.pronouns,

                              ),
                            ),
                            TextFormField(
                              initialValue: 'Singer',
                              readOnly: true,
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                                labelText: strings.bio,

                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 10.0),
                              child: CommanWidget.textLayout(
                                  strings.add_link, 14, Colors.black),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
                              child: CommanWidget.textLayout(
                                  strings.gender, 14, Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: gender_val.toString().isEmpty
                                        ? CommanWidget.textLayout(
                                            strings.prefer_not_to_say,
                                            14,
                                            Colors.black)
                                        : CommanWidget.textLayout(
                                            gender_val, 14, Colors.black)),
                                InkWell(
                                  onTap: () {
                                    _navigateToProfileGenderScreen(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(Icons.navigate_next,
                                        size: 25, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                color: Colors.grey[300],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 10.0),
                              child: CommanWidget.textLayout(
                                  strings.switch_pro_account,
                                  14,
                                  Colors.lightBlue),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              color: Colors.grey[300],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 10.0),
                              child: CommanWidget.textLayout(
                                  strings.personal_information_settings,
                                  14,
                                  Colors.lightBlue),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              color: Colors.grey[300],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToProfileGenderScreen(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileGender(),
        ));

    setState(() {
      gender_val = result;
    });
  }
}
