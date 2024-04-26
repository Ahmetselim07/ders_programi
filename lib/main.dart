import 'package:ders_programi2/lesson_data.dart';
import 'package:ders_programi2/list_lessons.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()));
}


class MyApp extends StatelessWidget {
 
  String getNextLesson(DateTime now) {
    int currentDay = now.weekday;
    int currentHour = now.hour;
    int currentMinute = now.minute;
    Lesson? nextLesson;

    for (Lesson lesson in lessonData) {
      if (lesson.dayOfWeek == currentDay) {
        final lessonTime = lesson.lastLesson.split('.');
        final lessonHour = int.parse(lessonTime[0]);
        final lessonMinute = int.parse(lessonTime[1]);

        if (lessonHour > currentHour ||
            (lessonHour == currentHour && lessonMinute > currentMinute)) {
          if (nextLesson == null ||
              lessonHour < int.parse(nextLesson.lastLesson.split('.')[0]) ||
              (lessonHour == int.parse(nextLesson.lastLesson.split('.')[0]) &&
                  lessonMinute <
                      int.parse(nextLesson.lastLesson.split('.')[1]))) {
            nextLesson = lesson;
          }
        }
      } else if (lesson.dayOfWeek > currentDay) {
        if (nextLesson == null || lesson.dayOfWeek < nextLesson.dayOfWeek) {
          nextLesson = lesson;
        }
      }
    }

    if (nextLesson != null) {
      String ok = ">>";

      String lessonInfo =
          "  $ok Ders : ${nextLesson.name}\n\n\n  >> Dersin Günü : ${nextLesson.dayOfLesson}\n\n\n  >> Saati : ${nextLesson.time}\n\n\n >> Sınıfı: ${nextLesson.className}\n";
      return lessonInfo;
    } else {
      return "Ders bulunamadı.";
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'SIRADAKİ DERSİNİZ',
            style: TextStyle(color: Colors.black54, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  getNextLesson(now),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 24, 15, 11),
                    fontSize: 25,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left:110,
              child: Container(
                width:200,
                height: 50,
                child: FloatingActionButton(
                  backgroundColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  LessonList(),
                          ));
                    },
                    child: Text('Tüm dersleri gör')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
