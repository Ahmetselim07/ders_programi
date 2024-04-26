class Lesson {
  final String name;
  final String className;
  final String time;
  final int dayOfWeek;
  final String dayOfLesson;
  final String lastLesson;
  Lesson({
    required this.name,
    required this.className,
    required this.time,
    required this.dayOfWeek,
    required this.dayOfLesson,
    required this.lastLesson,
  });
}

 List<Lesson> lessonData = [
    Lesson(
        name: 'Nesnelerin İnterneti',
        className: 'Derslik 307',
        time: '13.30',
        dayOfWeek: 1,
        dayOfLesson: 'Pazartesi',
        lastLesson: '14.00'),
    Lesson(
      name: 'Mobil Uygulama',
      className: 'Derslik 206',
      time: '09.55',
      dayOfWeek: 2,
      dayOfLesson: 'Salı',
      lastLesson: '10.15',
    ),
    Lesson(
        name: 'Algoritma Analizi',
        className: 'Derslik 409',
        time: '13.30',
        dayOfWeek: 2,
        dayOfLesson: 'Salı',
        lastLesson: '14.00'),
    Lesson(
        name: 'İşletim Sistemleri',
        className: 'Derslik 310',
        time: '09.55',
        dayOfWeek: 3,
        dayOfLesson: 'Çarşamba',
        lastLesson: '10.15'),
    Lesson(
        name: 'Pro Yazılım Geliştirme',
        className: '?',
        time: '09.55',
        dayOfWeek: 4,
        dayOfLesson: 'Perşembe',
        lastLesson: '10.15'),
    Lesson(
        name: 'Siber Güvenlik',
        className: 'Derslik 205',
        time: '14.30',
        dayOfWeek: 4,
        dayOfLesson: 'Perşembe',
        lastLesson: '15.00'),
    Lesson(
      name: 'Yazılım Proje Yönetimi',
      className: 'Derslik 409',
      time: '14.25',
      dayOfWeek: 5,
      dayOfLesson: 'Cuma',
      lastLesson: '23.00',
    ),
    
  ];