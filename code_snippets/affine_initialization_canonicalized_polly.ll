    Function: test_chpl
        Region: %6---%8
	    Max Loop Depth:  1
	        Invariant Accesses: {
			    }
    Context:
        [p_0] -> {  : -9223372036854775808 <= p_0 <= 9223372036854775807 }
	    Assumed Context:
	        [p_0] -> {  :  }
		    Invalid Context:
		        [p_0] -> {  : p_0 > 0 }
			    p0: %1
			        Arrays {
					        double MemRef0[*]; // Element size 8
						    }
    Arrays (Bounds as pw_affs) {
	            double MemRef0[*]; // Element size 8
		        }
    Alias Groups (0):
            n/a
	        Statements {
			    	Stmt0
				            Domain :=
					                    [p_0] -> { Stmt0[0] : p_0 <= 0 };
				            Schedule :=
						                      [p_0] -> { Stmt0[i0] -> [0] };
						                  MustWriteAccess :=	[Reduction Type: NONE] [Scalar: 0]
										                   [p_0] -> { Stmt0[i0] -> MemRef0[1] };
										       }
; ModuleID = 'affine_while_canonicalized.ll'
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
	    %1 = load i64, i64* @n_chpl, align 8, !dbg !7, !tbaa !13
	      %2 = icmp sgt i64 %1, 0, !dbg !7
	        %3 = load %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object** getelementptr inbounds (%_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t* @A_chpl, i64 0, i32 1), align 8, !dbg !17, !tbaa !18
		  %4 = getelementptr inbounds %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object* %3, i64 0, i32 8, !dbg !17
		    %5 = load double*, double** %4, align 8, !dbg !17, !tbaa !27
		      br i1 %2, label %.lr.ph, label %12, !dbg !7

		      .lr.ph:                                           ; preds = %.split
		        br label %polly.split_new_and_old, !dbg !7

			polly.split_new_and_old:                          ; preds = %.lr.ph
			  %6 = icmp sge i64 %1, 1
			    %7 = sext i1 %6 to i64
			      %8 = icmp eq i64 0, %7
			        %9 = and i1 true, %8
				  br i1 %9, label %polly.start, label %.pre_entry_bb

				  .pre_entry_bb:                                    ; preds = %polly.split_new_and_old
				    br label %10, !dbg !17

				    ; <label>:10:                                     ; preds = %.pre_entry_bb, %10
				      %11 = getelementptr inbounds double, double* %5, i64 1, !dbg !17
				        store double 1.000000e+00, double* %11, align 8, !dbg !17, !tbaa !40
					  br i1 %2, label %10, label %._crit_edge, !dbg !7

					  ._crit_edge:                                      ; preds = %10
					    br label %polly.merge_new_and_old, !dbg !7

					    polly.merge_new_and_old:                          ; preds = %polly.exiting, %._crit_edge
					      br label %12, !dbg !42

					      ; <label>:12:                                     ; preds = %polly.merge_new_and_old, %.split
					        ret void, !dbg !42

						polly.start:                                      ; preds = %polly.split_new_and_old
						  br label %polly.cond

						  polly.cond:                                       ; preds = %polly.start
						    %13 = icmp sle i64 %1, 0
						      br i1 %13, label %polly.then, label %polly.else

						      polly.merge:                                      ; preds = %polly.else, %polly.stmt.
						        br label %polly.exiting

							polly.exiting:                                    ; preds = %polly.merge
							  br label %polly.merge_new_and_old

							  polly.then:                                       ; preds = %polly.cond
							    br label %polly.stmt.

							    polly.stmt.:                                      ; preds = %polly.then
							      %scevgep = getelementptr double, double* %5, i64 1
							        store double 1.000000e+00, double* %scevgep, align 8, !alias.scope !43, !noalias !2
								  br label %polly.merge

								  polly.else:                                       ; preds = %polly.cond
								    br label %polly.merge
}

attributes #0 = { noinline "polly-optimized" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Chapel version 1.18.0 pre-release (b7103d148b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "chapel_loops/affine_while_loop.chpl", directory: "./")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (https://git.llvm.org/git/clang.git 02bcd70eea3567cd0577d4ed76031087c1a48ac3) (https://git.llvm.org/git/llvm.git e27401501e0d6f407c45ab7bc4c1b1e1c54f0356)"}
!7 = !DILocation(line: 7, scope: !8)
!8 = distinct !DISubprogram(name: "test", linkageName: "test_chpl", scope: !10, file: !9, line: 5, type: !11, isLocal: true, isDefinition: true, scopeLine: 5, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "affine_while_loop.chpl", directory: "chapel_loops")
!10 = !DINamespace(name: "affine_while_loop", scope: !9)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !{!14, !14, i64 0}
!14 = !{!"int64_t", !15, i64 0}
!15 = !{!"all unions", !16, i64 0}
!16 = !{!"Chapel types"}
!17 = !DILocation(line: 8, scope: !8)
!18 = !{!19, !20, i64 8}
!19 = !{!"_array_DefaultRectangularArr_1_int64_t_F__real64_int64_t", !14, i64 0, !20, i64 8, !26, i64 16}
!20 = !{!"DefaultRectangularArr_1_int64_t_F__real64_int64_t", !21, i64 0}
!21 = !{!"BaseRectangularArr_1_int64_t_F__real64", !22, i64 0}
!22 = !{!"BaseArrOverRectangularDom_1_int64_t_F", !23, i64 0}
!23 = !{!"BaseArr", !24, i64 0}
!24 = !{!"object", !25, i64 0}
!25 = !{!"C void ptr", !15, i64 0}
!26 = !{!"chpl_bool", !15, i64 0}
!27 = !{!28, !38, i64 80}
!28 = !{!"chpl_DefaultRectangularArr_1_int64_t_F__real64_int64_t_object", !29, i64 0, !34, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !14, i64 56, !14, i64 64, !38, i64 72, !38, i64 80, !26, i64 88, !39, i64 96}
!29 = !{!"chpl_BaseRectangularArr_1_int64_t_F__real64_object", !30, i64 0}
!30 = !{!"chpl_BaseArrOverRectangularDom_1_int64_t_F_object", !31, i64 0}
!31 = !{!"chpl_BaseArr_object", !32, i64 0, !14, i64 8, !26, i64 16}
!32 = !{!"chpl_object_object", !33, i64 0}
!33 = !{!"int32_t", !15, i64 0}
!34 = !{!"DefaultRectangularDom_1_int64_t_F", !35, i64 0}
!35 = !{!"BaseRectangularDom_1_int64_t_F", !36, i64 0}
!36 = !{!"BaseDom", !24, i64 0}
!37 = !{!"_tuple_1_star_int64_t", !15, i64 0}
!38 = !{!"_ref__real64", !25, i64 0}
!39 = !{!"range_int64_t_bounded_F", !14, i64 0, !14, i64 8}
!40 = !{!41, !41, i64 0}
!41 = !{!"_real64", !15, i64 0}
!42 = !DILocation(line: 5, scope: !8)
!43 = distinct !{!43, !44, !"polly.alias.scope.MemRef0"}
!44 = distinct !{!44, !"polly.alias.scope.domain"}
