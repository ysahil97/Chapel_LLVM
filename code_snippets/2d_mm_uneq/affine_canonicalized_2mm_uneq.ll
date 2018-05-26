; ModuleID = 'affine_2mm_uneq.ll'
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
  br label %.split, !dbg !7

.split:                                           ; preds = %0
  %1 = load i64, i64* @m_chpl, align 8, !dbg !7, !tbaa !13
  %2 = load i64, i64* @n_chpl, align 8, !dbg !17, !tbaa !13
  %3 = load i64, i64* @l_chpl, align 8, !dbg !18, !tbaa !13
  %4 = icmp sgt i64 %2, 0, !dbg !17
  br i1 %4, label %.preheader5, label %47, !dbg !17

.preheader5:                                      ; preds = %.split
  %5 = add i64 %1, 1, !dbg !18
  %6 = add i64 %3, 1, !dbg !18
  %7 = add i64 %2, 1, !dbg !18
  br label %8, !dbg !18

; <label>:8:                                      ; preds = %.preheader5, %45
  %.0 = phi i64 [ %46, %45 ], [ 1, %.preheader5 ], !dbg !17
  %9 = icmp sgt i64 %3, 0, !dbg !18
  br i1 %9, label %.preheader3, label %45, !dbg !18

.preheader3:                                      ; preds = %8
  br label %10, !dbg !19

; <label>:10:                                     ; preds = %.preheader3, %43
  %.01 = phi i64 [ %44, %43 ], [ 1, %.preheader3 ], !dbg !18
  %11 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @C_chpl, i64 0, i32 1), align 8, !dbg !19, !tbaa !20
  %12 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %11, i64 0, i32 8, !dbg !19
  %13 = load double*, double** %12, align 8, !dbg !19, !tbaa !29
  %14 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @A_chpl, i64 0, i32 1), align 8, !dbg !19, !tbaa !20
  %15 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %14, i64 0, i32 8, !dbg !19
  %16 = load double*, double** %15, align 8, !dbg !19, !tbaa !29
  %17 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @B_chpl, i64 0, i32 1), align 8, !dbg !19, !tbaa !20
  %18 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %17, i64 0, i32 8, !dbg !19
  %19 = load double*, double** %18, align 8, !dbg !19, !tbaa !29
  %20 = icmp sgt i64 %1, 0, !dbg !7
  br i1 %20, label %.preheader, label %43, !dbg !7

.preheader:                                       ; preds = %10
  br label %21, !dbg !19

; <label>:21:                                     ; preds = %.preheader, %21
  %.02 = phi i64 [ %42, %21 ], [ 1, %.preheader ], !dbg !7
  %22 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %11, i64 0, i32 3, i64 0, !dbg !19
  %23 = load i64, i64* %22, align 8, !dbg !19, !tbaa !13
  %24 = mul nsw i64 %23, %.0, !dbg !19
  %25 = add nsw i64 %24, %.01, !dbg !19
  %26 = getelementptr inbounds double, double* %13, i64 %25, !dbg !19
  %27 = load double, double* %26, align 8, !dbg !19, !tbaa !42
  %28 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %14, i64 0, i32 3, i64 0, !dbg !19
  %29 = load i64, i64* %28, align 8, !dbg !19, !tbaa !13
  %30 = mul nsw i64 %29, %.0, !dbg !19
  %31 = add nsw i64 %30, %.02, !dbg !19
  %32 = getelementptr inbounds double, double* %16, i64 %31, !dbg !19
  %33 = load double, double* %32, align 8, !dbg !19, !tbaa !42
  %34 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %17, i64 0, i32 3, i64 0, !dbg !19
  %35 = load i64, i64* %34, align 8, !dbg !19, !tbaa !13
  %36 = mul nsw i64 %35, %.02, !dbg !19
  %37 = add nsw i64 %36, %.01, !dbg !19
  %38 = getelementptr inbounds double, double* %19, i64 %37, !dbg !19
  %39 = load double, double* %38, align 8, !dbg !19, !tbaa !42
  %40 = fmul double %33, %39, !dbg !19
  %41 = fadd double %27, %40, !dbg !19
  store double %41, double* %26, align 8, !dbg !19, !tbaa !42
  %42 = add nuw nsw i64 %.02, 1, !dbg !7
  %exitcond = icmp ne i64 %42, %5, !dbg !7
  br i1 %exitcond, label %21, label %.loopexit, !dbg !7

.loopexit:                                        ; preds = %21
  br label %43, !dbg !18

; <label>:43:                                     ; preds = %.loopexit, %10
  %44 = add nuw nsw i64 %.01, 1, !dbg !18
  %exitcond7 = icmp ne i64 %44, %6, !dbg !18
  br i1 %exitcond7, label %10, label %.loopexit4, !dbg !18

.loopexit4:                                       ; preds = %43
  br label %45, !dbg !17

; <label>:45:                                     ; preds = %.loopexit4, %8
  %46 = add nuw nsw i64 %.0, 1, !dbg !17
  %exitcond8 = icmp ne i64 %46, %7, !dbg !17
  br i1 %exitcond8, label %8, label %.loopexit6, !dbg !17

.loopexit6:                                       ; preds = %45
  br label %47, !dbg !44

; <label>:47:                                     ; preds = %.loopexit6, %.split
  ret void, !dbg !44
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
!7 = !DILocation(line: 32, scope: !8)
!8 = distinct !DISubprogram(name: "m2m", linkageName: "m2m_chpl", scope: !10, file: !9, line: 29, type: !11, isLocal: true, isDefinition: true, scopeLine: 29, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "affine_2mm_uneq.chpl", directory: "chapel_loops")
!10 = !DINamespace(name: "affine_2mm_uneq", scope: !9)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !{!14, !14, i64 0}
!14 = !{!"int64_t", !15, i64 0}
!15 = !{!"all unions", !16, i64 0}
!16 = !{!"Chapel types"}
!17 = !DILocation(line: 30, scope: !8)
!18 = !DILocation(line: 31, scope: !8)
!19 = !DILocation(line: 33, scope: !8)
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
!42 = !{!43, !43, i64 0}
!43 = !{!"_real64", !15, i64 0}
!44 = !DILocation(line: 29, scope: !8)
