import 'package:flutter/material.dart';
import 'package:yemek_uygukamasi/Yemekler.dart';

class DetaySayfa extends StatefulWidget {

  Yemekler yemek;

  DetaySayfa({required this.yemek});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("resimler/${widget.yemek.yemek_resim_adi}"),
            Text(
              "${widget.yemek.yemek_adi}",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            SizedBox(height: 50,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  print("Sipariş verdin kardeşş");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: Text("Sipariş ver"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
