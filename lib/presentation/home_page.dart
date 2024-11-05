import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:jiffy/jiffy.dart';
import 'package:wetransfer/application/application.dart';
import 'package:wetransfer/application/cubit/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<AppCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Transactions')),
          body: (state.fetchTransactionStatus ==
                  FormzStatus.submissionInProgress)
              ? const Center(
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(),
                  ),
                )
              : state.fetchTransactionStatus == FormzStatus.submissionFailure
                  ? const Center(
                      child: Text('Data'),
                    )
                  : ListView.separated(
                      itemCount: state.transactions?.length ?? 0,
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            height: 5,
                            color: Colors.blueGrey.shade100,
                          ),
                        );
                      },
                      itemBuilder: (context, index) {
                        final transaction = state.transactions![index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  transaction.name ?? '',
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  Jiffy.parseFromMillisecondsSinceEpoch(
                                    transaction.createdAt ?? 0,
                                  ).yMMMEd,
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 8),
                                Text(
                                  'KES ${transaction.amount ?? ''}',
                                  style: TextStyle(
                                    color: Colors.yellow.shade900,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        transaction.description ?? '',
                                        style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      transaction.type ?? '',
                                      style: TextStyle(
                                        color: transaction.type == 'Expense'
                                            ? Colors.red.shade500
                                            : Colors.green.shade500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
        );
      },
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((AppCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}
