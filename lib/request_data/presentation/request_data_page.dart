import 'package:flutter/material.dart';
import '../../request_data/bloc/bloc.dart';

class RequestDataPage extends StatelessWidget {
  const RequestDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<RequestDataBloc, RequestDataState>(
              builder: (context, state) {
                if (state is RequestLoadingState) {
                  return const CircularProgressIndicator();
                } else if (state is RequestCompletedState) {
                  return Text(state.data);
                } else if (state is RequestFailedState) {
                  return Text(state.errorMessage);
                }
                // Initial State
                return const Text("Click Button to Make Request");
              },
            ),
            const SizedBox(height: 100.0),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<RequestDataBloc>(context)
                      .add(ButtonPressedEvent());

                  // or use context.read to access bloc and add event
                  // context.read<RequestDataBloc>().add(ButtonPressedEvent());
                },
                child: const Text("Make Request"))
          ],
        ),
      ),
    );
  }
}
