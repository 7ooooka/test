import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/core/styles/r.dart';
import 'package:maksafy/data/data_sources/remote/app_remote_data_source.dart';
import 'package:maksafy/data/repositories/home_repo_imp.dart';
import 'package:maksafy/domain/usecases/home_uc.dart';
import 'package:maksafy/ui/pages/home/cubits/home_cubit.dart';
import 'package:maksafy/ui/pages/home/home_content.dart';
import 'package:maksafy/ui/pages/home/widgets/home_header/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        ///Note: we can use Git it for dependency injection instead of this additional code for independent
        ///but it is just a small task
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(
            homeUc: HomeUc(
              homeRepo: HomeRepoImp(
                appRemoteDataSource: AppRemoteDataSource(),
              ),
            ),
          ),
        ),
      ],
      child: Scaffold(
        // there is no localization yet so i added Directionality for rtl
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(children: [
            const HomeHeader(),
            Positioned(
              top: 200.h,
              child: Container(
                width: size.width,
                height: size.height,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  border: Border.all(width: 0, color: Colors.white),
                  color: R.colors.homeBackgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.r),
                  ),
                ),
                child: HomeContent(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
