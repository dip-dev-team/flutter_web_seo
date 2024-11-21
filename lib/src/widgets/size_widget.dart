import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

/// The [Widget] to listen size changing
class SizeWidget extends SingleChildRenderObjectWidget {
  final Function(Size) onSize;

  const SizeWidget({
    super.key,
    required this.onSize,
    required Widget super.child,
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _SizeWidgetRenderObject(onSize);
  }
}

class _SizeWidgetRenderObject extends RenderProxyBox {
  final Function(Size) onSize;

  _SizeWidgetRenderObject(this.onSize);

  @override
  void performLayout() {
    super.performLayout();

    final size = child?.size;
    if (size == null) return;

    if (SchedulerBinding.instance.schedulerPhase !=
        SchedulerPhase.persistentCallbacks) {
      onSize(size);
    } else {
      SchedulerBinding.instance.addPostFrameCallback((_) => onSize(size));
    }
  }
}
