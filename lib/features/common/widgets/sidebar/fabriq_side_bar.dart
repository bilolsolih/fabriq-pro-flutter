import 'package:fabriq_pro/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'side_bar_item.dart';
import 'side_bar_item_expandable.dart';
import 'side_bar_sub_item.dart';

class FabriqSideBar extends StatelessWidget {
  const FabriqSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.spMin,
      height: double.infinity,
      padding: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40.spMin, bottom: 12.h),
            child: SvgPicture.asset(
              "assets/icons/logo.svg",
              width: 175.sp,
              height: 40.sp,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SideBarItem(
                    title: "Statistika",
                    icon: "assets/icons/statistics.svg",
                    callback: () => context.go(Routes.statistics),
                  ),
                  SideBarItem(
                    title: "Monitoring",
                    icon: "assets/icons/monitoring.svg",
                    callback: () => context.go(Routes.monitoring),
                  ),
                  SideBarItem(
                    title: "Moliya",
                    icon: "assets/icons/finance.svg",
                    callback: () => context.go(Routes.finance),
                  ),
                  SideBarItem(
                    title: "Mijozlar",
                    icon: "assets/icons/clients.svg",
                    callback: () => context.go(Routes.clients),
                  ),
                  SideBarItem(
                    title: "Buyurtmalar",
                    icon: "assets/icons/orders.svg",
                    callback: () => context.go(Routes.orders),
                  ),
                  SideBarItemExpandable(
                    title: "Ombor",
                    icon: "assets/icons/storage.svg",
                    children: [
                      SideBarSubItem(
                        title: "Tayyor maxsulotlar",
                        icon: "assets/icons/packaging.svg",
                        callback: () => context.go(Routes.products),
                      ),
                      SideBarSubItem(
                        title: "Materiallar",
                        icon: "assets/icons/packaging.svg",
                        callback: () => context.go(Routes.materials),
                      ),
                      SideBarSubItem(
                        title: "Aksessuarlar",
                        icon: "assets/icons/packaging.svg",
                        callback: () => context.go(Routes.accessories),
                      ),
                      SideBarSubItem(
                        title: "Extiyot qismlar",
                        icon: "assets/icons/packaging.svg",
                        callback: () => context.go(Routes.spareParts),
                      ),
                      SideBarSubItem(
                        title: "Boshqa narsalar",
                        icon: "assets/icons/packaging.svg",
                        callback: () => context.go(Routes.miscellaneous),
                      ),
                    ],
                  ),
                  SideBarItemExpandable(
                    title: "Ishlab chiqarish",
                    icon: "assets/icons/manufacture.svg",
                    children: [
                      SideBarSubItem(
                        title: "Kesish",
                        icon: "assets/icons/cutting.svg",
                        callback: () => context.go(Routes.cutting),
                      ),
                      SideBarSubItem(
                        title: "Tikuv",
                        icon: "assets/icons/sewing.svg",
                        callback: () => context.go(Routes.sewing),
                      ),
                      SideBarSubItem(
                        title: "Qadoqlash",
                        icon: "assets/icons/packaging.svg",
                        callback: () => context.go(Routes.packaging),
                      ),
                    ],
                  ),
                  SideBarItem(
                    title: "Xodimlar",
                    icon: "assets/icons/employees.svg",
                    callback: () => context.go(Routes.employees),
                  ),
                  SideBarItem(
                    title: "Xabarlar",
                    icon: "assets/icons/notifications.svg",
                    callback: () => context.go(Routes.notifications),
                  ),
                  SideBarItem(
                    title: "Sozlamalar",
                    icon: "assets/icons/settings.svg",
                    callback: () => context.go(Routes.settings),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          SideBarItem(title: "Chiqish", icon: "assets/icons/logout.svg", callback: () {}),
        ],
      ),
    );
  }
}
