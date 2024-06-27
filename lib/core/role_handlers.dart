import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/core/core.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class WidgetWithRole extends StatefulWidget {
  const WidgetWithRole({
    Key? key,
    required this.allowedRoles,
    required this.child,
  }) : super(key: key);

  final List<UserRole> allowedRoles;
  final Widget child;

  @override
  State<WidgetWithRole> createState() => _WidgetWithRoleState();
}

class _WidgetWithRoleState extends State<WidgetWithRole> {
  late Core core;

  @override
  void initState() {
    core = GetIt.I.get<Core>();
    super.initState();
  }

  bool get isAllowed => widget.allowedRoles.any((userRole) => core.user!.userRole.contains(userRole));

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: core.isCompleted,
        builder: (context, child) {
          if (core.isCompleted.value) {
            if (isAllowed) {
              return widget.child;
            } else {
              return Container();
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
