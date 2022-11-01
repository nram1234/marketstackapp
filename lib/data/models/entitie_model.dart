import '../../domain/entities/entitie.dart';

class EntitieModel extends Data {
  EntitieModel(
      {required super.open,
      required super.high,
      required super.low,
      required super.close,
      required super.volume,
      required super.adjHigh,
      required super.adjLow,
      required super.adjClose,
      required super.adjOpen,
      required super.adjVolume,
      required super.splitFactor,
      required super.dividend,
      required super.symbol,
      required super.exchange,
      required super.date});

  factory EntitieModel.fromJson(Map<String, dynamic> json) => EntitieModel(
      adjClose: json['adj_close'],
      adjHigh: json['adj_high'],
      adjLow: json['adj_low'],
      adjOpen: json['adj_open'],
      close: json['close'],
      adjVolume: json['adj_volume'],
      date: json['date'],
      dividend: json['dividend'],
      exchange: json['exchange'],
      high: json['high'],
      low: json['low'],
      open: json['open'],
      splitFactor: json['split_factor'],
      symbol: json['symbol'],
      volume: json['volume']);
}
