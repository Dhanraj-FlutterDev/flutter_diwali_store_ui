import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_diwali_store_ui/modal/store_items.dart';
import 'package:flutter_diwali_store_ui/value/my_assets.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key, required this.storeItems}) : super(key: key);

  StoreItems storeItems;
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            titleWidget(),
            descriptionWidget(),
          ],
        ),
      )),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 55,
          margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.orange, Colors.deepOrange])),
          child: const Center(
            child: Text(
              'Buy Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  descriptionWidget() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        'Some random description about he crackers and lamp and lights,' * 10,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      ),
    );
  }

  titleWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.storeItems.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  widget.storeItems.subtitle,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: Text(
            widget.storeItems.price,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ],
    );
  }

  header() {
    return Stack(
      children: [
        Hero(
          tag: widget.storeItems.image,
          child: Container(
            height: MediaQuery.of(context).size.height / 2.4,
            width: double.infinity,
            color: Colors.white24,
            child: Image.asset(widget.storeItems.image),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 18,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
