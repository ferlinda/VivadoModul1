; ModuleID = 'C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@xor_bit.str = internal unnamed_addr constant [8 x i8] c"xor_bit\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @xor_bit(i4 zeroext %in1, i4 zeroext %in2, i4* %out) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %in1) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %in2) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @xor_bit.str) nounwind
  call void @llvm.dbg.value(metadata !{i4 %in1}, i64 0, metadata !37), !dbg !38 ; [debug line = 3:20] [debug variable = in1]
  call void @llvm.dbg.value(metadata !{i4 %in2}, i64 0, metadata !39), !dbg !40 ; [debug line = 3:31] [debug variable = in2]
  call void @llvm.dbg.value(metadata !{i4* %out}, i64 0, metadata !41), !dbg !42 ; [debug line = 3:43] [debug variable = out]
  %out.assign = xor i4 %in2, %in1, !dbg !43       ; [#uses=1 type=i4] [debug line = 4:2]
  store i4 %out.assign, i4* %out, align 1, !dbg !43 ; [debug line = 4:2]
  ret void, !dbg !45                              ; [debug line = 4:20]
}

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!14}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

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
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 3, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"in1", metadata !25, metadata !"uint4", i32 0, i32 3}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, i32 0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 3, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"in2", metadata !25, metadata !"uint4", i32 0, i32 3}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 3, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"out", metadata !35, metadata !"uint4", i32 0, i32 3}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 0, i32 1}
!37 = metadata !{i32 786689, metadata !5, metadata !"in1", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 3, i32 20, metadata !5, null}
!39 = metadata !{i32 786689, metadata !5, metadata !"in2", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 3, i32 31, metadata !5, null}
!41 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 50331651, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 3, i32 43, metadata !5, null}
!43 = metadata !{i32 4, i32 2, metadata !44, null}
!44 = metadata !{i32 786443, metadata !5, i32 3, i32 47, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 4, i32 20, metadata !44, null}
