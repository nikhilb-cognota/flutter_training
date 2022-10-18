import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/users_controller.dart';
import '../widgets/user_card.dart';

class ApiListPage extends StatefulWidget {
  const ApiListPage({Key? key}) : super(key: key);

  @override
  State<ApiListPage> createState() => _ApiListPageState();
}

class _ApiListPageState extends State<ApiListPage> {
  late final UsersController controller;

  @override
  void initState() {
    super.initState();

    controller = Get.put(UsersController());

    controller.getUsers();
  }

  Widget seperatorBuilder(BuildContext context, int i) {
    return const SizedBox(height: 8.0);
    // return const Divider(
    //   thickness: 5,
    //   color: Colors.red,
    // );
  }

  Widget userItemBuilder(BuildContext context, int index) {
    final user = controller.users[index];

    return UserCard(
      user: user,
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: Obx(() {
        return ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: controller.users.length,
          separatorBuilder: seperatorBuilder,
          itemBuilder: userItemBuilder,
        );
      }),
    );
  }
}
