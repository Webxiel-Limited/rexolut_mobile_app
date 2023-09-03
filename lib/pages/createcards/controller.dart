import 'package:get/get.dart';
import 'package:money_formatter/money_formatter.dart';

class CreateCardController extends GetxController{
  RxDouble cardAccountBalance = 0.0.obs;
  final RxBool isCardFunded = false.obs;


  String get displayCardAmount {
    MoneyFormatter formatter = MoneyFormatter(amount: cardAccountBalance.value);
    return formatter.output.symbolOnLeft; // Displaying the balance without currency symbol in a compact format (e.g., "12.35k")
  }

}