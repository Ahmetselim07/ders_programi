import 'package:flutter/material.dart';
import 'lesson_data.dart'; // lesson_data.dart dosyasını içeri aktarın

class LessonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ders Listesi'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: lessonData.length,
          itemBuilder: (context, index) {
            Lesson lesson = lessonData[index];
            return ListTile(
              title: Text(lesson.name),
              subtitle: Text('${lesson.dayOfLesson} - ${lesson.time}'),
              trailing: Text('${lesson.className}'),
              onTap: () {
                // Tıklanan dersin detay sayfasına geçiş yapabilirsiniz
                // Örneğin: Navigator.push(context, MaterialPageRoute(builder: (context) => LessonDetailPage(lesson)));
              },
            );
          },
        ),
      ),
    );
  }
}