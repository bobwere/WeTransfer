import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:wetransfer/application/application.dart';
import 'package:wetransfer/infrastructure/transaction_repository.dart';
import 'package:wetransfer/l10n/l10n.dart';
import 'package:wetransfer/presentation/home_page.dart';

class App extends StatelessWidget {
  const App({required this.env, super.key});

  final String env;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return AppCubit(
          TransactionRepository(
            Dio(
              BaseOptions(
                baseUrl: dotenv.env['${env}_BASE_URL'] ?? '',
              ),
            ),
          ),
        );
      },
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const HomePage(),
      ),
    );
  }
}
