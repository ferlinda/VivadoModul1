; ModuleID = 'C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

; [#uses=0]
define void @xor_bit(i4 zeroext %in1, i4 zeroext %in2, i4* %out) nounwind {
  %1 = alloca i4, align 1                         ; [#uses=2 type=i4*]
  %2 = alloca i4, align 1                         ; [#uses=2 type=i4*]
  %3 = alloca i4*, align 4                        ; [#uses=2 type=i4**]
  store i4 %in1, i4* %1, align 1
  call void @llvm.dbg.declare(metadata !{i4* %1}, metadata !21), !dbg !22 ; [debug line = 3:20] [debug variable = in1]
  store i4 %in2, i4* %2, align 1
  call void @llvm.dbg.declare(metadata !{i4* %2}, metadata !23), !dbg !24 ; [debug line = 3:31] [debug variable = in2]
  store i4* %out, i4** %3, align 4
  call void @llvm.dbg.declare(metadata !{i4** %3}, metadata !25), !dbg !26 ; [debug line = 3:43] [debug variable = out]
  %4 = load i4* %1, align 1, !dbg !27             ; [#uses=1 type=i4] [debug line = 4:2]
  %5 = zext i4 %4 to i32, !dbg !27                ; [#uses=1 type=i32] [debug line = 4:2]
  %6 = load i4* %2, align 1, !dbg !27             ; [#uses=1 type=i4] [debug line = 4:2]
  %7 = zext i4 %6 to i32, !dbg !27                ; [#uses=1 type=i32] [debug line = 4:2]
  %8 = xor i32 %5, %7, !dbg !27                   ; [#uses=1 type=i32] [debug line = 4:2]
  %9 = trunc i32 %8 to i4, !dbg !27               ; [#uses=1 type=i4] [debug line = 4:2]
  %10 = load i4** %3, align 4, !dbg !27           ; [#uses=1 type=i4*] [debug line = 4:2]
  store i4 %9, i4* %10, align 1, !dbg !27         ; [debug line = 4:2]
  ret void, !dbg !29                              ; [debug line = 4:20]
}

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!14}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/.autopilot/db/xorBit.pragma.2.c", metadata !"C:\5CUsers\5CLinda\5CDocuments", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"xor_bit", metadata !"xor_bit", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i4, i4, i4*)* @xor_bit, null, null, metadata !12, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"AK_1_CS_FerlindaFeliana_HLS/xorBit.c", metadata !"C:\5CUsers\5CLinda\5CDocuments", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"uint4", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"uint4", null, i32 0, i64 4, i64 4, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{void (i4, i4, i4*)* @xor_bit, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!15 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!16 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"uint4", metadata !"uint4", metadata !"uint4*"}
!18 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"in1", metadata !"in2", metadata !"out"}
!20 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!21 = metadata !{i32 786689, metadata !5, metadata !"in1", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 3, i32 20, metadata !5, null}
!23 = metadata !{i32 786689, metadata !5, metadata !"in2", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 3, i32 31, metadata !5, null}
!25 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 50331651, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 3, i32 43, metadata !5, null}
!27 = metadata !{i32 4, i32 2, metadata !28, null}
!28 = metadata !{i32 786443, metadata !5, i32 3, i32 47, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 4, i32 20, metadata !28, null}
