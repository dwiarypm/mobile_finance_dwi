import 'package:mobile_finance_dwi/konstan/route_constant.dart';
import 'package:mobile_finance_dwi/view/pengeluaran.dart';
import 'package:mobile_finance_dwi/view/income.dart';
import 'package:mobile_finance_dwi/view/caku.dart';
import 'package:mobile_finance_dwi/view/home.dart';
import 'package:mobile_finance_dwi/login.dart';
import 'package:mobile_finance_dwi/view/setting.dart';
import 'package:mobile_finance_dwi/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

final routes = {
  loginRoute: (BuildContext context) => LoginPage(),
  homeRoute: (BuildContext context) => Home(),
  settingsRoute: (BuildContext context) => SettingsPage(),
  addExpenseRoute: (BuildContext context) => Spend(),
  addIncomeRoute: (BuildContext context) => EntryForm(),
  detailCashFlowRoute: (BuildContext context) => CashFlow(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cashflow App",
      routes: routes,
    );
  }
}
