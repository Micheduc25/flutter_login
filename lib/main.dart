import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(
      title:"my login page",
      home:Scaffold(
        appBar:PreferredSize(
            preferredSize: Size(null,150),
            child:
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40)
                ),

                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[800]
                      
                    ),
                    child: new MyAppBar(),
                  ),
              ),
            )
        ),
        body:  Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          

          Container(
              padding: EdgeInsets.only(left:7,right: 0,top: 10, bottom: 10),
            child: Form(
              
              autovalidate: true,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget>[

               Container(
                 margin: EdgeInsets.only(bottom: 5),
                 width: 290,
                 child:     
              TextField(
                
                decoration: InputDecoration(hintText: 'Email',labelText: 'Email'),
              ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 290,
                
                child:
              TextField(
                obscureText: true,
                
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(hintText: 'Password',labelText: 'password'),
              ),
              ),

              new FPass(),

              Container(
                margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  
                 
                ),
                  
                  child:
                FlatButton(
                  
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){
                    print("Hello World");
                  },
                  color: Colors.purple[800],
                  padding: EdgeInsets.fromLTRB(100, 7, 100, 7),
                  child:Text("Next", style: TextStyle(fontSize: 20,color: Colors.white))

                ),
              )
              


              ]

              )
              
              
              ),

          )//this is the first input field(email)
          
        ]
        )
        
    ),
      )
    );
  }
}

class MyAppBar extends StatelessWidget{
    
  @override
  Widget build(BuildContext context)=>Column(
    children: <Widget>[
      Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        alignment: Alignment.centerLeft,
        child: IconButton( icon: Icon(Icons.arrow_back,size: 20.0,),)
      ),

      //the welcome message below
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left:30),
        child: Text("Welcome", style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),

        ),

        Container(
           margin: EdgeInsets.only(top: 10),
          
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child:
            Container(
             
              decoration: BoxDecoration(color: Colors.black38),
              width: 250,
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      
                        FlatButton(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
                          color: Colors.purple[800],
                          onPressed: ()=>print("We are almost done"),
                          child: Text("Login",style: TextStyle(color: Colors.white),),
                        ),

                        FlatButton(
                          padding: EdgeInsets.only(left: 20,right: 20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
                          
                          onPressed: ()=>print("We are almost done"),
                          child: Text("Register",style: TextStyle(color: Colors.white30),),
                        ),
                   
                    ],
                    )
             )
          ),
        )
    ],
  );
}


class FPass extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return 
    Container(
      margin:EdgeInsets.only(top: 30),
      child:
      ClipRRect(
        
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(130)),
        
        child:
      Stack(
      
      overflow: Overflow.visible,
      children: <Widget>[
        
          Container(
            width: double.infinity,
            height: 40,
            
            
            decoration:BoxDecoration(
              color: Colors.purple[800],
      
              
              )
          ),

          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(130)),
            
            
            child:
          Container(
            
            height: 39,
            decoration:BoxDecoration(
              
              color:Colors.white,
              
            ),
            
          // margin: EdgeInsets.only(left:2,bottom: 2),
          ),
          ),
          Positioned(
            left: 30,
            top:-3,
            child: Text("I forgot my password ?",style:TextStyle(color:Colors.purple[600])),
          )
      ],
    )
    )
    
    );
  }
}