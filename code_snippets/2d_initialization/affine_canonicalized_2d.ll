; ModuleID = 'affine_2d.ll'
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
  br label %.split, !dbg !7

.split:                                           ; preds = %0
  %1 = load i64, i64* @n_chpl, align 8, !dbg !7, !tbaa !13
  %2 = icmp sgt i64 %1, 0, !dbg !7
  br i1 %2, label %.preheader2, label %21, !dbg !7

.preheader2:                                      ; preds = %.split
  %3 = add i64 %1, 1, !dbg !17
  br label %4, !dbg !17

; <label>:4:                                      ; preds = %.preheader2, %19
  %.0 = phi i64 [ %20, %19 ], [ 1, %.preheader2 ], !dbg !7
  %5 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* @A_chpl, i64 0, i32 1), align 8, !dbg !17, !tbaa !18
  %6 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %5, i64 0, i32 8, !dbg !17
  %7 = load double*, double** %6, align 8, !dbg !17, !tbaa !27
  %8 = shl i64 %.0, 2, !dbg !17
  br i1 %2, label %.preheader, label %19, !dbg !40

.preheader:                                       ; preds = %4
  br label %9, !dbg !17

; <label>:9:                                      ; preds = %.preheader, %9
  %.01 = phi i64 [ %18, %9 ], [ 1, %.preheader ], !dbg !40
  %10 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %5, i64 0, i32 3, i64 0, !dbg !17
  %11 = load i64, i64* %10, align 8, !dbg !17, !tbaa !13
  %12 = mul nsw i64 %11, %.0, !dbg !17
  %13 = add nsw i64 %12, %.01, !dbg !17
  %14 = getelementptr inbounds double, double* %7, i64 %13, !dbg !17
  %15 = add i64 %8, 6, !dbg !17
  %16 = add i64 %15, %.01, !dbg !17
  %17 = sitofp i64 %16 to double, !dbg !17
  store double %17, double* %14, align 8, !dbg !17, !tbaa !41
  %18 = add nuw nsw i64 %.01, 1, !dbg !40
  %exitcond = icmp ne i64 %18, %3, !dbg !40
  br i1 %exitcond, label %9, label %.loopexit, !dbg !40

.loopexit:                                        ; preds = %9
  br label %19, !dbg !7

; <label>:19:                                     ; preds = %.loopexit, %4
  %20 = add nuw nsw i64 %.0, 1, !dbg !7
  %exitcond4 = icmp ne i64 %20, %3, !dbg !7
  br i1 %exitcond4, label %4, label %.loopexit3, !dbg !7

.loopexit3:                                       ; preds = %19
  br label %21, !dbg !43

; <label>:21:                                     ; preds = %.loopexit3, %.split
  ret void, !dbg !43
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
!7 = !DILocation(line: 6, scope: !8)
!8 = distinct !DISubprogram(name: "test", linkageName: "test_chpl", scope: !10, file: !9, line: 5, type: !11, isLocal: true, isDefinition: true, scopeLine: 5, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "affine_2d.chpl", directory: "chapel_loops")
!10 = !DINamespace(name: "affine_2d", scope: !9)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !{!14, !14, i64 0}
!14 = !{!"int64_t", !15, i64 0}
!15 = !{!"all unions", !16, i64 0}
!16 = !{!"Chapel types"}
!17 = !DILocation(line: 8, scope: !8)
!18 = !{!19, !20, i64 8}
!19 = !{!"_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t", !14, i64 0, !20, i64 8, !26, i64 16}
!20 = !{!"DefaultRectangularArr_2_int64_t_F__real64_int64_t", !21, i64 0}
!21 = !{!"BaseRectangularArr_2_int64_t_F__real64", !22, i64 0}
!22 = !{!"BaseArrOverRectangularDom_2_int64_t_F", !23, i64 0}
!23 = !{!"BaseArr", !24, i64 0}
!24 = !{!"object", !25, i64 0}
!25 = !{!"C void ptr", !15, i64 0}
!26 = !{!"chpl_bool", !15, i64 0}
!27 = !{!28, !38, i64 104}
!28 = !{!"chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object", !29, i64 0, !34, i64 24, !37, i64 32, !37, i64 48, !37, i64 64, !14, i64 80, !14, i64 88, !38, i64 96, !38, i64 104, !26, i64 112, !39, i64 120}
!29 = !{!"chpl_BaseRectangularArr_2_int64_t_F__real64_object", !30, i64 0}
!30 = !{!"chpl_BaseArrOverRectangularDom_2_int64_t_F_object", !31, i64 0}
!31 = !{!"chpl_BaseArr_object", !32, i64 0, !14, i64 8, !26, i64 16}
!32 = !{!"chpl_object_object", !33, i64 0}
!33 = !{!"int32_t", !15, i64 0}
!34 = !{!"DefaultRectangularDom_2_int64_t_F", !35, i64 0}
!35 = !{!"BaseRectangularDom_2_int64_t_F", !36, i64 0}
!36 = !{!"BaseDom", !24, i64 0}
!37 = !{!"_tuple_2_star_int64_t", !15, i64 0}
!38 = !{!"_ref__real64", !25, i64 0}
!39 = !{!"range_int64_t_bounded_F", !14, i64 0, !14, i64 8}
!40 = !DILocation(line: 7, scope: !8)
!41 = !{!42, !42, i64 0}
!42 = !{!"_real64", !15, i64 0}
!43 = !DILocation(line: 5, scope: !8)
