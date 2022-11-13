import 'package:ecommerc/layout/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../shared/components/component.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: 371,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        spreadRadius: 2.5)
                  ],
                  color: HexColor('#F2F3F2'),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              child: Stack(
                children: [
                  Center(child: Image.asset('assets/images/frutes.png')),
                  Positioned(
                      top: 40,
                      left: 0,
                      child: IconButton(
                          onPressed: () {
                            navigate(context, const ShopHomeScreen());
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: HexColor('#181725'),
                          ))),
                  Positioned(
                      top: 35,
                      right: 0,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.save_alt,
                            color: HexColor('#181725'),
                          ))),
                  ////////
                  Positioned(
                    bottom: 3.5,
                    left: 170,
                    child: Container(
                      height: 5,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#53B175')),
                    ),
                  ),
                  Positioned(
                    bottom: 3.5,
                    left: 182,
                    child: Container(
                      height: 5,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 3.5,
                    left: 194,
                    child: Container(
                      height: 5,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Naturel Red Apple',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border)),
                      ],
                    ),
                    Text(
                      '1kg, Price',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: HexColor('#7C7C7C')),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  InkWell(
                      child: Image.asset('assets/images/minus.png'),
                      onTap: () {
                        setState(() {
                          count--;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: HexColor('E2E2E2'),
                          )),
                      child: Center(
                          child: Text(
                        '${count}',
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                  InkWell(
                    child: Image.asset('assets/images/plus.png'),
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                  ),
                  const Spacer(),
                  Text(
                    '\$ 4.99',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                        color: HexColor('#181725')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: myDivider(),
            ),
            ExpansionTile(
              childrenPadding: const EdgeInsets.all(5),
              title: const Text(
                'Product Detail',
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet.',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13,
                        color: HexColor('#7C7C7C')
                    ),
                  ),
                )
              ],
            ),
            myDivider(),
            const ExpansionTile(
              childrenPadding: EdgeInsets.all(3),
              title: Text(
                'Nutritions',
              ),
            ),
            ExpansionTile(
              childrenPadding: const EdgeInsets.all(5),
              title: const Text(
                'Review',
              ),
              children: [
                RatingBar.builder(
                    itemCount: 5,
                    minRating: 1,
                    itemSize: 30,
                    allowHalfRating: true,
                    itemBuilder: (context, _) =>
                        Icon(Icons.star, color: HexColor('#F3603F'), size: 10),
                    onRatingUpdate: (taher) {
                      print('taher rating is ${taher}');
                    })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            defualtButton(
                context: context,
                name: 'Add To Basket',
                onPressed: () {},
                color: HexColor('#FFF9FF'))
          ],
        ),
      ),
    );
  }
}
