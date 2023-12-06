import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPhone = MediaQuery.of(context).size.shortestSide < 600;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF777777),
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text(
            'VerticalRecoil\'s Minecraft Assets',
            style: TextStyle(
              fontSize: isPhone ? 30 : 50, // Adjusted font size for phone
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          toolbarHeight: isPhone ? 60 : 80, // Adjusted toolbar height for phone
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: isPhone ? 300 : 500, // Adjusted width for phone
                  height: 100,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF9C9C9C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'The version shown as latest is required if you wish to join the server',
                      style: TextStyle(
                        color: Color.fromARGB(255, 116, 0, 0),
                        fontSize:
                            isPhone ? 14 : 18, // Adjusted font size for phone
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: isPhone ? 300 : 500,
                  height: isPhone ? 200 : 300,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF9C9C9C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'SpookierCraft 1.20.1',
                        style: TextStyle(
                          fontSize:
                              isPhone ? 24 : 40, // Adjusted font size for phone
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isPhone ? 15 : 30),
                      Text(
                        'Latest Modpack Version ',
                        style: TextStyle(
                            fontSize: isPhone
                                ? 18
                                : 30), // Adjusted font size for phone
                      ),
                      Text(
                        '2.2.0',
                        style: TextStyle(
                          color: Color.fromARGB(255, 238, 255, 82),
                          fontWeight: FontWeight.bold,
                          fontSize:
                              isPhone ? 14 : 20, // Adjusted font size for phone
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isPhone ? 15 : 30),
                      ElevatedButton(
                        onPressed: () {
                          _launchURL(
                              'https://drive.google.com/file/d/1HHpWpuqT6RAvJrqWrnmJ2uyc5JKvF7e4/view?usp=sharing');
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                              isPhone ? Size(150, 40) : Size(200, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightGreen),
                        ),
                        child: Text(
                          'Download',
                          style: TextStyle(
                              fontSize: isPhone
                                  ? 18
                                  : 30), // Adjusted font size for phone
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: isPhone ? 300 : 500,
                  height: isPhone ? 200 : 275,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF9C9C9C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'See other modpacks',
                        style: TextStyle(
                          fontSize:
                              isPhone ? 24 : 40, // Adjusted font size for phone
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isPhone ? 5 : 10),
                      Text(
                        'Previous versions as well as\nother modpacks can be found here!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:
                              isPhone ? 16 : 25, // Adjusted font size for phone
                        ),
                      ),
                      SizedBox(height: isPhone ? 15 : 30),
                      ElevatedButton(
                        onPressed: () {
                          _launchURL(
                              'https://drive.google.com/drive/folders/1qKoDu74IuhV4MwgGEtny69L_eyKsUAms?usp=sharing');
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                              isPhone ? Size(150, 40) : Size(200, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightGreen),
                        ),
                        child: Text(
                          'Browse',
                          style: TextStyle(
                              fontSize: isPhone
                                  ? 18
                                  : 30), // Adjusted font size for phone
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: isPhone ? 200 : 300,
                  height: isPhone ? 130 : 180,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF9C9C9C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Join our discord',
                        style: TextStyle(
                          fontSize:
                              isPhone ? 18 : 30, // Adjusted font size for phone
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: isPhone ? 15 : 30),
                      ElevatedButton(
                        onPressed: () {
                          _launchURL(
                              'https://discord.gg/tpArk4fhr8'); // Replace with your Discord link
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                              isPhone ? Size(150, 40) : Size(200, 50)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 0, 95, 173)),
                        ),
                        child: Text(
                          'Join Now',
                          style: TextStyle(
                              fontSize: isPhone ? 14 : 20,
                              color:
                                  Colors.white), // Adjusted font size for phone
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
