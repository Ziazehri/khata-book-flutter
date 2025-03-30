import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui';
import 'dart:math';

class Siraj extends StatefulWidget {
  @override
  State<Siraj> createState() => _SirajState();
}

class _SirajState extends State<Siraj> {
  double amountSRJ = 0;
  final TextEditingController _amountController = TextEditingController();
  static const String keyAmount = "Amount_Shami";

  @override
  void initState() {
    super.initState();
    _loadBalance();
  }

  Future<void> _updateBalance(double value) async {
    setState(() {
      amountSRJ += value;
    });

    final prefs = await SharedPreferences.getInstance();
    prefs.setDouble(keyAmount, amountSRJ);
  }

  Future<void> _loadBalance() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      amountSRJ = prefs.getDouble(keyAmount) ?? 0;
    });
  }

  void _submitAmount() {
    double? enteredAmount = double.tryParse(_amountController.text);
    if (enteredAmount != null) {
      _updateBalance(enteredAmount);
      _amountController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/Images/siraj.jpeg',
            fit: BoxFit.cover,
          ),

          // Blur Effect Overlay
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Smooth Blur
            child:
                Container(color: Colors.black.withOpacity(0.2)), // Dark Overlay
          ),

          Center(
            child: Transform(
              alignment: Alignment.center,
              transform:
                  Matrix4.rotationX(pi), // Mirror Effect (ONLY FOR CONTAINER)
              child: Container(
                width: 380,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2), // Glass Effect
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white.withOpacity(0.4)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 15,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationX(pi), // Flip text back to normal
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Siraj",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Amount: Rs.$amountSRJ",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Amount Input
                      TextField(
                        controller: _amountController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Enter amount (+ or -)",
                          hintStyle: const TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Submit Button
                      ElevatedButton(
                        onPressed: _submitAmount,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child: const Text("Submit",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),

                      const SizedBox(height: 10),

                      // Clear All Button
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            amountSRJ = 0;
                          });
                          SharedPreferences.getInstance().then((prefs) {
                            prefs.setDouble(keyAmount, 0);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child: const Text("Clear All",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
