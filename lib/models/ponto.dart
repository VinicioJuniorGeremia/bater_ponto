import 'package:intl/intl.dart';
import 'package:geolocator/geolocator.dart';


class Ponto{

  static const nomeTabela = 'pontos';
  static const campoId = 'id';
  static const campoDataHora = 'horario';
  static const campoLocalizacao = 'localizacao';


  int? id;
  DateTime? dataPonto= DateTime.now();
  String localizacao;


  Ponto({
    required this.id,
    required this.localizacao,
    this.dataPonto});


  String get dataPontoFormatado{
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd/MM/yyyy HH:mm:ss').format(dataPonto!);
    return formattedDate;
  }


  Map<String, dynamic> toMap() => {
    //  campoId: id == 0 ? null: id,
    campoLocalizacao: localizacao,
    campoDataHora:
    dataPonto == null ? null : DateFormat("dd/MM/yyyy HH:mm:ss").format(dataPonto!)
  };


  factory Ponto.fromMap(Map<String, dynamic> map) => Ponto(
    id: map[campoId] is int ? map[campoId] : null,
    localizacao: map[campoLocalizacao] is String ? map[campoLocalizacao] : '',
    dataPonto: map[campoDataHora] is String
        ? DateFormat("dd/MM/yyyy HH:mm:ss").parse(map[campoDataHora])
        : null,
  );
}

///fimm