import 'package:Swipe/core/ui/build_context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

typedef OnSearchCallback = void Function(String? query);

class SearchField extends StatefulWidget {
  const SearchField({
    this.hintText,
    required this.onSearch,
    super.key,
  });

  final String? hintText;
  final OnSearchCallback onSearch;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late final TextEditingController _searchController = TextEditingController()
    ..addListener(() => setState(() {}));

  @override
  Widget build(BuildContext context) => TextField(
        controller: _searchController,
        style: context.theme.inputDecorationTheme.hintStyle?.copyWith(
          color: const Color(0xFF5E1133),
        ),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: widget.hintText ?? AppLocalizations.of(context)!.search,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: _searchController.text.isEmpty
              ? null
              : IconButton(
                  onPressed: _clear,
                  icon: const Icon(Icons.clear),
                ),
        ),
        onChanged: (String? value) => widget.onSearch(value),
      );

  void _clear() {
    _searchController.clear();
    widget.onSearch(null);
  }
}
