import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/config/palette.dart';
import 'package:MPSP/widgets/consumidor_widgets.dart';
import 'package:MPSP/widgets/criminal_widgets.dart';
import 'package:flutter/material.dart';
import 'package:MPSP/widgets/civel_widgets.dart';

class Area extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  Area({Key key, this.onMenuTap}) : super(key: key);
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                color: Palette.vermelhompsp2,
                height: 80,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.menu,
                              color: Palette.brancompsp,
                            ),
                            onTap: onMenuTap,
                          ),
                          Text(
                            "Áreas de Atuação",
                            style: TextStyle(
                                fontSize: 24,
                                color: Palette.brancompsp,
                                fontFamily: "Roboto"),
                          ),
                          Icon(
                            Icons.chat,
                            color: Palette.brancompsp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Palette.vermelhompsp2,
                child: TabBar(
                    labelColor: Palette.vermelhompsp2,
                    unselectedLabelColor: Palette.brancompsp,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Palette.brancompsp),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.account_circle),
                        text: 'Cível',
                      ),
                      Tab(
                        icon: Icon(Icons.apartment),
                        text: 'Consumidor',
                      ),
                      Tab(
                        icon: Icon(Icons.announcement),
                        text: 'Criminal',
                      ),
                    ]),
              ),
              Flexible(
                child: TabBarView(
                  children: [CivelPage(), ConsumidorPage(), CriminalPage()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}