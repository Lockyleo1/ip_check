
class Info {
  String ip;
  String region;
  String city;
  String postal;

  Info({required this.ip,required this.region,required this.city,required this.postal});
  

  @override
  String toString() {
    return "My ip is $ip,region is $region, city is $city, postal is $postal";
  }
}
