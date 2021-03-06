import 'package:flutter/material.dart';

void main ()
{
    runApp(MyApp());
}

class MyApp extends StatelessWidget{
    @override 
    Widget build (BuildContext context)
    {
        return MaterialApp(
            home: Scaffold(
                body:Container(
                    child: Column(
                        children: [
                            Container( //center container 
                                padding: EdgeInsets.fromLTRB(10,20,10,10),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Center" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30)),
                            ),
                            Container(
                                padding: EdgeInsets.fromLTRB(10,0,10,5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 20,
                                            offset: Offset(0, 3),
                                        ),
                                    ],
                                ),
                                child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                    color: Colors.blue[500],
                                    child: Column(
                                        children: [
                                            Row(
                                                children: [
                                                    Container(
                                                        padding: EdgeInsets.all(15),
                                                        child: CircleAvatar(
                                                                radius: 35,
                                                                backgroundImage: AssetImage('assets/profile.jpg'),
                                                            ),
                                                    ),
                                                    Container(
                                                        padding: EdgeInsets.fromLTRB(10,0,0,0),
                                                        child:Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children:[
                                                                Row(
                                                                    children: [
                                                                        Text("Ruba Irshaid" ,style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20, color: Colors.white )),
                                                                        Container(
                                                                            padding: EdgeInsets.fromLTRB(20 , 0 , 0 , 0),
                                                                            child:Icon(Icons.border_color , color:Colors.white , size: 15),

                                                                        )
                                                                    ],
                                                                ),
                                                                Text("Flutter Dev" , style:TextStyle(color: Colors.white)),
                                                            ],
                                                        ),
                                                    )
                                                   
                                                ],

                                            ),
                                            Container(
                                                padding: EdgeInsets.fromLTRB(0,0,0,15),
                                                child:Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children:[
                                                        PersonalInfo(text:"Collect" , num: 990 ),
                                                        PersonalInfo(text:"Attention" , num: 10 ),
                                                        PersonalInfo(text:"Track" , num: 170 ),
                                                        PersonalInfo(text:"Coupons" , num: 50 ),
                                                        
                                                    ],
                                                )
                                            )
                                        ],

                                    )
                                )
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsetsDirectional.fromSTEB(0 , 20 , 0 ,20),
                                child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                        IconsRow(iconName: "account_balance_wallet" , iconText: "Wallet"),
                                        IconsRow(iconName: "directions_bus" , iconText: "Delivery"),
                                        IconsRow(iconName: "message" , iconText: "Massege"),
                                        IconsRow(iconName: "computer" , iconText: "Service"),
                                    ],
                                )
                            ),   
                            Expanded(
                                child: ListView(
                                    children: [
                                        ListItems(text1:"Address" , text2:"Ensure your harvesting address" , iconPara:"location_on"),
                                        ListItems(text1:"Privacy" , text2:"System permision change" , iconPara:"lock"),
                                        ListItems(text1:"General" , text2:"Basic functional settings" , iconPara:"settings"),
                                        ListItems(text1:"Notefications" , text2:"take over the news on time" , iconPara:"notifications"),
                                    ],
                                ),
                            ),
                        ],
                    )
                )
            )
        );
    }
}

class PersonalInfo extends StatelessWidget{
    final String text ;
    final double num;
    PersonalInfo({this.text , this.num});

    @override
    Widget build (BuildContext context)
    {
        return Column(
                    children:[
                            Text(this.num.toString(),style: TextStyle(color: Colors.white ,fontSize: 18, fontWeight:FontWeight.bold,)),
                            Text(this.text , style: TextStyle(color: Colors.white)),
                        ],
                    );
    }
}
 class IconsRow extends StatelessWidget{
     final String iconName;
     final String iconText;
     final myIcons = <String, IconData> {
        'account_balance_wallet': Icons.account_balance_wallet,
        'directions_bus': Icons.directions_bus,
        'message': Icons.message,
        'computer': Icons.computer,
        };
     IconsRow ({this.iconName , this.iconText});
     @override
     Widget build (BuildContext context)
     {
         return Column(
                    children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.withOpacity(0.2),
                            child: Icon(myIcons[this.iconName], color: Colors.black),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(0 , 13 , 0, 0),
                            child: Text(this.iconText),
                        ),
                    ],
                );
     }
 }

class ListItems extends StatelessWidget{
    final String text1;
    final String text2;
    final String iconPara;
    final myIcons2 = <String, IconData> {
        'location_on': Icons.location_on,
        'lock': Icons.lock,
        'settings': Icons.settings,
        'notifications': Icons.notifications,
        };

    ListItems({this.text1 , this.text2 , this.iconPara});
    @override
    Widget build (BuildContext context)
    {
        return Container(
                    margin: EdgeInsetsDirectional.fromSTEB(0 , 10 , 0 ,5),
                    padding: EdgeInsets.fromLTRB(10 ,0, 10,0),
                    decoration: BoxDecoration(
                        boxShadow:[
                            BoxShadow(
                                color: Colors.blue.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 80,
                                offset: Offset(0, 10),
                            ),
                        ],
                    ),
                    child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        child:Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                                children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.purple.withOpacity(0.8),
                                        child: Icon(myIcons2[this.iconPara], color: Colors.white),
                                    ),
                                    Container(
                                        padding: EdgeInsets.fromLTRB(15,0,0,0),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(this.text1 , style: TextStyle(fontWeight: FontWeight.bold),),
                                                Text(this.text2 ,style: TextStyle(color: Colors.grey),),
                                            ],
                                        ),
                                    ),
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            child:  Icon(Icons.arrow_forward_ios, color:Colors.grey.withOpacity(0.8),),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),
                );
    }
}