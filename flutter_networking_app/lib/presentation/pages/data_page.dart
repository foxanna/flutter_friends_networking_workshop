import 'package:flutter/material.dart';

class DataPage<T> extends StatefulWidget {
  const DataPage({
    super.key,
    required this.dataLoader,
    required this.builder,
  });

  final Future<T> Function() dataLoader;
  final Widget Function(BuildContext context, T data) builder;

  @override
  State<DataPage> createState() => _DataPageState<T>();
}

class _DataPageState<T> extends State<DataPage<T>> {
  T? data;
  Exception? error;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final storedData = data;
    return storedData != null
        ? RefreshIndicator(
            onRefresh: () => _loadData(),
            child: widget.builder(context, storedData),
          )
        : Center(
            child: error != null
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Something went wrong'),
                      ElevatedButton(
                        onPressed: () => _loadData(),
                        child: const Text('Try again'),
                      ),
                    ],
                  )
                : const CircularProgressIndicator(),
          );
  }

  Future<void> _loadData() async {
    setState(() => error = null);
    try {
      final data = await widget.dataLoader();
      setState(() => this.data = data);
    } on Exception catch (e) {
      setState(() {
        data = null;
        error = e;
      });
    }
  }
}
