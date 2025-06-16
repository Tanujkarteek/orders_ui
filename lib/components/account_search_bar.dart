import 'package:flutter/material.dart';

class AccountSearchBar extends StatefulWidget {
  const AccountSearchBar({Key? key}) : super(key: key);

  @override
  State<AccountSearchBar> createState() => _AccountSearchBarState();
}

class _AccountSearchBarState extends State<AccountSearchBar> {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  final List<String> _accountChips = [];
  final List<String> _searchChips = [];

  @override
  void dispose() {
    _accountController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Account input
            Container(
              height: 44,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFE0E0E0)),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _accountController,
                      decoration: InputDecoration(
                        hintText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 0,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                      onSubmitted: (value) {
                        if (value.trim().isNotEmpty &&
                            !_accountChips.contains(value.trim())) {
                          setState(() {
                            _accountChips.add(value.trim());
                          });
                        }
                        _accountController.clear();
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      right: 8.0,
                      top: 10.0,
                      bottom: 10.0,
                      left: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.person_add_alt_1,
                      color: Colors.black54,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            // Search bar
            Expanded(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search stock, future, option or index',
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFE0E0E0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFE0E0E0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.indigo, width: 2),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                ),
                style: TextStyle(color: Colors.black87),
                onSubmitted: (value) {
                  if (value.trim().isNotEmpty &&
                      !_searchChips.contains(value.trim())) {
                    setState(() {
                      _searchChips.add(value.trim());
                    });
                  }
                  _searchController.clear();
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Account chips row with Clear All
        Row(
          children: [
            Expanded(
              child: Wrap(
                spacing: 4,
                runSpacing: 4,
                children:
                    _accountChips
                        .map(
                          (chip) => Chip(
                            label: Text(
                              chip,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            backgroundColor: Colors.grey[200],
                            deleteIcon: Icon(
                              Icons.close,
                              size: 18,
                              color: Colors.grey[600],
                            ),
                            onDeleted: () {
                              setState(() {
                                _accountChips.remove(chip);
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(color: Colors.grey[300]!),
                            ),
                          ),
                        )
                        .toList(),
              ),
            ),
            if (_accountChips.isNotEmpty || _searchChips.isNotEmpty)
              GestureDetector(
                onTap: () {
                  setState(() {
                    _accountChips.clear();
                    _searchChips.clear();
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.cancel, size: 14, color: Colors.white),
                      SizedBox(width: 4),
                      const Text(
                        'Clear All',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        // Search chips row
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children:
              _searchChips
                  .map(
                    (chip) => Chip(
                      label: Text(
                        chip,
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      backgroundColor: Colors.grey[200],
                      deleteIcon: Icon(
                        Icons.close,
                        size: 18,
                        color: Colors.grey[600],
                      ),
                      onDeleted: () {
                        setState(() {
                          _searchChips.remove(chip);
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.grey[300]!),
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }
}
