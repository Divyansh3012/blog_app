import 'package:blogg_app/components/customDrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController textController = TextEditingController();

  // create new blog
  void createBlog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Title of the blog"),
        content: TextField(
          controller: textController,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                textController.clear();
                Navigator.pop(context);
              },
              child: Text("Add"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blogged"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout))
        ],
      ),

      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: createBlog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
