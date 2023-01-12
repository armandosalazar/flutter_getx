import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/pattern_controller.dart';

class PatternPage extends GetView<PatternController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController value = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatternController>(
      init: PatternController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Pattern Page'),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text('PatternController ${_.num}')),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: value,
                          decoration: const InputDecoration(
                            hintText: 'Enter your email',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print(_formKey.currentState);
                                print(value.text);
                                _.num = value.text;
                              }
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
