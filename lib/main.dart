import 'package:flutter/material.dart';
import 'my_portfolio_app.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyPortfolioApp());
}