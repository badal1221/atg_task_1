class Lesson {
  String lessonName;
  String photo;
  String lessonDesc;
  String duration;
  bool isBooked;

  Lesson({
    required this.lessonName,
    required this.photo,
    required this.lessonDesc,
    required this.duration,
    this.isBooked=false
  });

  Map<String, dynamic> toMap(){
    return {
      "lessonName":lessonName,
      "photo": photo,
      "lessonDesc": lessonDesc,
      "duration": duration,
      "isBooked":isBooked
    };
  }

  factory Lesson.fromMap(Map<String,dynamic> map){
    return Lesson(
      lessonName: map['lessonName']??'',
      photo: map['photo']??'',
      lessonDesc: map['lessonDesc']??'',
      duration: map['duration']??'',
      isBooked: map['isBooked']??false,
    );
  }

}