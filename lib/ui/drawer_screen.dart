import 'package:flutter/material.dart';
import 'package:onboarding/ui/onboarding_screen.dart';

class DrawerScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            color: Color(0xff3CB371),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    margin: EdgeInsets.fromLTRB(0, 35, 0, 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.tmnstudio.com/public/uploads/admin/users/default.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Ade Setiawan',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              Icons.person_outline,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_none_rounded,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.bar_chart_rounded,
            ),
            title: Text(
              'Graphic',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OnboardingScreen();
                }));
              },
              child: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
