import 'package:flutter/material.dart';


import '../../imports.dart';
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
  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Appbar(
            title: Text(
              'Profile body',
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [



              isURL(user!.photoURL)?CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(user!.photoURL),
              ): CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/human_000.png'),
              ),
              SizedBox(height: 10,),
              _username(context),
              SizedBox(height: 10,),
              _userBio(),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () async {
                    await authProvider.logout();
                    await SnsAuthWithFirebase().googleLogout();
                    AppRoutes.moveToPage(AppLinks.signIn, getOffAll: true);
                  },

                  child: Text('Log out Button'))
            ],
          ),
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

  Padding _editProfileBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: common_gap, vertical: common_xxs_gap),
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {
            AppRoutes.moveToPage(AppLinks.editProfileScreen, getOff: true);
          },

          child: Text(
            'Edit Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Padding _changePasswordBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: common_gap, vertical: common_xxs_gap),
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {
            AppRoutes.moveToPage(AppLinks.changePwScreen, getOff: true);
          },
          child: Text(
            'Change Password',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _username(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: Text(
        '${authProvider.user!.username}',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _userBio() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: Text(
        '${authProvider.user!.email}',
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
    );
  }
}

enum SelectedTab { left, right }
