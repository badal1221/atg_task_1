class Program {
  String programName;
  String photo;
  String programDesc;
  String lessonNo;

  Program({
    required this.programName,
    required this.photo,
    required this.programDesc,
    required this.lessonNo,
  });

  Map<String, dynamic> toMap(){
    return {
      "programName":programName,
      "photo": photo,
      "programDesc": programDesc,
      "lessonNo": lessonNo,
    };
  }

  factory Program.fromMap(Map<String,dynamic> map){
    return Program(
      programName: map['programName']??'',
      photo: map['photo']??'',
      programDesc: map['programDesc']??'',
      lessonNo: map['lessonNo']??'',
    );
  }

}