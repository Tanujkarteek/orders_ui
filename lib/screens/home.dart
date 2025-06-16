import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import '../components/HomeTopRow.dart';
import '../components/TextAutoSwitcher.dart';
import '../components/account_search_bar.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<OrderData> _orderData = [
    OrderData(
      time: '08:14:31',
      client: 'AAA001',
      ticker: 'RELIANCE',
      side: 'Buy',
      product: 'CNC',
      executedQuantity: 50,
      totalQuantity: 100,
      price: '250.50',
    ),
    OrderData(
      time: '08:14:31',
      client: 'AAA003',
      ticker: 'MRF',
      side: 'Buy',
      product: 'NRML',
      executedQuantity: 10,
      totalQuantity: 20,
      price: '2,700.00',
    ),
    OrderData(
      time: '08:14:31',
      client: 'AAA002',
      ticker: 'ASIANPAINT',
      side: 'Buy',
      product: 'NRML',
      executedQuantity: 10,
      totalQuantity: 30,
      price: '1,500.60',
    ),
    OrderData(
      time: '08:14:31',
      client: 'AAA002',
      ticker: 'TATAINVEST',
      side: 'Sell',
      product: 'INTRADAY',
      executedQuantity: 10,
      totalQuantity: 10,
      price: '2,300.10',
    ),
    OrderData(
      time: '08:15:02',
      client: 'AAA004',
      ticker: 'HDFCBANK',
      side: 'Buy',
      product: 'CNC',
      executedQuantity: 25,
      totalQuantity: 25,
      price: '1,650.75',
    ),
    OrderData(
      time: '08:15:15',
      client: 'AAA001',
      ticker: 'TCS',
      side: 'Sell',
      product: 'NRML',
      executedQuantity: 15,
      totalQuantity: 15,
      price: '3,450.25',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
    OrderData(
      time: '08:15:45',
      client: 'AAA005',
      ticker: 'INFY',
      side: 'Buy',
      product: 'INTRADAY',
      executedQuantity: 40,
      totalQuantity: 80,
      price: '1,425.90',
    ),
    OrderData(
      time: '08:16:00',
      client: 'AAA003',
      ticker: 'WIPRO',
      side: 'Sell',
      product: 'CNC',
      executedQuantity: 60,
      totalQuantity: 60,
      price: '425.15',
    ),
  ];

  late OrderDataSource orderDataSource;

  // Add search bar state
  final TextEditingController _searchController = TextEditingController();
  final List<String> _searchChips = [];
  final TextEditingController _accountController = TextEditingController();
  final List<String> _accountChips = [];

  @override
  void initState() {
    super.initState();
    orderDataSource = OrderDataSource(orderData: _orderData);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _accountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SizedBox(
          width: 50,
          height: 50,
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/images/diamond.webp',
              scale: 3,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: TextAutoSwitcher(
          items: [
            {'header': 'SIGNORIA', 'value': '0.00'},
            {'header': 'NIFTY BANK', 'value': '52,323.30'},
            {'header': 'NIFTY FIN SERVICE', 'value': '25,255.75'},
            {'header': 'RELCHEMQ', 'value': '162.73'},
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Text('LK'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          HomeTopRow(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.76,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: AccountSearchBar(),
                ),
                Expanded(
                  flex: 1,
                  child: SfDataGrid(
                    source: orderDataSource,
                    headerRowHeight: 40,
                    rowHeight: 44,
                    gridLinesVisibility: GridLinesVisibility.both,
                    headerGridLinesVisibility: GridLinesVisibility.both,
                    isScrollbarAlwaysShown: true,
                    shrinkWrapRows: true,
                    showHorizontalScrollbar: false,
                    rowsPerPage: 20,
                    columns: [
                      GridColumn(
                        columnName: 'time',
                        label: Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Time',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.unfold_more,
                                size: 16,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.filter_alt_outlined,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GridColumn(
                        columnName: 'client',
                        label: Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Client',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GridColumn(
                        columnName: 'ticker',
                        minimumWidth: 120,
                        label: Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ticker',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GridColumn(
                        columnName: 'side',
                        label: Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Side',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.filter_alt_outlined,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GridColumn(
                        columnName: 'product',
                        minimumWidth: 120,
                        label: Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Product',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.unfold_more,
                                size: 16,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.filter_alt_outlined,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GridColumn(
                        minimumWidth: 200,
                        columnName: 'quantity',
                        label: Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Qty (Executed/Total)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.unfold_more,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GridColumn(
                        columnName: 'price',
                        label: Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Price',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.unfold_more,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GridColumn(
                        columnName: 'actions',
                        label: Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Actions',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    tableSummaryRows: [],
                  ),
                ),
                SfDataPagerTheme(
                  data: SfDataPagerThemeData(
                    itemBorderWidth: 0.5,
                    itemBorderColor: Colors.grey.shade400,
                    itemBorderRadius: BorderRadius.circular(5),
                    selectedItemColor: Colors.indigo.shade500,
                  ),
                  child: SfDataPager(
                    pageCount: _orderData.length / 20,
                    delegate: orderDataSource,
                    navigationItemWidth: 100,
                    pageItemBuilder: (String itemName) {
                      if (itemName == 'Next') {
                        return Center(child: Text('Next'));
                      }
                      if (itemName == 'Previous') {
                        return Center(child: Text('Previous'));
                      }
                    },
                    itemPadding: EdgeInsets.all(8.0),
                    firstPageItemVisible: false,
                    lastPageItemVisible: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderData {
  final String time;
  final String client;
  final String ticker;
  final String side;
  final String product;
  final int executedQuantity;
  final int totalQuantity;
  final String price;
  OrderData({
    required this.time,
    required this.client,
    required this.ticker,
    required this.side,
    required this.product,
    required this.executedQuantity,
    required this.totalQuantity,
    required this.price,
  });
}

class OrderDataSource extends DataGridSource {
  OrderDataSource({required List<OrderData> orderData}) {
    _orderData =
        orderData
            .map<DataGridRow>(
              (e) => DataGridRow(
                cells: [
                  DataGridCell<String>(columnName: 'time', value: e.time),
                  DataGridCell<String>(columnName: 'client', value: e.client),
                  DataGridCell<String>(columnName: 'ticker', value: e.ticker),
                  DataGridCell<String>(columnName: 'side', value: e.side),
                  DataGridCell<String>(columnName: 'product', value: e.product),
                  DataGridCell<String>(
                    columnName: 'quantity',
                    value: '${e.executedQuantity}/${e.totalQuantity}',
                  ),
                  DataGridCell<String>(columnName: 'price', value: e.price),
                  DataGridCell<String>(
                    columnName: 'actions',
                    value: '',
                  ), // Placeholder
                ],
              ),
            )
            .toList();
  }

  List<DataGridRow> _orderData = [];

  @override
  List<DataGridRow> get rows => _orderData;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    final int rowIndex = _orderData.indexOf(row);
    // final bool isAltRow = rowIndex % 2 == 1;
    return DataGridRowAdapter(
      color: Colors.white,
      cells:
          row.getCells().asMap().entries.map((entry) {
            int index = entry.key;
            var cell = entry.value;
            BoxDecoration? decoration;
            if (index == 0) {
              decoration = BoxDecoration(
                border: Border(right: BorderSide(color: Color(0xFFE0E0E0))),
              );
            }
            if (cell.columnName == 'actions') {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Icon(Icons.more_horiz, color: Colors.black54),
                decoration: decoration,
              );
            }
            if (cell.columnName == 'price' || cell.columnName == 'quantity') {
              return Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  cell.value.toString(),
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                decoration: decoration,
              );
            }
            return Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                cell.value.toString(),
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              decoration: decoration,
            );
          }).toList(),
    );
  }
}
