import 'package:coding_test/core/constants.dart';
import 'package:flutter/material.dart';

class ScreenTopic extends StatelessWidget {
  const ScreenTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TopGradient(),
              TopicHealine(),
              kHeight30,
              SubTopics(),
              kHeight20,
              PopularInstuctors(),
              kHeight10,
              AllCourses()
            ],
          ),
        ),
      ),
    );
  }
}

class AllCourses extends StatelessWidget {
  const AllCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'All Courses',
            style: TextStyle(
              color: Color(0xFF242B42),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          kHeight20,
          Column(
            children: List.generate(
              4,
              (index) => AllTopicsList(
                index: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AllTopicsList extends StatelessWidget {
  const AllTopicsList({super.key, required this.index});

  final int index;

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
    return Column(
      children: [
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        kHeight10,
        const Divider(
          thickness: 2,
        ),
      ],
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

class PopularInstuctors extends StatelessWidget {
  const PopularInstuctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Popular Instructors',
                style: TextStyle(
                  color: Color(0xFF242B42),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: Color(0xFF4E74FA),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const Items(),
      ],
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<String> instuctors = [
      'Daniel Wallet',
      'Gatot Subroto',
      'Cut Intan Nabila',
      'Azalea Blenzisky',
    ];

    const List<String> courses = [
      'UX Design, UI Design, Graphic De...',
      'Blender, 3D Animation',
      'After Effects, Drawing, Illustration',
      'UX Design, UI Design, User Rese...',
    ];

    const List<String> students = [
      '49.091 Students',
      '28.122 Students',
      '19.891 Students',
      '18.012 Students',
    ];

    const List<String> noCourses = [
      '20 Courses',
      '18 Courses',
      '43 Courses',
      '10 Courses',
    ];
    return LimitedBox(
      maxHeight: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kWidth20,
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE6E9ED),
                      ),
                    ),
                    kHeight10,
                  ],
                ),
                kWidth10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      instuctors[index == 0 ? 0 : 2],
                      style: const TextStyle(
                        color: Color(0xFF242B42),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      style: const TextStyle(
                        color: Color(0xFF7E8CA0),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      courses[index == 0 ? 0 : 2],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          style: const TextStyle(
                            color: Color(0xFF242B42),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          students[index == 0 ? 0 : 2],
                        ),
                        kWidth20,
                        Text(
                          style: const TextStyle(
                            color: Color(0xFF242B42),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          noCourses[index == 0 ? 0 : 2],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            kHeight10,
            Row(
              children: [
                kWidth20,
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE6E9ED),
                  ),
                ),
                kWidth10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      instuctors[index == 1 ? 1 : 3],
                      style: const TextStyle(
                        color: Color(0xFF242B42),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      style: const TextStyle(
                        color: Color(0xFF7E8CA0),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      courses[index == 1 ? 1 : 3],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          style: const TextStyle(
                            color: Color(0xFF242B42),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          students[index == 1 ? 1 : 2],
                        ),
                        kWidth20,
                        Text(
                          style: const TextStyle(
                            color: Color(0xFF242B42),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          noCourses[index == 1 ? 1 : 3],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            kHeight10,
          ],
        ),
        separatorBuilder: (context, index) => kWidth30,
        itemCount: 2,
      ),
    );
  }
}

class SubTopics extends StatelessWidget {
  const SubTopics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sub Topics',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF242B42),
            ),
          ),
          kHeight20,
          Column(
            children: const [
              ChipCard(
                one: 'UX Design',
                two: 'Illustration',
                three: 'Blender',
              ),
              kHeight10,
              ChipCard(
                one: 'Drawing',
                two: 'After Effects',
                three: 'User Research',
              ),
              kHeight10,
              ChipCard(
                one: 'Branding & Identity',
                two: 'UI Design',
                three: '3D',
              )
            ],
          )
        ],
      ),
    );
  }
}

class ChipCard extends StatelessWidget {
  const ChipCard({
    super.key,
    required this.one,
    required this.two,
    required this.three,
  });

  final String one;
  final String two;
  final String three;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 18),
            child: Text(
              one,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 18),
            child: Text(
              two,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 18),
            child: Text(
              three,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}

class TopicHealine extends StatelessWidget {
  const TopicHealine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/designs.png',
                  ),
                  fit: BoxFit.contain),
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 30,
                  color: Color(0xFF979DAD),
                ),
              ],
            ),
          ),
          kWidth20,
          Column(
            children: const [
              Text(
                'Designs',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF242B42),
                ),
              ),
              Text(
                '290 Courses',
                style: TextStyle(
                  color: Color(0xFF7E8CA0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TopGradient extends StatelessWidget {
  const TopGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.grey[900]!,
            const Color(0xFFE6E9ED),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
            ),
            color: Colors.white,
          ),
        ),
        Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFE6E9ED), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        ),
      ],
    );
  }
}
