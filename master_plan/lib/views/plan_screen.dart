import 'package:master_plan/provider/plan_provider.dart';
import 'dart:developer' as developer;
import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  Plan get plan => widget.plan;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: const Text('Master Plan Syahrul')),
        body: ValueListenableBuilder<List<Plan>>(
            valueListenable: plansNotifier,
            builder: (context, plans, child) {
              Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
              developer.log('$currentPlan', name: 'my.app.plan_screen');
              return Column(
                children: [
                  Expanded(child: buildList(currentPlan)),
                  SafeArea(child: Text(currentPlan.completenessMessage))
                ],
              );
            }),
        floatingActionButton: _buildAddTaskButton(context));
  }

  Widget buildList(Plan plan) {
    return ListView.builder(
        controller: ScrollController(),
        keyboardDismissBehavior:
            Theme.of(context).platform == TargetPlatform.iOS
                ? ScrollViewKeyboardDismissBehavior.onDrag
                : ScrollViewKeyboardDismissBehavior.manual,
        itemCount: plan.tasks.length,
        itemBuilder: (context, index) =>
            _buildTaskTile(plan.tasks[index], index, context));
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        print('lets debug this');
        Plan currentPlan = plan;
        int planIndex =
            planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
        currentPlan = planNotifier.value[planIndex];

        List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
          ..add(const Task());
        planNotifier.value = List<Plan>.from(planNotifier.value)
          ..[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );
      },
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    developer.log('plan Notifier top : $planNotifier',
        name: 'my.app.plan_screen.textformfield');
    developer.log('index task : $index',
        name: 'my.app.plan_screen.textformfield');
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            Plan currentPlan = plan;
            int planIndex = planNotifier.value
                .indexWhere((p) => p.name == currentPlan.name);
            currentPlan = planNotifier.value
                .firstWhere((p) => p.name == currentPlan.name);

            planNotifier.value = List<Plan>.from(planNotifier.value)
              ..[planIndex] = Plan(
                name: currentPlan.name,
                tasks: List<Task>.from(currentPlan.tasks)
                  ..[index] = Task(
                    description: task.description,
                    complete: selected ?? false,
                  ),
              );
          }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan currentPlan = plan;
          developer.log('current plan : $currentPlan',
              name: 'my.app.plan_screen.textformfield');
          int planIndex =
              planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
          currentPlan =
              planNotifier.value.firstWhere((p) => p.name == currentPlan.name);
          developer.log('plan index : $planIndex',
              name: 'my.app.plan_screen.textformfield');
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(
              name: currentPlan.name,
              tasks: List<Task>.from(currentPlan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
          developer.log('plannotifier after text-form : $planNotifier',
              name: 'my.app.plan_screen.textformfield');
        },
      ),
    );
  }
}
