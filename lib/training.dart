import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Text(
              "Pick Your Section",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60,),
            Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildTrainingSection(
                        imageUrl: "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                        title: "Title1",
                        description: "Description1",
                    ),
                    SizedBox(width: 10,),
                    buildTrainingSection(
                      imageUrl: "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                      title: "Title2",
                      description: "Description2",
                    ),
                    SizedBox(width: 10,),
                    buildTrainingSection(
                      imageUrl: "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                      title: "Title3",
                      description: "Description3",
                    ),
                    SizedBox(width: 10,),
                    buildTrainingSection(
                      imageUrl: "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                      title: "Title4",
                      description: "Description4",
                    ),
                    SizedBox(width: 10,),
                    buildTrainingSection(
                      imageUrl: "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                      title: "Title1",
                      description: "Description1",
                    ),
                    SizedBox(width: 10,),
                    buildTrainingSection(
                      imageUrl: "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                      title: "Title1",
                      description: "Description1",
                    ),
                    SizedBox(width: 10,),
                    buildTrainingSection(
                      imageUrl: "https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg",
                      title: "Title1",
                      description: "Description1",
                    ),

                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }

  Container buildTrainingSection({
  required String imageUrl,
  required String title,
  required String description,
}) {
    return Container(
      width: 300,
      height: 350,

      child: Column(
        children: [
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(
                      1, 5), // changes position of shadow
                ),
              ],
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      imageUrl,
                    ))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    description,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


