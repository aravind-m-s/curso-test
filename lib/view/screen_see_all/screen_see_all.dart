import 'package:coding_test/core/constants.dart';
import 'package:flutter/material.dart';

class ScreenSeeAll extends StatelessWidget {
  const ScreenSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'How to Start an Amazon FBA Store\non a Tight Budget',
      'Beginner to Pro in Excel: Financial\nModeling & Valuation'
    ];
    List<String> authors = [
      'Grabriella Susi',
      'Azalea Susanti',
    ];
    List<String> prices = [
      'IDR 219.000',
      'IDR 112.000',
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                kWidth40,
                Text(
                  'Popular Courses',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Button()
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            kHeight10,
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 86,
                      width: 86,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6E9ED),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Details(
                      titles: titles,
                      authors: authors,
                      prices: prices,
                      index: index,
                    )
                  ],
                ),
                separatorBuilder: (context, index) => const Divider(
                  thickness: 2,
                  height: 50,
                ),
                itemCount: 10,
              ),
            ),
            kHeight20,
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.titles,
    required this.authors,
    required this.prices,
    required this.index,
  });

  final List<String> titles;
  final List<String> authors;
  final List<String> prices;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titles[index % 2],
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF242B42),
          ),
        ),
        kHeight10,
        Text(
          authors[index % 2],
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xFF7E8CA0),
          ),
        ),
        kHeight10,
        Text(
          prices[index % 2],
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF4E74FA),
          ),
        )
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Done'));
  }
}
