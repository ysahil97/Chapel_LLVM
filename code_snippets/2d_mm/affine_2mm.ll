; LLVM IR representation of m2m function after full optimization stage
; ModuleID = 'root'
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
  %4 = alloca %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, !dbg !7
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %0, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %4, !dbg !7, !tbaa !12
  %5 = alloca %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, !dbg !7
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %1, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %5, !dbg !7, !tbaa !12
  %6 = alloca %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, !dbg !7
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %2, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %6, !dbg !7, !tbaa !12
  %7 = alloca %range_int64_t_bounded_F, !dbg !7
  %8 = alloca %range_int64_t_bounded_F, !dbg !7
  %9 = alloca %range_int64_t_bounded_F*, !dbg !7
  store %range_int64_t_bounded_F* null, %range_int64_t_bounded_F** %9, !dbg !7
  %10 = alloca %range_int64_t_bounded_F, !dbg !7
  %11 = alloca %range_int64_t_bounded_F, !dbg !7
  %12 = alloca %range_int64_t_bounded_F*, !dbg !7
  store %range_int64_t_bounded_F* null, %range_int64_t_bounded_F** %12, !dbg !7
  %13 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %14 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %15 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %15, !dbg !7
  %16 = alloca %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, !dbg !7
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* null, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %16, !dbg !7
  %17 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %18 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %19 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %19, !dbg !7
  %20 = alloca %_distribution_DefaultDist, !dbg !7
  %21 = alloca %_distribution_DefaultDist, !dbg !7
  %22 = alloca %_distribution_DefaultDist*, !dbg !7
  store %_distribution_DefaultDist* null, %_distribution_DefaultDist** %22, !dbg !7
  %23 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %23, !dbg !7
  %24 = alloca %range_int64_t_bounded_F, !dbg !7
  %25 = alloca %range_int64_t_bounded_F, !dbg !7
  %26 = alloca %range_int64_t_bounded_F*, !dbg !7
  store %range_int64_t_bounded_F* null, %range_int64_t_bounded_F** %26, !dbg !7
  %27 = alloca %range_int64_t_bounded_F, !dbg !7
  %28 = alloca %range_int64_t_bounded_F, !dbg !7
  %29 = alloca %range_int64_t_bounded_F*, !dbg !7
  store %range_int64_t_bounded_F* null, %range_int64_t_bounded_F** %29, !dbg !7
  %30 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %31 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %32 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %32, !dbg !7
  %33 = alloca %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, !dbg !7
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* null, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %33, !dbg !7
  %34 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %35 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %36 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %36, !dbg !7
  %37 = alloca %_distribution_DefaultDist, !dbg !7
  %38 = alloca %_distribution_DefaultDist, !dbg !7
  %39 = alloca %_distribution_DefaultDist*, !dbg !7
  store %_distribution_DefaultDist* null, %_distribution_DefaultDist** %39, !dbg !7
  %40 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %40, !dbg !7
  %41 = alloca %range_int64_t_bounded_F, !dbg !7
  %42 = alloca %range_int64_t_bounded_F, !dbg !7
  %43 = alloca %range_int64_t_bounded_F*, !dbg !7
  store %range_int64_t_bounded_F* null, %range_int64_t_bounded_F** %43, !dbg !7
  %44 = alloca %range_int64_t_bounded_F, !dbg !7
  %45 = alloca %range_int64_t_bounded_F, !dbg !7
  %46 = alloca %range_int64_t_bounded_F*, !dbg !7
  store %range_int64_t_bounded_F* null, %range_int64_t_bounded_F** %46, !dbg !7
  %47 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %48 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %49 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %49, !dbg !7
  %50 = alloca %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, !dbg !7
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* null, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %50, !dbg !7
  %51 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %52 = alloca %_domain_DefaultRectangularDom_2_int64_t_F, !dbg !7
  %53 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %53, !dbg !7
  %54 = alloca %_distribution_DefaultDist, !dbg !7
  %55 = alloca %_distribution_DefaultDist, !dbg !7
  %56 = alloca %_distribution_DefaultDist*, !dbg !7
  store %_distribution_DefaultDist* null, %_distribution_DefaultDist** %56, !dbg !7
  %57 = alloca %_domain_DefaultRectangularDom_2_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* null, %_domain_DefaultRectangularDom_2_int64_t_F** %57, !dbg !7
  %58 = alloca i64, !dbg !7
  %59 = alloca i64, !dbg !7
  %60 = alloca i64, !dbg !7
  %61 = alloca i64, !dbg !7
  %62 = alloca i64, !dbg !7
  %63 = alloca i64, !dbg !7
  %64 = alloca i64, !dbg !7
  %65 = alloca i64, !dbg !7
  %66 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %66, !dbg !7
  %67 = alloca i64, !dbg !7
  %68 = alloca i64, !dbg !7
  %69 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %69, !dbg !7
  %70 = alloca i64*, !dbg !7
  store i64* null, i64** %70, !dbg !7
  %71 = alloca i64*, !dbg !7
  store i64* null, i64** %71, !dbg !7
  %72 = alloca double*, !dbg !7
  store double* null, double** %72, !dbg !7
  %73 = alloca double*, !dbg !7
  store double* null, double** %73, !dbg !7
  %74 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %74, !dbg !7
  %75 = alloca double, !dbg !7
  %76 = alloca i64, !dbg !7
  %77 = alloca i64, !dbg !7
  %78 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %78, !dbg !7
  %79 = alloca i64*, !dbg !7
  store i64* null, i64** %79, !dbg !7
  %80 = alloca i64*, !dbg !7
  store i64* null, i64** %80, !dbg !7
  %81 = alloca double*, !dbg !7
  store double* null, double** %81, !dbg !7
  %82 = alloca double*, !dbg !7
  store double* null, double** %82, !dbg !7
  %83 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %83, !dbg !7
  %84 = alloca double, !dbg !7
  %85 = alloca i64, !dbg !7
  %86 = alloca i64, !dbg !7
  %87 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %87, !dbg !7
  %88 = alloca i64*, !dbg !7
  store i64* null, i64** %88, !dbg !7
  %89 = alloca i64*, !dbg !7
  store i64* null, i64** %89, !dbg !7
  %90 = alloca double*, !dbg !7
  store double* null, double** %90, !dbg !7
  %91 = alloca double*, !dbg !7
  store double* null, double** %91, !dbg !7
  %92 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %92, !dbg !7
  %93 = alloca i64, !dbg !7
  %94 = alloca i64, !dbg !7
  %95 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %95, !dbg !7
  %96 = alloca i64*, !dbg !7
  store i64* null, i64** %96, !dbg !7
  %97 = alloca i64*, !dbg !7
  store i64* null, i64** %97, !dbg !7
  %98 = alloca double*, !dbg !7
  store double* null, double** %98, !dbg !7
  %99 = alloca double*, !dbg !7
  store double* null, double** %99, !dbg !7
  br label %100, !dbg !7

; <label>:100:                                    ; preds = %3
  store %range_int64_t_bounded_F* %8, %range_int64_t_bounded_F** %9, !dbg !7, !tbaa !17
  %101 = load %range_int64_t_bounded_F*, %range_int64_t_bounded_F** %9, !dbg !7, !tbaa !17
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %101, i64 24, i32 56), !dbg !7
  %102 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %8, !dbg !7
  store %range_int64_t_bounded_F %102, %range_int64_t_bounded_F* %7, !dbg !7
  store %range_int64_t_bounded_F* %11, %range_int64_t_bounded_F** %12, !dbg !7, !tbaa !17
  %103 = load %range_int64_t_bounded_F*, %range_int64_t_bounded_F** %12, !dbg !7, !tbaa !17
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %103, i64 24, i32 56), !dbg !7
  %104 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %11, !dbg !7
  store %range_int64_t_bounded_F %104, %range_int64_t_bounded_F* %10, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* %14, %_domain_DefaultRectangularDom_2_int64_t_F** %15, !dbg !7, !tbaa !19
  %105 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %7, !dbg !7
  %106 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %10, !dbg !7
  %107 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %15, !dbg !7, !tbaa !19
  call void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F %105, %range_int64_t_bounded_F %106, %_domain_DefaultRectangularDom_2_int64_t_F* %107, i64 24, i32 56), !dbg !7
  %108 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %14, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %108, %_domain_DefaultRectangularDom_2_int64_t_F* %13, !dbg !7
  %109 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %6, !dbg !7, !tbaa !12
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %109, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %16, !dbg !7, !tbaa !12
  store %_domain_DefaultRectangularDom_2_int64_t_F* %18, %_domain_DefaultRectangularDom_2_int64_t_F** %19, !dbg !7, !tbaa !19
  %110 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %16, !dbg !7, !tbaa !12
  %111 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %19, !dbg !7, !tbaa !19
  call void @_dom2(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %110, %_domain_DefaultRectangularDom_2_int64_t_F* %111, i64 24, i32 56), !dbg !7
  %112 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %18, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %112, %_domain_DefaultRectangularDom_2_int64_t_F* %17, !dbg !7
  store %_distribution_DefaultDist* %21, %_distribution_DefaultDist** %22, !dbg !7, !tbaa !21
  store %_domain_DefaultRectangularDom_2_int64_t_F* %13, %_domain_DefaultRectangularDom_2_int64_t_F** %23, !dbg !7, !tbaa !19
  %113 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %23, !dbg !7, !tbaa !19
  %114 = load %_distribution_DefaultDist*, %_distribution_DefaultDist** %22, !dbg !7, !tbaa !21
  call void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* %113, %_distribution_DefaultDist* %114, i64 24, i32 56), !dbg !7
  %115 = load %_distribution_DefaultDist, %_distribution_DefaultDist* %21, !dbg !7
  store %_distribution_DefaultDist %115, %_distribution_DefaultDist* %20, !dbg !7
  call void @chpl__autoDestroy(%_distribution_DefaultDist* %20, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %17, i64 24, i32 56), !dbg !7
  store %range_int64_t_bounded_F* %25, %range_int64_t_bounded_F** %26, !dbg !7, !tbaa !17
  %116 = load %range_int64_t_bounded_F*, %range_int64_t_bounded_F** %26, !dbg !7, !tbaa !17
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %116, i64 24, i32 56), !dbg !7
  %117 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %25, !dbg !7
  store %range_int64_t_bounded_F %117, %range_int64_t_bounded_F* %24, !dbg !7
  store %range_int64_t_bounded_F* %28, %range_int64_t_bounded_F** %29, !dbg !7, !tbaa !17
  %118 = load %range_int64_t_bounded_F*, %range_int64_t_bounded_F** %29, !dbg !7, !tbaa !17
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %118, i64 24, i32 56), !dbg !7
  %119 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %28, !dbg !7
  store %range_int64_t_bounded_F %119, %range_int64_t_bounded_F* %27, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* %31, %_domain_DefaultRectangularDom_2_int64_t_F** %32, !dbg !7, !tbaa !19
  %120 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %24, !dbg !7
  %121 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %27, !dbg !7
  %122 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %32, !dbg !7, !tbaa !19
  call void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F %120, %range_int64_t_bounded_F %121, %_domain_DefaultRectangularDom_2_int64_t_F* %122, i64 24, i32 56), !dbg !7
  %123 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %31, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %123, %_domain_DefaultRectangularDom_2_int64_t_F* %30, !dbg !7
  %124 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %5, !dbg !7, !tbaa !12
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %124, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %33, !dbg !7, !tbaa !12
  store %_domain_DefaultRectangularDom_2_int64_t_F* %35, %_domain_DefaultRectangularDom_2_int64_t_F** %36, !dbg !7, !tbaa !19
  %125 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %33, !dbg !7, !tbaa !12
  %126 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %36, !dbg !7, !tbaa !19
  call void @_dom2(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %125, %_domain_DefaultRectangularDom_2_int64_t_F* %126, i64 24, i32 56), !dbg !7
  %127 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %35, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %127, %_domain_DefaultRectangularDom_2_int64_t_F* %34, !dbg !7
  store %_distribution_DefaultDist* %38, %_distribution_DefaultDist** %39, !dbg !7, !tbaa !21
  store %_domain_DefaultRectangularDom_2_int64_t_F* %30, %_domain_DefaultRectangularDom_2_int64_t_F** %40, !dbg !7, !tbaa !19
  %128 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %40, !dbg !7, !tbaa !19
  %129 = load %_distribution_DefaultDist*, %_distribution_DefaultDist** %39, !dbg !7, !tbaa !21
  call void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* %128, %_distribution_DefaultDist* %129, i64 24, i32 56), !dbg !7
  %130 = load %_distribution_DefaultDist, %_distribution_DefaultDist* %38, !dbg !7
  store %_distribution_DefaultDist %130, %_distribution_DefaultDist* %37, !dbg !7
  call void @chpl__autoDestroy(%_distribution_DefaultDist* %37, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %34, i64 24, i32 56), !dbg !7
  store %range_int64_t_bounded_F* %42, %range_int64_t_bounded_F** %43, !dbg !7, !tbaa !17
  %131 = load %range_int64_t_bounded_F*, %range_int64_t_bounded_F** %43, !dbg !7, !tbaa !17
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %131, i64 24, i32 56), !dbg !7
  %132 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %42, !dbg !7
  store %range_int64_t_bounded_F %132, %range_int64_t_bounded_F* %41, !dbg !7
  store %range_int64_t_bounded_F* %45, %range_int64_t_bounded_F** %46, !dbg !7, !tbaa !17
  %133 = load %range_int64_t_bounded_F*, %range_int64_t_bounded_F** %46, !dbg !7, !tbaa !17
  call void @chpl_build_bounded_range(i64 0, i64 999, %range_int64_t_bounded_F* %133, i64 24, i32 56), !dbg !7
  %134 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %45, !dbg !7
  store %range_int64_t_bounded_F %134, %range_int64_t_bounded_F* %44, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F* %48, %_domain_DefaultRectangularDom_2_int64_t_F** %49, !dbg !7, !tbaa !19
  %135 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %41, !dbg !7
  %136 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %44, !dbg !7
  %137 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %49, !dbg !7, !tbaa !19
  call void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F %135, %range_int64_t_bounded_F %136, %_domain_DefaultRectangularDom_2_int64_t_F* %137, i64 24, i32 56), !dbg !7
  %138 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %48, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %138, %_domain_DefaultRectangularDom_2_int64_t_F* %47, !dbg !7
  %139 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %4, !dbg !7, !tbaa !12
  store %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %139, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %50, !dbg !7, !tbaa !12
  store %_domain_DefaultRectangularDom_2_int64_t_F* %52, %_domain_DefaultRectangularDom_2_int64_t_F** %53, !dbg !7, !tbaa !19
  %140 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %50, !dbg !7, !tbaa !12
  %141 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %53, !dbg !7, !tbaa !19
  call void @_dom2(%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %140, %_domain_DefaultRectangularDom_2_int64_t_F* %141, i64 24, i32 56), !dbg !7
  %142 = load %_domain_DefaultRectangularDom_2_int64_t_F, %_domain_DefaultRectangularDom_2_int64_t_F* %52, !dbg !7
  store %_domain_DefaultRectangularDom_2_int64_t_F %142, %_domain_DefaultRectangularDom_2_int64_t_F* %51, !dbg !7
  store %_distribution_DefaultDist* %55, %_distribution_DefaultDist** %56, !dbg !7, !tbaa !21
  store %_domain_DefaultRectangularDom_2_int64_t_F* %47, %_domain_DefaultRectangularDom_2_int64_t_F** %57, !dbg !7, !tbaa !19
  %143 = load %_domain_DefaultRectangularDom_2_int64_t_F*, %_domain_DefaultRectangularDom_2_int64_t_F** %57, !dbg !7, !tbaa !19
  %144 = load %_distribution_DefaultDist*, %_distribution_DefaultDist** %56, !dbg !7, !tbaa !21
  call void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* %143, %_distribution_DefaultDist* %144, i64 24, i32 56), !dbg !7
  %145 = load %_distribution_DefaultDist, %_distribution_DefaultDist* %55, !dbg !7
  store %_distribution_DefaultDist %145, %_distribution_DefaultDist* %54, !dbg !7
  call void @chpl__autoDestroy(%_distribution_DefaultDist* %54, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %51, i64 24, i32 56), !dbg !7
  store i64 999, i64* %58, !dbg !23, !tbaa !24
  %146 = bitcast i64* %58 to i8*, !dbg !23
  %147 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %146), !dbg !23
  store i64 0, i64* %59, !dbg !23, !tbaa !24
  store i64 999, i64* %60, !dbg !26, !tbaa !24
  %148 = bitcast i64* %60 to i8*, !dbg !26
  %149 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %148), !dbg !26
  br label %150, !dbg !23

; <label>:150:                                    ; preds = %100
  store i64 0, i64* %59, !dbg !23, !tbaa !24
  %151 = load i64, i64* %59, !dbg !23, !tbaa !24
  %152 = load i64, i64* %58, !dbg !23, !tbaa !24
  %153 = icmp sle i64 %151, %152, !dbg !23
  br i1 %153, label %154, label %297, !dbg !23

; <label>:154:                                    ; preds = %291, %150
  %155 = load i64, i64* %59, !dbg !23, !tbaa !24
  store i64 %155, i64* %61, !dbg !23, !tbaa !24
  %156 = bitcast i64* %61 to i8*, !dbg !23
  %157 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %156), !dbg !23
  store i64 0, i64* %62, !dbg !26, !tbaa !24
  store i64 999, i64* %63, !dbg !27, !tbaa !24
  %158 = bitcast i64* %63 to i8*, !dbg !27
  %159 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %158), !dbg !27
  br label %160, !dbg !26

; <label>:160:                                    ; preds = %154
  store i64 0, i64* %62, !dbg !26, !tbaa !24
  %161 = load i64, i64* %62, !dbg !26, !tbaa !24
  %162 = load i64, i64* %60, !dbg !26, !tbaa !24
  %163 = icmp sle i64 %161, %162, !dbg !26
  br i1 %163, label %164, label %291, !dbg !26

; <label>:164:                                    ; preds = %285, %160
  %165 = load i64, i64* %62, !dbg !26, !tbaa !24
  store i64 %165, i64* %64, !dbg !26, !tbaa !24
  %166 = bitcast i64* %64 to i8*, !dbg !26
  %167 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %166), !dbg !26
  store i64 0, i64* %65, !dbg !27, !tbaa !24
  br label %168, !dbg !27

; <label>:168:                                    ; preds = %164
  store i64 0, i64* %65, !dbg !27, !tbaa !24
  %169 = load i64, i64* %65, !dbg !27, !tbaa !24
  %170 = load i64, i64* %63, !dbg !27, !tbaa !24
  %171 = icmp sle i64 %169, %170, !dbg !27
  br i1 %171, label %172, label %285, !dbg !27

; <label>:172:                                    ; preds = %172, %168
  %173 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %6, !dbg !28, !tbaa !12
  %174 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %173, i32 0, i32 1, !dbg !28
  %175 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %174, !dbg !28, !tbaa !29
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %175, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %66, !dbg !28, !tbaa !37
  store i64 0, i64* %68, !dbg !28, !tbaa !24
  %176 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %66, !dbg !28, !tbaa !37
  %177 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %176, i32 0, i32 3, !dbg !28
  store [2 x i64]* %177, [2 x i64]** %69, !dbg !28, !tbaa !38
  store i64* %68, i64** %70, !dbg !28, !tbaa !40
  %178 = load [2 x i64]*, [2 x i64]** %69, !dbg !28, !tbaa !38
  %179 = getelementptr inbounds [2 x i64], [2 x i64]* %178, i64 0, i64 0, !dbg !28
  %180 = load i64, i64* %61, !dbg !28, !tbaa !24
  %181 = load i64, i64* %179, !dbg !28, !tbaa !24
  %182 = mul nsw i64 %180, %181, !dbg !28
  %183 = load i64*, i64** %70, !dbg !28, !tbaa !40
  %184 = load i64, i64* %183, !dbg !28, !tbaa !24
  %185 = add nsw i64 %184, %182, !dbg !28
  store i64 %185, i64* %183, !dbg !28, !tbaa !24
  store i64* %68, i64** %71, !dbg !28, !tbaa !40
  %186 = load i64*, i64** %71, !dbg !28, !tbaa !40
  %187 = load i64, i64* %64, !dbg !28, !tbaa !24
  %188 = load i64, i64* %186, !dbg !28, !tbaa !24
  %189 = add nsw i64 %188, %187, !dbg !28
  store i64 %189, i64* %186, !dbg !28, !tbaa !24
  %190 = load i64, i64* %68, !dbg !28, !tbaa !24
  store i64 %190, i64* %67, !dbg !28, !tbaa !24
  %191 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %66, !dbg !28, !tbaa !37
  %192 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %191, i32 0, i32 8, !dbg !28
  %193 = load double*, double** %192, !dbg !28, !tbaa !42
  store double* %193, double** %72, !dbg !28, !tbaa !55
  %194 = load i64, i64* %67, !dbg !28, !tbaa !24
  %195 = load double*, double** %72, !dbg !28, !tbaa !55
  %196 = getelementptr inbounds double, double* %195, i64 %194, !dbg !28
  store double* %196, double** %73, !dbg !28, !tbaa !55
  %197 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %6, !dbg !28, !tbaa !12
  %198 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %197, i32 0, i32 1, !dbg !28
  %199 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %198, !dbg !28, !tbaa !29
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %199, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %74, !dbg !28, !tbaa !37
  store i64 0, i64* %77, !dbg !28, !tbaa !24
  %200 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %74, !dbg !28, !tbaa !37
  %201 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %200, i32 0, i32 3, !dbg !28
  store [2 x i64]* %201, [2 x i64]** %78, !dbg !28, !tbaa !38
  store i64* %77, i64** %79, !dbg !28, !tbaa !40
  %202 = load [2 x i64]*, [2 x i64]** %78, !dbg !28, !tbaa !38
  %203 = getelementptr inbounds [2 x i64], [2 x i64]* %202, i64 0, i64 0, !dbg !28
  %204 = load i64, i64* %61, !dbg !28, !tbaa !24
  %205 = load i64, i64* %203, !dbg !28, !tbaa !24
  %206 = mul nsw i64 %204, %205, !dbg !28
  %207 = load i64*, i64** %79, !dbg !28, !tbaa !40
  %208 = load i64, i64* %207, !dbg !28, !tbaa !24
  %209 = add nsw i64 %208, %206, !dbg !28
  store i64 %209, i64* %207, !dbg !28, !tbaa !24
  store i64* %77, i64** %80, !dbg !28, !tbaa !40
  %210 = load i64*, i64** %80, !dbg !28, !tbaa !40
  %211 = load i64, i64* %64, !dbg !28, !tbaa !24
  %212 = load i64, i64* %210, !dbg !28, !tbaa !24
  %213 = add nsw i64 %212, %211, !dbg !28
  store i64 %213, i64* %210, !dbg !28, !tbaa !24
  %214 = load i64, i64* %77, !dbg !28, !tbaa !24
  store i64 %214, i64* %76, !dbg !28, !tbaa !24
  %215 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %74, !dbg !28, !tbaa !37
  %216 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %215, i32 0, i32 8, !dbg !28
  %217 = load double*, double** %216, !dbg !28, !tbaa !42
  store double* %217, double** %81, !dbg !28, !tbaa !55
  %218 = load i64, i64* %76, !dbg !28, !tbaa !24
  %219 = load double*, double** %81, !dbg !28, !tbaa !55
  %220 = getelementptr inbounds double, double* %219, i64 %218, !dbg !28
  store double* %220, double** %82, !dbg !28, !tbaa !55
  %221 = load double*, double** %82, !dbg !28, !tbaa !55
  %222 = load double, double* %221, !dbg !28, !tbaa !56
  store double %222, double* %75, !dbg !28, !tbaa !56
  %223 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %4, !dbg !28, !tbaa !12
  %224 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %223, i32 0, i32 1, !dbg !28
  %225 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %224, !dbg !28, !tbaa !29
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %225, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %83, !dbg !28, !tbaa !37
  store i64 0, i64* %86, !dbg !28, !tbaa !24
  %226 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %83, !dbg !28, !tbaa !37
  %227 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %226, i32 0, i32 3, !dbg !28
  store [2 x i64]* %227, [2 x i64]** %87, !dbg !28, !tbaa !38
  store i64* %86, i64** %88, !dbg !28, !tbaa !40
  %228 = load [2 x i64]*, [2 x i64]** %87, !dbg !28, !tbaa !38
  %229 = getelementptr inbounds [2 x i64], [2 x i64]* %228, i64 0, i64 0, !dbg !28
  %230 = load i64, i64* %61, !dbg !28, !tbaa !24
  %231 = load i64, i64* %229, !dbg !28, !tbaa !24
  %232 = mul nsw i64 %230, %231, !dbg !28
  %233 = load i64*, i64** %88, !dbg !28, !tbaa !40
  %234 = load i64, i64* %233, !dbg !28, !tbaa !24
  %235 = add nsw i64 %234, %232, !dbg !28
  store i64 %235, i64* %233, !dbg !28, !tbaa !24
  store i64* %86, i64** %89, !dbg !28, !tbaa !40
  %236 = load i64*, i64** %89, !dbg !28, !tbaa !40
  %237 = load i64, i64* %65, !dbg !28, !tbaa !24
  %238 = load i64, i64* %236, !dbg !28, !tbaa !24
  %239 = add nsw i64 %238, %237, !dbg !28
  store i64 %239, i64* %236, !dbg !28, !tbaa !24
  %240 = load i64, i64* %86, !dbg !28, !tbaa !24
  store i64 %240, i64* %85, !dbg !28, !tbaa !24
  %241 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %83, !dbg !28, !tbaa !37
  %242 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %241, i32 0, i32 8, !dbg !28
  %243 = load double*, double** %242, !dbg !28, !tbaa !42
  store double* %243, double** %90, !dbg !28, !tbaa !55
  %244 = load i64, i64* %85, !dbg !28, !tbaa !24
  %245 = load double*, double** %90, !dbg !28, !tbaa !55
  %246 = getelementptr inbounds double, double* %245, i64 %244, !dbg !28
  store double* %246, double** %91, !dbg !28, !tbaa !55
  %247 = load double*, double** %91, !dbg !28, !tbaa !55
  %248 = load double, double* %247, !dbg !28, !tbaa !56
  store double %248, double* %84, !dbg !28, !tbaa !56
  %249 = load %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t** %5, !dbg !28, !tbaa !12
  %250 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %249, i32 0, i32 1, !dbg !28
  %251 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %250, !dbg !28, !tbaa !29
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %251, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %92, !dbg !28, !tbaa !37
  store i64 0, i64* %94, !dbg !28, !tbaa !24
  %252 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %92, !dbg !28, !tbaa !37
  %253 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %252, i32 0, i32 3, !dbg !28
  store [2 x i64]* %253, [2 x i64]** %95, !dbg !28, !tbaa !38
  store i64* %94, i64** %96, !dbg !28, !tbaa !40
  %254 = load [2 x i64]*, [2 x i64]** %95, !dbg !28, !tbaa !38
  %255 = getelementptr inbounds [2 x i64], [2 x i64]* %254, i64 0, i64 0, !dbg !28
  %256 = load i64, i64* %65, !dbg !28, !tbaa !24
  %257 = load i64, i64* %255, !dbg !28, !tbaa !24
  %258 = mul nsw i64 %256, %257, !dbg !28
  %259 = load i64*, i64** %96, !dbg !28, !tbaa !40
  %260 = load i64, i64* %259, !dbg !28, !tbaa !24
  %261 = add nsw i64 %260, %258, !dbg !28
  store i64 %261, i64* %259, !dbg !28, !tbaa !24
  store i64* %94, i64** %97, !dbg !28, !tbaa !40
  %262 = load i64*, i64** %97, !dbg !28, !tbaa !40
  %263 = load i64, i64* %64, !dbg !28, !tbaa !24
  %264 = load i64, i64* %262, !dbg !28, !tbaa !24
  %265 = add nsw i64 %264, %263, !dbg !28
  store i64 %265, i64* %262, !dbg !28, !tbaa !24
  %266 = load i64, i64* %94, !dbg !28, !tbaa !24
  store i64 %266, i64* %93, !dbg !28, !tbaa !24
  %267 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %92, !dbg !28, !tbaa !37
  %268 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %267, i32 0, i32 8, !dbg !28
  %269 = load double*, double** %268, !dbg !28, !tbaa !42
  store double* %269, double** %98, !dbg !28, !tbaa !55
  %270 = load i64, i64* %93, !dbg !28, !tbaa !24
  %271 = load double*, double** %98, !dbg !28, !tbaa !55
  %272 = getelementptr inbounds double, double* %271, i64 %270, !dbg !28
  store double* %272, double** %99, !dbg !28, !tbaa !55
  %273 = load double*, double** %99, !dbg !28, !tbaa !55
  %274 = load double, double* %84, !dbg !28, !tbaa !56
  %275 = load double, double* %273, !dbg !28, !tbaa !56
  %276 = fmul double %274, %275, !dbg !28
  %277 = load double, double* %75, !dbg !28, !tbaa !56
  %278 = fadd double %277, %276, !dbg !28
  %279 = load double*, double** %73, !dbg !28, !tbaa !55
  store double %278, double* %279, !dbg !28, !tbaa !56
  %280 = load i64, i64* %65, !dbg !27, !tbaa !24
  %281 = add nsw i64 %280, 1, !dbg !27
  store i64 %281, i64* %65, !dbg !27, !tbaa !24
  %282 = load i64, i64* %65, !dbg !27, !tbaa !24
  %283 = load i64, i64* %63, !dbg !27, !tbaa !24
  %284 = icmp sle i64 %282, %283, !dbg !27
  br i1 %284, label %172, label %285, !dbg !27

; <label>:285:                                    ; preds = %172, %168
  %286 = load i64, i64* %62, !dbg !26, !tbaa !24
  %287 = add nsw i64 %286, 1, !dbg !26
  store i64 %287, i64* %62, !dbg !26, !tbaa !24
  %288 = load i64, i64* %62, !dbg !26, !tbaa !24
  %289 = load i64, i64* %60, !dbg !26, !tbaa !24
  %290 = icmp sle i64 %288, %289, !dbg !26
  br i1 %290, label %164, label %291, !dbg !26

; <label>:291:                                    ; preds = %285, %160
  %292 = load i64, i64* %59, !dbg !23, !tbaa !24
  %293 = add nsw i64 %292, 1, !dbg !23
  store i64 %293, i64* %59, !dbg !23, !tbaa !24
  %294 = load i64, i64* %59, !dbg !23, !tbaa !24
  %295 = load i64, i64* %58, !dbg !23, !tbaa !24
  %296 = icmp sle i64 %294, %295, !dbg !23
  br i1 %296, label %154, label %297, !dbg !23

; <label>:297:                                    ; preds = %291, %150
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %47, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %30, i64 24, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %13, i64 24, i32 56), !dbg !7
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
!12 = !{!13, !13, i64 0}
!13 = !{!"_ref__array_DefaultRectangularArr_2_int64_t_F__real64_int64_t", !14, i64 0}
!14 = !{!"C void ptr", !15, i64 0}
!15 = !{!"all unions", !16, i64 0}
!16 = !{!"Chapel types"}
!17 = !{!18, !18, i64 0}
!18 = !{!"_ref_range_int64_t_bounded_F", !14, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"_ref__domain_DefaultRectangularDom_2_int64_t_F", !14, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"_ref__distribution_DefaultDist", !14, i64 0}
!23 = !DILocation(line: 25, scope: !8)
!24 = !{!25, !25, i64 0}
!25 = !{!"int64_t", !15, i64 0}
!26 = !DILocation(line: 26, scope: !8)
!27 = !DILocation(line: 27, scope: !8)
!28 = !DILocation(line: 28, scope: !8)
!29 = !{!30, !31, i64 8}
!30 = !{!"_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t", !25, i64 0, !31, i64 8, !36, i64 16}
!31 = !{!"DefaultRectangularArr_2_int64_t_F__real64_int64_t", !32, i64 0}
!32 = !{!"BaseRectangularArr_2_int64_t_F__real64", !33, i64 0}
!33 = !{!"BaseArrOverRectangularDom_2_int64_t_F", !34, i64 0}
!34 = !{!"BaseArr", !35, i64 0}
!35 = !{!"object", !14, i64 0}
!36 = !{!"chpl_bool", !15, i64 0}
!37 = !{!31, !31, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"_ref__tuple_2_star_int64_t", !14, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"_ref_int64_t", !14, i64 0}
!42 = !{!43, !53, i64 104}
!43 = !{!"chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object", !44, i64 0, !49, i64 24, !52, i64 32, !52, i64 48, !52, i64 64, !25, i64 80, !25, i64 88, !53, i64 96, !53, i64 104, !36, i64 112, !54, i64 120}
!44 = !{!"chpl_BaseRectangularArr_2_int64_t_F__real64_object", !45, i64 0}
!45 = !{!"chpl_BaseArrOverRectangularDom_2_int64_t_F_object", !46, i64 0}
!46 = !{!"chpl_BaseArr_object", !47, i64 0, !25, i64 8, !36, i64 16}
!47 = !{!"chpl_object_object", !48, i64 0}
!48 = !{!"int32_t", !15, i64 0}
!49 = !{!"DefaultRectangularDom_2_int64_t_F", !50, i64 0}
!50 = !{!"BaseRectangularDom_2_int64_t_F", !51, i64 0}
!51 = !{!"BaseDom", !35, i64 0}
!52 = !{!"_tuple_2_star_int64_t", !15, i64 0}
!53 = !{!"_ref__real64", !14, i64 0}
!54 = !{!"range_int64_t_bounded_F", !25, i64 0, !25, i64 8}
!55 = !{!53, !53, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"_real64", !15, i64 0}
