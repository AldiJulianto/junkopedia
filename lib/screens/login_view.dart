import 'package:flutter/material.dart';
import 'package:junkopedia/helper/constans.dart';
import 'package:junkopedia/helper/custome_app_bar.dart';
import 'package:junkopedia/screens/home_view.dart';
import 'package:junkopedia/screens/register_view.dart';


class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              //AppBar
              Padding(padding: EdgeInsets.only(top: 25)),
              CustomeAppBar(Icons.arrow_back_ios_new_outlined,
              leftCallBack: ()=> Navigator.of(context).pop(),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  _textDesc(),
                ],
              ),

              Center(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 30)),

                    //icon Gambar
                    _iconGambar(),

                    //TextFormField
                    SizedBox(height: 50,),
                    _textFormField(),

                    SizedBox(height: 80,),

                    //TextsignUp
                    _textSignUp(),

                    //Button
                    _button(context),
                    Padding(padding: EdgeInsets.only(bottom: 35))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _textDesc (){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Silahkan masuk',
            style: TextStyle(
              fontSize: 24,
              color: kPrimary,
              fontFamily: fontPrimary,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 6)),
        Container(
          child: Text(
            'Senang bertemu anda lagi :)',
            style: TextStyle(
              fontSize: 14,
              fontFamily: fontPrimary,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }

  Widget _iconGambar () {
    return ClipRRect(
      
      borderRadius: BorderRadius.circular(75),
      child: Image.asset(logo, height: 150, width: 150,),

    );
  }

  Widget _textFormField () {
    return Column(
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          margin: EdgeInsets.only(top: 10),
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(
                color: Colors.transparent
              )
            ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: kPrimary
            )
          ),
            prefixIcon: Icon(Icons.person_outline_outlined, color: kPrimary,),
            hintText: 'User Name',
            fillColor: Colors.grey[100],
            filled: true
            ),
          ),
        ),
        Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          margin: EdgeInsets.only(top: 15),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(
                color: Colors.transparent
              )
            ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: kPrimary
            )
          ),
            prefixIcon: Icon(Icons.lock_outlined, color: kPrimary,),
            hintText: 'Password',
            fillColor: Colors.grey[100],
            filled: true
            ),
          ),
        ),
      ],
    );
  }

  Widget _textSignUp () {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Does not have any accounts?',
            style: TextStyle(
              color: Colors.black87,
              fontFamily: fontPrimary
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=> RegisterView())
            );
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: kPrimary,
                fontFamily: fontPrimary
              ),
            )
          )
        ],
      ),
    );
  }

   Widget  _button (BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 5)),

        TextButton(
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=> HomeView())
            );
          },
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: kPrimary,
            minimumSize: Size(280, 48),
            padding: EdgeInsets.symmetric(horizontal: 16),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            )
          ),
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 16,
              fontFamily: fontPrimary,
            ),
          )
        ),
      ],
    );
  }
}