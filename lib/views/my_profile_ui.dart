import 'package:flutter/material.dart';
import 'package:quiz_app_6419c10018/views/search_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileUI extends StatelessWidget {
  const MyProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/1.jpg",
      "assets/images/2.jpg",
      "assets/images/3.png",
      "assets/images/4.jpg",
      "assets/images/5.jpg",
      "assets/images/6.jpg",
      "assets/images/7.jpg",
      "assets/images/8.jpg",
      "assets/images/9.jpg",
      "assets/images/10.jpg",
      "assets/images/11.jpg",
      "assets/images/12.jpg"
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.25,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/avatar.jpg',
                  ),
                  radius: MediaQuery.of(context).size.width * 0.18,
                ),
                radius: MediaQuery.of(context).size.width * 0.18,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                'ffflukentp',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.1,
                ),
              ),
              Text(
                'Natthaphon Yuyuenyong',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
              Text(
                'ID: 6419C10018',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'FOLLOW ME',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.black,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.92,
                    MediaQuery.of(context).size.width * 0.14,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchUI(),
                    ),
                  );
                },
                child: Text(
                  'SEARCH',
                  style: GoogleFonts.kanit(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: const BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.92,
                    MediaQuery.of(context).size.width * 0.14,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.92,
                child: GridView.builder(
                  padding: EdgeInsets.all(0.0),
                  physics: ScrollPhysics(),
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(images[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
