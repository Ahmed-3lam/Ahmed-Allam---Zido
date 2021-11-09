// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Latest Items`
  String get latest_items {
    return Intl.message(
      'Latest Items',
      name: 'latest_items',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message(
      'See All',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Used`
  String get used {
    return Intl.message(
      'Used',
      name: 'used',
      desc: '',
      args: [],
    );
  }

  /// `Private Auctions`
  String get private_auctions {
    return Intl.message(
      'Private Auctions',
      name: 'private_auctions',
      desc: '',
      args: [],
    );
  }

  /// `Latest Posts`
  String get latest_posts {
    return Intl.message(
      'Latest Posts',
      name: 'latest_posts',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sar {
    return Intl.message(
      'SAR',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `Square Furniture| First`
  String get first_furn {
    return Intl.message(
      'Square Furniture| First',
      name: 'first_furn',
      desc: '',
      args: [],
    );
  }

  /// `Havar El Battan`
  String get havar {
    return Intl.message(
      'Havar El Battan',
      name: 'havar',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed Allam`
  String get AhmedAllam {
    return Intl.message(
      'Ahmed Allam',
      name: 'AhmedAllam',
      desc: '',
      args: [],
    );
  }

  /// `join`
  String get join {
    return Intl.message(
      'join',
      name: 'join',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buy {
    return Intl.message(
      'Buy',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Sell`
  String get sell {
    return Intl.message(
      'Sell',
      name: 'sell',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Your Items are valuable`
  String get your_items {
    return Intl.message(
      'Your Items are valuable',
      name: 'your_items',
      desc: '',
      args: [],
    );
  }

  /// `ZaheyDashboard`
  String get appName {
    return Intl.message(
      'ZaheyDashboard',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Global Statistics`
  String get global_statistics {
    return Intl.message(
      'Global Statistics',
      name: 'global_statistics',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Order Statistics`
  String get order_statistics {
    return Intl.message(
      'Order Statistics',
      name: 'order_statistics',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get in_progress {
    return Intl.message(
      'In Progress',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Processing`
  String get processing {
    return Intl.message(
      'Processing',
      name: 'processing',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Order Number:`
  String get orderNumber {
    return Intl.message(
      'Order Number:',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Client:`
  String get client {
    return Intl.message(
      'Client:',
      name: 'client',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get product_name {
    return Intl.message(
      'Product Name',
      name: 'product_name',
      desc: '',
      args: [],
    );
  }

  /// `Add Product Name`
  String get add_product_name {
    return Intl.message(
      'Add Product Name',
      name: 'add_product_name',
      desc: '',
      args: [],
    );
  }

  /// `Main product picture`
  String get main_product_picture {
    return Intl.message(
      'Main product picture',
      name: 'main_product_picture',
      desc: '',
      args: [],
    );
  }

  /// `Product description`
  String get product_description {
    return Intl.message(
      'Product description',
      name: 'product_description',
      desc: '',
      args: [],
    );
  }

  /// `Product Code (SKU)`
  String get product_code {
    return Intl.message(
      'Product Code (SKU)',
      name: 'product_code',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `App Language`
  String get app_language {
    return Intl.message(
      'App Language',
      name: 'app_language',
      desc: '',
      args: [],
    );
  }

  /// `Discount Type`
  String get discountType {
    return Intl.message(
      'Discount Type',
      name: 'discountType',
      desc: '',
      args: [],
    );
  }

  /// `Client Email`
  String get client_email {
    return Intl.message(
      'Client Email',
      name: 'client_email',
      desc: '',
      args: [],
    );
  }

  /// `Client Phone`
  String get client_phone {
    return Intl.message(
      'Client Phone',
      name: 'client_phone',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Zip`
  String get zip {
    return Intl.message(
      'Zip',
      name: 'zip',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get shipped {
    return Intl.message(
      'Shipped',
      name: 'shipped',
      desc: '',
      args: [],
    );
  }

  /// `Total Day Sales`
  String get totalDaySales {
    return Intl.message(
      'Total Day Sales',
      name: 'totalDaySales',
      desc: '',
      args: [],
    );
  }

  /// `Total Day Orders`
  String get totalDayOrders {
    return Intl.message(
      'Total Day Orders',
      name: 'totalDayOrders',
      desc: '',
      args: [],
    );
  }

  /// `Total Last Month Sales`
  String get totalLastMonthSales {
    return Intl.message(
      'Total Last Month Sales',
      name: 'totalLastMonthSales',
      desc: '',
      args: [],
    );
  }

  /// `Total Month Sales`
  String get totalMonthSales {
    return Intl.message(
      'Total Month Sales',
      name: 'totalMonthSales',
      desc: '',
      args: [],
    );
  }

  /// `Total Week Sales`
  String get totalWeekSales {
    return Intl.message(
      'Total Week Sales',
      name: 'totalWeekSales',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Customer Service`
  String get customer_service {
    return Intl.message(
      'Customer Service',
      name: 'customer_service',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Method`
  String get shipping_method {
    return Intl.message(
      'Shipping Method',
      name: 'shipping_method',
      desc: '',
      args: [],
    );
  }

  /// `Enter 4 digit code sent to you at`
  String get Enter_4_digit_code_sent_to_you_at {
    return Intl.message(
      'Enter 4 digit code sent to you at',
      name: 'Enter_4_digit_code_sent_to_you_at',
      desc: '',
      args: [],
    );
  }

  /// `Order State`
  String get orderState {
    return Intl.message(
      'Order State',
      name: 'orderState',
      desc: '',
      args: [],
    );
  }

  /// `Add Product`
  String get addNewProduct {
    return Intl.message(
      'Add Product',
      name: 'addNewProduct',
      desc: '',
      args: [],
    );
  }

  /// `Add Category`
  String get addNewCategory {
    return Intl.message(
      'Add Category',
      name: 'addNewCategory',
      desc: '',
      args: [],
    );
  }

  /// `code`
  String get code {
    return Intl.message(
      'code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Start Date`
  String get start_date {
    return Intl.message(
      'Start Date',
      name: 'start_date',
      desc: '',
      args: [],
    );
  }

  /// `End Date`
  String get end_date {
    return Intl.message(
      'End Date',
      name: 'end_date',
      desc: '',
      args: [],
    );
  }

  /// `Count of use`
  String get count_of_use {
    return Intl.message(
      'Count of use',
      name: 'count_of_use',
      desc: '',
      args: [],
    );
  }

  /// `Button Text`
  String get button_text {
    return Intl.message(
      'Button Text',
      name: 'button_text',
      desc: '',
      args: [],
    );
  }

  /// `Route`
  String get route {
    return Intl.message(
      'Route',
      name: 'route',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get sort {
    return Intl.message(
      'Sort',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `Add Brand`
  String get addBrand {
    return Intl.message(
      'Add Brand',
      name: 'addBrand',
      desc: '',
      args: [],
    );
  }

  /// `Valid Number`
  String get valid_number {
    return Intl.message(
      'Valid Number',
      name: 'valid_number',
      desc: '',
      args: [],
    );
  }

  /// `Main Section`
  String get main_section {
    return Intl.message(
      'Main Section',
      name: 'main_section',
      desc: '',
      args: [],
    );
  }

  /// `Name in Arabic`
  String get name_ar {
    return Intl.message(
      'Name in Arabic',
      name: 'name_ar',
      desc: '',
      args: [],
    );
  }

  /// `Name in English`
  String get name_en {
    return Intl.message(
      'Name in English',
      name: 'name_en',
      desc: '',
      args: [],
    );
  }

  /// `Add Offer`
  String get addOffer {
    return Intl.message(
      'Add Offer',
      name: 'addOffer',
      desc: '',
      args: [],
    );
  }

  /// `Add value less than 100`
  String get add_value_less_than_100 {
    return Intl.message(
      'Add value less than 100',
      name: 'add_value_less_than_100',
      desc: '',
      args: [],
    );
  }

  /// `Show All Offers`
  String get show_all_offers {
    return Intl.message(
      'Show All Offers',
      name: 'show_all_offers',
      desc: '',
      args: [],
    );
  }

  /// `Show All Brands`
  String get show_all_brands {
    return Intl.message(
      'Show All Brands',
      name: 'show_all_brands',
      desc: '',
      args: [],
    );
  }

  /// `Banner Name in Arabic`
  String get banner_name_ar {
    return Intl.message(
      'Banner Name in Arabic',
      name: 'banner_name_ar',
      desc: '',
      args: [],
    );
  }

  /// `Banner Name English`
  String get banner_name_english {
    return Intl.message(
      'Banner Name English',
      name: 'banner_name_english',
      desc: '',
      args: [],
    );
  }

  /// `Picture`
  String get picture {
    return Intl.message(
      'Picture',
      name: 'picture',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Add Feature`
  String get addNewFeature {
    return Intl.message(
      'Add Feature',
      name: 'addNewFeature',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get Areyousure {
    return Intl.message(
      'Are you sure?',
      name: 'Areyousure',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to remove item ?`
  String get remove_item {
    return Intl.message(
      'Do you want to remove item ?',
      name: 'remove_item',
      desc: '',
      args: [],
    );
  }

  /// `Product name in english`
  String get product_name_english {
    return Intl.message(
      'Product name in english',
      name: 'product_name_english',
      desc: '',
      args: [],
    );
  }

  /// `Product name in arabic`
  String get product_name_ar {
    return Intl.message(
      'Product name in arabic',
      name: 'product_name_ar',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Brand`
  String get brand {
    return Intl.message(
      'Brand',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get stock_quantity {
    return Intl.message(
      'Quantity',
      name: 'stock_quantity',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get order_details {
    return Intl.message(
      'Order Details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Total Price`
  String get total_price {
    return Intl.message(
      'Total Price',
      name: 'total_price',
      desc: '',
      args: [],
    );
  }

  /// `Ship Details`
  String get ship_details {
    return Intl.message(
      'Ship Details',
      name: 'ship_details',
      desc: '',
      args: [],
    );
  }

  /// `Show All Products`
  String get show_all_products {
    return Intl.message(
      'Show All Products',
      name: 'show_all_products',
      desc: '',
      args: [],
    );
  }

  /// `Phone is required`
  String get phoneIsRequired {
    return Intl.message(
      'Phone is required',
      name: 'phoneIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Show All Copouns`
  String get show_all_copouns {
    return Intl.message(
      'Show All Copouns',
      name: 'show_all_copouns',
      desc: '',
      args: [],
    );
  }

  /// `Show All Banners`
  String get show_all_banners {
    return Intl.message(
      'Show All Banners',
      name: 'show_all_banners',
      desc: '',
      args: [],
    );
  }

  /// `Show All Categories`
  String get show_all_categories {
    return Intl.message(
      'Show All Categories',
      name: 'show_all_categories',
      desc: '',
      args: [],
    );
  }

  /// `Empty Data`
  String get empty_data {
    return Intl.message(
      'Empty Data',
      name: 'empty_data',
      desc: '',
      args: [],
    );
  }

  /// `Add New Copoun`
  String get addNewCopoun {
    return Intl.message(
      'Add New Copoun',
      name: 'addNewCopoun',
      desc: '',
      args: [],
    );
  }

  /// `Add New Banner`
  String get addNewBanner {
    return Intl.message(
      'Add New Banner',
      name: 'addNewBanner',
      desc: '',
      args: [],
    );
  }

  /// `Phone isn't correct`
  String get phoneIsTooShort {
    return Intl.message(
      'Phone isn\'t correct',
      name: 'phoneIsTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Enter Verification Code`
  String get enterVerificationCode {
    return Intl.message(
      'Enter Verification Code',
      name: 'enterVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Phone`
  String get confirm_phone {
    return Intl.message(
      'Confirm Phone',
      name: 'confirm_phone',
      desc: '',
      args: [],
    );
  }

  /// `Enter 4-digit code sent to you at `
  String get messageEnterCode {
    return Intl.message(
      'Enter 4-digit code sent to you at ',
      name: 'messageEnterCode',
      desc: '',
      args: [],
    );
  }

  /// `Haven't received the code yet?`
  String get receivedCode {
    return Intl.message(
      'Haven\'t received the code yet?',
      name: 'receivedCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get reSend {
    return Intl.message(
      'Resend',
      name: 'reSend',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_key {
    return Intl.message(
      'Continue',
      name: 'continue_key',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
