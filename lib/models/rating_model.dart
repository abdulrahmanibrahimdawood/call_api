import 'package:equatable/equatable.dart';

class RatingModel extends Equatable {
  final num rate;
  final int count;

  const RatingModel({required this.rate, required this.count});
  @override
  List<Object?> get props => [rate, count];
}
