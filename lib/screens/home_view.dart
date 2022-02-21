import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:junkopedia/helper/constans.dart';
import 'package:junkopedia/screens/login_view.dart';
import 'package:junkopedia/screens/register_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                _gambarTengah(),
                _textDesc(),
                SizedBox(
                  height: 125,
                ),
                _buttonText(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _gambarTengah() {
    return SvgPicture.asset(
      pic1,
      height: 200,
      width: 200,
    );
  }

  Widget _textDesc() {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 35)),
        Container(
          child: RichText(
            text: TextSpan(
                text: 'Junko',
                style: TextStyle(
                    fontSize: 38,
                    color: Colors.black,
                    fontFamily: fontPrimary,
                    fontWeight: FontWeight.w700),
                children: [
                  TextSpan(
                      text: 'Pedia',
                      style: TextStyle(
                          fontSize: 38,
                          color: kPrimary,
                          fontFamily: fontPrimary,
                          fontWeight: FontWeight.w700))
                ]),
          ),
          // child: Text(
          // 'JunkoPedia',
          // style: TextStyle(
          //   fontSize: 38,
          //   color: Colors.black,
          //   fontFamily: fontPrimary,
          //   fontWeight: FontWeight.w700
          //   ),
          // ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Container(
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
                text: 'Junko',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                  fontFamily: fontPrimary,
                ),
                children: [
                  TextSpan(
                    text: 'Pedia',
                    style: TextStyle(
                      fontSize: 13,
                      color: kPrimary,
                      fontFamily: fontPrimary,
                    ),
                  ),
                  TextSpan(
                    text: ' adalah aplikasi yang dapat mengubah rongsok anda menjadi pundi pundi uang. Jangan biarkan rongsok dirumahmu menumpuk hubungi ',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                      fontFamily: fontPrimary,
                    ),
                  ),
                  TextSpan(
                    text: 'kami',
                    style: TextStyle(
                      fontSize: 13,
                      color: kPrimary,
                      fontFamily: fontPrimary,
                    ),
                  ),
                  TextSpan(
                    text: ' saja.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                      fontFamily: fontPrimary,
                    ),
                  ),
                ]),
          ),
          padding: EdgeInsets.only(left: 25),
          // child: Text(
          //   'JunkoPedia adalah aplikasi yang dapat mengubah rongsok anda menjadi pundi pundi uang. Jangan biarkan rongsok dirumahmu menumpuk hubungi kami saja.',
          //   softWrap: true,
          //   style: TextStyle(
          //     fontSize: 13,
          //     color: Colors.black54,
          //     fontFamily: fontPrimary
          //   ),
          //   textAlign: TextAlign.left,
          // ),
        )
      ],
    );
  }

  Widget _buttonText(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 30)),
        TextButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => LoginView());
            Navigator.push(context, route);
          },
          style: TextButton.styleFrom(
              primary: kBlueDark,
              backgroundColor: kPrimary,
              minimumSize: Size(280, 45),
              padding: EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          child: Text(
            'Masuk',
            style: TextStyle(
              fontSize: 16,
              fontFamily: fontPrimary,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        TextButton(
          onPressed: () {
            Route route =
                MaterialPageRoute(builder: (context) => RegisterView());
            Navigator.push(context, route);
          },
          style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: kBlueDark,
              minimumSize: Size(280, 45),
              padding: EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          child: Text(
            'Daftar',
            style: TextStyle(
              fontSize: 16,
              fontFamily: fontPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
