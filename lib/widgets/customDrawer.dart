import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class cd extends StatelessWidget {
   cd({Key? key}) : super(key: key);
  PageController controller =PageController();
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 1,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        key: key,
      width: 210,
      child: SingleChildScrollView(
        child: Column(
          children: [
           const DrawerHeader(
               decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/pic.jpg"),fit: BoxFit.fill)),

                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.transparent),
                    currentAccountPictureSize: Size.square(80),
                    currentAccountPicture: SizedBox(),
                    accountName:  Text(''),
                     accountEmail:  Padding(
                       padding: EdgeInsets.only(top: 33),
                       child: Text('Muzaffar Mehemood',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16),),
                     ),

                  )

                ),

            Divider(color: Colors.black,thickness: 1),//DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
              },
            )
    ]),
      )
    );

  }
   // TextButton(
   // onPressed: () async {
   // String email = 'this.is.tijani@gmail.com';
   // String subject = 'This is a test email';
   // String body = 'This is a test email body';
   //
   // String emailUrl = "mailto:$email?subject=$subject&body=$body";
   //
   // if (await canLaunch(emailUrl)) {
   // await launch(emailUrl);
   // } else {
   // throw "Error occured sending an email";
   // }
   // },
   // child: const CustomWidget(
   // icon: Icons.forward_to_inbox,
   // label: 'Send an email',
   // ),
   // ),

}

// ElevatedButton(
//     onPressed: () async {
//       String email = 'muzafarmunir@gmail.com';
//       String subject = 'Hi Muzzafar';
//       String body = 'This is a test email body';
//
//       String emailUrl = "mailto:$email?subject=$subject";
//
//       if (await canLaunch(emailUrl)) {
//         await launch(emailUrl);
//       }
//     },
//     child:
//       Icon(Icons.email_outlined),
//
// ),