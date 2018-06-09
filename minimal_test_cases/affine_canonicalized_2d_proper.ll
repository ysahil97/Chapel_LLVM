; ModuleID = 'affine_2d_proper.ll'
source_filename = "root"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%range_int64_t_bounded_F = type { i64, i64 }
%_domain_DefaultRectangularDom_2_int64_t_F = type { i64, %chpl_DefaultRectangularDom_2_int64_t_F_object*, i8 }
%chpl_DefaultRectangularDom_2_int64_t_F_object = type { %chpl_BaseRectangularDom_2_int64_t_F_object, %chpl_DefaultDist_object*, [2 x %range_int64_t_bounded_F] }
%chpl_BaseRectangularDom_2_int64_t_F_object = type { %chpl_BaseDom_object }
%chpl_BaseDom_object = type { %chpl_object_object, %list_BaseArr_chpl, i64, %atomicbool, i8, i64 }
%chpl_object_object = type { i32, i32 }
%list_BaseArr_chpl = type { %chpl_listNode_BaseArr_chpl_object*, %chpl_listNode_BaseArr_chpl_object*, i64 }
%chpl_listNode_BaseArr_chpl_object = type { %chpl_object_object, %chpl_BaseArr_object*, %chpl_listNode_BaseArr_chpl_object* }
%chpl_BaseArr_object = type { %chpl_object_object, i64, i8 }
%atomicbool = type { i8 }
%chpl_DefaultDist_object = type { %chpl_BaseDist_object }
%chpl_BaseDist_object = type { %chpl_object_object, %list_BaseDom_chpl, %atomicbool, i8, i64 }
%list_BaseDom_chpl = type { %chpl_listNode_BaseDom_chpl_object*, %chpl_listNode_BaseDom_chpl_object*, i64 }
%chpl_listNode_BaseDom_chpl_object = type { %chpl_object_object, %chpl_BaseDom_object*, %chpl_listNode_BaseDom_chpl_object* }
%_distribution_DefaultDist = type { i64, %chpl_DefaultDist_object*, i8 }
%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t = type { i64, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, i8 }
%chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object = type { %chpl_BaseRectangularArr_2_int64_t_F__real64_object, %chpl_DefaultRectangularDom_2_int64_t_F_object*, [2 x i64], [2 x i64], [2 x i64], i64, i64, double*, double*, i8, %range_int64_t_bounded_F }
%chpl_BaseRectangularArr_2_int64_t_F__real64_object = type { %chpl_BaseArrOverRectangularDom_2_int64_t_F_object }
%chpl_BaseArrOverRectangularDom_2_int64_t_F_object = type { %chpl_BaseArr_object }

declare dso_local void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F, %range_int64_t_bounded_F, %_domain_DefaultRectangularDom_2_int64_t_F* nonnull, i64, i32)

declare dso_local void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* nonnull, %_distribution_DefaultDist* nonnull, i64, i32)

declare dso_local void @_dom2(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* nonnull, %_domain_DefaultRectangularDom_2_int64_t_F* nonnull, i64, i32)

declare dso_local void @chpl__autoDestroy(%_distribution_DefaultDist* nonnull, i64, i32)

declare dso_local void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* nonnull, i64, i32)

declare dso_local void @chpl_build_bounded_range(i64, i64, %range_int64_t_bounded_F* nonnull, i64, i32)

; Function Attrs: noinline
define weak dso_local void @test_init_chpl(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* nonnull) #0 {
  %2 = alloca %range_int64_t_bounded_F, align 8
  %3 = alloca %range_int64_t_bounded_F, align 8
  %4 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8
  %5 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8
  %6 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8
  %7 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8
  %8 = alloca %_distribution_DefaultDist, align 8
  %9 = alloca %_distribution_DefaultDist, align 8
  br label %.split

.split:                                           ; preds = %1
  call void @chpl_build_bounded_range(i64 1, i64 1000, %range_int64_t_bounded_F* %2, i64 5, i32 56)
  %.elt = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %2, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %10 = insertvalue %range_int64_t_bounded_F undef, i64 %.unpack, 0
  %.elt2 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %2, i64 0, i32 1
  %.unpack3 = load i64, i64* %.elt2, align 8
  %11 = insertvalue %range_int64_t_bounded_F %10, i64 %.unpack3, 1
  call void @chpl_build_bounded_range(i64 1, i64 1000, %range_int64_t_bounded_F* %3, i64 5, i32 56)
  %.elt4 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %3, i64 0, i32 0
  %.unpack5 = load i64, i64* %.elt4, align 8
  %12 = insertvalue %range_int64_t_bounded_F undef, i64 %.unpack5, 0
  %.elt6 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %3, i64 0, i32 1
  %.unpack7 = load i64, i64* %.elt6, align 8
  %13 = insertvalue %range_int64_t_bounded_F %12, i64 %.unpack7, 1
  call void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F %11, %range_int64_t_bounded_F %13, %_domain_DefaultRectangularDom_2_int64_t_F* %5, i64 5, i32 56)
  %14 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %5, align 8
  store %_domain_DefaultRectangularDom_2_int64_t_F %14, %_domain_DefaultRectangularDom_2_int64_t_F* %4, align 8
  call void @_dom2(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %0, %_domain_DefaultRectangularDom_2_int64_t_F* %7, i64 5, i32 56)
  %15 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %7, align 8
  store %_domain_DefaultRectangularDom_2_int64_t_F %15, %_domain_DefaultRectangularDom_2_int64_t_F* %6, align 8
  call void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* %4, %_distribution_DefaultDist* %9, i64 5, i32 56)
  %16 = load %_distribution_DefaultDist, %_distribution_DefaultDist* %9, align 8
  store %_distribution_DefaultDist %16, %_distribution_DefaultDist* %8, align 8
  call void @chpl__autoDestroy(%_distribution_DefaultDist* %8, i64 5, i32 56)
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %6, i64 5, i32 56)
  br label %17

; <label>:17:                                     ; preds = %.split, %31
  %.0 = phi i64 [ 1, %.split ], [ %32, %31 ]
  br label %18

; <label>:18:                                     ; preds = %17, %18
  %.01 = phi i64 [ 1, %17 ], [ %30, %18 ]
  %19 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %0, i64 0, i32 1
  %20 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %19, align 8, !tbaa !2
  %21 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %20, i64 0, i32 3, i64 0
  %22 = load i64, i64* %21, align 8, !tbaa !14
  %23 = mul nsw i64 %22, %.0
  %24 = add nsw i64 %23, %.01
  %25 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %20, i64 0, i32 8
  %26 = load double*, double** %25, align 8, !tbaa !15
  %27 = getelementptr inbounds double, double* %26, i64 %24
  %28 = add nuw nsw i64 %.01, %.0
  %29 = sitofp i64 %28 to double
  store double %29, double* %27, align 8, !tbaa !28
  %30 = add nuw nsw i64 %.01, 1
  %exitcond = icmp ne i64 %30, 1001
  br i1 %exitcond, label %18, label %31

; <label>:31:                                     ; preds = %18
  %32 = add nuw nsw i64 %.0, 1
  %exitcond8 = icmp ne i64 %32, 1001
  br i1 %exitcond8, label %17, label %33

; <label>:33:                                     ; preds = %31
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %4, i64 5, i32 56)
  ret void
}

; Function Attrs: argmemonly nounwind
declare {}* @llvm.invariant.start.p0i8(i64, i8* nocapture) #1

attributes #0 = { noinline }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!2 = !{!3, !7, i64 8}
!3 = !{!"_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t", !4, i64 0, !7, i64 8, !13, i64 16}
!4 = !{!"int64_t", !5, i64 0}
!5 = !{!"all unions", !6, i64 0}
!6 = !{!"Chapel types"}
!7 = !{!"DefaultRectangularArr_2_int64_t_F__real64_int64_t", !8, i64 0}
!8 = !{!"BaseRectangularArr_2_int64_t_F__real64", !9, i64 0}
!9 = !{!"BaseArrOverRectangularDom_2_int64_t_F", !10, i64 0}
!10 = !{!"BaseArr", !11, i64 0}
!11 = !{!"object", !12, i64 0}
!12 = !{!"C void ptr", !5, i64 0}
!13 = !{!"chpl_bool", !5, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!16, !26, i64 104}
!16 = !{!"chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object", !17, i64 0, !22, i64 24, !25, i64 32, !25, i64 48, !25, i64 64, !4, i64 80, !4, i64 88, !26, i64 96, !26, i64 104, !13, i64 112, !27, i64 120}
!17 = !{!"chpl_BaseRectangularArr_2_int64_t_F__real64_object", !18, i64 0}
!18 = !{!"chpl_BaseArrOverRectangularDom_2_int64_t_F_object", !19, i64 0}
!19 = !{!"chpl_BaseArr_object", !20, i64 0, !4, i64 8, !13, i64 16}
!20 = !{!"chpl_object_object", !21, i64 0}
!21 = !{!"int32_t", !5, i64 0}
!22 = !{!"DefaultRectangularDom_2_int64_t_F", !23, i64 0}
!23 = !{!"BaseRectangularDom_2_int64_t_F", !24, i64 0}
!24 = !{!"BaseDom", !11, i64 0}
!25 = !{!"_tuple_2_star_int64_t", !5, i64 0}
!26 = !{!"_ref__real64", !12, i64 0}
!27 = !{!"range_int64_t_bounded_F", !4, i64 0, !4, i64 8}
!28 = !{!29, !29, i64 0}
!29 = !{!"_real64", !5, i64 0}
