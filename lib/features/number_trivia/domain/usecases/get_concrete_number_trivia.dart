import 'package:cleantdd/core/error/failures.dart';
import 'package:cleantdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  const GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>?> execute({required int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
