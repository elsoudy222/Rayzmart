import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.64,
              width: MediaQuery.of(context).size.width,
              //color: Colors.red,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/1.JPG'),
                  fit: BoxFit.cover,
                ),
              ),

              child: Stack(
                children: [
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.13,
                    left: MediaQuery.of(context).size.width * 0.03,
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Fashion\nSale',
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.06,
                    left: MediaQuery.of(context).size.width * 0.03,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.055,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Check',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'New',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "You've never seen it before",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),

                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, i )=>  buildProductCard(),
                separatorBuilder: (context, i) => SizedBox(
                  width: MediaQuery.of(context).size.height * 0.02,
                 ),),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

class buildProductCard extends StatelessWidget {
  const buildProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.46,
      decoration: const BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.46,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/10.JPG'),
                  fit: BoxFit.fill,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
           top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.03,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.14,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'NEW',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.125,
            right: MediaQuery.of(context).size.width * 0.0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.13,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Icon(Icons.favorite_outline),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.0,
            left: MediaQuery.of(context).size.width * 0.0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width ,
              decoration: const BoxDecoration(
               // color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[800],size: 17,),
                      Icon(Icons.star, color: Colors.yellow[800],size: 17,),
                      const Icon(Icons.star_outline,size: 17,),
                      const Icon(Icons.star_outline,size: 17,),
                      const Icon(Icons.star_outline,size: 17,),
                      Text("(4.5)",style: TextStyle(fontSize: 12,color: Colors.yellow[800]),),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  const Text("Brand name",style: TextStyle(fontSize: 15,color: Colors.black),),
                  const SizedBox(height: 5,),
                  const Text("T-Shirt Sailing",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 5,),
                  const Text("\$50",style: TextStyle(fontSize: 15,color: Colors.black),),

                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
