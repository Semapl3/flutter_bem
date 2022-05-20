// Flutter imports:
import 'package:flutter/widgets.dart';

const double ResponsiveMinPhoneSize = 480.0;
const double ResponsivePhoneSize = 640.0;
const double ResponsiveTabletSize = 768.0;

/// Функция по контексту определяет размер экрана и возвращает виждет соотвествующий размерам экрана
Widget responsive(
  BuildContext context, {
  Widget? minPhone,
  Widget? phone,
  Widget? tablet,
  Widget? desktop,
}) {
  assert(minPhone != null || phone != null || tablet != null || desktop != null);

  final width = MediaQuery.of(context).size.width;

  if (width < ResponsiveMinPhoneSize) {
    if (minPhone != null) return minPhone;
    if (phone != null) return phone;
    if (tablet != null) return tablet;
    if (desktop != null) return desktop;
  }

  if (width < ResponsivePhoneSize) {
    if (phone != null) return phone;
    if (minPhone != null) return minPhone;
    if (tablet != null) return tablet;
    if (desktop != null) return desktop;
  }

  if (width < ResponsiveTabletSize) {
    if (tablet != null) return tablet;
    if (phone != null) return phone;
    if (minPhone != null) return minPhone;
    if (desktop != null) return desktop;
  }

  if (width >= ResponsiveTabletSize) {
    if (desktop != null) return desktop;
    if (tablet != null) return tablet;
    if (phone != null) return phone;
    if (minPhone != null) return minPhone;
  }

  return const SizedBox.shrink();
}

/// Функция возвращает виджет в рузультате выполнения соотвествующего размеру экрана билдера
Widget responsiveBuilder(
  BuildContext context, {
  required Widget child,
  Widget Function(BuildContext context, Widget child)? minPhone,
  Widget Function(BuildContext context, Widget child)? phone,
  Widget Function(BuildContext context, Widget child)? tablet,
  Widget Function(BuildContext context, Widget child)? desktop,
}) {
  final width = MediaQuery.of(context).size.width;

  if (width < ResponsiveMinPhoneSize) {
    if (minPhone != null) return minPhone(context, child);
    if (phone != null) return phone(context, child);
    if (tablet != null) return tablet(context, child);
    if (desktop != null) return desktop(context, child);
  }
  if (width < ResponsivePhoneSize) {
    if (phone != null) return phone(context, child);
    if (minPhone != null) return minPhone(context, child);
    if (tablet != null) return tablet(context, child);
    if (desktop != null) return desktop(context, child);
  }
  if (width < ResponsiveTabletSize) {
    if (tablet != null) return tablet(context, child);
    if (phone != null) return phone(context, child);
    if (minPhone != null) return minPhone(context, child);
    if (desktop != null) return desktop(context, child);
  }
  if (width >= ResponsiveTabletSize) {
    if (desktop != null) return desktop(context, child);
    if (tablet != null) return tablet(context, child);
    if (phone != null) return phone(context, child);
    if (minPhone != null) return minPhone(context, child);
  }

  return child;
}

bool isMinPhone(BuildContext context) => MediaQuery.of(context).size.width < ResponsiveMinPhoneSize;
bool isPhone(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return width < ResponsivePhoneSize && width >= ResponsiveMinPhoneSize;
}

bool isTablet(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return width < ResponsiveTabletSize && width >= ResponsivePhoneSize;
}

bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= ResponsiveTabletSize;
