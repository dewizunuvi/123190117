import 'package:dewizunuvi_kuis/data_hotel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dewizunuvi_kuis/detail.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hotel"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            final DataHotel hotel = hotelList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(username : hotel.name);
                  }));
                },
              child: Card(
                child: Row(
                  children: [
                    Image.network(hotel.imageUrl[0],width: 80,),
                    Icon(Icons.star, color : Colors.red[500],),
                    Text(hotel.stars),
                    Text(hotel.roomPrice)
                  ],
                ),
              ),
            );
          })
    );
  }
}
