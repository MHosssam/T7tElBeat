import 'package:ta7t_elbeet/app/modules/units/views/units_view.dart';
import 'package:ta7t_elbeet/app/modules/units/bindings/units_binding.dart';
import 'package:ta7t_elbeet/app/modules/new_product/views/new_product_view.dart';
import 'package:ta7t_elbeet/app/modules/new_product/bindings/new_product_binding.dart';
import 'package:ta7t_elbeet/app/modules/main_product/views/main_product_view.dart';
import 'package:ta7t_elbeet/app/modules/main_product/bindings/main_product_binding.dart';
import 'package:ta7t_elbeet/app/modules/AddShop/bindings/add_shop_binding.dart';

import 'package:ta7t_elbeet/app/modules/AddShop/views/add_shop_view.dart';
import 'package:ta7t_elbeet/app/modules/login/bindings/home_binding.dart';
import 'package:ta7t_elbeet/app/modules/login/views/home_view.dart';
import 'package:ta7t_elbeet/app/modules/provisions/views/provisions_view.dart';
import 'package:ta7t_elbeet/app/modules/provisions/bindings/provisions_binding.dart';
import 'package:ta7t_elbeet/app/modules/setting/views/setting_view.dart';
import 'package:ta7t_elbeet/app/modules/setting/bindings/setting_binding.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/views/suggestions_view.dart';
import 'package:ta7t_elbeet/app/modules/suggestions/bindings/suggestions_binding.dart';
import 'package:ta7t_elbeet/app/modules/statistics/views/statistics_view.dart';
import 'package:ta7t_elbeet/app/modules/statistics/bindings/statistics_binding.dart';
import 'package:ta7t_elbeet/app/modules/product/views/product_view.dart';
import 'package:ta7t_elbeet/app/modules/product/bindings/product_binding.dart';
import 'package:ta7t_elbeet/app/modules/notification/views/notification_view.dart';
import 'package:ta7t_elbeet/app/modules/notification/bindings/notification_binding.dart';
import 'package:ta7t_elbeet/app/modules/personal_acount/views/personal_acount_view.dart';
import 'package:ta7t_elbeet/app/modules/personal_acount/bindings/personal_acount_binding.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/views/home_screen_view.dart';
import 'package:ta7t_elbeet/app/modules/home_screen/bindings/home_screen_binding.dart';
import 'package:ta7t_elbeet/app/Splash/splash.dart';
import 'package:get/get.dart';
import 'package:ta7t_elbeet/app/modules/shop_management/bindings/shop_management_binding.dart';
import 'package:ta7t_elbeet/app/modules/shop_management/views/shop_management_view.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => Splash(),
    ),
    GetPage(
      name: Routes.HOME_SCREEN, 
      page:()=> HomeScreenView(), 
      binding: HomeScreenBinding(),
    ),

    GetPage(
      name: Routes.SHOP_MANAGEMENT, 
      page:()=> ShopManagementView(), 
      binding: ShopManagementBinding(),
    ),
    GetPage(
      name: Routes.PERSONAL_ACOUNT, 
      page:()=> PersonalAcountView(), 
      binding: PersonalAcountBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATION, 
      page:()=> NotificationView(), 
      binding: NotificationBinding(),
    ),
    GetPage(
      name: Routes.PRODUCT, 
      page:()=> ProductView(), 
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.STATISTICS, 
      page:()=> StatisticsView(), 
      binding: StatisticsBinding(),
    ),
    GetPage(
      name: Routes.SUGGESTIONS, 
      page:()=> SuggestionsView(), 
      binding: SuggestionsBinding(),
    ),
    GetPage(
      name: Routes.SETTING, 
      page:()=> SettingView(), 
      binding: SettingBinding(),
    ),
    GetPage(
      name: Routes.PROVISIONS, 
      page:()=> ProvisionsView(), 
      binding: ProvisionsBinding(),
    ),

    GetPage(
      name: Routes.ADD_SHOP, 
      page:()=> AddShopView(), 
      binding: AddShopBinding(),
    ),
    GetPage(
      name: Routes.MAIN_PRODUCT, 
      page:()=> MainProductView(), 
      binding: MainProductBinding(),
    ),
    GetPage(
      name: Routes.NEW_PRODUCT, 
      page:()=> NewProductView(), 
      binding: NewProductBinding(),
    ),
    GetPage(
      name: Routes.UNITS, 
      page:()=> UnitsView(), 
      binding: UnitsBinding(),
    ),
  ];
}