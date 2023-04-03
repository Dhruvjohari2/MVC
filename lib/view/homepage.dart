import 'package:flutter/material.dart';
import 'package:mvc_ecommerce/controller/postcontroller.dart';
import 'package:mvc_ecommerce/screens/postview.dart';
import 'package:mvc_ecommerce/screens/getdatapi.dart';

import '../controller/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = [];
  String res = "";
  String postData = "";

  @override
  Widget build(BuildContext context) {
    debugPrint('res$res');
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () async {
                  var response = await GetData().get().catchError(
                    (err) {
                      debugPrint(err);
                    },
                  );
                  res = response.toString();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => GetDataApi(
                        res: res,
                      ),
                    ),
                  );
                },
                child: const Text('GET',style: TextStyle(color: Colors.white),),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () async {
                  final data = await PostController().getPostList();
                  //     .catchError(
                  //   (err) {
                  //     debugPrint(err);
                  //   },
                  // );
                  postData = data.toString();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PostView(
                        PostData: postData,
                      ),
                    ),
                  );
                },
                child: const Text('Post'),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent,
                ),
                onPressed: () async {
                  // var response = await PostData().post().catchError((err) {});
                  // debugPrint(response.toString());
                },
                child: const Text(
                  'Update',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () async {
                  // var response = await PostData().post().catchError((err) {});
                  // debugPrint(response.toString());
                },
                child: const Text('Delete'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
