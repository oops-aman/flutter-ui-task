import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Map<String, double> dataMap = {
    "Principal Amount": 100000,
    "Interest Rate": 5499.1,
  };

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
          "Breakdown Payment",
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
          const SizedBox(
            height: 10,
          ),
          Card(
            margin: const EdgeInsets.all(
              29,
            ),
            child: Container(
              height: 325,
              width: 329,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 49, 48, 48).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(4, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      top: 35,
                    ),
                    child: PieChart(
                      dataMap: dataMap,
                      ringStrokeWidth: 25,
                      chartType: ChartType.ring,
                      chartRadius: 125,

                      legendOptions: LegendOptions(
                        showLegendsInRow: true,
                        legendPosition: LegendPosition.bottom,
                        showLegends: true,
                        legendShape: BoxShape.rectangle,
                        legendTextStyle: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      chartLegendSpacing: 35,
                      chartValuesOptions: ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: false,
                        showChartValuesOutside: true,
                        decimalPlaces: 1,
                        chartValueStyle: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      colorList: const [
                        Color.fromARGB(255, 230, 24, 92),
                        Color.fromARGB(199, 6, 7, 87),
                      ],
                      // baseChartColor: Color.fromARGB(255, 226, 1, 76),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Total Amount Payable",
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "₹ 105499",
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 210.0,
                ),
                child: Text(
                  "Amortization",
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 31.0,
                  right: 31.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Loan Amount",
                      style: GoogleFonts.workSans(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 88, 81, 81),
                      ),
                    ),
                    Text(
                      "₹ 100000.0",
                      style: GoogleFonts.workSans(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 31.0,
                  right: 31.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Interest Rate",
                      style: GoogleFonts.workSans(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 88, 81, 81),
                      ),
                    ),
                    Text(
                      "10%",
                      style: GoogleFonts.workSans(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 31.0,
                  right: 31.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Loan Term",
                      style: GoogleFonts.workSans(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 88, 81, 81),
                      ),
                    ),
                    Text(
                      "12 Months",
                      style: GoogleFonts.workSans(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 31.0,
                  right: 31.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Monthly Payment",
                      style: GoogleFonts.workSans(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 88, 81, 81),
                      ),
                    ),
                    Text(
                      "₹ 8791",
                      style: GoogleFonts.workSans(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
