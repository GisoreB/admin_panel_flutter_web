// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PanelProvider extends ChangeNotifier {
  late PanelPage _panelPage;
  late bool _isAddProduct;
  PanelProvider() {
    _panelPage = PanelPage.dashboard;
    _isAddProduct = false;
  }

  PanelPage get panelPage {
    return _panelPage;
  }

  bool get isAddProduct {
    return _isAddProduct;
  }

  void setIsAddProduct() {
    _isAddProduct = true;
    notifyListeners();
  }

  void resetIsAddProduct() {
    _isAddProduct = false;
    notifyListeners();
  }

  void setPanelPage(PanelPage page) {
    _panelPage = page;
    _isAddProduct = false;
    notifyListeners();
  }
}

enum PanelPage {
  dashboard,
  products,
  orders,
  customers,
  services,
  notifications,
  settings,
  account,
}