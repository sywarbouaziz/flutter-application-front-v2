import 'package:flutter/material.dart';
import 'package:flutter_application_7/Fournisseur/screens/profile/profile_edit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
       appBar: AppBar(
            title: Text(
          'Profile',
          style: GoogleFonts.bebasNeue(
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.deepPurple,
           actions: [
          IconButton(
            icon: Icon(Icons.edit),
              onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => CreateProfileScreen(),
                      ),
                    );
                  },
          ),
        ],
        ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          /*borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),*/
        ),
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/koko.png'),
            ),
            SizedBox(height: 20),
            Text(
              "dfgfd",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 20.0,
              child: Divider(
                color: Colors.deepPurple,
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.white,
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "54654654",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.white,
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "fdgdfgdfgdf",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.white,
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.security,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "0x1234...5678",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/koko.png'),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email Address',
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Metamask Address',
                labelText: 'Metamask Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}*/
