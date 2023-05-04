import 'package:carousel_slider/carousel_slider.dart';
import 'package:coding_test/core/constants.dart';
import 'package:coding_test/view/screen_see_all/screen_see_all.dart';
import 'package:coding_test/view/screen_topic/screen_topic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class ScreenExplore extends StatelessWidget {
  const ScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight20,
            const SearchWidget(),
            kHeight10,
            const Carousel(),
            kHeight30,
            CarouselScrollIndicators(width: width),
            kHeight30,
            const Topics(),
            const CustomDivider(),
            kHeight10,
            const PopularCourses(),
          ],
        )),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

class PopularCourses extends StatelessWidget {
  const PopularCourses({
    super.key,
  });

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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Courses',
                style: TextStyle(
                  color: Color(0xFF242B42),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                child: const Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFF4E74FA),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    isScrollControlled: true,
                    context: context,
                    builder: (ctx) => const ScreenSeeAll(),
                  );
                },
              ),
            ],
          ),
          kHeight20,
          LimitedBox(
            maxHeight: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ScreenTopic(),
                  ));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PCGradientContainer(),
                    kHeight10,
                    Text(
                      titles[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF242B42),
                      ),
                    ),
                    kHeight10,
                    Text(
                      authors[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7E8CA0),
                      ),
                    ),
                    kHeight10,
                    index == 1
                        ? Text(
                            prices[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4E74FA),
                            ),
                          )
                        : Row(
                            children: [
                              Text(
                                prices[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4E74FA),
                                ),
                              ),
                              kWidth10,
                              const Text(
                                'IDR 219.000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF7E8CA0),
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => kWidth30,
              itemCount: 2,
            ),
          )
        ],
      ),
    );
  }
}

class PCGradientContainer extends StatelessWidget {
  const PCGradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 75, 75, 75),
                Color(
                  0xFFE6E9ED,
                ),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(4),
            ),
          ),
        ),
        Container(
          height: 115,
          width: 300,
          decoration: const BoxDecoration(
            color: Color(
              0xFFE6E9ED,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Divider(
        color: Color(
          0xFFE6E9ED,
        ),
        thickness: 2,
      ),
    );
  }
}

class Topics extends StatelessWidget {
  const Topics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/a&h.png',
      'assets/buisiness.png',
      'assets/cs.png',
      'assets/design.png',
      'assets/f&a.png',
      'assets/it.png',
    ];
    List<String> titles = [
      'Art and Humanities',
      'Business',
      'Computer Science',
      'Design',
      'Finance & Accounting',
      'Information Technology',
    ];
    List<String> subTitles = [
      'History, Music & Art, Philosophy',
      'Leadership, Finance, Marketing',
      'Software Dev, Mobile, Algorithm',
      'User Interface, 3D Animation',
      'Fincancial Modeling, Investment',
      'Cloud Computing, Security',
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Topics',
                style: TextStyle(
                  color: Color(0xFF242B42),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'All Topics',
                style: TextStyle(
                  color: Color(0xFF4E74FA),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Items(images: images, titles: titles, subTitles: subTitles),
      ],
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    super.key,
    required this.images,
    required this.titles,
    required this.subTitles,
  });

  final List<String> images;
  final List<String> titles;
  final List<String> subTitles;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                kWidth20,
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        images[index == 0 ? 0 : 3],
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                kWidth10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titles[index == 0 ? 0 : 3],
                      style: const TextStyle(
                        color: Color(0xFF242B42),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      style: const TextStyle(
                        color: Color(0xFF7E8CA0),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      subTitles[index == 0 ? 0 : 3],
                    ),
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        images[index == 1 ? 1 : 4],
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                kWidth10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titles[index == 1 ? 1 : 4],
                      style: const TextStyle(
                        color: Color(0xFF242B42),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      style: const TextStyle(
                        color: Color(0xFF7E8CA0),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      subTitles[index == 1 ? 1 : 4],
                    ),
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        images[index == 2 ? 2 : 5],
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                kWidth10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titles[index == 2 ? 2 : 5],
                      style: const TextStyle(
                        color: Color(0xFF242B42),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      style: const TextStyle(
                        color: Color(0xFF7E8CA0),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      subTitles[index == 2 ? 2 : 5],
                    ),
                  ],
                ),
                kWidth10,
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

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
        5,
        (index) => Stack(
          children: [
            const GradientContainer(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Popular in Personal Development',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4E74FA),
                    ),
                  ),
                  kHeight20,
                  Text(
                    'Communication Skills Speak\nLike A Leader',
                    style: TextStyle(
                      color: Color(0xFF242B42),
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  kHeight10,
                  Text(
                    'Susan Anastasya',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF7E8CA0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 325,
      ),
    );
  }
}

class CarouselScrollIndicators extends StatelessWidget {
  const CarouselScrollIndicators({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        kWidth10,
        Container(
          height: 3,
          width: (width / 5) - 15,
          color: const Color(0xFFE6E9ED),
        ),
        Container(
          height: 3,
          width: (width / 5) - 15,
          color: const Color(0xFFE6E9ED),
        ),
        Container(
          height: 3,
          width: (width / 5) - 15,
          color: const Color(0xFF4E74FA),
        ),
        Container(
          height: 3,
          width: (width / 5) - 15,
          color: const Color(0xFFE6E9ED),
        ),
        Container(
          height: 3,
          width: (width / 5) - 15,
          color: const Color(0xFFE6E9ED),
        ),
        kWidth10,
      ],
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE6E9ED),
            Color(0xFFE6E9ED),
            Colors.white,
          ],
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth20,
        SvgIcon(
          icon: SvgIconData('assets/search.svg'),
        ),
        kWidth10,
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'what do you want to learn?',
            ),
          ),
        ),
      ],
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color(0xFFE6E9ED), spreadRadius: 1),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xFF4E74FA),
        unselectedItemColor: const Color(0xFF7E8CA0),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              icon: SvgIconData('assets/myCourses.svg'),
            ),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              icon: SvgIconData('assets/whishlist.svg'),
            ),
            label: 'Whishlist',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              icon: SvgIconData('assets/profile.svg'),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
