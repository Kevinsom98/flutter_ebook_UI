import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:getx_stack/modules/login/controllers/login_controller.dart';
import 'package:getx_stack/modules/login/ui/book_Card.dart';
import 'package:getx_stack/modules/login/ui/book_tile.dart';
import 'package:getx_stack/modules/login/ui/mock_data.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../core/base/ui_helper.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/bookly.png'),
              IconButton(
                icon: const Icon(FeatherIcons.search),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bookList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BookCard(
                      file: bookList[index]['image'],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: ListView(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Best Seller',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              itemCount: bestSellers.length,
                              itemBuilder: (BuildContext context, int index) {
                                return CustomListItemTwo(
                                  thumbnail: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            bestSellers[index]['image']),
                                        fit: BoxFit.fitHeight,
                                      ),
                                      // shape: BoxShape.rectangle,
                                    ),
                                  ),
                                  title: bestSellers[index]['title'] ?? '',
                                  author: bestSellers[index]['author'] ?? '',
                                  price: bestSellers[index]['price'] ?? '',
                                  avgRating:
                                      bestSellers[index]['avg_rating'] ?? '',
                                  totalRating:
                                      bestSellers[index]['total_rating'] ?? '',
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
