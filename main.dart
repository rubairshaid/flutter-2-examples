import 'package:flutter/material.dart';

void main (){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build (BuildContext context)
    {
        return MaterialApp(
            home: Calculater(),
        );

    }

    

}

class Calculater extends StatefulWidget {
  
  @override 
  _CalcState createState()
  {
      return _CalcState();
  }
}

class _CalcState extends State<Calculater>{
    final _num1 = TextEditingController();
    final _num2 = TextEditingController();
    double _result= 0; 
    String _operation = ">Enter numbers and choose operation to get the results";

    bool _isNumber(){
        if(double.tryParse(_num1.text) != null && double.tryParse(_num2.text) != null )
        return true ;
        _operation = "Error , You entered invaled values :(";
        _result=0;
        setState((){});
        return false;
    }
    void _add (){
        if(_isNumber())
        {
            setState((){
                _result = double.parse(_num1.text) + double.parse(_num2.text);
                _operation= "The sum of the numbers is: ";
            });
        }
    }
    void _multi (){
        if(_isNumber())
        {
          setState((){
              _result = double.parse(_num1.text) * double.parse(_num2.text);
              _operation= "The multiplication of the numbers is: ";
          });
        }
        
    }
    void _div(){
        if(_isNumber())
        {
          
            setState((){
              if(double.parse(_num2.text)!=0){
                _result = double.parse(_num1.text) / double.parse(_num2.text);
                _operation= "The division of the numbers is: ";
              }
              else
              {
                _operation = "You are trying to divide on zero";
                _result=0;
              }
            });
        }

    }

    void _sub(){
        if(_isNumber())
        {
          setState((){
              _result = double.parse(_num1.text)- double.parse(_num2.text);
              _operation= "The division of the numbers is: ";
          });
        }
    }

    void _clear(){
      setState(() {
        _result =0 ;
        _operation = ">Enter numbers and choose operation to get the results";
        _num1.text=" ";
        _num2.text=" ";
      });
    }

    @override 
    Widget build (BuildContext context)
    {
        return Scaffold(
            appBar: AppBar(title: Text("Simple Calculator :)")),
            body: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    children: [
                        TextField(
                          controller: _num1,
                          decoration: InputDecoration(
                              labelText: 'First number ',
                            ),
                          ),
                        TextField(
                          controller: _num2,
                          decoration: InputDecoration(
                              labelText: 'Second number',
                            ),
                          ),
                        Container(
                          margin: EdgeInsets.only(top: 15 , bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                    FlatButton(
                                        onPressed: (){
                                            _add();
                                        },
                                        child: Text("Add"),
                                        color: Colors.blue[500],
                                        
                                    ), 
                                    FlatButton(
                                        onPressed: (){
                                            _sub();
                                        },
                                        child: Text("subtract"),
                                        color: Colors.deepOrange[100],
                                    ),
                                    FlatButton(
                                        onPressed: (){
                                            _multi();
                                        },
                                        child: Text("multiply"),
                                        color: Colors.blue[500],
                                    ),
                                   
                                    FlatButton(
                                        onPressed: (){
                                            _div();
                                        },
                                        child: Text("division"),
                                        color: Colors.deepOrange[100],
                                    ),
                                   
                                ],
                            )
                        ),
                        Text(_operation +"$_result" ,  style: TextStyle(fontSize: 20)),
                        Container(
                          height: 100,
                          width: 300,
                          margin:EdgeInsets.only(top: 120,),
                            child:FlatButton(
                                onPressed: (){
                                    _clear();
                                },
                                child: Text("Clear" , style: TextStyle(fontSize: 30 )),
                                color: Colors.grey[400],
                                ),
                        )
                        
                    ],
                ),
            ),
            
        );
    }
}