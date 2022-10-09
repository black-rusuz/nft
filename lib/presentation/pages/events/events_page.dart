import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/navigation_page_wrapper.dart';
import 'bloc/events_bloc.dart';

export 'bloc/events_bloc.dart';

class EventsPage extends StatelessWidget {
  static const name = '/events';

  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationPageWrapper(
      activeIndex: 4,
      body: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state is EventsSuccess) {
            print(state.events);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
