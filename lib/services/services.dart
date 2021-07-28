//import 'package:cabee/screens/contact_us.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {

  Widget CircularButton(String serviceName, String picPath, BuildContext context, double size){
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 70,
          child: Image.asset("assets/images/$picPath", scale: size,),
        ),
        SizedBox(height: 10.0),
        Text("$serviceName", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: (){
              /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()));*/
            },
            child: Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width *0.3,
              decoration: BoxDecoration(
                // color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      width: 3.0,
                      color: Colors.black
                  )
              ),
              child: Center(child: Text("Book Now", style: TextStyle(fontSize: 18.0,),)),
            ),
          ),


        ),

      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Services", style: TextStyle(color: Colors.yellow, fontSize: 24.0, fontFamily: "Emyrl"),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton("Private Rides", "private_rides.png", context, 20),
                      CircularButton("Shared Rides", "shared_rides.jpg", context, 20),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton("Luxury Rides", "luxury_rides.png", context, 35),
                      CircularButton("Regular Rides", "regular_rides.png", context, 35),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton("Corporate Rides", "corporate_rides.png", context, 15),
                      CircularButton("Public Transport", "public_transport.png", context, 20),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton("Bookings", "bookings.png", context, 20),
                      CircularButton("Sale/Purchase", "sales_purchase.png", context, 20),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton("Heavy Transport", "heavy_tranports.png", context, 15),
                      CircularButton("Logistics Solution", "logistic.png", context, 15),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton("Modified Cars", "luxury_car.png", context, 2),
                      CircularButton("Heavy Bikes", "heavy_bikes.png", context, 3),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
