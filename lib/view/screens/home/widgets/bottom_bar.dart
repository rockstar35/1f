import 'package:flutter_restaurant/view/screens/home/widgets/bottom_bar_column.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/info_text.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Color.fromARGB(255, 10, 56, 71),
      child: Column(
              children: [
                SizedBox(height: 150),
                Text(
                  'Follow Us',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 150),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    BottomBarColumn(
                      header: 'Lieferando.de',
                      contents:[
                        'Customer service',
                        'Recommend a restaurant',
                        'Sign up a restaurant',
                        'Jobs',
                        'Terms of use',
                        'StampCard',
                        'Privacy statement',
                        'Colophon',
                        'Cookie statement',
                        'Become an affiliate',
                        'Newsroom',
                        'International',
                        'Investor Relations',
                        'Lieferando.de',
                        '10bis',
                        'Just-Eat.ch',
                        'Just-Eat.dk',
                        'Just-Eat.es',
                        'Just-Eat.fr',
                        'Just-Eat.ie',
                        'Just-Eat.it',
                        'Just-Eat.no',
                        'Just-Eat.uk',
                        'Lieferando.at',
                        'Menulog.au',
                        'Menulog.nz',
                        'Pyszne.pl',
                        'Skip the Dishes',
                        'Takeaway.com - Belgium',
                        'Takeaway.com - Romania',
                        'Takeaway.com - Bulgaria',
                        'Takeaway.com - Portugal',
                        'Takeaway.com - Luxembourg',
                        'Thuisbezorgd.nl',


                      ]
                    ),
                    BottomBarColumn(
                      header: 'Food',
                        contents:[
                          'Food',
                          'Pizza',
                          'Mediterranean',
                          'Grill',
                          'Asian',
                          'Other',
                          'Lunch / breakfast',
                          'Other Asian',
                          'Polish',
                          'American',
                          'Drinks Ice cream',
                          'More food order..',
                          'Provinces',
                          'Baden-Württemberg',
                          'Bayern',
                          'Berlin',
                          'Brandenburg',
                          'Bremen',
                          'Hamburg',
                          'Hessen',
                          'Mecklenburg-Vorpommern',
                          'Niedersachsen',
                          'Nordrhein-Westfalen',
                          'Rheinland-Pfalz',
                          'Saarland',
                          'Sachsen',
                          'Sachsen-Anhalt',
                          'Schleswig-Holstein',
                          'Thüringen',
                          '',
                          '',
                          '',
                          '',
                          '',
                        ]
                    ),
                    BottomBarColumn(
                      header: 'Cities',
                        contents:[
                          'Berlin',
                          'München',
                          'Frankfurt',
                          'Essen',
                          'Dortmund',
                          'Stuttgart',
                          'Düsseldorf',
                          'Bremen',
                          'New delivery restaurants',
                          'Pizza Heimservice Trattor.., Mandelbachtal',
                          'Trattoria Toscana, Berlin',
                          'Veganland Cigköfte, Frankfurt am Main',
                          'Burger Lounge, Hamburg',
                          'Haweli Indisches Restaura..',
                          'Kü-Shi Restaurant, Heiligenhaus',
                          'City Pizza, Dülmen',
                          'Burger Brothers, Köln',
                          'Orient Taste, München',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',

                        ]
                    ),
                    BottomBarColumn(
                      header: 'Partners',
                        contents:[
                          'Order sushi',
                          'Food delivery Berlin',
                          'Food delivery Munich',
                          'Vapiano',
                          'Call a Pizza',
                          'Nordsee',
                          'Burger King',
                          'McDonald',
                          'BurgerMe',
                          'Sushi Circle',
                          'Dean & David',
                          'Yoko Sushi',
                          'Freddy Fresh',
                          'Pizza Max',
                          'Pizza Hut',
                          'Domino',
                          'Foodwiki',
                          'Coca-Cola MealDeals',
                          'Become a Lieferando.de courier',
                          'Lieferando for business',
                          'The Takeaway',
                          'KFC',
                          'Chains',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',

                        ]
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Text(
                      'Recommend a restaurant',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Sign up a restaurant',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Jobs',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Terms of use',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Privacy statement',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Colophon',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Cookie statement',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Bug Bounty',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Ethics hotline',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '© 2022 Lieferando.de',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
