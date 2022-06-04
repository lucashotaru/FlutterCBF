// ignore_for_file: file_names

import 'dart:convert';

class TabelaModel {
  int? posicao;
  String? nome;
  int? vitorias;
  int? derrotas;
  int? empates;
  int? pontos;
  String? siglaTime;
  
  TabelaModel({
    this.posicao,
    this.nome,
    this.vitorias,
    this.derrotas,
    this.empates,
    this.pontos,
    this.siglaTime,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TabelaModel &&
      other.posicao == posicao &&
      other.nome == nome &&
      other.vitorias == vitorias &&
      other.derrotas == derrotas &&
      other.empates == empates &&
      other.pontos == pontos &&
      other.siglaTime == siglaTime;
  }

  @override
  int get hashCode {
    return posicao.hashCode ^
      nome.hashCode ^
      vitorias.hashCode ^
      derrotas.hashCode ^
      empates.hashCode ^
      pontos.hashCode ^
      siglaTime.hashCode;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'posicao': posicao,
      'nome': nome,
      'vitorias': vitorias,
      'derrotas': derrotas,
      'empates': empates,
      'pontos': pontos,
      'siglaTime': siglaTime,
    };
  }

  factory TabelaModel.fromMap(Map<String, dynamic> map) {
    return TabelaModel(
      posicao: map['posicao'] != null ? map['posicao'] as int : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      vitorias: map['vitorias'] != null ? map['vitorias'] as int : null,
      derrotas: map['derrotas'] != null ? map['derrotas'] as int : null,
      empates: map['empates'] != null ? map['empates'] as int : null,
      pontos: map['pontos'] != null ? map['pontos'] as int : null,
      siglaTime: map['siglaTime'] != null ? map['siglaTime'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TabelaModel.fromJson(String source) => TabelaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
