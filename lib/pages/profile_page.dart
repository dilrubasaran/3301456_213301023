import 'package:flutter/material.dart';
import '/pages/bottom_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  final String nickname;
  const ProfilePage({Key? key, required this.nickname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              width: double.infinity,
              color: Color.fromARGB(255, 161, 38, 38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Hoşgeldin  $nickname',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 220, 217, 217)),
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap:
                  true, //ListView içerikteki bütün yeri kaplamak istediğinde kullan
              children: <Widget>[
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  leading: Icon(Icons.align_horizontal_left_rounded),
                  title: Text('Siparişlerim'),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  leading: Icon(Icons.mark_unread_chat_alt_rounded),
                  title: Text('Değerlendirmelerim'),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  leading: Icon(Icons.person_rounded),
                  title: Text('Kullanıcı Bilgilerim'),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  leading: Icon(Icons.location_on_rounded),
                  title: Text('Adres Bilgilerim'),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  leading: Icon(Icons.credit_card_rounded),
                  title: Text('Kayıtlı Kartlarım'),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/login'),
                  leading: Icon(Icons.logout_rounded),
                  title: Text('Çıkış'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
