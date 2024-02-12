import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 498,
        left: 184,
        child: SizedBox(
            width: 62,
            height: 60,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 16,
                  child: Container(
                      width: 19,
                      height: 19,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(19, 19)),
                      ))),
              Positioned(
                  top: 17,
                  left: 0,
                  child: Container(
                      width: 17,
                      height: 17,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(17, 17)),
                      ))),
              Positioned(
                  top: 48,
                  left: 28,
                  child: Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(12, 12)),
                      ))),
              Positioned(
                  top: 40,
                  left: 44,
                  child: Container(
                      width: 13,
                      height: 13,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(13, 13)),
                      ))),
              Positioned(
                  top: 27,
                  left: 52,
                  child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(10, 10)),
                      ))),
              Positioned(
                  top: 15,
                  left: 51,
                  child: Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.elliptical(7, 7)),
                      ))),
              Positioned(
                  top: 9,
                  left: 46,
                  child: Container(
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
                      ))),
              Positioned(
                  top: 39,
                  left: 7,
                  child: Container(
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(16, 16)),
                      ))),
            ])));
  }
}
