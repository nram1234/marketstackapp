class Data {
  final double? open;
  final double? high;
  final double? low;
  final double? close;
  final double? volume;
  final double? adjHigh;
  final double? adjLow;
  final double? adjClose;
  final double? adjOpen;
  final double? adjVolume;
  final double? splitFactor;
  final double? dividend;
  final String? symbol;
  final String? exchange;
  final String? date;

  Data(
      {required this.open,
      required this.high,
      required this.low,
      required this.close,
      required this.volume,
      required this.adjHigh,
      required this.adjLow,
      required this.adjClose,
      required this.adjOpen,
      required this.adjVolume,
      required this.splitFactor,
      required this.dividend,
      required this.symbol,
      required this.exchange,
      required this.date});
}
