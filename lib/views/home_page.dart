import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> imagePaths = [
    "https://c8.alamy.com/comp/2CFJA3K/c-programming-language-2CFJA3K.jpg",
    "https://edraak-marketing-uploads.edraak.org/Courses/sa.png",
    "https://anbilarabi.com/wp-content/uploads/2018/03/java.jpg",
  ];
  

  @override
  Widget build(BuildContext context) {
    final orientation=MediaQuery.of(context).orientation;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text('الرئيسية'),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_book_outlined,
              size: 28,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.exit_to_app,
                size: 28,
                color: Colors.white,
              ),
            ),
          ]),
      body: Stack(
        children: [
         Column(
           children: [
             SizedBox(
               height: height * .3,
               width: double.infinity,
               child: CarouselSlider.builder(
                   itemCount: imagePaths.length,
                   itemBuilder: (context, index, realIndex) {
                     return Container(
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(width*.14),
                           image: DecorationImage(

                             image: NetworkImage(
                               imagePaths[index],
                             ),
                             fit: BoxFit.cover,
                           )),
                     );
                   },
                   options: CarouselOptions(
                       enlargeCenterPage: true,
                       autoPlay: true,
                       autoPlayAnimationDuration:
                       const Duration(seconds: 2))),
             ),
             Expanded(
               child: ListView(
               
                    children: [

                      orientation == Orientation.portrait? Portrait(): LandScape(),
                    ],
                  ),
             ),
           ],
         ),

        ],
      ),
    );
  }
  
}

class Portrait extends StatelessWidget {
   Portrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(height * 0.02),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_outline,
                        size: 45,
                      ),
                      Text("ولي الامر")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.meeting_room_outlined,
                        size: 45,
                      ),
                      Text("طلب مقابلة")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.work_outline,
                        size: 45,
                      ),
                      Text("طلب توظيف")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.library_books_rounded,
                        size: 45,
                      ),
                      Text("نماذج")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.web,
                        size: 45,
                      ),
                      Text("روابط عامة")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        size: 45,
                      ),
                      Text("رزنامة العام")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CircleAvatar(
            child: CircleAvatar(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    size: 45,
                  ),
                  Text("تواصل معنا")
                ],
              ),
              radius: 55,
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.lightBlue,
            radius: 60,
          ),
        ],
      ),
    );
  }
}

class LandScape extends StatelessWidget {
  const LandScape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(height * 0.07),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_outline,
                        size: 45,
                      ),
                      Text("ولي الامر")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.meeting_room_outlined,
                        size: 45,
                      ),
                      Text("طلب مقابلة")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.work_outline,
                        size: 45,
                      ),
                      Text("طلب توظيف")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
            ],
          ),
          SizedBox(height: height * 0.05),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.library_books_rounded,
                        size: 45,
                      ),
                      Text("نماذج")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.web,
                        size: 45,
                      ),
                      Text("روابط عامة")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        size: 45,
                      ),
                      Text("رزنامة العام")
                    ],
                  ),
                  radius: 55,
                  backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlue,
                radius: 60,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          CircleAvatar(
            child: CircleAvatar(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    size: 45,
                  ),
                  Text("تواصل معنا")
                ],
              ),
              radius: 55,
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.lightBlue,
            radius: 60,
          ),
        ],
      ),
    );
  }
}


