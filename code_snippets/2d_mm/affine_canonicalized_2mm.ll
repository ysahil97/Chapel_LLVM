; ModuleID = 'affine_2mm.ll'
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
define weak dso_local void @m2m_chpl(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* nonnull, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* nonnull, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* nonnull) #0 {
  %4 = alloca %range_int64_t_bounded_F, align 8, !dbg !7
  %5 = alloca %range_int64_t_bounded_F, align 8, !dbg !7
  %6 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %7 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %8 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %9 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %10 = alloca %_distribution_DefaultDist, align 8, !dbg !7
  %11 = alloca %_distribution_DefaultDist, align 8, !dbg !7
  %12 = alloca %range_int64_t_bounded_F, align 8, !dbg !7
  %13 = alloca %range_int64_t_bounded_F, align 8, !dbg !7
  %14 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %15 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %16 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %17 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %18 = alloca %_distribution_DefaultDist, align 8, !dbg !7
  %19 = alloca %_distribution_DefaultDist, align 8, !dbg !7
  %20 = alloca %range_int64_t_bounded_F, align 8, !dbg !7
  %21 = alloca %range_int64_t_bounded_F, align 8, !dbg !7
  %22 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %23 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %24 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %25 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, align 8, !dbg !7
  %26 = alloca %_distribution_DefaultDist, align 8, !dbg !7
  %27 = alloca %_distribution_DefaultDist, align 8, !dbg !7
  br label %.split, !dbg !7

.split:                                           ; preds = %3
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %4, i64 24, i32 56), !dbg !7
  %.elt = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %4, i64 0, i32 0, !dbg !7
  %.unpack = load i64, i64* %.elt, align 8, !dbg !7
  %28 = insertvalue %range_int64_t_bounded_F undef, i64 %.unpack, 0, !dbg !7
  %.elt3 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %4, i64 0, i32 1, !dbg !7
  %.unpack4 = load i64, i64* %.elt3, align 8, !dbg !7
  %29 = insertvalue %range_int64_t_bounded_F %28, i64 %.unpack4, 1, !dbg !7
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %5, i64 24, i32 56), !dbg !7
  %.elt5 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %5, i64 0, i32 0, !dbg !7
  %.unpack6 = load i64, i64* %.elt5, align 8, !dbg !7
  %30 = insertvalue %range_int64_t_bounded_F undef, i64 %.unpack6, 0, !dbg !7
  %.elt7 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %5, i64 0, i32 1, !dbg !7
  %.unpack8 = load i64, i64* %.elt7, align 8, !dbg !7
  %31 = insertvalue %range_int64_t_bounded_F %30, i64 %.unpack8, 1, !dbg !7
  call void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F %29, %range_int64_t_bounded_F %31, %_domain_DefaultRectangularDom_2_int64_t_F* %7, i64 24, i32 56), !dbg !7
  %32 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %7, align 8, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %32, %_domain_DefaultRectangularDom_2_int64_t_F* %6, align 8, !dbg !7
  call void @_dom2(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %2, %_domain_DefaultRectangularDom_2_int64_t_F* %9, i64 24, i32 56), !dbg !7
  %33 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %9, align 8, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %33, %_domain_DefaultRectangularDom_2_int64_t_F* %8, align 8, !dbg !7
  call void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* %6, %_distribution_DefaultDist* %11, i64 24, i32 56), !dbg !7
  %34 = load %_distribution_DefaultDist, %_distribution_DefaultDist* %11, align 8, !dbg !7
  store %_distribution_DefaultDist %34, %_distribution_DefaultDist* %10, align 8, !dbg !7
  call void @chpl__autoDestroy(%_distribution_DefaultDist* %10, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %8, i64 24, i32 56), !dbg !7
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %12, i64 24, i32 56), !dbg !7
  %.elt9 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %12, i64 0, i32 0, !dbg !7
  %.unpack10 = load i64, i64* %.elt9, align 8, !dbg !7
  %35 = insertvalue %range_int64_t_bounded_F undef, i64 %.unpack10, 0, !dbg !7
  %.elt11 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %12, i64 0, i32 1, !dbg !7
  %.unpack12 = load i64, i64* %.elt11, align 8, !dbg !7
  %36 = insertvalue %range_int64_t_bounded_F %35, i64 %.unpack12, 1, !dbg !7
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %13, i64 24, i32 56), !dbg !7
  %.elt13 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %13, i64 0, i32 0, !dbg !7
  %.unpack14 = load i64, i64* %.elt13, align 8, !dbg !7
  %37 = insertvalue %range_int64_t_bounded_F undef, i64 %.unpack14, 0, !dbg !7
  %.elt15 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %13, i64 0, i32 1, !dbg !7
  %.unpack16 = load i64, i64* %.elt15, align 8, !dbg !7
  %38 = insertvalue %range_int64_t_bounded_F %37, i64 %.unpack16, 1, !dbg !7
  call void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F %36, %range_int64_t_bounded_F %38, %_domain_DefaultRectangularDom_2_int64_t_F* %15, i64 24, i32 56), !dbg !7
  %39 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %15, align 8, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %39, %_domain_DefaultRectangularDom_2_int64_t_F* %14, align 8, !dbg !7
  call void @_dom2(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %1, %_domain_DefaultRectangularDom_2_int64_t_F* %17, i64 24, i32 56), !dbg !7
  %40 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %17, align 8, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %40, %_domain_DefaultRectangularDom_2_int64_t_F* %16, align 8, !dbg !7
  call void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* %14, %_distribution_DefaultDist* %19, i64 24, i32 56), !dbg !7
  %41 = load %_distribution_DefaultDist, %_distribution_DefaultDist* %19, align 8, !dbg !7
  store %_distribution_DefaultDist %41, %_distribution_DefaultDist* %18, align 8, !dbg !7
  call void @chpl__autoDestroy(%_distribution_DefaultDist* %18, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %16, i64 24, i32 56), !dbg !7
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %20, i64 24, i32 56), !dbg !7
  %.elt17 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %20, i64 0, i32 0, !dbg !7
  %.unpack18 = load i64, i64* %.elt17, align 8, !dbg !7
  %42 = insertvalue %range_int64_t_bounded_F undef, i64 %.unpack18, 0, !dbg !7
  %.elt19 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %20, i64 0, i32 1, !dbg !7
  %.unpack20 = load i64, i64* %.elt19, align 8, !dbg !7
  %43 = insertvalue %range_int64_t_bounded_F %42, i64 %.unpack20, 1, !dbg !7
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %21, i64 24, i32 56), !dbg !7
  %.elt21 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %21, i64 0, i32 0, !dbg !7
  %.unpack22 = load i64, i64* %.elt21, align 8, !dbg !7
  %44 = insertvalue %range_int64_t_bounded_F undef, i64 %.unpack22, 0, !dbg !7
  %.elt23 = getelementptr inbounds %range_int64_t_bounded_F, %range_int64_t_bounded_F* %21, i64 0, i32 1, !dbg !7
  %.unpack24 = load i64, i64* %.elt23, align 8, !dbg !7
  %45 = insertvalue %range_int64_t_bounded_F %44, i64 %.unpack24, 1, !dbg !7
  call void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F %43, %range_int64_t_bounded_F %45, %_domain_DefaultRectangularDom_2_int64_t_F* %23, i64 24, i32 56), !dbg !7
  %46 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %23, align 8, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %46, %_domain_DefaultRectangularDom_2_int64_t_F* %22, align 8, !dbg !7
  call void @_dom2(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %0, %_domain_DefaultRectangularDom_2_int64_t_F* %25, i64 24, i32 56), !dbg !7
  %47 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %25, align 8, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %47, %_domain_DefaultRectangularDom_2_int64_t_F* %24, align 8, !dbg !7
  call void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* %22, %_distribution_DefaultDist* %27, i64 24, i32 56), !dbg !7
  %48 = load %_distribution_DefaultDist, %_distribution_DefaultDist* %27, align 8, !dbg !7
  store %_distribution_DefaultDist %48, %_distribution_DefaultDist* %26, align 8, !dbg !7
  call void @chpl__autoDestroy(%_distribution_DefaultDist* %26, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %24, i64 24, i32 56), !dbg !7
  br label %49, !dbg !12

; <label>:49:                                     ; preds = %.split, %87
  %.0 = phi i64 [ 0, %.split ], [ %88, %87 ], !dbg !12
  br label %50, !dbg !13

; <label>:50:                                     ; preds = %49, %85
  %.01 = phi i64 [ 0, %49 ], [ %86, %85 ], !dbg !13
  br label %51, !dbg !14

; <label>:51:                                     ; preds = %50, %51
  %.02 = phi i64 [ 0, %50 ], [ %84, %51 ], !dbg !14
  %52 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %2, i64 0, i32 1, !dbg !15
  %53 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %52, align 8, !dbg !15, !tbaa !16
  %54 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %53, i64 0, i32 3, i64 0, !dbg !15
  %55 = load i64, i64* %54, align 8, !dbg !15, !tbaa !28
  %56 = mul nsw i64 %55, %.0, !dbg !15
  %57 = add nsw i64 %56, %.01, !dbg !15
  %58 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %53, i64 0, i32 8, !dbg !15
  %59 = load double*, double** %58, align 8, !dbg !15, !tbaa !29
  %60 = getelementptr inbounds double, double* %59, i64 %57, !dbg !15
  %61 = load double, double* %60, align 8, !dbg !15, !tbaa !42
  %62 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %0, i64 0, i32 1, !dbg !15
  %63 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %62, align 8, !dbg !15, !tbaa !16
  %64 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %63, i64 0, i32 3, i64 0, !dbg !15
  %65 = load i64, i64* %64, align 8, !dbg !15, !tbaa !28
  %66 = mul nsw i64 %65, %.0, !dbg !15
  %67 = add nsw i64 %66, %.02, !dbg !15
  %68 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %63, i64 0, i32 8, !dbg !15
  %69 = load double*, double** %68, align 8, !dbg !15, !tbaa !29
  %70 = getelementptr inbounds double, double* %69, i64 %67, !dbg !15
  %71 = load double, double* %70, align 8, !dbg !15, !tbaa !42
  %72 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %1, i64 0, i32 1, !dbg !15
  %73 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %72, align 8, !dbg !15, !tbaa !16
  %74 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %73, i64 0, i32 3, i64 0, !dbg !15
  %75 = load i64, i64* %74, align 8, !dbg !15, !tbaa !28
  %76 = mul nsw i64 %75, %.02, !dbg !15
  %77 = add nsw i64 %76, %.01, !dbg !15
  %78 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %73, i64 0, i32 8, !dbg !15
  %79 = load double*, double** %78, align 8, !dbg !15, !tbaa !29
  %80 = getelementptr inbounds double, double* %79, i64 %77, !dbg !15
  %81 = load double, double* %80, align 8, !dbg !15, !tbaa !42
  %82 = fmul double %71, %81, !dbg !15
  %83 = fadd double %61, %82, !dbg !15
  store double %83, double* %60, align 8, !dbg !15, !tbaa !42
  %84 = add nuw nsw i64 %.02, 1, !dbg !14
  %exitcond = icmp ne i64 %84, 1000, !dbg !14
  br i1 %exitcond, label %51, label %85, !dbg !14

; <label>:85:                                     ; preds = %51
  %86 = add nuw nsw i64 %.01, 1, !dbg !13
  %exitcond25 = icmp ne i64 %86, 1000, !dbg !13
  br i1 %exitcond25, label %50, label %87, !dbg !13

; <label>:87:                                     ; preds = %85
  %88 = add nuw nsw i64 %.0, 1, !dbg !12
  %exitcond26 = icmp ne i64 %88, 1000, !dbg !12
  br i1 %exitcond26, label %49, label %89, !dbg !12

; <label>:89:                                     ; preds = %87
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %22, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %14, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %6, i64 24, i32 56), !dbg !7
  ret void, !dbg !7
}

; Function Attrs: argmemonly nounwind
declare {}* @llvm.invariant.start.p0i8(i64, i8* nocapture) #1

attributes #0 = { noinline }
attributes #1 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Chapel version 1.18.0 pre-release (b7103d148b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "affine_2mm.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!7 = !DILocation(line: 24, scope: !8)
!8 = distinct !DISubprogram(name: "m2m", linkageName: "m2m_chpl", scope: !9, file: !1, line: 24, type: !10, isLocal: true, isDefinition: true, scopeLine: 24, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DINamespace(name: "matrix_multiplication", scope: !1)
!10 = !DISubroutineType(types: !11)
!11 = !{null, null, null, null}
!12 = !DILocation(line: 25, scope: !8)
!13 = !DILocation(line: 26, scope: !8)
!14 = !DILocation(line: 27, scope: !8)
!15 = !DILocation(line: 28, scope: !8)
!16 = !{!17, !21, i64 8}
!17 = !{!"_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t", !18, i64 0, !21, i64 8, !27, i64 16}
!18 = !{!"int64_t", !19, i64 0}
!19 = !{!"all unions", !20, i64 0}
!20 = !{!"Chapel types"}
!21 = !{!"DefaultRectangularArr_2_int64_t_F__real64_int64_t", !22, i64 0}
!22 = !{!"BaseRectangularArr_2_int64_t_F__real64", !23, i64 0}
!23 = !{!"BaseArrOverRectangularDom_2_int64_t_F", !24, i64 0}
!24 = !{!"BaseArr", !25, i64 0}
!25 = !{!"object", !26, i64 0}
!26 = !{!"C void ptr", !19, i64 0}
!27 = !{!"chpl_bool", !19, i64 0}
!28 = !{!18, !18, i64 0}
!29 = !{!30, !40, i64 104}
!30 = !{!"chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object", !31, i64 0, !36, i64 24, !39, i64 32, !39, i64 48, !39, i64 64, !18, i64 80, !18, i64 88, !40, i64 96, !40, i64 104, !27, i64 112, !41, i64 120}
!31 = !{!"chpl_BaseRectangularArr_2_int64_t_F__real64_object", !32, i64 0}
!32 = !{!"chpl_BaseArrOverRectangularDom_2_int64_t_F_object", !33, i64 0}
!33 = !{!"chpl_BaseArr_object", !34, i64 0, !18, i64 8, !27, i64 16}
!34 = !{!"chpl_object_object", !35, i64 0}
!35 = !{!"int32_t", !19, i64 0}
!36 = !{!"DefaultRectangularDom_2_int64_t_F", !37, i64 0}
!37 = !{!"BaseRectangularDom_2_int64_t_F", !38, i64 0}
!38 = !{!"BaseDom", !25, i64 0}
!39 = !{!"_tuple_2_star_int64_t", !19, i64 0}
!40 = !{!"_ref__real64", !26, i64 0}
!41 = !{!"range_int64_t_bounded_F", !18, i64 0, !18, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"_real64", !19, i64 0}
