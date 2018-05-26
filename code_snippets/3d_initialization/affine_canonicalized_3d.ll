; ModuleID = 'affine_3d.ll'
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
  br label %.split, !dbg !7

.split:                                           ; preds = %0
  %1 = load i64, i64* @n_chpl, align 8, !dbg !7, !tbaa !13
  %2 = icmp sgt i64 %1, 0, !dbg !7
  br i1 %2, label %.preheader5, label %27, !dbg !7

.preheader5:                                      ; preds = %.split
  %3 = add i64 %1, 1, !dbg !17
  br label %4, !dbg !17

; <label>:4:                                      ; preds = %.preheader5, %25
  %.0 = phi i64 [ %26, %25 ], [ 1, %.preheader5 ], !dbg !7
  br i1 %2, label %.preheader3, label %25, !dbg !17

.preheader3:                                      ; preds = %4
  br label %5, !dbg !18

; <label>:5:                                      ; preds = %.preheader3, %23
  %.01 = phi i64 [ %24, %23 ], [ 1, %.preheader3 ], !dbg !17
  %6 = load %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_3_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_3_int64_t_F__real64_int64_t* @A_chpl, i64 0, i32 1), align 8, !dbg !18, !tbaa !19
  %7 = getelementptr inbounds %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object* %6, i64 0, i32 8, !dbg !18
  %8 = load double*, double** %7, align 8, !dbg !18, !tbaa !28
  %9 = add nuw nsw i64 %.01, %.0, !dbg !18
  br i1 %2, label %.preheader, label %23, !dbg !41

.preheader:                                       ; preds = %5
  br label %10, !dbg !18

; <label>:10:                                     ; preds = %.preheader, %10
  %.02 = phi i64 [ %22, %10 ], [ 1, %.preheader ], !dbg !41
  %11 = getelementptr inbounds %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object* %6, i64 0, i32 3, i64 0, !dbg !18
  %12 = load i64, i64* %11, align 8, !dbg !18, !tbaa !13
  %13 = mul nsw i64 %12, %.0, !dbg !18
  %14 = getelementptr inbounds %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object* %6, i64 0, i32 3, i64 1, !dbg !18
  %15 = load i64, i64* %14, align 8, !dbg !18, !tbaa !13
  %16 = mul nsw i64 %15, %.01, !dbg !18
  %17 = add i64 %13, %.02, !dbg !18
  %18 = add i64 %17, %16, !dbg !18
  %19 = getelementptr inbounds double, double* %8, i64 %18, !dbg !18
  %20 = add nuw nsw i64 %9, %.02, !dbg !18
  %21 = sitofp i64 %20 to double, !dbg !18
  store double %21, double* %19, align 8, !dbg !18, !tbaa !42
  %22 = add nuw nsw i64 %.02, 1, !dbg !41
  %exitcond = icmp ne i64 %22, %3, !dbg !41
  br i1 %exitcond, label %10, label %.loopexit, !dbg !41

.loopexit:                                        ; preds = %10
  br label %23, !dbg !17

; <label>:23:                                     ; preds = %.loopexit, %5
  %24 = add nuw nsw i64 %.01, 1, !dbg !17
  %exitcond7 = icmp ne i64 %24, %3, !dbg !17
  br i1 %exitcond7, label %5, label %.loopexit4, !dbg !17

.loopexit4:                                       ; preds = %23
  br label %25, !dbg !7

; <label>:25:                                     ; preds = %.loopexit4, %4
  %26 = add nuw nsw i64 %.0, 1, !dbg !7
  %exitcond8 = icmp ne i64 %26, %3, !dbg !7
  br i1 %exitcond8, label %4, label %.loopexit6, !dbg !7

.loopexit6:                                       ; preds = %25
  br label %27, !dbg !44

; <label>:27:                                     ; preds = %.loopexit6, %.split
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
!1 = !DIFile(filename: "chapel_loops/affine_3d.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!7 = !DILocation(line: 6, scope: !8)
!8 = distinct !DISubprogram(name: "test", linkageName: "test_chpl", scope: !10, file: !9, line: 5, type: !11, isLocal: true, isDefinition: true, scopeLine: 5, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "affine_3d.chpl", directory: "chapel_loops")
!10 = !DINamespace(name: "affine_3d", scope: !9)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !{!14, !14, i64 0}
!14 = !{!"int64_t", !15, i64 0}
!15 = !{!"all unions", !16, i64 0}
!16 = !{!"Chapel types"}
!17 = !DILocation(line: 7, scope: !8)
!18 = !DILocation(line: 9, scope: !8)
!19 = !{!20, !21, i64 8}
!20 = !{!"_array_DefaultRectangularArr_3_int64_t_F__real64_int64_t", !14, i64 0, !21, i64 8, !27, i64 16}
!21 = !{!"DefaultRectangularArr_3_int64_t_F__real64_int64_t", !22, i64 0}
!22 = !{!"BaseRectangularArr_3_int64_t_F__real64", !23, i64 0}
!23 = !{!"BaseArrOverRectangularDom_3_int64_t_F", !24, i64 0}
!24 = !{!"BaseArr", !25, i64 0}
!25 = !{!"object", !26, i64 0}
!26 = !{!"C void ptr", !15, i64 0}
!27 = !{!"chpl_bool", !15, i64 0}
!28 = !{!29, !39, i64 128}
!29 = !{!"chpl_DefaultRectangularArr_3_int64_t_F__real64_int64_t_object", !30, i64 0, !35, i64 24, !38, i64 32, !38, i64 56, !38, i64 80, !14, i64 104, !14, i64 112, !39, i64 120, !39, i64 128, !27, i64 136, !40, i64 144}
!30 = !{!"chpl_BaseRectangularArr_3_int64_t_F__real64_object", !31, i64 0}
!31 = !{!"chpl_BaseArrOverRectangularDom_3_int64_t_F_object", !32, i64 0}
!32 = !{!"chpl_BaseArr_object", !33, i64 0, !14, i64 8, !27, i64 16}
!33 = !{!"chpl_object_object", !34, i64 0}
!34 = !{!"int32_t", !15, i64 0}
!35 = !{!"DefaultRectangularDom_3_int64_t_F", !36, i64 0}
!36 = !{!"BaseRectangularDom_3_int64_t_F", !37, i64 0}
!37 = !{!"BaseDom", !25, i64 0}
!38 = !{!"_tuple_3_star_int64_t", !15, i64 0}
!39 = !{!"_ref__real64", !26, i64 0}
!40 = !{!"range_int64_t_bounded_F", !14, i64 0, !14, i64 8}
!41 = !DILocation(line: 8, scope: !8)
!42 = !{!43, !43, i64 0}
!43 = !{!"_real64", !15, i64 0}
!44 = !DILocation(line: 5, scope: !8)
