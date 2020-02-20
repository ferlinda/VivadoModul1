; ModuleID = 'C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@xor_bit_str = internal unnamed_addr constant [8 x i8] c"xor_bit\00"

define void @xor_bit(i4 zeroext %in1, i4 zeroext %in2, i4* %out_r) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %in1) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %in2) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_r) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @xor_bit_str) nounwind
  %in2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %in2) nounwind
  %in1_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %in1) nounwind
  %out_assign = xor i4 %in2_read, %in1_read
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %out_r, i4 %out_assign) nounwind
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

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
