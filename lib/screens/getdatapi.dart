import 'package:flutter/material.dart';

import '../controller/controller.dart';

class GetDataApi extends StatefulWidget {
  const GetDataApi({
    Key? key,
    required this.res,
  }) : super(key: key);

  final String res;

  @override
  State<GetDataApi> createState() => _GetDataApiState();
}

class _GetDataApiState extends State<GetDataApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: widget.res.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                children: [
                  Text(widget.res),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
