; ModuleID = 'affine_2mm.ll'
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
@B_chpl = external dso_local global %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t
@C_chpl = external dso_local global %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t

declare dso_local void @init_matrix_chpl()

; Function Attrs: noinline
define weak dso_local void @m2m_chpl() #0 {
  br label %.split, !dbg !7

.split:                                           ; preds = %0
  %1 = load i64, i64* @n_chpl, align 8, !dbg !7, !tbaa !13
  tail call void @init_matrix_chpl(), !dbg !17
  %2 = icmp sgt i64 %1, 0, !dbg !7
  br i1 %2, label %.preheader5, label %41, !dbg !7

.preheader5:                                      ; preds = %.split
  %3 = add i64 %1, 1, !dbg !18
  br label %4, !dbg !18

; <label>:4:                                      ; preds = %.preheader5, %39
  %.0 = phi i64 [ %40, %39 ], [ 1, %.preheader5 ], !dbg !7
  br i1 %2, label %.preheader3, label %39, !dbg !18

.preheader3:                                      ; preds = %4
  br label %5, !dbg !19

; <label>:5:                                      ; preds = %.preheader3, %37
  %.01 = phi i64 [ %38, %37 ], [ 1, %.preheader3 ], !dbg !18
  %6 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @C_chpl, i64 0, i32 1), align 8, !dbg !19, !tbaa !20
  %7 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %6, i64 0, i32 8, !dbg !19
  %8 = load double*, double** %7, align 8, !dbg !19, !tbaa !29
  %9 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @A_chpl, i64 0, i32 1), align 8, !dbg !19, !tbaa !20
  %10 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %9, i64 0, i32 8, !dbg !19
  %11 = load double*, double** %10, align 8, !dbg !19, !tbaa !29
  %12 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @B_chpl, i64 0, i32 1), align 8, !dbg !19, !tbaa !20
  %13 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %12, i64 0, i32 8, !dbg !19
  %14 = load double*, double** %13, align 8, !dbg !19, !tbaa !29
  br i1 %2, label %.preheader, label %37, !dbg !42

.preheader:                                       ; preds = %5
  br label %15, !dbg !19

; <label>:15:                                     ; preds = %.preheader, %15
  %.02 = phi i64 [ %36, %15 ], [ 1, %.preheader ], !dbg !42
  %16 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %6, i64 0, i32 3, i64 0, !dbg !19
  %17 = load i64, i64* %16, align 8, !dbg !19, !tbaa !13
  %18 = mul nsw i64 %17, %.0, !dbg !19
  %19 = add nsw i64 %18, %.01, !dbg !19
  %20 = getelementptr inbounds double, double* %8, i64 %19, !dbg !19
  %21 = load double, double* %20, align 8, !dbg !19, !tbaa !43
  %22 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %9, i64 0, i32 3, i64 0, !dbg !19
  %23 = load i64, i64* %22, align 8, !dbg !19, !tbaa !13
  %24 = mul nsw i64 %23, %.0, !dbg !19
  %25 = add nsw i64 %24, %.01, !dbg !19
  %26 = getelementptr inbounds double, double* %11, i64 %25, !dbg !19
  %27 = load double, double* %26, align 8, !dbg !19, !tbaa !43
  %28 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %12, i64 0, i32 3, i64 0, !dbg !19
  %29 = load i64, i64* %28, align 8, !dbg !19, !tbaa !13
  %30 = mul nsw i64 %29, %.0, !dbg !19
  %31 = add nsw i64 %30, %.01, !dbg !19
  %32 = getelementptr inbounds double, double* %14, i64 %31, !dbg !19
  %33 = load double, double* %32, align 8, !dbg !19, !tbaa !43
  %34 = fmul double %27, %33, !dbg !19
  %35 = fadd double %21, %34, !dbg !19
  store double %35, double* %20, align 8, !dbg !19, !tbaa !43
  %36 = add nuw nsw i64 %.02, 1, !dbg !42
  %exitcond = icmp ne i64 %36, %3, !dbg !42
  br i1 %exitcond, label %15, label %.loopexit, !dbg !42

.loopexit:                                        ; preds = %15
  br label %37, !dbg !18

; <label>:37:                                     ; preds = %.loopexit, %5
  %38 = add nuw nsw i64 %.01, 1, !dbg !18
  %exitcond7 = icmp ne i64 %38, %3, !dbg !18
  br i1 %exitcond7, label %5, label %.loopexit4, !dbg !18

.loopexit4:                                       ; preds = %37
  br label %39, !dbg !7

; <label>:39:                                     ; preds = %.loopexit4, %4
  %40 = add nuw nsw i64 %.0, 1, !dbg !7
  %exitcond8 = icmp ne i64 %40, %3, !dbg !7
  br i1 %exitcond8, label %4, label %.loopexit6, !dbg !7

.loopexit6:                                       ; preds = %39
  br label %41, !dbg !45

; <label>:41:                                     ; preds = %.loopexit6, %.split
  ret void, !dbg !45
}

; Function Attrs: argmemonly nounwind
declare {}* @llvm.invariant.start.p0i8(i64, i8* nocapture) #1

attributes #0 = { noinline }
attributes #1 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Chapel version 1.18.0 pre-release (b7103d148b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "chapel_loops/affine_2mm.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!7 = !DILocation(line: 32, scope: !8)
!8 = distinct !DISubprogram(name: "m2m", linkageName: "m2m_chpl", scope: !10, file: !9, line: 28, type: !11, isLocal: true, isDefinition: true, scopeLine: 28, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "affine_2mm.chpl", directory: "chapel_loops")
!10 = !DINamespace(name: "affine_2mm", scope: !9)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !{!14, !14, i64 0}
!14 = !{!"int64_t", !15, i64 0}
!15 = !{!"all unions", !16, i64 0}
!16 = !{!"Chapel types"}
!17 = !DILocation(line: 30, scope: !8)
!18 = !DILocation(line: 33, scope: !8)
!19 = !DILocation(line: 35, scope: !8)
!20 = !{!21, !22, i64 8}
!21 = !{!"_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t", !14, i64 0, !22, i64 8, !28, i64 16}
!22 = !{!"DefaultRectangularArr_2_int64_t_F__real64_int64_t", !23, i64 0}
!23 = !{!"BaseRectangularArr_2_int64_t_F__real64", !24, i64 0}
!24 = !{!"BaseArrOverRectangularDom_2_int64_t_F", !25, i64 0}
!25 = !{!"BaseArr", !26, i64 0}
!26 = !{!"object", !27, i64 0}
!27 = !{!"C void ptr", !15, i64 0}
!28 = !{!"chpl_bool", !15, i64 0}
!29 = !{!30, !40, i64 104}
!30 = !{!"chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object", !31, i64 0, !36, i64 24, !39, i64 32, !39, i64 48, !39, i64 64, !14, i64 80, !14, i64 88, !40, i64 96, !40, i64 104, !28, i64 112, !41, i64 120}
!31 = !{!"chpl_BaseRectangularArr_2_int64_t_F__real64_object", !32, i64 0}
!32 = !{!"chpl_BaseArrOverRectangularDom_2_int64_t_F_object", !33, i64 0}
!33 = !{!"chpl_BaseArr_object", !34, i64 0, !14, i64 8, !28, i64 16}
!34 = !{!"chpl_object_object", !35, i64 0}
!35 = !{!"int32_t", !15, i64 0}
!36 = !{!"DefaultRectangularDom_2_int64_t_F", !37, i64 0}
!37 = !{!"BaseRectangularDom_2_int64_t_F", !38, i64 0}
!38 = !{!"BaseDom", !26, i64 0}
!39 = !{!"_tuple_2_star_int64_t", !15, i64 0}
!40 = !{!"_ref__real64", !27, i64 0}
!41 = !{!"range_int64_t_bounded_F", !14, i64 0, !14, i64 8}
!42 = !DILocation(line: 34, scope: !8)
!43 = !{!44, !44, i64 0}
!44 = !{!"_real64", !15, i64 0}
!45 = !DILocation(line: 28, scope: !8)
