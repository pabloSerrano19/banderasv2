import 'package:banderas/Model_flag.dart';
import 'package:banderas/config/pais.dart';
import 'package:dio/dio.dart';


class GetPais {
  
final dio = Dio();

Future<Pais> getPais() async {
  
  final response = await dio.get('https://restcountries.com/v3.1/name/spain');
 
 final paisModel = Ciudad.fromJson(response.data);

 return paisModel.toPaisEntity();
}

}