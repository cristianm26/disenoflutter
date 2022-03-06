import 'package:diseno/widgets/background.dart';
import 'package:diseno/widgets/card_table.dart';
import 'package:diseno/widgets/custom_bottom_navigation.dart';
import 'package:diseno/widgets/page_title.dart';
import 'package:flutter/material.dart';

class MenuDesignScreen extends StatelessWidget {
  const MenuDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          //Background
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //Titulos
          PageTitle(),
          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}
