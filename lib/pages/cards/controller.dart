import 'package:get/get.dart';
import 'package:money_formatter/money_formatter.dart';

class CardController extends GetxController{

  RxDouble cardAccountBalance = 0.0.obs;

  String get displayCardAmount {
    MoneyFormatter formatter = MoneyFormatter(amount: cardAccountBalance.value);
    return formatter.output.symbolOnLeft; // Displaying the balance without currency symbol in a compact format (e.g., "12.35k")
  }

}