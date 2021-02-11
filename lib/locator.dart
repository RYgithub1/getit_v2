import 'package:get_it/get_it.dart';
import 'package:getit_v2/model/domain_controller.dart';
import 'package:getit_v2/model/repository.dart';




/// [2. Create a get_it locator]
final GetIt locator = GetIt.instance;

/// [3. Create a setup method and create our services]
void setup() {
  // which registerXXX
  // locator.registerXXX<Type>(() => R/Controller());
  locator.registerLazySingleton<Repository>(() => Repository());
  locator.registerLazySingleton<DomainController>(() => DomainController());


}