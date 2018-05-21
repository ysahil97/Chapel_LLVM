; ModuleID = 'affine.ll'
source_filename = "root"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t = type { i64, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, i8 }
%chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object = type { %chpl_BaseRectangularArr_1_int64_t_F__real64_object, %chpl_DefaultRectangularDom_1_int64_t_F_object*, [1 x i64], [1 x i64], [1 x i64], i64, i64, double*, double*, i8, %range_int64_t_bounded_F }
%chpl_BaseRectangularArr_1_int64_t_F__real64_object = type { %chpl_BaseArrOverRectangularDom_1_int64_t_F_object }
%chpl_BaseArrOverRectangularDom_1_int64_t_F_object = type { %chpl_BaseArr_object }
%chpl_BaseArr_object = type { %chpl_object_object, i64, i8 }
%chpl_object_object = type { i32, i32 }
%chpl_DefaultRectangularDom_1_int64_t_F_object = type { %chpl_BaseRectangularDom_1_int64_t_F_object, %chpl_DefaultDist_object*, [1 x %range_int64_t_bounded_F] }
%chpl_BaseRectangularDom_1_int64_t_F_object = type { %chpl_BaseDom_object }
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
@A_chpl = external dso_local global %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t

; Function Attrs: noinline
define weak dso_local void @test_chpl() #0 {
  br label %.split, !dbg !7

.split:                                           ; preds = %0
  %1 = load i64, i64* @n_chpl, align 8, !dbg !7, !tbaa !12
  %2 = load %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* @A_chpl, i64 0, i32 1), align 8, !dbg !16, !tbaa !17
  %3 = getelementptr inbounds %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object* %2, i64 0, i32 8, !dbg !16
  %4 = load double*, double** %3, align 8, !dbg !16, !tbaa !26
  %5 = icmp sgt i64 %1, 0, !dbg !7
  br i1 %5, label %.preheader, label %11, !dbg !7

.preheader:                                       ; preds = %.split
  %6 = add i64 %1, 1, !dbg !16
  br label %7, !dbg !16

; <label>:7:                                      ; preds = %.preheader, %7
  %.0 = phi i64 [ %10, %7 ], [ 1, %.preheader ], !dbg !7
  %8 = getelementptr inbounds double, double* %4, i64 %.0, !dbg !16
  %9 = sitofp i64 %.0 to double, !dbg !16
  store double %9, double* %8, align 8, !dbg !16, !tbaa !39
  %10 = add nuw nsw i64 %.0, 1, !dbg !7
  %exitcond = icmp ne i64 %10, %6, !dbg !7
  br i1 %exitcond, label %7, label %.loopexit, !dbg !7

.loopexit:                                        ; preds = %7
  br label %11, !dbg !41

; <label>:11:                                     ; preds = %.loopexit, %.split
  ret void, !dbg !41
}

; Function Attrs: argmemonly nounwind
declare {}* @llvm.invariant.start.p0i8(i64, i8* nocapture) #1

attributes #0 = { noinline }
attributes #1 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Chapel version 1.18.0 pre-release (b7103d148b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "affine_loop.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!7 = !DILocation(line: 6, scope: !8)
!8 = distinct !DISubprogram(name: "test", linkageName: "test_chpl", scope: !9, file: !1, line: 5, type: !10, isLocal: true, isDefinition: true, scopeLine: 5, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DINamespace(name: "affine_loop", scope: !1)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{!13, !13, i64 0}
!13 = !{!"int64_t", !14, i64 0}
!14 = !{!"all unions", !15, i64 0}
!15 = !{!"Chapel types"}
!16 = !DILocation(line: 7, scope: !8)
!17 = !{!18, !19, i64 8}
!18 = !{!"_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t", !13, i64 0, !19, i64 8, !25, i64 16}
!19 = !{!"DefaultRectangularArr_1_int64_t_F__real64_int64_t", !20, i64 0}
!20 = !{!"BaseRectangularArr_1_int64_t_F__real64", !21, i64 0}
!21 = !{!"BaseArrOverRectangularDom_1_int64_t_F", !22, i64 0}
!22 = !{!"BaseArr", !23, i64 0}
!23 = !{!"object", !24, i64 0}
!24 = !{!"C void ptr", !14, i64 0}
!25 = !{!"chpl_bool", !14, i64 0}
!26 = !{!27, !37, i64 80}
!27 = !{!"chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object", !28, i64 0, !33, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !13, i64 56, !13, i64 64, !37, i64 72, !37, i64 80, !25, i64 88, !38, i64 96}
!28 = !{!"chpl_BaseRectangularArr_1_int64_t_F__real64_object", !29, i64 0}
!29 = !{!"chpl_BaseArrOverRectangularDom_1_int64_t_F_object", !30, i64 0}
!30 = !{!"chpl_BaseArr_object", !31, i64 0, !13, i64 8, !25, i64 16}
!31 = !{!"chpl_object_object", !32, i64 0}
!32 = !{!"int32_t", !14, i64 0}
!33 = !{!"DefaultRectangularDom_1_int64_t_F", !34, i64 0}
!34 = !{!"BaseRectangularDom_1_int64_t_F", !35, i64 0}
!35 = !{!"BaseDom", !23, i64 0}
!36 = !{!"_tuple_1_star_int64_t", !14, i64 0}
!37 = !{!"_ref__real64", !24, i64 0}
!38 = !{!"range_int64_t_bounded_F", !13, i64 0, !13, i64 8}
!39 = !{!40, !40, i64 0}
!40 = !{!"_real64", !14, i64 0}
!41 = !DILocation(line: 5, scope: !8)
