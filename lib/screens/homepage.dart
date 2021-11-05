import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_diwali_store_ui/main.dart';
import 'package:flutter_diwali_store_ui/modal/store_items.dart';
import 'package:flutter_diwali_store_ui/screens/detail_screen.dart';
import 'package:flutter_diwali_store_ui/value/my_assets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<StoreItems> mostPopularItemList = [
    StoreItems(
        image: MyAssets.crackerone,
        title: 'Cracker one',
        subtitle: 'Colorful cracker with light sounds',
        price: 'RS 120'),
    StoreItems(
        image: MyAssets.lampone,
        title: 'Lamp One',
        subtitle: 'Big size lamp to with lights',
        price: 'RS 300'),
    StoreItems(
        image: MyAssets.lightone,
        title: 'Random Lights',
        subtitle: 'small lights for decoration',
        price: 'Rs 150'),
    StoreItems(
        image: MyAssets.crackertwo,
        title: 'Cracker Two',
        subtitle: 'No Pollution Cracker',
        price: 'RS 500'),
  ];

  List<StoreItems> allItemslist = [
    StoreItems(
        image: MyAssets.cracker,
        title: 'Cracker Box',
        subtitle: 'mixed box of cracker',
        price: 'Rs 600'),
    StoreItems(
        image: MyAssets.crackerthree,
        title: 'Cracker two',
        subtitle: 'five colors cracker',
        price: 'RS 230'),
    StoreItems(
        image: MyAssets.lamptwo,
        title: 'Lamp Diva',
        subtitle: 'circle lamp for diwali',
        price: 'RS 140'),
    StoreItems(
        image: MyAssets.lighttwo,
        title: 'Mixed Lights',
        subtitle: 'best at night very colorful',
        price: 'RS 310'),
    StoreItems(
        image: MyAssets.crackerone,
        title: 'Cracker one',
        subtitle: 'Colorful cracker with light sounds',
        price: 'RS 120'),
    StoreItems(
        image: MyAssets.lampone,
        title: 'Lamp One',
        subtitle: 'Big size lamp to with lights',
        price: 'RS 300'),
    StoreItems(
        image: MyAssets.lightone,
        title: 'Random Lights',
        subtitle: 'small lights for decoration',
        price: 'Rs 150'),
    StoreItems(
        image: MyAssets.crackertwo,
        title: 'Cracker Two',
        subtitle: 'No Pollution Cracker',
        price: 'RS 500'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          headerWidget(),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              'Most Popular Items',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          mostPopular(),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              'All Items',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          allItems()
        ],
      ))),
    );
  }

  allItems() {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: allItemslist.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                            storeItems: allItemslist[index],
                          )));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.grey.shade100)),
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Hero(
                      tag: allItemslist[index].image,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          width: 200,
                          height: 200,
                          color: Colors.grey.shade100,
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            allItemslist[index].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              allItemslist[index].title,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Flexible(
                              child: Text(
                                allItemslist[index].subtitle,
                                maxLines: 2,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              allItemslist[index].price,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  mostPopular() {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          itemCount: mostPopularItemList.length,
          padding: const EdgeInsets.only(left: 16, right: 10, top: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            storeItems: mostPopularItemList[index])));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade100),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          height: 160,
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(14),
                                  bottomRight: Radius.circular(14))),
                          child: Image.asset(
                            mostPopularItemList[index].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    mostPopularItemList[index].title,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  Text(
                                    mostPopularItemList[index].subtitle,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              mostPopularItemList[index].price,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(top: 5),
                        color: Colors.orange.shade200,
                        child: const Center(
                          child: Text(
                            'SALE',
                            style:
                                TextStyle(color: Colors.red, letterSpacing: 1),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  headerWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  'Dhanraj',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade100),
              child: const Icon(
                Icons.notifications,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
