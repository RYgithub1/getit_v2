import 'package:getit_v2/data/meme.dart';
import 'package:getit_v2/model/repository.dart';
import '../locator.dart';




class DomainController {


  /// [6. Call the R and receive a meme]
  Future<Meme> getNextMeme() async {
    return locator.get<Repository>().getMeme();
  }
}