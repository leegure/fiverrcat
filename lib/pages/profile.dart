import 'package:flutter/material.dart';
import 'package:pokercat/global/component/reusable_text.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../imports.dart';
import '../auth/data/constant.dart';
import '../auth/data/sns_firebase_auth.dart';
import '../global/common_size.dart';
import '../global/component/appbar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isURL(String s) => RegExp(
        r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$",
      ).hasMatch(s);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();

  User? edited;
  User? get user => edited ?? authProvider.user;
  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   _nameController.dispose();
  //
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.dark,
      appBar: Appbar(
        titleStr: 'Profile body',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isURL(Constant.img)
                ? CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(Constant.img),
                  )
                : CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        AssetImage('assets/images/human_000.png'),
                  ),
            SizedBox(
              height: 10,
            ),
            _username(context),
            SizedBox(
              height: 10,
            ),
            _userBio(),
            SizedBox(
              height: 10,
            ),

            Center(
              child: GestureDetector(
                onTap: () async {
                  await authProvider.logout();
                  await SnsAuthWithFirebase().googleLogout();

                  AppRoutes.moveToPage(AppLinks.signIn, getOffAll: true);
                },
                child: Container(
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xff004e6d),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Center(
                    child: ReusableText(
                      fontWeight: FontWeight.w700,
                      text: 'Log Out',

                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Row _appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'headachee',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  // Padding _editProfileBtn() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(
  //         horizontal: common_gap, vertical: common_xxs_gap),
  //     child: SizedBox(
  //       child: ElevatedButton(
  //         onPressed: () {
  //           AppRoutes.moveToPage(AppLinks.editProfileScreen, getOff: true);
  //         },
  //         child: Text(
  //           'Edit Profile',
  //           style: TextStyle(fontWeight: FontWeight.bold),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Padding _changePasswordBtn() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(
  //         horizontal: common_gap, vertical: common_xxs_gap),
  //     child: SizedBox(
  //       child: ElevatedButton(
  //         onPressed: () {
  //           AppRoutes.moveToPage(AppLinks.changePwScreen, getOff: true);
  //         },
  //         child: Text(
  //           'Change Password',
  //           style: TextStyle(fontWeight: FontWeight.bold),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget _username(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: ReusableText(
        text:
        '${Constant.name}'
        // '${authProvider.user!.username}',
      ),

    );
  }

  Widget _userBio() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: ReusableText(
        text: '${Constant.email}',

      ),
    );
  }
}

enum SelectedTab { left, right }
