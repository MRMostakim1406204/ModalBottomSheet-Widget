import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ModalBottomSheet"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(onPressed: (){
         showModalBottomSheet(context: context,
          builder: (context){
          return Column(
            children: [
              ListTile(
                onTap: (){Navigator.pop(context);},
                title: Text("Share",selectionColor: Colors.black38,style: TextStyle(
                  fontSize: 21,color: Colors.black
                ),),
                leading: Icon(Icons.share,size: 25,color: Colors.black,),
              ),

              ListTile(
                onTap: (){Navigator.pop(context);},
                title: Text("Copy",selectionColor: Colors.black38,style: TextStyle(
                  fontSize: 21,color: Colors.black
                ),),
                leading: Icon(Icons.copy,size: 25,color: Colors.black,),
              ),

              ListTile(
                onTap: (){Navigator.pop(context);},
                title: Text("Delete",selectionColor: Colors.black38,style: TextStyle(
                  fontSize: 21,color: Colors.black
                ),),
                leading: Icon(Icons.delete,size: 25,color: Colors.black,),
              ),

              ListTile(
                onTap: (){Navigator.pop(context);},
                title: Text("Download",selectionColor: Colors.black38,style: TextStyle(
                  fontSize: 21,color: Colors.black
                ),),
                leading: Icon(Icons.download,size: 25,color: Colors.black,),
              ),

              ListTile(
                onTap: (){Navigator.pop(context);},
                title: Text("Edit",selectionColor: Colors.black38,style: TextStyle(
                  fontSize: 21,color: Colors.black
                ),),
                leading: Icon(Icons.edit,size: 25,color: Colors.black,),
              ),

              SizedBox(height: 50,),
              ListTile(
                onTap: (){Navigator.pop(context);},
                title: Text("Help",selectionColor: Colors.black38,style: TextStyle(
                  fontSize: 21,color: Colors.black
                ),),
                leading: Icon(Icons.help,size: 25,color: Colors.black,),
              ),
            ],
          );
         });

        }, //nicer child textbutton ar button
         child: Text("Show Modal Sheet",style: TextStyle(
          fontSize: 20,color: Colors.pink,
         ),)),
      ),
    );
  }
}