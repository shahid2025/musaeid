import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/screen/all_wallet/wallet.dart';
import 'package:musaeid/screen/all_wallet/wallet_payment_successful.dart';
import 'package:musaeid/screen/all_wallet/wallet_select_deposit.dart';
import 'package:musaeid/screen/all_wallet/wallet_select_payment_method.dart';
import 'package:musaeid/screen/all_wallet/wallet_successful_scree.dart';
import 'package:musaeid/screen/all_wallet/walletwidrawal/withdrawal_successful.dart';
import 'package:musaeid/screen/booking_list/all_booking_list_status.dart';
import 'package:musaeid/screen/booking_list/booking_list.dart';
import 'package:musaeid/screen/booking_list/order_details.dart';
import 'package:musaeid/screen/booking_list/payment_completed.dart';
import 'package:musaeid/screen/cnic_attachment/cnic_attachment.dart';
import 'package:musaeid/screen/cnic_attachment/selectservices.dart';
import 'package:musaeid/screen/cnic_attachment/upload_document.dart';
import 'package:musaeid/screen/confirm_location/confirm_location.dart';
import 'package:musaeid/screen/language_slection_screen/language_selection_screen.dart';
import 'package:musaeid/screen/personal_datapage/personal_data_page.dart';
import 'package:musaeid/screen/provider_dashboard/provider_dashboard.dart';
import 'package:musaeid/screen/reviews/reviews.dart';
import 'package:musaeid/screen/start_services/start_services_screen.dart';

import '../screen/start_services/successfully_screen.dart';

class AppRoute {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return const LanguageSelectionScreen();
        },
      ),
      GoRoute(
        path: "/PersonalDataPage",
        builder: (BuildContext context, GoRouterState state) {
          return const PersonalDataPage();
        },
      ),
      GoRoute(
        path: "/ConfirmLocation",
        builder: (BuildContext context, GoRouterState state) {
          return const ConfirmLocation();
        },
      ),
      GoRoute(
        path: "/UploadDoucment",
        builder: (BuildContext context, GoRouterState state) {
          return const UploadDoucment();
        },
      ),
      GoRoute(
        path: "/BookingList",
        builder: (BuildContext context, GoRouterState state) {
          return const BookingList();
        },
      ),
      GoRoute(
        path: "/WalletSelectDeposit",
        builder: (BuildContext context, GoRouterState state) {
          return const WalletSelectDeposit();
        },
      ),
      GoRoute(
        path: "/WalletSuccessfulScreen",
        builder: (BuildContext context, GoRouterState state) {
          return const WalletSuccessfulScreen();
        },
      ),
      GoRoute(
        path: "/WithdrawalSuccessful",
        builder: (BuildContext context, GoRouterState state) {
          return const WithdrawalSuccessful();
        },
      ),
      GoRoute(
        path: "/WalletPaymentSuccesful",
        builder: (BuildContext context, GoRouterState state) {
          return const WalletPaymentSuccesful();
        },
      ),
      GoRoute(
        path: "/WalletSelectpaymentmethod",
        builder: (BuildContext context, GoRouterState state) {
          return const WalletSelectpaymentmethod();
        },
      ),
      GoRoute(
        path: "/ProviderDashboard",
        builder: (BuildContext context, GoRouterState state) {
          return const ProviderDashboard();
        },
      ),
      GoRoute(
        path: "/PaymentCompleted",
        builder: (BuildContext context, GoRouterState state) {
          return const PaymentCompleted();
        },
      ),
      GoRoute(
        path: "/SelectServices",
        builder: (BuildContext context, GoRouterState state) {
          return const SelectServices();
        },
      ),
      GoRoute(
        path: "/WalletScreen",
        builder: (BuildContext context, GoRouterState state) {
          return const WalletScreen();
        },
      ),
      GoRoute(
        path: "/StartServicesScreen",
        builder: (BuildContext context, GoRouterState state) {
          return const StartServicesScreen();
        },
      ),
      GoRoute(
        path: "/SuccessfullyScreen",
        builder: (BuildContext context, GoRouterState state) {
          return const SuccessfullyScreen();
        },
      ),
      GoRoute(
        path: "/Reviews",
        builder: (BuildContext context, GoRouterState state) {
          return const Reviews();
        },
      ),
      GoRoute(
        path: "/CnicAttachment",
        builder: (BuildContext context, GoRouterState state) {
          return const CnicAttachment();
        },
      ),
      GoRoute(
        path: "/OrderDetails",
        builder: (BuildContext context, GoRouterState state) {
          return const OrderDetails();
        },
      ),
      GoRoute(
        path: "/AllBookingListStatus",
        builder: (BuildContext context, GoRouterState state) {
          return const AllBookingListStatus();
        },
      ),



    ],
    errorBuilder: (context, state) {
      return ErrorWidget(state.error.toString()); // Corrected here
    },
  );
}
