; ModuleID = 'C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@xor_bit_str = internal unnamed_addr constant [8 x i8] c"xor_bit\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @xor_bit(i4 zeroext %in1, i4 zeroext %in2, i4* %out) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %in1) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %in2) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @xor_bit_str) nounwind
  %in2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %in2) nounwind ; [#uses=1 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %in2_read}, i64 0, metadata !23), !dbg !33 ; [debug line = 3:31] [debug variable = in2]
  %in1_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %in1) nounwind ; [#uses=1 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %in1_read}, i64 0, metadata !34), !dbg !35 ; [debug line = 3:20] [debug variable = in1]
  call void @llvm.dbg.value(metadata !{i4 %in1}, i64 0, metadata !34), !dbg !35 ; [debug line = 3:20] [debug variable = in1]
  call void @llvm.dbg.value(metadata !{i4 %in2}, i64 0, metadata !23), !dbg !33 ; [debug line = 3:31] [debug variable = in2]
  call void @llvm.dbg.value(metadata !{i4* %out}, i64 0, metadata !36), !dbg !37 ; [debug line = 3:43] [debug variable = out]
  %out_assign = xor i4 %in2_read, %in1_read, !dbg !38 ; [#uses=1 type=i4] [debug line = 4:2]
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %out, i4 %out_assign) nounwind, !dbg !38 ; [debug line = 4:2]
  ret void, !dbg !40                              ; [debug line = 4:20]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (i4, i4, i4*)* @xor_bit, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uint4", metadata !"uint4", metadata !"uint4*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in1", metadata !"in2", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 3, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"in1", metadata !11, metadata !"uint4", i32 0, i32 3}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 3, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"in2", metadata !11, metadata !"uint4", i32 0, i32 3}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 3, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"out", metadata !21, metadata !"uint4", i32 0, i32 3}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, i32 1}
!23 = metadata !{i32 786689, metadata !24, metadata !"in2", metadata !25, i32 33554435, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 786478, i32 0, metadata !25, metadata !"xor_bit", metadata !"xor_bit", metadata !"", metadata !25, i32 3, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i4, i4, i4*)* @xor_bit, null, null, metadata !31, i32 3} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786473, metadata !"AK_1_CS_FerlindaFeliana_HLS/xorBit.c", metadata !"C:\5CUsers\5CLinda\5CDocuments", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !28, metadata !30}
!28 = metadata !{i32 786454, null, metadata !"uint4", metadata !25, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"uint4", null, i32 0, i64 4, i64 4, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!33 = metadata !{i32 3, i32 31, metadata !24, null}
!34 = metadata !{i32 786689, metadata !24, metadata !"in1", metadata !25, i32 16777219, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 3, i32 20, metadata !24, null}
!36 = metadata !{i32 786689, metadata !24, metadata !"out", metadata !25, i32 50331651, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 3, i32 43, metadata !24, null}
!38 = metadata !{i32 4, i32 2, metadata !39, null}
!39 = metadata !{i32 786443, metadata !24, i32 3, i32 47, metadata !25, i32 0} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 4, i32 20, metadata !39, null}
