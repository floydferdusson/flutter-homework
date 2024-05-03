import 'package:flutter/material.dart';
import 'package:simple_login/user/repository.dart';
import 'model.dart';

class AllData extends StatefulWidget {
  const AllData({super.key});

  @override
  State<AllData> createState() => _AllDataState();
}

class _AllDataState extends State<AllData> {
  late Future<List<User>> listUsersAcc;

  @override
  void initState() {
    listUsersAcc = listUsers();
    super.initState();
  }

  buildUserList(BuildContext context, List<User> users) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, int i) {
        return buildUserListItem(context, users[i]);
      },
    );
  }

  buildUserListItem(BuildContext context, User user) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(user.avatar),
        ),
        title: Text('${user.lastName}, ${user.firstName}'),
        subtitle: Text(user.email),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fetch data from Internet'),
        ),
        body: Center(
          child: FutureBuilder<List<User>>(
            future: listUsersAcc,
            builder: (context, snapshot) {
              if (snapshot.hasError) return Text('${snapshot.error}');
              if (snapshot.hasData) {
                List<User> data = snapshot.data!;
                return buildUserList(context, data);
              } else { return const CircularProgressIndicator(); }
            },
          ),
        )
    );
  }
}
