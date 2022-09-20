import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/fuchnalty.dart';
import '../../../widget/itemcard.dart';
import '../../DetalisScreen/prudectdetalis.dart';

class GradviewItems extends StatelessWidget {
  const GradviewItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    functiontlty providerData = Provider.of<functiontlty>(context);

    return Container(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 7 / 8,
        ),
        itemCount: providerData.products.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => prudectdetalis(
                    providerData: providerData,
                    index: index,
                  ),
                ),
              );
            },
            child: Itemcard(
              index: index,
              providerData: providerData,
            ),
          );
        },
      ),
    );
  }
}
