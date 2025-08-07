import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  const CustomTab({
    super.key,
    required this.tabs,
    this.selectedIndex,
    this.onTabChange,
  });

  final List<String> tabs;
  final int? selectedIndex;
  final ValueChanged<int>? onTabChange;

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.outline,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          for (int i = 0; i < widget.tabs.length; i++)
            _buildTab(
              label: widget.tabs[i],
              isSelected: widget.selectedIndex == i,
              onTap: () => widget.onTabChange?.call(i),
            ),
        ],
      ),
    );
  }

  Widget _buildTab({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
    // int? badgeCount,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.tertiary,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
