import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart'
    as error_handler; // import dartz as errorHandler because it's conflicts with state class
import 'package:handling_error_in_flutter/network_request.dart';
import 'package:handling_error_in_flutter/user_model.dart';
import 'package:handling_error_in_flutter/erro_widget.dart' as error_screen;

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late EitherUserList _userData;

  @override
  void initState() {
    super.initState();
    _userData = FetchNetworkData().getReq();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Data')),
      body: FutureBuilder<error_handler.Either<String, List<User>>>(
        future: _userData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return snapshot.data!.fold(
              (error) => error_screen.ErrorWidget(error: error),
              (users) => ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    title: Text(user.name ?? ''),
                    subtitle: Text(user.email ?? ''),
                    onTap: () {
                      // Show additional user details on tap if needed
                    },
                  );
                },
              ),
            );
          } else {
            return const Scaffold(
              body: error_screen.ErrorWidget(
                error: 'Failed to load user data.',
              ),
            );
          }
        },
      ),
    );
  }
}
