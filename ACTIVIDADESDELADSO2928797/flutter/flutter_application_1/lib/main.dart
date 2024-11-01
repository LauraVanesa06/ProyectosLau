import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/ErrorData.dart';
import 'package:flutter_application_1/widget/loading.dart';
import 'package:http/http.dart' as http;
import 'models/post.dart';
import 'widget/success.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Buscar Post')),
        body: PostSearchScreen(),
      ),
    );
  }
}

class PostSearchScreen extends StatefulWidget {
  @override
  _PostSearchScreenState createState() => _PostSearchScreenState();
}

class _PostSearchScreenState extends State<PostSearchScreen> {
  final TextEditingController _controller = TextEditingController();
  Future<Post>? _futurePost;

  Future<Post> fetchData(String postId) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Post(response.body);       
    } else{
      throw Exception('Error al cargar datos');
    }
  }

  void _searchPost() {
    String postId = _controller.text;
    if (postId.isNotEmpty) {
      setState(() {
        _futurePost = fetchData(postId);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, ingrese un ID de post válido')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Ingrese el número del post',
              hintText: 'ID del Post',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _searchPost,
            child: Text(
              'Buscar Post',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          _futurePost == null
              ? Container()
              : FutureBuilder<Post>(
                  future: _futurePost,
                  builder: (BuildContext context, AsyncSnapshot<Post> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: loading());
                    } else if (snapshot.hasError) {
                      return Errordata(snapshot: snapshot);
                    } else {
                      return Success(post: snapshot.data!);
                    }
                  },
                ),
        ],
      ),
    );
  }
}
