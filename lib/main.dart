import'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//Container
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("MAD Lab Exp 3", style: TextStyle(color: Colors.blue),),
        ),
      body: Center(
      child: Container(
      height: 110.0,
      width: 110.0,
      color: Colors.blue,
      child: Align(
      alignment: Alignment.topLeft,
      child: FlutterLogo(
      size: 50,
      ),
      ),
      ),
      ),
      ),       
    );
  }

//Padding
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("MAD Lab Exp 3", style: TextStyle(color: Colors.blue),),
        ),
      body: Center
      (
        child: Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(40.0),
      decoration: BoxDecoration(  
            border: Border.all(color: Colors.white, width: 2),  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.deepPurple, offset: new Offset(6.0, 6.0),),  
            ],  ),
      child: Text(
        'Hello World!' ,
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic
        )
         ),
        ),
         
      ),
      )
    
    );

}

//sized box
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("MAD Lab Exp 3", style: TextStyle(color: Colors.white),),
        ),
      body: Center
      (
        child: SizedBox(
          width: 300.0,
          height: 450.0,
          child: Card(
            color: Colors.green,
            child: Center(
              child:Text(
                'Sized box demo',
                style: TextStyle(color: Colors.white,
                fontSize: 24),)
            )
           ),
           )        
      ),
      )    
    );

//Aspect Ratio
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("MAD Lab Exp 3", style: TextStyle(color: Colors.purpleAccent),),
        ),
      body: Center
      (
        child: AspectRatio(
          aspectRatio: 16/10,
          child: Container(
            margin:EdgeInsets.all(20),
            color: Colors.deepPurple,
          ),
          )
      ),
      )    
    );


}

//Baseline
@override
  Widget build(BuildContext context) {
    returnMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("MAD Lab Exp 3", style: TextStyle(color: Colors.purpleAccent),),
        ),
      body: Baseline(
            baseline: 5,
            baselineType: TextBaseline.alphabetic,
            child: Container(
            height: 160,
            width: 150,
            color: Colors.purple,
            child: Text('This is Baseline demo',
            style: TextStyle(fontSize: 24)),
            ),
            )  
      )    
    );

}

//Constrained box
@override
  Widget build(BuildContext context) {
    returnMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("MAD Lab Exp 3", style: TextStyle(color: Colors.purpleAccent),),
        ),
      body: Center(
        child:ConstrainedBox(  
              constraints: BoxConstraints(  
              minHeight:150.0,  
              minWidth: 150.0,  
              maxHeight:300.0,  
              maxWidth: 300.0,  
            ),  
              child:Container(
                height: 1400,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  ),
           ), 
          )       
          ),    
      )    
    );

//Fitted box
@override
  Widget build(BuildContext context) {
    returnMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("MAD Lab Exp 3", style: TextStyle(color: Colors.white),),
        ),
      body: Center(  
        child: FittedBox(child: Row(  
          children: <Widget>[  
            Container(  
              child: Text("This is widget 1",
              style: TextStyle(fontSize: 24),),  
              ),  
            Container(  
              child: Text("This is widget 2",
              style: TextStyle(fontSize: 24),),  
            ),
            Container(  
              child: Text("This is widget 3",
              style: TextStyle(fontSize: 24),),  
            )

            ],  
          ),  
          fit: BoxFit.contain,  
        )  
      ),  
    ));  

}

//Grid-view
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("MAD Lab Exp 3", style: TextStyle(color: Colors.white),),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          children: List.generate(8, (index){
            return Padding(padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage('assets/img1.jpg'),
                fit: BoxFit.fitHeight,),
                borderRadius: BorderRadius.all(Radius.circular(0))
              ),

            ),);          
            }),)
    ));

}

//List-view
@override  
  Widget build(BuildContext context) {  
    finalappTitle = 'Flutter Basic List Demo';  
  
    returnMaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),
        body: ListView(
          padding: constEdgeInsets.all(10),
          shrinkWrap: true,

          children: const [
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item1',style: TextStyle(color: Colors.indigo),)),
          ),
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item2',style: TextStyle(color: Colors.indigo),)),
          ),
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item3',style: TextStyle(color: Colors.indigo),)),
          ),
          ],
        )
      ),  
    );
  }

//Reverse list
@override  
  Widget build(BuildContext context) {  
    finalappTitle = 'Flutter Basic List Demo';  
  
    returnMaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),
        body: ListView(
          padding: constEdgeInsets.all(10),
          shrinkWrap: true,
          reverse: true,

          children: const [
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item1',style: TextStyle(color: Colors.indigo),)),
          ),
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item2',style: TextStyle(color: Colors.indigo),)),
          ),
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item3',style: TextStyle(color: Colors.indigo),)),
          ),
          ],
        )
      ),  
    ); 
  }

// Item extent and scroll direction
@override  
  Widget build(BuildContext context) {  
    finalappTitle = 'Flutter Basic List Demo';  
  
    returnMaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),
        body: ListView(
          padding: constEdgeInsets.all(10),
          shrinkWrap: true,
          // reverse: true,
          itemExtent: 100,
          scrollDirection: Axis.horizontal,
          children: const [
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item1',style: TextStyle(color: Colors.indigo),)),
          ),
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item2',style: TextStyle(color: Colors.indigo),)),
          ),
          Card(
            color: Colors.cyanAccent,
            child: ListTile(title: Text('Item3',style: TextStyle(color: Colors.indigo),)),
          ),
          ],
        )
      ),  
    );  
  }

//List view builder
@override
Widget build(BuildContext context) {
return new MaterialApp(
title: "List View Builder",
theme: new ThemeData(
primarySwatch: Colors.deepPurple
),
debugShowCheckedModeBanner: false,
home: newListViewBuilder()
);
} }
class ListViewBuilder extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title:Text("List View Builder")
),
body: ListView.builder(
itemCount: 5,
itemBuilder: (BuildContextcontext,int index){
return ListTile(
leading: Icon(Icons.list),
trailing: Text("List",style: TextStyle(color: Colors.redAccent,fontSize: 15),),
title:Text("List item $index")
);
}
), );}}

//List with images
@override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "List View Builder",
        theme: new ThemeData(primarySwatch: Colors.deepPurple),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(
          title: 'List View Builder',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    'images/img1.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
    'images/img4.png'
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
        itemBuilder: (BuildContextcontext, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: const Text('Product'),
              subtitle: const Text('price'),
            ),

          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

}