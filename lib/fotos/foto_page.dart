import 'package:appsite/fotos/slide_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class fotos_page extends StatefulWidget {
  const fotos_page({Key? key}) : super(key: key);


  @override
  State<fotos_page> createState() => _fotos_pageState();
}

class _fotos_pageState extends State<fotos_page> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  int _currentPage = 0;

  var _listSlide = [
    {'id': 0, "image": "image/1.jpg"},
    {'id': 1, "image": "image/2.jpg"},
    {'id': 2, "image": "image/3.jpg"},
    {'id': 3, "image": "image/4.jpg"}
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Relatório Fotográfico",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: " Pacifico-Regular",
              ),
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: Colors.black12,
                  ),
                )),
          ),

          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _listSlide.length,
              itemBuilder: (_, currentIndex) {
                bool activePage = currentIndex == _currentPage;
                return SlideFile(
                    activePage: activePage,
                    image: _listSlide[currentIndex]['image']);
              },
            ),
          ),
          _buildBullet(),
        ],
      )),
    );
  }

  Widget _buildBullet() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _listSlide.map((i) {
            return InkWell(
              onTap: () {
                setState(() {
                  _pageController.jumpToPage(['id'] as int);
                  _currentPage = ['id'] as int;
                });
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: _currentPage == i['id'] ? Colors.red : Colors.grey),
              ),
            );

          }).toList()),
    );
  }
}
