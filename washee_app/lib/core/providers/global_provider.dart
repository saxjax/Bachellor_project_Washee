import 'package:flutter/material.dart';
import 'package:washee/core/washee_box/machine_model.dart';
import 'package:washee/features/booking/data/models/booking_model.dart';

class GlobalProvider extends ChangeNotifier {
  List<MachineModel> _machines = [
    // MachineModel(
    //     machineID: "123",
    //     name: "VaskemaskineUNO",
    //     machineType: "laundry",
    //     startTime: DateTime(2022, 03, 18, 09, 0, 0),
    //     endTime: DateTime(2022, 03, 18, 09, 0, 0).add(Duration(hours: 1))),
    // MachineModel(
    //     machineID: "1234",
    //     name: "VaskemaskineDOS",
    //     machineType: "laundry",
    //     startTime: DateTime(2022, 03, 18, 12, 0, 0),
    //     endTime: DateTime(2022, 03, 18, 12, 0, 0).add(Duration(hours: 2))),
    // MachineModel(
    //     machineID: "1235",
    //     name: "VaskemaskineTRES",
    //     machineType: "laundry",
    //     startTime: DateTime(2022, 03, 18, 12, 0, 0),
    //     endTime: DateTime(2022, 03, 18, 12, 0, 0)
    //         .add(Duration(hours: 2, minutes: 15))),
    // MachineModel(
    //     machineID: "1236",
    //     name: "VaskemaskineQUADRO",
    //     machineType: "laundry",
    //     startTime: DateTime(2022, 03, 18, 12, 0, 0),
    //     endTime: DateTime(2022, 03, 18, 12, 0, 0)
    //         .add(Duration(hours: 3, minutes: 15))),
  ];
  List<BookingModel> _bookings = [];
  bool _isConnectingToBox = false;
  bool _isRefreshing = false;
  bool _fetchedMachines = false;
  bool _fetchedBookings = false;

  List<MachineModel> get machines => _machines;
  List<BookingModel> get bookings => _bookings;
  bool get isConnectingToBox => _isConnectingToBox;
  bool get isRefreshing => _isRefreshing;
  bool get fetchedMachines => _fetchedMachines;
  bool get fetchedBookings => _fetchedBookings;

  set isConnectingToBox(bool value) {
    _isConnectingToBox = value;
    notifyListeners();
  }

  set isRefreshing(bool value) {
    _isRefreshing = value;
    notifyListeners();
  }

  set fetchedMachines(bool value) {
    _fetchedMachines = value;
    notifyListeners();
  }

  set fetchedBookings(bool value){
    _fetchedBookings = value;
    notifyListeners();
  }

  updateMachines(List<MachineModel> machines) {
    _machines = machines;
    notifyListeners();
  }

  updateBookings(List<BookingModel> bookings) {
    _bookings = bookings;
    notifyListeners();
  }

  constructMachineList(Map<String, dynamic> machinesAsJson) {
    for (var machine in machinesAsJson['machines']) {
      _machines.add(MachineModel.fromJson(machine));
    }
    notifyListeners();
  }

  constructBookingList(Map<String, dynamic> bookingsAsJson) {
    for (var booking in bookingsAsJson['machines']) {
      _bookings.add(BookingModel.fromJson(booking));
    }
    notifyListeners();
  }
}
