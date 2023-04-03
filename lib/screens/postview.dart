import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key, required this.PostData}) : super(key: key);

  final String PostData;

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Data : ${widget.PostData}');
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Center(
                  child: Text("title: {widget.PostData[0].}"),
                ),
                const Text("price : sdss"),
                const Text("description : sfsfs"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
