import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_paystack_payment/flutter_paystack_payment.dart';

mixin BaseApiService {
  final Map<String, String> headers = {
    "Access-Control-Allow-Origin": "*",
    HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
    HttpHeaders.userAgentHeader: PaystackPlugin.platformInfo.userAgent,
    HttpHeaders.acceptHeader: 'application/json',
    'X-Paystack-Build': PaystackPlugin.platformInfo.paystackBuild,
    'X-PAYSTACK-USER-AGENT': jsonEncode({
      'lang': kIsWeb
          ? 'flutter_web'
          : Platform.isIOS
              ? 'objective-c'
              : 'kotlin'
    }),
    'bindings_version': PaystackPlugin.platformInfo.paystackBuild,
    'X-FLUTTER-USER-AGENT': PaystackPlugin.platformInfo.userAgent
  };
  final String baseUrl = 'https://standard.paystack.co';
}
