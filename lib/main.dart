import 'package:flutter/material.dart';
import 'package:Ermy/ui/account.dart';
import 'package:Ermy/ui/earnings.dart';
import 'package:Ermy/ui/earnings_details.dart';
import 'package:Ermy/ui/home.dart';
import 'package:Ermy/ui/notifications.dart';
import 'package:Ermy/ui/profile.dart';
import 'package:Ermy/ui/promotions.dart';
import 'package:Ermy/ui/recent_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/Notifications': (context) => NotificationsPage(),
        '/Earnings': (context) => EarningsPage(),
        '/Profile': (context) => ProfilePage(),
        '/Earnings_details': (context) => EarningsDetailsPage(),
        '/Recent_transations': (context) => RecentTransactionsPage(),
        '/Promotions': (context) => PromotionsPage(),
        '/Account': (context) => AccountPage(),
      },
    );
  }
}
