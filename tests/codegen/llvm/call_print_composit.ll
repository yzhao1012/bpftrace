; ModuleID = 'bpftrace'
source_filename = "bpftrace"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf-pc-linux"

%print_tuple_72_t = type <{ i64, i64, [72 x i8] }>
%"int64_string[64]__tuple_t" = type <{ i64, [64 x i8] }>

; Function Attrs: nounwind
declare i64 @llvm.bpf.pseudo(i64, i64) #0

define i64 @"kprobe:f"(i8*) section "s_kprobe:f_1" {
entry:
  %print_tuple_72_t = alloca %print_tuple_72_t
  %str = alloca [64 x i8]
  %tuple = alloca %"int64_string[64]__tuple_t"
  %1 = bitcast %"int64_string[64]__tuple_t"* %tuple to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %1)
  %2 = getelementptr %"int64_string[64]__tuple_t", %"int64_string[64]__tuple_t"* %tuple, i32 0, i32 0
  store i64 1, i64* %2
  %3 = bitcast [64 x i8]* %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %3)
  store [64 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8]* %str
  %4 = getelementptr %"int64_string[64]__tuple_t", %"int64_string[64]__tuple_t"* %tuple, i32 0, i32 1
  %5 = bitcast [64 x i8]* %4 to i8*
  %6 = bitcast [64 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 64, i1 false)
  %7 = bitcast [64 x i8]* %str to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %7)
  %8 = bitcast %print_tuple_72_t* %print_tuple_72_t to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %8)
  %9 = getelementptr %print_tuple_72_t, %print_tuple_72_t* %print_tuple_72_t, i64 0, i32 0
  store i64 30007, i64* %9
  %10 = getelementptr %print_tuple_72_t, %print_tuple_72_t* %print_tuple_72_t, i64 0, i32 1
  store i64 0, i64* %10
  %11 = getelementptr %print_tuple_72_t, %print_tuple_72_t* %print_tuple_72_t, i32 0, i32 2
  %12 = bitcast [72 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 72, i1 false)
  %13 = bitcast [72 x i8]* %11 to i8*
  %14 = bitcast %"int64_string[64]__tuple_t"* %tuple to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 72, i1 false)
  %pseudo = call i64 @llvm.bpf.pseudo(i64 1, i64 1)
  %get_cpu_id = call i64 inttoptr (i64 8 to i64 ()*)()
  %perf_event_output = call i64 inttoptr (i64 25 to i64 (i8*, i64, i64, %print_tuple_72_t*, i64)*)(i8* %0, i64 %pseudo, i64 %get_cpu_id, %print_tuple_72_t* %print_tuple_72_t, i64 88)
  %15 = bitcast %print_tuple_72_t* %print_tuple_72_t to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %15)
  %16 = bitcast %"int64_string[64]__tuple_t"* %tuple to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %16)
  ret i64 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
