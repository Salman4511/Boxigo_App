import 'package:boxigo_app/services/api_service.dart';
import 'package:flutter/material.dart';

class LeadsScreen extends StatelessWidget {
  const LeadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(ApiService().getData());
    return const Scaffold(

    );
  }
}