
class Data{
   String? col1;
  String? col2;

  Data({this.col1, this.col2});

  factory Data.fromJson(Map<String,dynamic>json)
  {
    return Data(
      col1: json['col1'],
      col2: json['col2'],
    );
  }

}