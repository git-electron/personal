import '../../../../core/utils/types/types.dart';


abstract class ContactFormRepository {
  Future<Json> call(Json request);
}
