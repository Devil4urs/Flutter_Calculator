import 'package:calculator/constant/colors.dart';
import 'package:calculator/constant/widgets/cal_button.dart';
import 'package:calculator/constant/widgets/textfield.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/screens/widgets_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
        color: Appcolors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));

    return Consumer<CalculatorProvider>(
      builder: (context,provider,_) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Center(child: Text("Calculator")),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              costumTextField(controller: provider.compController,),
              const Spacer(),
              Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4, (index) => buttonList[index]
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4, (index) => buttonList[index + 4]
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4, (index) => buttonList[index + 8]
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  3, (index) => buttonList[index + 12]
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  3, (index) => buttonList[index + 15]
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30,),
                        const CalculateButton()
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
