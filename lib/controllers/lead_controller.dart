// import 'package:boxigo_app/models/cust_estimate_model/cust_estimate_model.dart';
// import 'package:boxigo_app/services/api_service.dart';
// import 'package:flutter/foundation.dart';

// class LeadController with ChangeNotifier {
//   CustEstimateModel? _custEstimateModel;
//   bool _isLoading = false;
//   String? _error;

//   CustEstimateModel? get custEstimateModel => _custEstimateModel;
//   bool get isLoading => _isLoading;
//   String? get error => _error;

//   Future<void> fetchData() async {
//     _isLoading = true;
//     notifyListeners();

//     try {
//       _custEstimateModel = await ApiService().getData();
//       _error = null;
//     } catch (e) {
//       _error = 'Failed to fetch data: $e';
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }
import 'package:boxigo_app/models/cust_estimate_model/cust_estimate_model.dart';
import 'package:boxigo_app/services/api_service.dart';
import 'package:flutter/foundation.dart';

class LeadController with ChangeNotifier {
  CustEstimateModel? _custEstimateModel;
  bool _isLoading = false;
  String? _error;

  CustEstimateModel? get custEstimateModel => _custEstimateModel;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _custEstimateModel = await ApiService().getData();
      _error = null; 
    } catch (e) {
      _error = 'Failed to fetch data: $e';
    } finally {
      _isLoading = false;
      notifyListeners(); 
    }
  }
}
