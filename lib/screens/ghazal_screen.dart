import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poetry/module/dataModule.dart';

class GhzlWidget extends StatefulWidget {
  const GhzlWidget({Key? key, required this.data}) :  super(key: key);
final ghzal data;

  @override
  State<GhzlWidget> createState() => _GhzlWidgetState();
}

class _GhzlWidgetState extends State<GhzlWidget> {
  bool ok= true;
  @override

  Widget build(BuildContext context) {
    return Card(
       color: Theme.of(context).secondaryHeaderColor,
        margin: EdgeInsets.only(left: 30,right: 30,bottom: 5),
        elevation: 2,
        child: ListTile(
          enabled: true,
          horizontalTitleGap: 5,
          style: ListTileStyle.drawer,
          title: Stack(
              children: [
            Center(
                child: Container(
                    width: MediaQuery.of(context).size.width*.36,
                    height: MediaQuery.of(context).size.height*.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25)
                        ,color: CupertinoColors.white,
                        boxShadow:const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2,
                            spreadRadius: 1,
                            // offset: Offset(-1,-3),
                            blurStyle: BlurStyle.outer,
                          )]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Text(widget.data.name,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),
                      ),
                    )
                )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80,top: 9),
              child: Container(
                  child:  Text(widget.data.id.toString(),textAlign: TextAlign.center,style: TextStyle(color: Colors.black)),
                  height: MediaQuery.of(context).size.width*.063,
                  width: MediaQuery.of(context).size.height*.029,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25)
                    ,color: CupertinoColors.white,
                    boxShadow:const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 1,
                        // offset: Offset(0, 1),
                        blurStyle: BlurStyle.outer,
                      )],
                  )
              ),
            ),
          ]),

          subtitle:Stack(
              children: [
                Padding(padding: EdgeInsets.only(top: 700),
                  child: ElevatedButton(onPressed:()=>  setState(() {ok = !ok;
                  print(ok);
                  }), child: Icon( ok == false? Icons.share:Icons.dark_mode ,)),
                ),
                SelectableText(widget.data.ghzl,textScaleFactor: 1.4,style:
            const TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Nori Nath',height: 2,fontSize: 20),textAlign: TextAlign.center,),

          // copy Text
          ]),

        )
    );
  }
}
