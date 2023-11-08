import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poetry/module/dataModule.dart';
import 'package:poetry/screens/ghazal_screen.dart';

class pages extends StatefulWidget {
  const pages({super.key});

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> with TickerProviderStateMixin {

  @override
  void initState() {
    TabController _controller=TabController(length:3, vsync: this);
    _controller.dispose();
    super.initState();
  }
  int index = ghzls.length;
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,animationDuration: Duration(seconds: 1),initialIndex: index,
      child: Scaffold(appBar: AppBar(title: Text("Hi"),
      bottom: TabBar(
          tabs: [
            GhzlWidget(data: ghzls[index])
          ],),
    ))
    );
  }
}
