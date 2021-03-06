import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meat_one/view/signin_page/signin_page.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = '/signup';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isVisible = false;
  String _email = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [

              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                width: double.infinity,
                child: Text(
                  'Steak\nOut',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.getFont('Anton',
                      fontWeight: FontWeight.w800,
                      height: .9, fontSize: 40),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.arrow_back_ios)
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Sign up for\na new account.',
                          style: GoogleFonts.getFont(
                            'Open Sans',
                            textStyle: const TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              height: .9,
                            ),
                          ),
                        ),
                        SizedBox(
                          height:20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            hintText: 'your_email@gmail.com',
                          ),
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: !isVisible,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(
                                !isVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _password = value;
                            });
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Forgot pass');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Forgot Password',
                              style: GoogleFonts.getFont(
                                'Open Sans',
                                textStyle: const TextStyle(
                                  wordSpacing: 2,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Text(
                                  'Or By Using',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      height: .9,
                                      color: Colors.grey.withOpacity(.9),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                15,
                                              ),
                                              color:
                                              Colors.grey.withOpacity(.3),
                                            ),
                                            child: const Icon(
                                              Icons.facebook,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                15,
                                              ),
                                              color:
                                              Colors.grey.withOpacity(.3),
                                            ),
                                            child: const Icon(
                                              Icons.sports_volleyball_sharp,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                15,
                                              ),
                                              color:
                                              Colors.grey.withOpacity(.3),
                                            ),
                                            child: const Icon(
                                              Icons.switch_right_sharp,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              print(_email);
                              print(_password);
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .9,
                              height: MediaQuery.of(context).size.height * .08,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              child: Center(
                                child: Text(
                                  'Confirm',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              print("Sign up using phone");
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .9,
                              height: MediaQuery.of(context).size.height * .08,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              child: Center(
                                child: Text(
                                  'Signup with Phone Number',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(SignInPage.routeName);
                            },
                            child: Text(
                              'Already a user? Signin now!',
                              style: GoogleFonts.getFont(
                                'Open Sans',
                                textStyle: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
