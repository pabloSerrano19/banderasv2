import 'package:banderas/config/get_pais.dart';
import 'package:banderas/config/pais.dart';
import 'package:flutter/material.dart';

class PaisProvider extends ChangeNotifier{
List<Pais> paisList=[];
final GetPais getPais = GetPais();

Future<void> providerPais() async{

  final pais = await getPais.getPais();

  paisList.add(pais);

  notifyListeners();
}

}