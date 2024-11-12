
import 'package:fitness/config/app_colors.dart';
import 'package:fitness/config/styles.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

// extension TimeAgo on DateTime {
//   String timeAgo() {
//     final difference = DateTime.now().difference(this);

//     if (difference.inDays > 8) {
//       return DateFormat.yMMMd().format(this); // E.g., "Oct 20, 2024"
//     } else if (difference.inDays >= 1) {
//       return '${difference.inDays} days ago';
//     } else if (difference.inHours >= 1) {
//       return '${difference.inHours} hours ago';
//     } else if (difference.inMinutes >= 1) {
//       return '${difference.inMinutes} minutes ago';
//     } else {
//       return 'Just now';
//     }
//   }
// }

// extension DialogExtension on BuildContext {
//   Future<dynamic> loadingDialog(BuildContext context) {
//     return showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (context) {
//         return const CustomLoading();
//       },
//     );
//   }

  Future<dynamic> errorDialog(BuildContext context, String errorMessage,
      {String? title, void Function()? onPressed}) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor:
          Colors.black.withOpacity(0.5), // Background color with opacity
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: AlertDialog(
            scrollable: true,
            backgroundColor: Colors.white,
            title: Text(
              "Error",
              style: Styles.style16W500.copyWith(color: Colors.red),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  errorMessage,
                  style: Styles.style12W500AboveTextField.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Ok",
                  style: Styles.style11W700WhiteColor.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
              if (title != null && title.isNotEmpty)
                TextButton(
                  onPressed: onPressed,
                  child: Text(title),
                ),
            ],
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
    );
  }

  Future<dynamic> successDialog(
      {required BuildContext context,
      required String errorMessage,
      void Function()? onPressed,
      String? title}) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor:
          Colors.black.withOpacity(0.5), // Semi-transparent background
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: AlertDialog(
            scrollable: true,
            backgroundColor: Colors.white,
            title: Text(
              title ?? "Check your email",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blue, // Assuming primary color is blue
              ),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  errorMessage,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: Colors.grey, // Assuming secondary color is grey
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: onPressed,
                child: const Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.blue), // Assuming primary color is blue
                ),
              ),
            ],
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
    );
  }

