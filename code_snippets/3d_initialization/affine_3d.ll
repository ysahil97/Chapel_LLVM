; LLVM IR representation of test function after full optimization stage
; ModuleID = 'root'
source_filename = "root"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_array_DefaultRectangularArr_3_int64_t_F__real64_int64_t = type { i64, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object*, i8 }
%chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object = type { %chpl_BaseRectangularArr_3_int64_t_F__real64_object, %chpl_DefaultRectangularDom_3_int64_t_F_object*, [3 x i64], [3 x i64], [3 x i64], i64, i64, double*, double*, i8, %range_int64_t_bounded_F }
%chpl_BaseRectangularArr_3_int64_t_F__real64_object = type { %chpl_BaseArrOverRectangularDom_3_int64_t_F_object }
%chpl_BaseArrOverRectangularDom_3_int64_t_F_object = type { %chpl_BaseArr_object }
%chpl_BaseArr_object = type { %chpl_object_object, i64, i8 }
%chpl_object_object = type { i32, i32 }
%chpl_DefaultRectangularDom_3_int64_t_F_object = type { %chpl_BaseRectangularDom_3_int64_t_F_object, %chpl_DefaultDist_object*, [3 x %range_int64_t_bounded_F] }
%chpl_BaseRectangularDom_3_int64_t_F_object = type { %chpl_BaseDom_object }
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
@A_chpl = external dso_local global %_array_DefaultRectangularArr_3_int64_t_F__real64_int64_t

; Function Attrs: noinline
define weak dso_local void @test_chpl() #0 {
  %1 = alloca i64, !dbg !7
  %2 = alloca i64, !dbg !7
  %3 = alloca i64, !dbg !7
  %4 = alloca i64, !dbg !7
  %5 = alloca i64, !dbg !7
  %6 = alloca i64, !dbg !7
  %7 = alloca i64, !dbg !7
  %8 = alloca i64, !dbg !7
  %9 = alloca i64, !dbg !7
  %10 = alloca %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object** %10, !dbg !7
  %11 = alloca double*, !dbg !7
  store double* null, double** %11, !dbg !7
  %12 = alloca i64, !dbg !7
  %13 = alloca i64, !dbg !7
  %14 = alloca i64, !dbg !7
  %15 = alloca [3 x i64]*, !dbg !7
  store [3 x i64]* null, [3 x i64]** %15, !dbg !7
  %16 = alloca i64*, !dbg !7
  store i64* null, i64** %16, !dbg !7
  %17 = alloca [3 x i64]*, !dbg !7
  store [3 x i64]* null, [3 x i64]** %17, !dbg !7
  %18 = alloca i64*, !dbg !7
  store i64* null, i64** %18, !dbg !7
  %19 = alloca i64*, !dbg !7
  store i64* null, i64** %19, !dbg !7
  %20 = alloca double*, !dbg !7
  store double* null, double** %20, !dbg !7
  br label %21, !dbg !7

; <label>:21:                                     ; preds = %0
  %22 = load i64, i64* @n_chpl, !dbg !13, !tbaa !14
  store i64 %22, i64* %1, !dbg !13, !tbaa !14
  %23 = load i64, i64* %1, !dbg !13, !tbaa !14
  store i64 %23, i64* %2, !dbg !13, !tbaa !14
  %24 = bitcast i64* %2 to i8*, !dbg !13
  %25 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %24), !dbg !13
  store i64 0, i64* %3, !dbg !13, !tbaa !14
  %26 = load i64, i64* %1, !dbg !18, !tbaa !14
  store i64 %26, i64* %4, !dbg !18, !tbaa !14
  %27 = bitcast i64* %4 to i8*, !dbg !18
  %28 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %27), !dbg !18
  br label %29, !dbg !13

; <label>:29:                                     ; preds = %21
  store i64 1, i64* %3, !dbg !13, !tbaa !14
  %30 = load i64, i64* %3, !dbg !13, !tbaa !14
  %31 = load i64, i64* %2, !dbg !13, !tbaa !14
  %32 = icmp sle i64 %30, %31, !dbg !13
  br i1 %32, label %33, label %110, !dbg !13

; <label>:33:                                     ; preds = %104, %29
  %34 = load i64, i64* %3, !dbg !13, !tbaa !14
  store i64 %34, i64* %5, !dbg !13, !tbaa !14
  %35 = bitcast i64* %5 to i8*, !dbg !13
  %36 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %35), !dbg !13
  store i64 0, i64* %6, !dbg !18, !tbaa !14
  %37 = load i64, i64* %1, !dbg !19, !tbaa !14
  store i64 %37, i64* %7, !dbg !19, !tbaa !14
  %38 = bitcast i64* %7 to i8*, !dbg !19
  %39 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %38), !dbg !19
  br label %40, !dbg !18

; <label>:40:                                     ; preds = %33
  store i64 1, i64* %6, !dbg !18, !tbaa !14
  %41 = load i64, i64* %6, !dbg !18, !tbaa !14
  %42 = load i64, i64* %4, !dbg !18, !tbaa !14
  %43 = icmp sle i64 %41, %42, !dbg !18
  br i1 %43, label %44, label %104, !dbg !18

; <label>:44:                                     ; preds = %98, %40
  %45 = load i64, i64* %6, !dbg !18, !tbaa !14
  store i64 %45, i64* %8, !dbg !18, !tbaa !14
  %46 = bitcast i64* %8 to i8*, !dbg !18
  %47 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %46), !dbg !18
  store i64 0, i64* %9, !dbg !19, !tbaa !14
  %48 = load %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_3_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_3_int64_t_F__real64_int64_t* @A_chpl, i32 0, i32 1), !dbg !20, !tbaa !21
  store %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object* %48, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object** %10, !dbg !20, !tbaa !30
  %49 = load %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object** %10, !dbg !20, !tbaa !30
  %50 = getelementptr inbounds %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object* %49, i32 0, i32 8, !dbg !20
  %51 = load double*, double** %50, !dbg !20, !tbaa !31
  store double* %51, double** %11, !dbg !20, !tbaa !44
  %52 = load i64, i64* %5, !dbg !20, !tbaa !14
  %53 = load i64, i64* %8, !dbg !20, !tbaa !14
  %54 = add nsw i64 %52, %53, !dbg !20
  store i64 %54, i64* %12, !dbg !20, !tbaa !14
  br label %55, !dbg !19

; <label>:55:                                     ; preds = %44
  store i64 1, i64* %9, !dbg !19, !tbaa !14
  %56 = load i64, i64* %9, !dbg !19, !tbaa !14
  %57 = load i64, i64* %7, !dbg !19, !tbaa !14
  %58 = icmp sle i64 %56, %57, !dbg !19
  br i1 %58, label %59, label %98, !dbg !19

; <label>:59:                                     ; preds = %59, %55
  store i64 0, i64* %14, !dbg !20, !tbaa !14
  %60 = load %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object** %10, !dbg !20, !tbaa !30
  %61 = getelementptr inbounds %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object* %60, i32 0, i32 3, !dbg !20
  store [3 x i64]* %61, [3 x i64]** %15, !dbg !20, !tbaa !45
  store i64* %14, i64** %16, !dbg !20, !tbaa !47
  %62 = load [3 x i64]*, [3 x i64]** %15, !dbg !20, !tbaa !45
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %62, i64 0, i64 0, !dbg !20
  %64 = load i64, i64* %5, !dbg !20, !tbaa !14
  %65 = load i64, i64* %63, !dbg !20, !tbaa !14
  %66 = mul nsw i64 %64, %65, !dbg !20
  %67 = load i64*, i64** %16, !dbg !20, !tbaa !47
  %68 = load i64, i64* %67, !dbg !20, !tbaa !14
  %69 = add nsw i64 %68, %66, !dbg !20
  store i64 %69, i64* %67, !dbg !20, !tbaa !14
  %70 = load %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object** %10, !dbg !20, !tbaa !30
  %71 = getelementptr inbounds %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object* %70, i32 0, i32 3, !dbg !20
  store [3 x i64]* %71, [3 x i64]** %17, !dbg !20, !tbaa !45
  store i64* %14, i64** %18, !dbg !20, !tbaa !47
  %72 = load [3 x i64]*, [3 x i64]** %17, !dbg !20, !tbaa !45
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* %72, i64 0, i64 1, !dbg !20
  %74 = load i64, i64* %8, !dbg !20, !tbaa !14
  %75 = load i64, i64* %73, !dbg !20, !tbaa !14
  %76 = mul nsw i64 %74, %75, !dbg !20
  %77 = load i64*, i64** %18, !dbg !20, !tbaa !47
  %78 = load i64, i64* %77, !dbg !20, !tbaa !14
  %79 = add nsw i64 %78, %76, !dbg !20
  store i64 %79, i64* %77, !dbg !20, !tbaa !14
  store i64* %14, i64** %19, !dbg !20, !tbaa !47
  %80 = load i64*, i64** %19, !dbg !20, !tbaa !47
  %81 = load i64, i64* %9, !dbg !20, !tbaa !14
  %82 = load i64, i64* %80, !dbg !20, !tbaa !14
  %83 = add nsw i64 %82, %81, !dbg !20
  store i64 %83, i64* %80, !dbg !20, !tbaa !14
  %84 = load i64, i64* %14, !dbg !20, !tbaa !14
  store i64 %84, i64* %13, !dbg !20, !tbaa !14
  %85 = load i64, i64* %13, !dbg !20, !tbaa !14
  %86 = load double*, double** %11, !dbg !20, !tbaa !44
  %87 = getelementptr inbounds double, double* %86, i64 %85, !dbg !20
  store double* %87, double** %20, !dbg !20, !tbaa !44
  %88 = load i64, i64* %12, !dbg !20, !tbaa !14
  %89 = load i64, i64* %9, !dbg !20, !tbaa !14
  %90 = add nsw i64 %88, %89, !dbg !20
  %91 = sitofp i64 %90 to double, !dbg !20
  %92 = load double*, double** %20, !dbg !20, !tbaa !44
  store double %91, double* %92, !dbg !20, !tbaa !49
  %93 = load i64, i64* %9, !dbg !19, !tbaa !14
  %94 = add nsw i64 %93, 1, !dbg !19
  store i64 %94, i64* %9, !dbg !19, !tbaa !14
  %95 = load i64, i64* %9, !dbg !19, !tbaa !14
  %96 = load i64, i64* %7, !dbg !19, !tbaa !14
  %97 = icmp sle i64 %95, %96, !dbg !19
  br i1 %97, label %59, label %98, !dbg !19

; <label>:98:                                     ; preds = %59, %55
  %99 = load i64, i64* %6, !dbg !18, !tbaa !14
  %100 = add nsw i64 %99, 1, !dbg !18
  store i64 %100, i64* %6, !dbg !18, !tbaa !14
  %101 = load i64, i64* %6, !dbg !18, !tbaa !14
  %102 = load i64, i64* %4, !dbg !18, !tbaa !14
  %103 = icmp sle i64 %101, %102, !dbg !18
  br i1 %103, label %44, label %104, !dbg !18

; <label>:104:                                    ; preds = %98, %40
  %105 = load i64, i64* %3, !dbg !13, !tbaa !14
  %106 = add nsw i64 %105, 1, !dbg !13
  store i64 %106, i64* %3, !dbg !13, !tbaa !14
  %107 = load i64, i64* %3, !dbg !13, !tbaa !14
  %108 = load i64, i64* %2, !dbg !13, !tbaa !14
  %109 = icmp sle i64 %107, %108, !dbg !13
  br i1 %109, label %33, label %110, !dbg !13

; <label>:110:                                    ; preds = %104, %29
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
!1 = !DIFile(filename: "chapel_loops/affine_3d.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!7 = !DILocation(line: 5, scope: !8)
!8 = distinct !DISubprogram(name: "test", linkageName: "test_chpl", scope: !10, file: !9, line: 5, type: !11, isLocal: true, isDefinition: true, scopeLine: 5, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "affine_3d.chpl", directory: "chapel_loops")
!10 = !DINamespace(name: "affine_3d", scope: !9)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocation(line: 6, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int64_t", !16, i64 0}
!16 = !{!"all unions", !17, i64 0}
!17 = !{!"Chapel types"}
!18 = !DILocation(line: 7, scope: !8)
!19 = !DILocation(line: 8, scope: !8)
!20 = !DILocation(line: 9, scope: !8)
!21 = !{!22, !23, i64 8}
!22 = !{!"_array_DefaultRectangularArr_3_int64_t_F__real64_int64_t", !15, i64 0, !23, i64 8, !29, i64 16}
!23 = !{!"DefaultRectangularArr_3_int64_t_F__real64_int64_t", !24, i64 0}
!24 = !{!"BaseRectangularArr_3_int64_t_F__real64", !25, i64 0}
!25 = !{!"BaseArrOverRectangularDom_3_int64_t_F", !26, i64 0}
!26 = !{!"BaseArr", !27, i64 0}
!27 = !{!"object", !28, i64 0}
!28 = !{!"C void ptr", !16, i64 0}
!29 = !{!"chpl_bool", !16, i64 0}
!30 = !{!23, !23, i64 0}
!31 = !{!32, !42, i64 128}
!32 = !{!"chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object", !33, i64 0, !38, i64 24, !41, i64 32, !41, i64 56, !41, i64 80, !15, i64 104, !15, i64 112, !42, i64 120, !42, i64 128, !29, i64 136, !43, i64 144}
!33 = !{!"chpl_BaseRectangularArr_3_int64_t_F__real64_object", !34, i64 0}
!34 = !{!"chpl_BaseArrOverRectangularDom_3_int64_t_F_object", !35, i64 0}
!35 = !{!"chpl_BaseArr_object", !36, i64 0, !15, i64 8, !29, i64 16}
!36 = !{!"chpl_object_object", !37, i64 0}
!37 = !{!"int32_t", !16, i64 0}
!38 = !{!"DefaultRectangularDom_3_int64_t_F", !39, i64 0}
!39 = !{!"BaseRectangularDom_3_int64_t_F", !40, i64 0}
!40 = !{!"BaseDom", !27, i64 0}
!41 = !{!"_tuple_3_star_int64_t", !16, i64 0}
!42 = !{!"_ref__real64", !28, i64 0}
!43 = !{!"range_int64_t_bounded_F", !15, i64 0, !15, i64 8}
!44 = !{!42, !42, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"_ref__tuple_3_star_int64_t", !28, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"_ref_int64_t", !28, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"_real64", !16, i64 0}
