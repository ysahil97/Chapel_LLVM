; LLVM IR representation of test function after full optimization stage
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
@A_chpl = external dso_local global %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t

; Function Attrs: noinline
define weak dso_local void @test_chpl() #0 {
  %1 = alloca i64, !dbg !7
  %2 = alloca i64, !dbg !7
  %3 = alloca i64, !dbg !7
  %4 = alloca i64, !dbg !7
  %5 = alloca i64, !dbg !7
  %6 = alloca i64, !dbg !7
  %7 = alloca %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, !dbg !7
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* null, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %7, !dbg !7
  %8 = alloca double*, !dbg !7
  store double* null, double** %8, !dbg !7
  %9 = alloca i64, !dbg !7
  %10 = alloca i64, !dbg !7
  %11 = alloca i64, !dbg !7
  %12 = alloca [2 x i64]*, !dbg !7
  store [2 x i64]* null, [2 x i64]** %12, !dbg !7
  %13 = alloca i64*, !dbg !7
  store i64* null, i64** %13, !dbg !7
  %14 = alloca i64*, !dbg !7
  store i64* null, i64** %14, !dbg !7
  %15 = alloca double*, !dbg !7
  store double* null, double** %15, !dbg !7
  br label %16, !dbg !7

; <label>:16:                                     ; preds = %0
  %17 = load i64, i64* @n_chpl, !dbg !13, !tbaa !14
  store i64 %17, i64* %1, !dbg !13, !tbaa !14
  %18 = load i64, i64* %1, !dbg !13, !tbaa !14
  store i64 %18, i64* %2, !dbg !13, !tbaa !14
  %19 = bitcast i64* %2 to i8*, !dbg !13
  %20 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %19), !dbg !13
  store i64 0, i64* %3, !dbg !13, !tbaa !14
  %21 = load i64, i64* %1, !dbg !18, !tbaa !14
  store i64 %21, i64* %4, !dbg !18, !tbaa !14
  %22 = bitcast i64* %4 to i8*, !dbg !18
  %23 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %22), !dbg !18
  br label %24, !dbg !13

; <label>:24:                                     ; preds = %16
  store i64 1, i64* %3, !dbg !13, !tbaa !14
  %25 = load i64, i64* %3, !dbg !13, !tbaa !14
  %26 = load i64, i64* %2, !dbg !13, !tbaa !14
  %27 = icmp sle i64 %25, %26, !dbg !13
  br i1 %27, label %28, label %78, !dbg !13

; <label>:28:                                     ; preds = %72, %24
  %29 = load i64, i64* %3, !dbg !13, !tbaa !14
  store i64 %29, i64* %5, !dbg !13, !tbaa !14
  %30 = bitcast i64* %5 to i8*, !dbg !13
  %31 = call {}* @llvm.invariant.start.p0i8(i64 8, i8* %30), !dbg !13
  store i64 0, i64* %6, !dbg !18, !tbaa !14
  %32 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @A_chpl, i32 0, i32 1), !dbg !19, !tbaa !20
  store %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %32, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %7, !dbg !19, !tbaa !29
  %33 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %7, !dbg !19, !tbaa !29
  %34 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %33, i32 0, i32 8, !dbg !19
  %35 = load double*, double** %34, !dbg !19, !tbaa !30
  store double* %35, double** %8, !dbg !19, !tbaa !43
  %36 = load i64, i64* %5, !dbg !19, !tbaa !14
  %37 = mul nsw i64 %36, 4, !dbg !19
  store i64 %37, i64* %9, !dbg !19, !tbaa !14
  br label %38, !dbg !18

; <label>:38:                                     ; preds = %28
  store i64 1, i64* %6, !dbg !18, !tbaa !14
  %39 = load i64, i64* %6, !dbg !18, !tbaa !14
  %40 = load i64, i64* %4, !dbg !18, !tbaa !14
  %41 = icmp sle i64 %39, %40, !dbg !18
  br i1 %41, label %42, label %72, !dbg !18

; <label>:42:                                     ; preds = %42, %38
  store i64 0, i64* %11, !dbg !19, !tbaa !14
  %43 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %7, !dbg !19, !tbaa !29
  %44 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %43, i32 0, i32 3, !dbg !19
  store [2 x i64]* %44, [2 x i64]** %12, !dbg !19, !tbaa !44
  store i64* %11, i64** %13, !dbg !19, !tbaa !46
  %45 = load [2 x i64]*, [2 x i64]** %12, !dbg !19, !tbaa !44
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %45, i64 0, i64 0, !dbg !19
  %47 = load i64, i64* %5, !dbg !19, !tbaa !14
  %48 = load i64, i64* %46, !dbg !19, !tbaa !14
  %49 = mul nsw i64 %47, %48, !dbg !19
  %50 = load i64*, i64** %13, !dbg !19, !tbaa !46
  %51 = load i64, i64* %50, !dbg !19, !tbaa !14
  %52 = add nsw i64 %51, %49, !dbg !19
  store i64 %52, i64* %50, !dbg !19, !tbaa !14
  store i64* %11, i64** %14, !dbg !19, !tbaa !46
  %53 = load i64*, i64** %14, !dbg !19, !tbaa !46
  %54 = load i64, i64* %6, !dbg !19, !tbaa !14
  %55 = load i64, i64* %53, !dbg !19, !tbaa !14
  %56 = add nsw i64 %55, %54, !dbg !19
  store i64 %56, i64* %53, !dbg !19, !tbaa !14
  %57 = load i64, i64* %11, !dbg !19, !tbaa !14
  store i64 %57, i64* %10, !dbg !19, !tbaa !14
  %58 = load i64, i64* %10, !dbg !19, !tbaa !14
  %59 = load double*, double** %8, !dbg !19, !tbaa !43
  %60 = getelementptr inbounds double, double* %59, i64 %58, !dbg !19
  store double* %60, double** %15, !dbg !19, !tbaa !43
  %61 = load i64, i64* %9, !dbg !19, !tbaa !14
  %62 = load i64, i64* %6, !dbg !19, !tbaa !14
  %63 = add nsw i64 %61, %62, !dbg !19
  %64 = add nsw i64 %63, 6, !dbg !19
  %65 = sitofp i64 %64 to double, !dbg !19
  %66 = load double*, double** %15, !dbg !19, !tbaa !43
  store double %65, double* %66, !dbg !19, !tbaa !48
  %67 = load i64, i64* %6, !dbg !18, !tbaa !14
  %68 = add nsw i64 %67, 1, !dbg !18
  store i64 %68, i64* %6, !dbg !18, !tbaa !14
  %69 = load i64, i64* %6, !dbg !18, !tbaa !14
  %70 = load i64, i64* %4, !dbg !18, !tbaa !14
  %71 = icmp sle i64 %69, %70, !dbg !18
  br i1 %71, label %42, label %72, !dbg !18

; <label>:72:                                     ; preds = %42, %38
  %73 = load i64, i64* %3, !dbg !13, !tbaa !14
  %74 = add nsw i64 %73, 1, !dbg !13
  store i64 %74, i64* %3, !dbg !13, !tbaa !14
  %75 = load i64, i64* %3, !dbg !13, !tbaa !14
  %76 = load i64, i64* %2, !dbg !13, !tbaa !14
  %77 = icmp sle i64 %75, %76, !dbg !13
  br i1 %77, label %28, label %78, !dbg !13

; <label>:78:                                     ; preds = %72, %24
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
!1 = !DIFile(filename: "chapel_loops/affine_2d.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!7 = !DILocation(line: 5, scope: !8)
!8 = distinct !DISubprogram(name: "test", linkageName: "test_chpl", scope: !10, file: !9, line: 5, type: !11, isLocal: true, isDefinition: true, scopeLine: 5, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "affine_2d.chpl", directory: "chapel_loops")
!10 = !DINamespace(name: "affine_2d", scope: !9)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocation(line: 6, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int64_t", !16, i64 0}
!16 = !{!"all unions", !17, i64 0}
!17 = !{!"Chapel types"}
!18 = !DILocation(line: 7, scope: !8)
!19 = !DILocation(line: 8, scope: !8)
!20 = !{!21, !22, i64 8}
!21 = !{!"_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t", !15, i64 0, !22, i64 8, !28, i64 16}
!22 = !{!"DefaultRectangularArr_2_int64_t_F__real64_int64_t", !23, i64 0}
!23 = !{!"BaseRectangularArr_2_int64_t_F__real64", !24, i64 0}
!24 = !{!"BaseArrOverRectangularDom_2_int64_t_F", !25, i64 0}
!25 = !{!"BaseArr", !26, i64 0}
!26 = !{!"object", !27, i64 0}
!27 = !{!"C void ptr", !16, i64 0}
!28 = !{!"chpl_bool", !16, i64 0}
!29 = !{!22, !22, i64 0}
!30 = !{!31, !41, i64 104}
!31 = !{!"chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object", !32, i64 0, !37, i64 24, !40, i64 32, !40, i64 48, !40, i64 64, !15, i64 80, !15, i64 88, !41, i64 96, !41, i64 104, !28, i64 112, !42, i64 120}
!32 = !{!"chpl_BaseRectangularArr_2_int64_t_F__real64_object", !33, i64 0}
!33 = !{!"chpl_BaseArrOverRectangularDom_2_int64_t_F_object", !34, i64 0}
!34 = !{!"chpl_BaseArr_object", !35, i64 0, !15, i64 8, !28, i64 16}
!35 = !{!"chpl_object_object", !36, i64 0}
!36 = !{!"int32_t", !16, i64 0}
!37 = !{!"DefaultRectangularDom_2_int64_t_F", !38, i64 0}
!38 = !{!"BaseRectangularDom_2_int64_t_F", !39, i64 0}
!39 = !{!"BaseDom", !26, i64 0}
!40 = !{!"_tuple_2_star_int64_t", !16, i64 0}
!41 = !{!"_ref__real64", !27, i64 0}
!42 = !{!"range_int64_t_bounded_F", !15, i64 0, !15, i64 8}
!43 = !{!41, !41, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"_ref__tuple_2_star_int64_t", !27, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"_ref_int64_t", !27, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"_real64", !16, i64 0}
