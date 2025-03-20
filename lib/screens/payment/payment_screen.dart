import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'payment_configurations.dart' as payment_configurations;

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    const paymentItems = [
      PaymentItem(
        label: 'Total',
        amount: '10.00',
        status: PaymentItemStatus.final_price,
      ),
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Subscription Price",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            GooglePayButton(
              paymentConfiguration:
                  payment_configurations.defaultGooglePayConfig,
              paymentItems: paymentItems,
              type: GooglePayButtonType.buy,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: onGooglePayResult,
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            // Example pay button configured using a string
            ApplePayButton(
              paymentConfiguration:
                  payment_configurations.defaultApplePayConfig,
              paymentItems: paymentItems,
              style: ApplePayButtonStyle.black,
              type: ApplePayButtonType.buy,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: onApplePayResult,
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }

  void onGooglePayResult(paymentResult) {
    // Handle payment success for Google Pay
    print('Google Pay result: $paymentResult');
  }

  void onApplePayResult(paymentResult) {
    // Handle payment success for Apple Pay
    print('Apple Pay result: $paymentResult');
  }
}
