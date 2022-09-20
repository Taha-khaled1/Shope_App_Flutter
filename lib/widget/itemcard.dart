import 'package:flutter/material.dart';

import '../models/fuchnalty.dart';

// ignore: must_be_immutable
class Itemcard extends StatelessWidget {
  int index;
  functiontlty providerData;
  Itemcard({required this.index, required this.providerData});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: providerData.products[index].color,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Hero(
                    tag: '${providerData.products[index].id}',
                    child: Image.asset(
                      providerData.products[index].image,
                      fit: BoxFit.fill,
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  providerData.products[index].title.toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  ' \$ ${providerData.products[index].price}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
