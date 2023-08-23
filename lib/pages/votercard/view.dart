import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'controller.dart';

class BvnScreen extends GetView<BvnScreenController>{
  const BvnScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text('BVN'),
        ),
        body: Center(
          child: Text('BVN'),
        ),
      );
    }
}

