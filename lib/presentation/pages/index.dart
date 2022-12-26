library pages;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:healsense/application/providers/go_router_provider/routes/routes.dart';
import 'package:healsense/application/providers/intro_page_slider_provider/state/intro_page_state.dart';
import 'package:healsense/application/providers/splash_page_provider/state/splash_page_state.dart';
import 'package:healsense/infastructure/core/constants/paddings.dart';
import 'package:healsense/infastructure/core/extensions/localization_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/infastructure/core/constants/palette.dart';
import 'package:healsense/infastructure/core/extensions/responsive_size_extension.dart';
import 'package:healsense/presentation/widgets/index.dart';

import '../../application/providers/intro_page_slider_provider/provider/intro_page_slider_provider.dart';
import '../../application/providers/splash_page_provider/provider/splash_page_provider.dart';
import '../../infastructure/core/helpers/snackbar_helper.dart';
import '../widgets/common/snackbars/simple_snackbar_content_type.dart';

part 'intro_page.dart';
part 'splash_page.dart';
part 'home_page.dart';
part 'reminders_page.dart';
part 'calendar_page.dart';
part 'feed_page.dart';
part 'create_medicine_page.dart';
part 'route_error_page.dart';
