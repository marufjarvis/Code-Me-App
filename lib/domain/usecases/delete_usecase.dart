import 'package:code_me/domain/entities/app_error.dart';
import 'package:code_me/domain/entities/language_item_entity.dart';
import 'package:code_me/domain/entities/local_db_param.dart';
import 'package:code_me/domain/repositories/localdb_repository.dart';
import 'package:code_me/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';

class DeleteUsecase extends Usecase<LanguageItemEntity, LocalDBParms> {
  final LocalDBRepository localDBRepository;

  DeleteUsecase(this.localDBRepository);
  @override
  Future<Either<AppError, LanguageItemEntity>> call(LocalDBParms params) async {
    return await localDBRepository.deleteItem(params.languageItemEntity);
  }
}
