import '../../constants/icons.dart';

class PaymentMethodCategories {
  final String icon, title;

  PaymentMethodCategories({required this.icon, required this.title});
}

List<PaymentMethodCategories> paymentmethodcategories_model = [
  PaymentMethodCategories(icon: AppIcons.transfer, title: "Transfer"),
  PaymentMethodCategories(icon: AppIcons.receive, title: "Receive"),
  PaymentMethodCategories(icon: AppIcons.topup, title: "Topup"),
  PaymentMethodCategories(icon: AppIcons.bill, title: "Bills"),
];
