; LLVM IR representation of test function after full optimization stage
; ModuleID = 'root'
source_filename = "root"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%string = type { i64, i64, i8*, i8, i32 }
%chpl___RuntimeTypeInfo3 = type { %_domain_DefaultRectangularDom_1_int64_t_F }
%_domain_DefaultRectangularDom_1_int64_t_F = type { i64, %chpl_DefaultRectangularDom_1_int64_t_F_object*, i8 }
%chpl_DefaultRectangularDom_1_int64_t_F_object = type { %chpl_BaseRectangularDom_1_int64_t_F_object, %chpl_DefaultDist_object*, [1 x %range_int64_t_bounded_F] }
%chpl_BaseRectangularDom_1_int64_t_F_object = type { %chpl_BaseDom_object }
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
%range_int64_t_bounded_F = type { i64, i64 }
%_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t = type { i64, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, i8 }
%chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object = type { %chpl_BaseRectangularArr_1_int64_t_F__real64_object, %chpl_DefaultRectangularDom_1_int64_t_F_object*, [1 x i64], [1 x i64], [1 x i64], i64, i64, double*, double*, i8, %range_int64_t_bounded_F }
%chpl_BaseRectangularArr_1_int64_t_F__real64_object = type { %chpl_BaseArrOverRectangularDom_1_int64_t_F_object }
%chpl_BaseArrOverRectangularDom_1_int64_t_F_object = type { %chpl_BaseArr_object }

@_str_literal_1025 = external global %string
@n_chpl = external global i64

declare %chpl___RuntimeTypeInfo3 @chpl__buildArrayRuntimeType2(%_domain_DefaultRectangularDom_1_int64_t_F* nonnull, i64, i32)

declare void @chpl__convertRuntimeTypeToValue4(%_domain_DefaultRectangularDom_1_int64_t_F* nonnull, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* nonnull, i64, i32)

declare void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F, %_domain_DefaultRectangularDom_1_int64_t_F* nonnull, i64, i32)

declare void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_1_int64_t_F* nonnull, i64, i32)

declare void @chpl__autoDestroy3(%_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* nonnull, i64, i32)

declare void @halt(%string* nonnull, i64, i32)

declare void @chpl_build_bounded_range(i64, i64, %range_int64_t_bounded_F* nonnull, i64, i32)

declare i8 @chpl_checkIfRangeIterWillOverflow(i64, i64, i64, i64, i64, i8, i64, i32)

declare i8 @dsiMember(%chpl_DefaultRectangularDom_1_int64_t_F_object*, [1 x i64]* nonnull, i64, i32)

declare void @deinit19(%string* nonnull, i64, i32)

declare void @chpl___PLUS_(%string* nonnull, %string* nonnull, %string* nonnull, i64, i32)

declare void @_stringify_tuple_chpl([1 x i64]* nonnull, %string* nonnull, i64, i32)

; Function Attrs: noinline
define weak void @test_chpl() #0 {
  %1 = alloca %string, !dbg !7
  %2 = alloca i64, !dbg !7
  %3 = alloca %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t, !dbg !7
  %4 = alloca %range_int64_t_bounded_F, !dbg !7
  %5 = alloca %range_int64_t_bounded_F, !dbg !7
  %6 = alloca %range_int64_t_bounded_F*, !dbg !7
  store %range_int64_t_bounded_F* null, %range_int64_t_bounded_F** %6, !dbg !7
  %7 = alloca %_domain_DefaultRectangularDom_1_int64_t_F, !dbg !7
  %8 = alloca %_domain_DefaultRectangularDom_1_int64_t_F, !dbg !7
  %9 = alloca %_domain_DefaultRectangularDom_1_int64_t_F*, !dbg !7
  store %_domain_DefaultRectangularDom_1_int64_t_F* null, %_domain_DefaultRectangularDom_1_int64_t_F** %9, !dbg !7
  %10 = alloca %chpl___RuntimeTypeInfo3, !dbg !7
  %11 = alloca %_domain_DefaultRectangularDom_1_int64_t_F, !dbg !7
  %12 = alloca %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t, !dbg !7
  %13 = alloca %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t, !dbg !7
  %14 = alloca %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t*, !dbg !7
  store %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* null, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t** %14, !dbg !7
  %15 = alloca i64, !dbg !7
  %16 = alloca i64, !dbg !7
  %17 = alloca i64, !dbg !7
  %18 = alloca [1 x i64], !dbg !7
  %19 = alloca [1 x i64]*, !dbg !7
  store [1 x i64]* null, [1 x i64]** %19, !dbg !7
  %20 = alloca %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** %20, !dbg !7
  %21 = alloca i8, !dbg !7
  %22 = alloca %chpl_DefaultRectangularDom_1_int64_t_F_object*, !dbg !7
  store %chpl_DefaultRectangularDom_1_int64_t_F_object* null, %chpl_DefaultRectangularDom_1_int64_t_F_object** %22, !dbg !7
  %23 = alloca i8, !dbg !7
  %24 = alloca %string, !dbg !7
  %25 = alloca %string, !dbg !7
  %26 = alloca %string*, !dbg !7
  store %string* null, %string** %26, !dbg !7
  %27 = alloca %string, !dbg !7
  %28 = alloca %string, !dbg !7
  %29 = alloca %string*, !dbg !7
  store %string* null, %string** %29, !dbg !7
  %30 = alloca %string*, !dbg !7
  store %string* null, %string** %30, !dbg !7
  %31 = alloca %string*, !dbg !7
  store %string* null, %string** %31, !dbg !7
  %32 = alloca i64, !dbg !7
  %33 = alloca double*, !dbg !7
  store double* null, double** %33, !dbg !7
  %34 = alloca double*, !dbg !7
  store double* null, double** %34, !dbg !7
  br label %35, !dbg !7

; <label>:35:                                     ; preds = %0
  %36 = load %string, %string* @_str_literal_1025, !dbg !12
  store %string %36, %string* %1, !dbg !12
  %37 = bitcast %string* %1 to i8*, !dbg !12
  %38 = call {}* @llvm.invariant.start.p0i8(i64 32, i8* %37), !dbg !12
  %39 = load i64, i64* @n_chpl, !dbg !13, !tbaa !14
  store i64 %39, i64* %2, !dbg !13, !tbaa !14
  store %range_int64_t_bounded_F* %5, %range_int64_t_bounded_F** %6, !dbg !13, !tbaa !18
  %40 = load i64, i64* %2, !dbg !13, !tbaa !14
  %41 = load %range_int64_t_bounded_F*, %range_int64_t_bounded_F** %6, !dbg !13, !tbaa !18
  call void @chpl_build_bounded_range(i64 1, i64 %40, %range_int64_t_bounded_F* %41, i64 3, i32 54), !dbg !13
  %42 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %5, !dbg !13
  store %range_int64_t_bounded_F %42, %range_int64_t_bounded_F* %4, !dbg !13
  store %_domain_DefaultRectangularDom_1_int64_t_F* %8, %_domain_DefaultRectangularDom_1_int64_t_F** %9, !dbg !13, !tbaa !21
  %43 = load %range_int64_t_bounded_F, %range_int64_t_bounded_F* %4, !dbg !13
  %44 = load %_domain_DefaultRectangularDom_1_int64_t_F*, %_domain_DefaultRectangularDom_1_int64_t_F** %9, !dbg !13, !tbaa !21
  call void @chpl__ensureDomainExpr2(%range_int64_t_bounded_F %43, %_domain_DefaultRectangularDom_1_int64_t_F* %44, i64 3, i32 54), !dbg !13
  %45 = load %_domain_DefaultRectangularDom_1_int64_t_F, %_domain_DefaultRectangularDom_1_int64_t_F* %8, !dbg !13
  store %_domain_DefaultRectangularDom_1_int64_t_F %45, %_domain_DefaultRectangularDom_1_int64_t_F* %7, !dbg !13
  %46 = call %chpl___RuntimeTypeInfo3 @chpl__buildArrayRuntimeType2(%_domain_DefaultRectangularDom_1_int64_t_F* %7, i64 3, i32 54), !dbg !13
  store %chpl___RuntimeTypeInfo3 %46, %chpl___RuntimeTypeInfo3* %10, !dbg !13
  %47 = getelementptr inbounds %chpl___RuntimeTypeInfo3, %chpl___RuntimeTypeInfo3* %10, i32 0, i32 0, !dbg !13
  %48 = load %_domain_DefaultRectangularDom_1_int64_t_F, %_domain_DefaultRectangularDom_1_int64_t_F* %47, !dbg !13
  store %_domain_DefaultRectangularDom_1_int64_t_F %48, %_domain_DefaultRectangularDom_1_int64_t_F* %11, !dbg !13
  store %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* %13, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t** %14, !dbg !13, !tbaa !23
  %49 = load %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t*, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t** %14, !dbg !13, !tbaa !23
  call void @chpl__convertRuntimeTypeToValue4(%_domain_DefaultRectangularDom_1_int64_t_F* %11, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* %49, i64 3, i32 54), !dbg !13
  %50 = load %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* %13, !dbg !13
  store %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t %50, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* %12, !dbg !13
  %51 = load %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* %12, !dbg !13
  store %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t %51, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* %3, !dbg !13
  %52 = load i64, i64* %2, !dbg !25, !tbaa !14
  store i64 %52, i64* %15, !dbg !25, !tbaa !14
  %53 = bitcast i64* %15 to i8*, !dbg !25
  %54 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %53), !dbg !25
  %55 = load i64, i64* %15, !dbg !25, !tbaa !14
  store i64 %55, i64* %16, !dbg !25, !tbaa !14
  %56 = bitcast i64* %16 to i8*, !dbg !25
  %57 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %56), !dbg !25
  store i64 0, i64* %17, !dbg !25, !tbaa !14
  %58 = load i64, i64* %15, !dbg !25, !tbaa !14
  %59 = load i64, i64* %15, !dbg !25, !tbaa !14
  %60 = call i8 @chpl_checkIfRangeIterWillOverflow(i64 1, i64 %58, i64 1, i64 1, i64 %59, i8 1, i64 4, i32 54), !dbg !25
  br label %61, !dbg !25

; <label>:61:                                     ; preds = %35
  store i64 1, i64* %17, !dbg !25, !tbaa !14
  %62 = load i64, i64* %17, !dbg !25, !tbaa !14
  %63 = load i64, i64* %16, !dbg !25, !tbaa !14
  %64 = icmp sle i64 %62, %63, !dbg !25
  br i1 %64, label %65, label %114, !dbg !25

; <label>:65:                                     ; preds = %95, %61
  %66 = getelementptr inbounds [1 x i64], [1 x i64]* %18, i64 0, i64 0, !dbg !12
  %67 = load i64, i64* %17, !dbg !12, !tbaa !14
  store i64 %67, i64* %66, !dbg !12, !tbaa !14
  store [1 x i64]* %18, [1 x i64]** %19, !dbg !12, !tbaa !26
  %68 = getelementptr inbounds %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* %3, i32 0, i32 1, !dbg !12
  %69 = load %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** %68, !dbg !12, !tbaa !28
  store %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object* %69, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** %20, !dbg !12, !tbaa !36
  %70 = load %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** %20, !dbg !12, !tbaa !36
  %71 = bitcast %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object* %70 to i8*, !dbg !12
  call void @chpl_check_nil(i8* %71, i32 5, i32 54), !dbg !12
  %72 = load %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** %20, !dbg !12, !tbaa !36
  %73 = getelementptr inbounds %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object* %72, i32 0, i32 1, !dbg !12
  %74 = load %chpl_DefaultRectangularDom_1_int64_t_F_object*, %chpl_DefaultRectangularDom_1_int64_t_F_object** %73, !dbg !12, !tbaa !37
  store %chpl_DefaultRectangularDom_1_int64_t_F_object* %74, %chpl_DefaultRectangularDom_1_int64_t_F_object** %22, !dbg !12, !tbaa !50
  %75 = load %chpl_DefaultRectangularDom_1_int64_t_F_object*, %chpl_DefaultRectangularDom_1_int64_t_F_object** %22, !dbg !12, !tbaa !50
  %76 = bitcast %chpl_DefaultRectangularDom_1_int64_t_F_object* %75 to i8*, !dbg !12
  call void @chpl_check_nil(i8* %76, i32 5, i32 54), !dbg !12
  %77 = load %chpl_DefaultRectangularDom_1_int64_t_F_object*, %chpl_DefaultRectangularDom_1_int64_t_F_object** %22, !dbg !12, !tbaa !50
  %78 = load [1 x i64]*, [1 x i64]** %19, !dbg !12, !tbaa !26
  %79 = call i8 @dsiMember(%chpl_DefaultRectangularDom_1_int64_t_F_object* %77, [1 x i64]* %78, i64 5, i32 54), !dbg !12
  store i8 %79, i8* %21, !dbg !12, !tbaa !51
  %80 = load i8, i8* %21, !dbg !12, !tbaa !51
  %81 = icmp eq i8 %80, 0, !dbg !12
  %82 = zext i1 %81 to i8, !dbg !12
  store i8 %82, i8* %23, !dbg !12, !tbaa !51
  br label %83, !dbg !12

; <label>:83:                                     ; preds = %65
  %84 = load i8, i8* %23, !dbg !12, !tbaa !51
  %85 = icmp ne i8 %84, 0, !dbg !12
  br i1 %85, label %86, label %95, !dbg !12

; <label>:86:                                     ; preds = %83
  br label %87, !dbg !12

; <label>:87:                                     ; preds = %86
  store %string* %25, %string** %26, !dbg !12, !tbaa !52
  %88 = load [1 x i64]*, [1 x i64]** %19, !dbg !12, !tbaa !26
  %89 = load %string*, %string** %26, !dbg !12, !tbaa !52
  call void @_stringify_tuple_chpl([1 x i64]* %88, %string* %89, i64 5, i32 54), !dbg !12
  %90 = load %string, %string* %25, !dbg !12
  store %string %90, %string* %24, !dbg !12
  store %string* %28, %string** %29, !dbg !12, !tbaa !52
  %91 = load %string*, %string** %29, !dbg !12, !tbaa !52
  call void @chpl___PLUS_(%string* %1, %string* %24, %string* %91, i64 5, i32 54), !dbg !12
  %92 = load %string, %string* %28, !dbg !12
  store %string %92, %string* %27, !dbg !12
  call void @halt(%string* %27, i64 5, i32 54), !dbg !12
  store %string* %27, %string** %30, !dbg !12, !tbaa !52
  %93 = load %string*, %string** %30, !dbg !12, !tbaa !52
  call void @deinit19(%string* %93, i64 5, i32 54), !dbg !12
  store %string* %24, %string** %31, !dbg !12, !tbaa !52
  %94 = load %string*, %string** %31, !dbg !12, !tbaa !52
  call void @deinit19(%string* %94, i64 5, i32 54), !dbg !12
  br label %95, !dbg !12

; <label>:95:                                     ; preds = %87, %83
  %96 = getelementptr inbounds [1 x i64], [1 x i64]* %18, i64 0, i64 0, !dbg !12
  %97 = load i64, i64* %96, !dbg !12, !tbaa !14
  store i64 %97, i64* %32, !dbg !12, !tbaa !14
  %98 = load %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** %20, !dbg !12, !tbaa !36
  %99 = bitcast %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object* %98 to i8*, !dbg !12
  call void @chpl_check_nil(i8* %99, i32 5, i32 54), !dbg !12
  %100 = load %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** %20, !dbg !12, !tbaa !36
  %101 = getelementptr inbounds %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object* %100, i32 0, i32 8, !dbg !12
  %102 = load double*, double** %101, !dbg !12, !tbaa !54
  store double* %102, double** %33, !dbg !12, !tbaa !55
  %103 = load i64, i64* %32, !dbg !12, !tbaa !14
  %104 = load double*, double** %33, !dbg !12, !tbaa !55
  %105 = getelementptr inbounds double, double* %104, i64 %103, !dbg !12
  store double* %105, double** %34, !dbg !12, !tbaa !55
  %106 = load i64, i64* %17, !dbg !12, !tbaa !14
  %107 = sitofp i64 %106 to double, !dbg !12
  %108 = load double*, double** %34, !dbg !12, !tbaa !55
  store double %107, double* %108, !dbg !12, !tbaa !56
  %109 = load i64, i64* %17, !dbg !25, !tbaa !14
  %110 = add nsw i64 %109, 1, !dbg !25
  store i64 %110, i64* %17, !dbg !25, !tbaa !14
  %111 = load i64, i64* %17, !dbg !25, !tbaa !14
  %112 = load i64, i64* %16, !dbg !25, !tbaa !14
  %113 = icmp sle i64 %111, %112, !dbg !25
  br i1 %113, label %65, label %114, !dbg !25

; <label>:114:                                    ; preds = %95, %61
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_1_int64_t_F* %7, i64 3, i32 54), !dbg !13
  call void @chpl__autoDestroy3(%_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* %3, i64 3, i32 54), !dbg !13
  ret void, !dbg !7
}

; Function Attrs: argmemonly nounwind
declare {}* @llvm.invariant.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @chpl_check_nil(i8*, i32, i32) #2

attributes #0 = { noinline }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Chapel version 1.17.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "affine_loop.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!7 = !DILocation(line: 2, scope: !8)
!8 = distinct !DISubprogram(name: "test", linkageName: "test_chpl", scope: !9, file: !1, line: 2, type: !10, isLocal: true, isDefinition: true, scopeLine: 2, isOptimized: false, unit: !0, variables: !2)
!9 = !DINamespace(name: "affine_loop", scope: !1)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocation(line: 5, scope: !8)
!13 = !DILocation(line: 3, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int64_t", !16, i64 0}
!16 = !{!"all unions", !17, i64 0}
!17 = !{!"Chapel types"}
!18 = !{!19, !19, i64 0}
!19 = !{!"_ref_range_int64_t_bounded_F", !20, i64 0}
!20 = !{!"C void ptr", !16, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"_ref__domain_DefaultRectangularDom_1_int64_t_F", !20, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"_ref__array_DefaultRectangularArr_1_int64_t_F__real64_int64_t", !20, i64 0}
!25 = !DILocation(line: 4, scope: !8)
!26 = !{!27, !27, i64 0}
!27 = !{!"_ref__tuple_1_star_int64_t", !20, i64 0}
!28 = !{!29, !30, i64 8}
!29 = !{!"_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t", !15, i64 0, !30, i64 8, !35, i64 16}
!30 = !{!"DefaultRectangularArr_1_int64_t_F__real64_int64_t", !31, i64 0}
!31 = !{!"BaseRectangularArr_1_int64_t_F__real64", !32, i64 0}
!32 = !{!"BaseArrOverRectangularDom_1_int64_t_F", !33, i64 0}
!33 = !{!"BaseArr", !34, i64 0}
!34 = !{!"object", !20, i64 0}
!35 = !{!"chpl_bool", !16, i64 0}
!36 = !{!30, !30, i64 0}
!37 = !{!38, !44, i64 24}
!38 = !{!"chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object", !39, i64 0, !44, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !15, i64 56, !15, i64 64, !48, i64 72, !48, i64 80, !35, i64 88, !49, i64 96}
!39 = !{!"chpl_BaseRectangularArr_1_int64_t_F__real64_object", !40, i64 0}
!40 = !{!"chpl_BaseArrOverRectangularDom_1_int64_t_F_object", !41, i64 0}
!41 = !{!"chpl_BaseArr_object", !42, i64 0, !15, i64 8, !35, i64 16}
!42 = !{!"chpl_object_object", !43, i64 0}
!43 = !{!"int32_t", !16, i64 0}
!44 = !{!"DefaultRectangularDom_1_int64_t_F", !45, i64 0}
!45 = !{!"BaseRectangularDom_1_int64_t_F", !46, i64 0}
!46 = !{!"BaseDom", !34, i64 0}
!47 = !{!"_tuple_1_star_int64_t", !16, i64 0}
!48 = !{!"_ref__real64", !20, i64 0}
!49 = !{!"range_int64_t_bounded_F", !15, i64 0, !15, i64 8}
!50 = !{!44, !44, i64 0}
!51 = !{!35, !35, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"_ref_string", !20, i64 0}
!54 = !{!38, !48, i64 80}
!55 = !{!48, !48, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"_real64", !16, i64 0}
