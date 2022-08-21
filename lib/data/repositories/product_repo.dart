// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:glow_app/data/models/product/product_model.dart';
// import 'package:glow_app/core/errors/network_error/network_error.dart';
// import 'package:dartz/dartz.dart';
// import 'package:glow_app/data/sources/remote_data_sources/constatnts.dart';
// import 'package:glow_app/domain/repositories/product/i_product_repo.dart';
// import 'package:injectable/injectable.dart';

// @LazySingleton(as: IProductRepository)
// class ProductRepository implements IProductRepository {
//   @override
//   Future<Either<NetworkError, List<Product>>> getProductDetails() async {
//     try {
//       final response = await Dio().get(kBaseUrl);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final productList =
//             (response.data as List).map((e) => Product.fromJson(e)).toList();

//         // log((productList[0]).toString());

//         return Right(productList);
//       } else {
//         return const Left(NetworkError.serverError());
//       }
//     } catch (_) {
//       return const Left(NetworkError.clientError());
//     }
//   }
// }
