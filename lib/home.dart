import 'package:flutter/material.dart';
import 'package:followanimation/bottom_nav.dart';
import 'package:followanimation/panel_widget.dart';
import 'package:followanimation/users.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final panelController = PanelController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final user = users[index];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 340,
        minHeight: 150,
        parallaxEnabled: true,
        parallaxOffset:0.3,
        controller: panelController,
        color: Colors.transparent,
        body: PageView(
          children: users
              .map((user) => Image.asset(user.urlImage, fit: BoxFit.cover))
              .toList(),
          onPageChanged: (index) => setState(() {
            this.index = index;
          }),
        ),
        panelBuilder: (ScrollController scrollController) => PanelWidget(
          user: user,
          onClickedPanel: panelController.open,
          onClickedFollowing: () => setState(() {
            user.isFollowing = !user.isFollowing;
          }),
        ),
      ),
    );
  }
}