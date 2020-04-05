class EventDetails
{
  int eventID;
  String time;
  String date;
  String title;
  String place;
  String img;
  String desc;
  String shortDesc;
  bool isHighlight;

  EventDetails({this.eventID, this.time, this.date, this.title, this.place, this.img, this.desc, this.isHighlight})
  {
    shortDesc = desc.substring(0,30)+ '...';
  }
}
