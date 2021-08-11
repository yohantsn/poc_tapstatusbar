import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_statusbar/app/pages/home/welcome/welcome_presenter.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key, required this.scrollController}) : super(key: key);
  final ScrollController scrollController;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends ModularState<WelcomePage, WelcomePresenter> {

  @override
  Widget build(BuildContext context) {

    return PrimaryScrollController(
        controller: widget.scrollController,
        child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                width: 250,
                color: Colors.amber,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.listMock.length,
                  itemBuilder: (context, index){
                    return Container(
                      child: Text(
                          "Text ${controller.listMock[index]}"
                      ),
                    );
                  })
            ],
          ),
        )
    ));
  }
}
