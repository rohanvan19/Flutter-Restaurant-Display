import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigation And Gestures',
    theme: ThemeData(
// This is the theme of your application.
      primarySwatch: Colors.blueGrey,
    ),
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Display'),
        centerTitle: true,
      ),

      body: Center(
          child:
          Image.network('https://picsum.photos/id/1/200/300')
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        child: const Text('click'),
        backgroundColor: Colors.blueAccent,
        hoverColor: Colors.orange,
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://picsum.photos/id/1/200/300",
      "https://picsum.photos/id/1/200/300",
      "https://picsum.photos/id/1/200/300",
      "https://picsum.photos/id/1/200/300",
      "https://picsum.photos/id/1/200/300",
      "https://picsum.photos/id/1/200/300",
    ];

    List<String> str = [
      "Hazlenut Cake",
      "Margharita Pizza",
      "Hakka Noodles",
      "Italian Pasta",
      "Egg Curry",
      "Manchurian Fried Rice",
    ];

    List<String> desc =[
      "Rs. 200",
      "Rs. 500",
      "Rs. 100",
      "Rs. 150",
      "Rs. 125",
      "Rs. 300",
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Restaurant Menu"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(images[index]),),
                title: Text(str[index]),
                subtitle: Text(desc[index]),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        )
    );

  }

}