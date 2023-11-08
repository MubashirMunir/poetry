import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:poetry/darktheme.dart';
import 'package:poetry/module/dataModule.dart';
import '../widgets/customDrawer.dart';
import 'ghazal_screen.dart';

class hs extends StatefulWidget {
  hs({Key? key}) : super(key: key);
  @override
  State<hs> createState() => _hsState();
}

class _hsState extends State<hs> {
  @override
  void initState() {
    super.initState();
    laodData();
  }

  laodData() async {
    final jsonfile = await rootBundle.loadString("assets/files/Data.json");
    final jsondecod = jsonDecode(jsonfile);
    var productdata = jsondecod['jsonghazlen'];
    ghzls = List.from(productdata).map<ghzal>((e) => ghzal.fromMap(e)).toList();

    setState(() {});
  }
// Using "static" so that we can easily access it later
  bool ok = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: cd(),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer());
          }),
          actions: [
            IconButton(
                icon: Icon((ok == true) ? Icons.sunny : Icons.dark_mode),
                onPressed: () {
                  setState(() {
                    ok = !ok;
                  });
                  if (Get.isDarkMode) {
                    Get.changeTheme(ThemeData.light(useMaterial3: true));
                  } else {
                    Get.changeTheme(dark);
                  }
                })
          ],
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text(
            'غزلیں',
            style: TextStyle(
                color: Theme.of(context).colorScheme.background,
                fontWeight: FontWeight.bold,
                fontSize: 29),
          )),
      body: ListView.builder(
        itemCount: ghzls.length,
        itemBuilder: (context, index) {
          return GhzlWidget(
            data: ghzls[index],
          );
        },
      ),
    );
  }
}
