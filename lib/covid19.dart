
class Covid{
  String positif;
  String sembuh;
  String meninggal;

  Covid({this.positif, this.meninggal, this.sembuh});

  factory Covid.createCovid(Map<String, dynamic>object){
    return Covid(
      positif: object ['positif'].toString(),
      sembuh: object ['sembuh'].toString(),
      meninggal:  object ['meninggal'].toString(),
    );
  }  
}