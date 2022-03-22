import 'package:flutter/material.dart';
import 'package:flutter_course_online/constant.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGreyColor,
      appBar: HeaderHome(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: spacer).copyWith(bottom: 14),
              child: Text(
                "Quiero Estudiar\nQué hay hoy?",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: darkColor,
                  fontSize: 20,
                ),
              ),
            ),
            CategoryList(),
            SectionTitle(title: "Curso Popular", onTap: () {}),
            CourseList(),
            SectionTitle(title: "Artículos", onTap: () {}),
            ArticleList(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationHome(
        currentIndex: currentIndex,
        onTap: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
