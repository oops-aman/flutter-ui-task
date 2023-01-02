import 'package:credhub_task/screens/balance_transfer_screen.dart';
import 'package:credhub_task/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _value1 = 1;
  double _value2 = 10;
  double _value3 = 1;
  String val1 = "";
  String val2 = "";
  String val3 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: Text(
          "Loan Calculator",
          style: GoogleFonts.workSans(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 230, 24, 92),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 48,
            color: const Color.fromARGB(146, 236, 160, 207),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "EMI",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const BalanceTransferScreen(),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Balance Transfer",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Pre-Payment",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            margin: const EdgeInsets.all(29),
            child: Container(
              height: 134,
              width: 302,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 212, 62, 112)
                        .withOpacity(0.7),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(4, 8),
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 186, 212, 224),
                    Color.fromARGB(255, 205, 227, 238),
                    Color.fromARGB(146, 245, 238, 242),
                    Color.fromARGB(146, 247, 232, 241),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 20.0,
                    ),
                    child: Text(
                      "Estimated EMI Amount",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "₹ 8791",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text(
                        'See Details',
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 26.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Loan Amount',
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '₹ $val1',
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 6.0,
                  right: 6.0,
                ),
                child: SfSlider(
                  min: 1,
                  max: 10,
                  value: _value1,
                  // interval: 20,
                  // showTicks: true,
                  activeColor: const Color.fromARGB(255, 230, 24, 92),
                  showLabels: true,
                  enableTooltip: true,
                  numberFormat: NumberFormat.currency(
                    symbol: '₹',
                    decimalDigits: 0,
                  ),
                  // minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    setState(() {
                      _value1 = value;
                      val1 = _value1.toStringAsFixed(0);
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    right: 26.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Interest Rate',
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '$val2%',
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 4.0,
                  right: 4.0,
                ),
                child: SfSlider(
                  min: 10.0,
                  max: 24.0,
                  value: _value2,
                  // interval: 20,
                  // showTicks: true,
                  activeColor: const Color.fromARGB(255, 230, 24, 92),
                  showLabels: true,
                  enableTooltip: true,
                  // minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    setState(() {
                      _value2 = value;
                      val2 = _value2.toStringAsFixed(2);
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 26.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Loan Terms (in Years)',
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '${val3} Y',
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 6.0,
                  right: 6.0,
                ),
                child: SfSlider(
                  min: 1,
                  max: 24,
                  value: _value3,
                  // interval: 20,
                  // showTicks: true,
                  dateFormat: DateFormat.y(),
                  activeColor: const Color.fromARGB(255, 230, 24, 92),
                  showLabels: true,
                  enableTooltip: true,
                  // minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    setState(() {
                      _value3 = value;
                      val3 = _value3.toStringAsFixed(0);
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 230, 24, 92),
        onPressed: () => {},
        tooltip: 'Increment',
        elevation: 4.0,
        child: const Icon(Icons.add_outlined),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 230, 24, 92),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Member',
            icon: Icon(
              Icons.group_add_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Leads',
            icon: Icon(
              Icons.person_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(
              Icons.dashboard,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
