; LLVM IR representation of m2m function after full optimization stage
; ModuleID = 'root'
source_filename = "root"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t = type { i64, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, i8 }
%chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object = type { %chpl_BaseRectangularArr_2_int64_t_F__real64_object, %chpl_DefaultRectangularDom_2_int64_t_F_object*, [2 x i64], [2 x i64], [2 x i64], i64, i64, double*, double*, i8, %range_int64_t_bounded_F }
%chpl_BaseRectangularArr_2_int64_t_F__real64_object = type { %chpl_BaseArrOverRectangularDom_2_int64_t_F_object }
%chpl_BaseArrOverRectangularDom_2_int64_t_F_object = type { %chpl_BaseArr_object }
%chpl_BaseArr_object = type { %chpl_object_object, i64, i8 }
%chpl_object_object = type { i32, i32 }
%chpl_DefaultRectangularDom_2_int64_t_F_object = type { %chpl_BaseRectangularDom_2_int64_t_F_object, %chpl_DefaultDist_object*, [2 x %range_int64_t_bounded_F] }
%chpl_BaseRectangularDom_2_int64_t_F_object = type { %chpl_BaseDom_object }
%chpl_BaseDom_object = type { %chpl_object_object, %list_BaseArr_chpl, i64, %atomicbool, i8, i64 }
%list_BaseArr_chpl = type { %chpl_listNode_BaseArr_chpl_object*, %chpl_listNode_BaseArr_chpl_object*, i64 }
%chpl_listNode_BaseArr_chpl_object = type { %chpl_object_object, %chpl_BaseArr_object*, %chpl_listNode_BaseArr_chpl_object* }
%atomicbool = type { i8 }
%chpl_DefaultDist_object = type { %chpl_BaseDist_object }
%chpl_BaseDist_object = type { %chpl_object_object, %list_BaseDom_chpl, %atomicbool, i8, i64 }
%list_BaseDom_chpl = type { %chpl_listNode_BaseDom_chpl_object*, %chpl_listNode_BaseDom_chpl_object*, i64 }
%chpl_listNode_BaseDom_chpl_object = type { %chpl_object_object, %chpl_BaseDom_object*, %chpl_listNode_BaseDom_chpl_object* }
%range_int64_t_bounded_F = type { i64, i64 }

@n_chpl = external dso_local global i64
@m_chpl = external dso_local global i64
@l_chpl = external dso_local global i64
@A_chpl = external dso_local global %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t
@B_chpl = external dso_local global %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t
@C_chpl = external dso_local global %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t

; Function Attrs: noinline
define weak dso_local void @m2m_chpl() #0 {
  %1 = alloca i64, !dbg !7
  %2 = alloca i64, !dbg !7
  %3 = alloca i64, !dbg !7
  %4 = alloca i64, !dbg !7
  %5 = alloca i64, !dbg !7
  %6 = alloca i64, !dbg !7
  %7 = alloca i64, !dbg !7
  %8 = alloca i64, !dbg !7
  %9 = alloca i64, !dbg !7
  %10 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %10, !dbg !7
  %11 = alloca double*, !dbg !7
  store double* null, double** %11, !dbg !7
  %12 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %12, !dbg !7
  %13 = alloca double*, !dbg !7
  store double* null, double** %13, !dbg !7
  %14 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %14, !dbg !7
  %15 = alloca double*, !dbg !7
  store double* null, double** %15, !dbg !7
  %16 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %16, !dbg !7
  %17 = alloca double*, !dbg !7
  store double* null, double** %17, !dbg !7
  %18 = alloca i64, !dbg !7
  %19 = alloca i64, !dbg !7
  %20 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %20, !dbg !7
  %21 = alloca i64*, !dbg !7
  store i64* null, i64** %21, !dbg !7
  %22 = alloca i64*, !dbg !7
  store i64* null, i64** %22, !dbg !7
  %23 = alloca double*, !dbg !7
  store double* null, double** %23, !dbg !7
  %24 = alloca double, !dbg !7
  %25 = alloca i64, !dbg !7
  %26 = alloca i64, !dbg !7
  %27 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %27, !dbg !7
  %28 = alloca i64*, !dbg !7
  store i64* null, i64** %28, !dbg !7
  %29 = alloca i64*, !dbg !7
  store i64* null, i64** %29, !dbg !7
  %30 = alloca double*, !dbg !7
  store double* null, double** %30, !dbg !7
  %31 = alloca double, !dbg !7
  %32 = alloca i64, !dbg !7
  %33 = alloca i64, !dbg !7
  %34 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %34, !dbg !7
  %35 = alloca i64*, !dbg !7
  store i64* null, i64** %35, !dbg !7
  %36 = alloca i64*, !dbg !7
  store i64* null, i64** %36, !dbg !7
  %37 = alloca double*, !dbg !7
  store double* null, double** %37, !dbg !7
  %38 = alloca i64, !dbg !7
  %39 = alloca i64, !dbg !7
  %40 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %40, !dbg !7
  %41 = alloca i64*, !dbg !7
  store i64* null, i64** %41, !dbg !7
  %42 = alloca i64*, !dbg !7
  store i64* null, i64** %42, !dbg !7
  %43 = alloca double*, !dbg !7
  store double* null, double** %43, !dbg !7
  br label %44, !dbg !7

; <label>:44:                                     ; preds = %0
  %45 = load i64, i64* @m_chpl, !dbg !13, !tbaa !14
  store i64 %45, i64* %1, !dbg !13, !tbaa !14
  %46 = load i64, i64* @n_chpl, !dbg !18, !tbaa !14
  store i64 %46, i64* %2, !dbg !18, !tbaa !14
  %47 = bitcast i64* %2 to i8*, !dbg !18
  %48 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %47), !dbg !18
  store i64 0, i64* %3, !dbg !18, !tbaa !14
  %49 = load i64, i64* @l_chpl, !dbg !19, !tbaa !14
  store i64 %49, i64* %4, !dbg !19, !tbaa !14
  %50 = bitcast i64* %4 to i8*, !dbg !19
  %51 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %50), !dbg !19
  br label %52, !dbg !18

; <label>:52:                                     ; preds = %44
  store i64 1, i64* %3, !dbg !18, !tbaa !14
  %53 = load i64, i64* %3, !dbg !18, !tbaa !14
  %54 = load i64, i64* %2, !dbg !18, !tbaa !14
  %55 = icmp sle i64 %53, %54, !dbg !18
  br i1 %55, label %56, label %192, !dbg !18

; <label>:56:                                     ; preds = %186, %52
  %57 = load i64, i64* %3, !dbg !18, !tbaa !14
  store i64 %57, i64* %5, !dbg !18, !tbaa !14
  %58 = bitcast i64* %5 to i8*, !dbg !18
  %59 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %58), !dbg !18
  store i64 0, i64* %6, !dbg !19, !tbaa !14
  %60 = load i64, i64* %1, !dbg !13, !tbaa !14
  store i64 %60, i64* %7, !dbg !13, !tbaa !14
  %61 = bitcast i64* %7 to i8*, !dbg !13
  %62 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %61), !dbg !13
  br label %63, !dbg !19

; <label>:63:                                     ; preds = %56
  store i64 1, i64* %6, !dbg !19, !tbaa !14
  %64 = load i64, i64* %6, !dbg !19, !tbaa !14
  %65 = load i64, i64* %4, !dbg !19, !tbaa !14
  %66 = icmp sle i64 %64, %65, !dbg !19
  br i1 %66, label %67, label %186, !dbg !19

; <label>:67:                                     ; preds = %180, %63
  %68 = load i64, i64* %6, !dbg !19, !tbaa !14
  store i64 %68, i64* %8, !dbg !19, !tbaa !14
  %69 = bitcast i64* %8 to i8*, !dbg !19
  %70 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %69), !dbg !19
  store i64 0, i64* %9, !dbg !13, !tbaa !14
  %71 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @C_chpl, i32 0, i32 1), !dbg !20, !tbaa !21
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %71, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %10, !dbg !20, !tbaa !30
  %72 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %10, !dbg !20, !tbaa !30
  %73 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %72, i32 0, i32 8, !dbg !20
  %74 = load double*, double** %73, !dbg !20, !tbaa !31
  store double* %74, double** %11, !dbg !20, !tbaa !44
  %75 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @C_chpl, i32 0, i32 1), !dbg !20, !tbaa !21
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %75, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %12, !dbg !20, !tbaa !30
  %76 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %12, !dbg !20, !tbaa !30
  %77 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %76, i32 0, i32 8, !dbg !20
  %78 = load double*, double** %77, !dbg !20, !tbaa !31
  store double* %78, double** %13, !dbg !20, !tbaa !44
  %79 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @A_chpl, i32 0, i32 1), !dbg !20, !tbaa !21
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %79, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %14, !dbg !20, !tbaa !30
  %80 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %14, !dbg !20, !tbaa !30
  %81 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %80, i32 0, i32 8, !dbg !20
  %82 = load double*, double** %81, !dbg !20, !tbaa !31
  store double* %82, double** %15, !dbg !20, !tbaa !44
  %83 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @B_chpl, i32 0, i32 1), !dbg !20, !tbaa !21
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %83, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %16, !dbg !20, !tbaa !30
  %84 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %16, !dbg !20, !tbaa !30
  %85 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %84, i32 0, i32 8, !dbg !20
  %86 = load double*, double** %85, !dbg !20, !tbaa !31
  store double* %86, double** %17, !dbg !20, !tbaa !44
  br label %87, !dbg !13

; <label>:87:                                     ; preds = %67
  store i64 1, i64* %9, !dbg !13, !tbaa !14
  %88 = load i64, i64* %9, !dbg !13, !tbaa !14
  %89 = load i64, i64* %7, !dbg !13, !tbaa !14
  %90 = icmp sle i64 %88, %89, !dbg !13
  br i1 %90, label %91, label %180, !dbg !13

; <label>:91:                                     ; preds = %91, %87
  store i64 0, i64* %19, !dbg !20, !tbaa !14
  %92 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %10, !dbg !20, !tbaa !30
  %93 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %92, i32 0, i32 3, !dbg !20
  store [2 x i64]* %93, [2 x i64]** %20, !dbg !20, !tbaa !45
  store i64* %19, i64** %21, !dbg !20, !tbaa !47
  %94 = load [2 x i64]*, [2 x i64]** %20, !dbg !20, !tbaa !45
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %94, i64 0, i64 0, !dbg !20
  %96 = load i64, i64* %5, !dbg !20, !tbaa !14
  %97 = load i64, i64* %95, !dbg !20, !tbaa !14
  %98 = mul nsw i64 %96, %97, !dbg !20
  %99 = load i64*, i64** %21, !dbg !20, !tbaa !47
  %100 = load i64, i64* %99, !dbg !20, !tbaa !14
  %101 = add nsw i64 %100, %98, !dbg !20
  store i64 %101, i64* %99, !dbg !20, !tbaa !14
  store i64* %19, i64** %22, !dbg !20, !tbaa !47
  %102 = load i64*, i64** %22, !dbg !20, !tbaa !47
  %103 = load i64, i64* %8, !dbg !20, !tbaa !14
  %104 = load i64, i64* %102, !dbg !20, !tbaa !14
  %105 = add nsw i64 %104, %103, !dbg !20
  store i64 %105, i64* %102, !dbg !20, !tbaa !14
  %106 = load i64, i64* %19, !dbg !20, !tbaa !14
  store i64 %106, i64* %18, !dbg !20, !tbaa !14
  %107 = load i64, i64* %18, !dbg !20, !tbaa !14
  %108 = load double*, double** %11, !dbg !20, !tbaa !44
  %109 = getelementptr inbounds double, double* %108, i64 %107, !dbg !20
  store double* %109, double** %23, !dbg !20, !tbaa !44
  store i64 0, i64* %26, !dbg !20, !tbaa !14
  %110 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %12, !dbg !20, !tbaa !30
  %111 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %110, i32 0, i32 3, !dbg !20
  store [2 x i64]* %111, [2 x i64]** %27, !dbg !20, !tbaa !45
  store i64* %26, i64** %28, !dbg !20, !tbaa !47
  %112 = load [2 x i64]*, [2 x i64]** %27, !dbg !20, !tbaa !45
  %113 = getelementptr inbounds [2 x i64], [2 x i64]* %112, i64 0, i64 0, !dbg !20
  %114 = load i64, i64* %5, !dbg !20, !tbaa !14
  %115 = load i64, i64* %113, !dbg !20, !tbaa !14
  %116 = mul nsw i64 %114, %115, !dbg !20
  %117 = load i64*, i64** %28, !dbg !20, !tbaa !47
  %118 = load i64, i64* %117, !dbg !20, !tbaa !14
  %119 = add nsw i64 %118, %116, !dbg !20
  store i64 %119, i64* %117, !dbg !20, !tbaa !14
  store i64* %26, i64** %29, !dbg !20, !tbaa !47
  %120 = load i64*, i64** %29, !dbg !20, !tbaa !47
  %121 = load i64, i64* %8, !dbg !20, !tbaa !14
  %122 = load i64, i64* %120, !dbg !20, !tbaa !14
  %123 = add nsw i64 %122, %121, !dbg !20
  store i64 %123, i64* %120, !dbg !20, !tbaa !14
  %124 = load i64, i64* %26, !dbg !20, !tbaa !14
  store i64 %124, i64* %25, !dbg !20, !tbaa !14
  %125 = load i64, i64* %25, !dbg !20, !tbaa !14
  %126 = load double*, double** %13, !dbg !20, !tbaa !44
  %127 = getelementptr inbounds double, double* %126, i64 %125, !dbg !20
  store double* %127, double** %30, !dbg !20, !tbaa !44
  %128 = load double*, double** %30, !dbg !20, !tbaa !44
  %129 = load double, double* %128, !dbg !20, !tbaa !49
  store double %129, double* %24, !dbg !20, !tbaa !49
  store i64 0, i64* %33, !dbg !20, !tbaa !14
  %130 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %14, !dbg !20, !tbaa !30
  %131 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %130, i32 0, i32 3, !dbg !20
  store [2 x i64]* %131, [2 x i64]** %34, !dbg !20, !tbaa !45
  store i64* %33, i64** %35, !dbg !20, !tbaa !47
  %132 = load [2 x i64]*, [2 x i64]** %34, !dbg !20, !tbaa !45
  %133 = getelementptr inbounds [2 x i64], [2 x i64]* %132, i64 0, i64 0, !dbg !20
  %134 = load i64, i64* %5, !dbg !20, !tbaa !14
  %135 = load i64, i64* %133, !dbg !20, !tbaa !14
  %136 = mul nsw i64 %134, %135, !dbg !20
  %137 = load i64*, i64** %35, !dbg !20, !tbaa !47
  %138 = load i64, i64* %137, !dbg !20, !tbaa !14
  %139 = add nsw i64 %138, %136, !dbg !20
  store i64 %139, i64* %137, !dbg !20, !tbaa !14
  store i64* %33, i64** %36, !dbg !20, !tbaa !47
  %140 = load i64*, i64** %36, !dbg !20, !tbaa !47
  %141 = load i64, i64* %9, !dbg !20, !tbaa !14
  %142 = load i64, i64* %140, !dbg !20, !tbaa !14
  %143 = add nsw i64 %142, %141, !dbg !20
  store i64 %143, i64* %140, !dbg !20, !tbaa !14
  %144 = load i64, i64* %33, !dbg !20, !tbaa !14
  store i64 %144, i64* %32, !dbg !20, !tbaa !14
  %145 = load i64, i64* %32, !dbg !20, !tbaa !14
  %146 = load double*, double** %15, !dbg !20, !tbaa !44
  %147 = getelementptr inbounds double, double* %146, i64 %145, !dbg !20
  store double* %147, double** %37, !dbg !20, !tbaa !44
  %148 = load double*, double** %37, !dbg !20, !tbaa !44
  %149 = load double, double* %148, !dbg !20, !tbaa !49
  store double %149, double* %31, !dbg !20, !tbaa !49
  store i64 0, i64* %39, !dbg !20, !tbaa !14
  %150 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %16, !dbg !20, !tbaa !30
  %151 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %150, i32 0, i32 3, !dbg !20
  store [2 x i64]* %151, [2 x i64]** %40, !dbg !20, !tbaa !45
  store i64* %39, i64** %41, !dbg !20, !tbaa !47
  %152 = load [2 x i64]*, [2 x i64]** %40, !dbg !20, !tbaa !45
  %153 = getelementptr inbounds [2 x i64], [2 x i64]* %152, i64 0, i64 0, !dbg !20
  %154 = load i64, i64* %9, !dbg !20, !tbaa !14
  %155 = load i64, i64* %153, !dbg !20, !tbaa !14
  %156 = mul nsw i64 %154, %155, !dbg !20
  %157 = load i64*, i64** %41, !dbg !20, !tbaa !47
  %158 = load i64, i64* %157, !dbg !20, !tbaa !14
  %159 = add nsw i64 %158, %156, !dbg !20
  store i64 %159, i64* %157, !dbg !20, !tbaa !14
  store i64* %39, i64** %42, !dbg !20, !tbaa !47
  %160 = load i64*, i64** %42, !dbg !20, !tbaa !47
  %161 = load i64, i64* %8, !dbg !20, !tbaa !14
  %162 = load i64, i64* %160, !dbg !20, !tbaa !14
  %163 = add nsw i64 %162, %161, !dbg !20
  store i64 %163, i64* %160, !dbg !20, !tbaa !14
  %164 = load i64, i64* %39, !dbg !20, !tbaa !14
  store i64 %164, i64* %38, !dbg !20, !tbaa !14
  %165 = load i64, i64* %38, !dbg !20, !tbaa !14
  %166 = load double*, double** %17, !dbg !20, !tbaa !44
  %167 = getelementptr inbounds double, double* %166, i64 %165, !dbg !20
  store double* %167, double** %43, !dbg !20, !tbaa !44
  %168 = load double*, double** %43, !dbg !20, !tbaa !44
  %169 = load double, double* %31, !dbg !20, !tbaa !49
  %170 = load double, double* %168, !dbg !20, !tbaa !49
  %171 = fmul double %169, %170, !dbg !20
  %172 = load double, double* %24, !dbg !20, !tbaa !49
  %173 = fadd double %172, %171, !dbg !20
  %174 = load double*, double** %23, !dbg !20, !tbaa !44
  store double %173, double* %174, !dbg !20, !tbaa !49
  %175 = load i64, i64* %9, !dbg !13, !tbaa !14
  %176 = add nsw i64 %175, 1, !dbg !13
  store i64 %176, i64* %9, !dbg !13, !tbaa !14
  %177 = load i64, i64* %9, !dbg !13, !tbaa !14
  %178 = load i64, i64* %7, !dbg !13, !tbaa !14
  %179 = icmp sle i64 %177, %178, !dbg !13
  br i1 %179, label %91, label %180, !dbg !13

; <label>:180:                                    ; preds = %91, %87
  %181 = load i64, i64* %6, !dbg !19, !tbaa !14
  %182 = add nsw i64 %181, 1, !dbg !19
  store i64 %182, i64* %6, !dbg !19, !tbaa !14
  %183 = load i64, i64* %6, !dbg !19, !tbaa !14
  %184 = load i64, i64* %4, !dbg !19, !tbaa !14
  %185 = icmp sle i64 %183, %184, !dbg !19
  br i1 %185, label %67, label %186, !dbg !19

; <label>:186:                                    ; preds = %180, %63
  %187 = load i64, i64* %3, !dbg !18, !tbaa !14
  %188 = add nsw i64 %187, 1, !dbg !18
  store i64 %188, i64* %3, !dbg !18, !tbaa !14
  %189 = load i64, i64* %3, !dbg !18, !tbaa !14
  %190 = load i64, i64* %2, !dbg !18, !tbaa !14
  %191 = icmp sle i64 %189, %190, !dbg !18
  br i1 %191, label %56, label %192, !dbg !18

; <label>:192:                                    ; preds = %186, %52
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
!1 = !DIFile(filename: "chapel_loops/affine_2mm_uneq.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!7 = !DILocation(line: 29, scope: !8)
!8 = distinct !DISubprogram(name: "m2m", linkageName: "m2m_chpl", scope: !10, file: !9, line: 29, type: !11, isLocal: true, isDefinition: true, scopeLine: 29, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "affine_2mm_uneq.chpl", directory: "chapel_loops")
!10 = !DINamespace(name: "affine_2mm_uneq", scope: !9)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocation(line: 32, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int64_t", !16, i64 0}
!16 = !{!"all unions", !17, i64 0}
!17 = !{!"Chapel types"}
!18 = !DILocation(line: 30, scope: !8)
!19 = !DILocation(line: 31, scope: !8)
!20 = !DILocation(line: 33, scope: !8)
!21 = !{!22, !23, i64 8}
!22 = !{!"_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t", !15, i64 0, !23, i64 8, !29, i64 16}
!23 = !{!"DefaultRectangularArr_2_int64_t_F__real64_int64_t", !24, i64 0}
!24 = !{!"BaseRectangularArr_2_int64_t_F__real64", !25, i64 0}
!25 = !{!"BaseArrOverRectangularDom_2_int64_t_F", !26, i64 0}
!26 = !{!"BaseArr", !27, i64 0}
!27 = !{!"object", !28, i64 0}
!28 = !{!"C void ptr", !16, i64 0}
!29 = !{!"chpl_bool", !16, i64 0}
!30 = !{!23, !23, i64 0}
!31 = !{!32, !42, i64 104}
!32 = !{!"chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object", !33, i64 0, !38, i64 24, !41, i64 32, !41, i64 48, !41, i64 64, !15, i64 80, !15, i64 88, !42, i64 96, !42, i64 104, !29, i64 112, !43, i64 120}
!33 = !{!"chpl_BaseRectangularArr_2_int64_t_F__real64_object", !34, i64 0}
!34 = !{!"chpl_BaseArrOverRectangularDom_2_int64_t_F_object", !35, i64 0}
!35 = !{!"chpl_BaseArr_object", !36, i64 0, !15, i64 8, !29, i64 16}
!36 = !{!"chpl_object_object", !37, i64 0}
!37 = !{!"int32_t", !16, i64 0}
!38 = !{!"DefaultRectangularDom_2_int64_t_F", !39, i64 0}
!39 = !{!"BaseRectangularDom_2_int64_t_F", !40, i64 0}
!40 = !{!"BaseDom", !27, i64 0}
!41 = !{!"_tuple_2_star_int64_t", !16, i64 0}
!42 = !{!"_ref__real64", !28, i64 0}
!43 = !{!"range_int64_t_bounded_F", !15, i64 0, !15, i64 8}
!44 = !{!42, !42, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"_ref__tuple_2_star_int64_t", !28, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"_ref_int64_t", !28, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"_real64", !16, i64 0}
