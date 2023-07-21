class Event {
  String eventsName;
  String photo;
  String eventsDesc;
  String date;
  bool isBooked;

  Event({
    required this.eventsName,
    required this.photo,
    required this.eventsDesc,
    required this.date,
    this.isBooked=false
  });

  Map<String, dynamic> toMap(){
    return {
      "eventsName":eventsName,
      "photo": photo,
      "eventsDesc": eventsDesc,
      "date": date,
      "isBooked":isBooked
    };
  }

  factory Event.fromMap(Map<String,dynamic> map){
    return Event(
      eventsName: map['eventsName']??'',
      photo: map['photo']??'',
      eventsDesc: map['eventsDesc']??'',
      date: map['date']??'',
      isBooked: map['isBooked']??false,
    );
  }

}