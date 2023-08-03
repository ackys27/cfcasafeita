import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SlideFile extends StatelessWidget {

  final image;
  final bool activePage;

  const SlideFile({super.key, required this.image, required this.activePage});


  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    final double top = this.activePage ? 50 : 150;
    final double offset = this.activePage ? 20 : 0;
    final double blur = this.activePage ? 30 : 0;

    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(top: top, bottom: 100, right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(this.image),
              fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black87,
                blurRadius: blur,
                offset: Offset(offset, offset)
            )
          ]
      ),
    );

  }
}