import 'dart:async';
import 'package:tuiicore/core/common/task_progress_update_event.dart';

class TaskProgressUpdateManager {
  late StreamController<TaskProgressUpdateEvent> _controller;

  TaskProgressUpdateManager() {
    _controller = StreamController<TaskProgressUpdateEvent>();
    reset();
  }

  Stream<TaskProgressUpdateEvent> get stream => _controller.stream;

  void reset() {
    if (!_controller.isClosed) {
      _controller.add(const TaskProgressUpdateEvent(progress: 0.0, status: ''));
    }
  }

  void update(TaskProgressUpdateEvent updateEvent) {
    _controller.add(updateEvent);
  }

  // Must call on teardown
  void dispose() {
    _controller.close();
  }
}