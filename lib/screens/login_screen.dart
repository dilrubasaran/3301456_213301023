import 'package:e_ticaret_uyg/pages/profile_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String kullanici_adi = ' ';

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  // E-posta alanını kontrol etmek için denetleyici .
  final _passwordController = TextEditingController();
  final _nicknameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
          key: _formKey, // Form için anahtar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dukkan\'a Hoşgeldiniz',
                          style: TextStyle(
                            color: Color.fromARGB(255, 161, 38, 38),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _nicknameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Kullanıcı Adı',
                          labelStyle: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                          ),
                          hintText: 'Kullanıcı adınızı girin',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 150, 149, 149)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 161, 38, 38)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) =>
                            value!.isEmpty ? 'Kullanıcı adı zorunlu.' : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'E-posta',
                          labelStyle: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                          ),
                          hintText: 'E-posta adresinizi girin',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 150, 149, 149)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 161, 38, 38)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'E-posta zorunlu.';
                          }
                          if (!RegExp(r'\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b')
                              .hasMatch(value)) {
                            return 'Lütfen geçerli bir e-posta adresi girin.';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Şifre',
                          labelStyle: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                          ),
                          hintText: 'Şifre en az 8 karakter olmalı',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 150, 149, 149)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 161, 38, 38)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Şifre zorunlu.';
                          }
                          if (value.length < 8) {
                            return 'Şifre en az 8 karakter olmalıdır.';
                          }
                          if (!RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).+$')
                              .hasMatch(value)) {
                            return 'Şifre en az bir harf ve bir rakam içermelidir.';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                margin: EdgeInsets.symmetric(horizontal: 60),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Form verileri geçerli ise burada giriş işlemleri yapılabilir
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                      //return null;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(
                            nickname: _nicknameController.text,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 161, 38, 38),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.05,
                margin: EdgeInsets.all(5),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Yeni hesap oluştur',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
