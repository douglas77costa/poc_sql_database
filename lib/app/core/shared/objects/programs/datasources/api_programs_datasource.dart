import 'package:get/get.dart';

import '../data/entities/program_entity.dart';
import '../data/models/program_model.dart';
import 'interfaces/api_programs_datasource.dart';

class ApiProgramsDataSource implements IApiProgramsDataSource {
  final GetConnect _getConnect;

  ApiProgramsDataSource({
    required GetConnect getConnect,
  }) : _getConnect = getConnect;

  @override
  Future<List<ProgramEntity>> getPrograms() async {
    try {
      var response = await _getConnect.get(
          'https://applojong.com/api/program-list',
          query: {'language_id': '1'});
      if (response.statusCode == 200) {
        return ProgramModel.fromJsonList(response.body);
      } else {
        throw Exception(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
