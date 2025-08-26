import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas14/api/get_user.dart';
import 'package:ppkd_b_3/tugas14/model/user_model.dart';

class Day23GetAPIScreen extends StatefulWidget {
  const Day23GetAPIScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<Day23GetAPIScreen> createState() => Day23GetAPIScreenState();
}

class Day23GetAPIScreenState extends State<Day23GetAPIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: getUser(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                } else if (!snapshot.hasData || snapshot.data.isEmpty) {
                  return const Text("No data available");
                } else {
                  final users = snapshot.data as List<GetUserModel>;

                  return Expanded(
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(user.image ?? ''),
                          ),
                          title: Text('${user.id} ${user.category}'),
                          subtitle: Text(user.description ?? ''),
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
