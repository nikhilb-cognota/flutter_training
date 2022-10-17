import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_app/pages/counter/controller/counter_controller.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late final CounterController controller;

  @override
  void initState() {
    super.initState();

    controller = Get.put(CounterController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Obx(() {
              return Text(
                '${controller.count.value}',
                style: Theme.of(context).textTheme.displayMedium,
              );
            }),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: const Text('SUBTRACT'),
                    onPressed: controller.decrement,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    child: const Text('ADD'),
                    onPressed: controller.increment,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
