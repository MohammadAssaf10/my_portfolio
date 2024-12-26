import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'my_portfolio_app.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyPortfolioApp());
}