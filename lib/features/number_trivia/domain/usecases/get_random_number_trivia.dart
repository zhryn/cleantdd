import 'package:cleantdd/core/error/failures.dart';
import 'package:cleantdd/core/usecases/usecase.dart';
import 'package:cleantdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:cleantdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
