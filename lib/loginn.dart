import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset('LoginBg.png'),
            Container(
              margin: EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Hai Moviegoers!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2, bottom: 2),
                    child: Text(
                      "Sudah siap merasakan pengalaman menonton yang tidak terlupakan?",
                      maxLines: 2,
                      style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Email or WhatsApp Number",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black)),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "...",
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                        ),
                        Row(
                          children: [
                            Text("Password",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black)),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "...",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.crop_square_rounded),
                        ),
                        Text(
                          "Ya, saya menerima syarat dan kentuan yang berlaku.",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 335),
                      ),
                      Text("Forgot Passowrd",
                          style:
                              TextStyle(fontSize: 10, color: Colors.blue[900]))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/DashBoard');
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 200, right: 200),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.blue[900]),
                      child: Text("Login",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Belum punya akun?",
                          style:
                              TextStyle(fontSize: 16, color: Colors.blue[900])),
                      Text("Daftar di sini",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
