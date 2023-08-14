





import '../../core/remote.dart';
import '../model/Resturant_model.dart';

class Resturantrepository extends ApiProvider {

  Future<ResturantModel?> fetchResturant(int id) async{
    final response = await get('restaurant/${id}/show');

    final data = extractData(response);
    return ResturantModel.fromJson(data);
  }
}