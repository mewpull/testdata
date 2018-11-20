; ModuleID = 'coreutils-8.30/src/make-prime-list.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.prime = type { i32, i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [56 x i8] c"Usage: %s LIMIT\0AProduces a list of odd primes <= LIMIT\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Virtual memory exhausted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"/* Generated file -- DO NOT EDIT */\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"#define WIDE_UINT_BITS %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"P (%u, %u,\0A   (\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"),\0A   UINTMAX_MAX / %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A#undef FIRST_OMITTED_PRIME\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"#define FIRST_OMITTED_PRIME %u\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"write error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c")\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" << %d | \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"(uintmax_t) \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%0*xU\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 !dbg !15 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i8** %1, metadata !20, metadata !DIExpression()), !dbg !48
  %3 = icmp eq i32 %0, 2, !dbg !49
  br i1 %3, label %8, label %4, !dbg !51

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !52, !tbaa !54
  %6 = load i8*, i8** %1, align 8, !dbg !52, !tbaa !54
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %6) #8, !dbg !52
  br label %164, !dbg !58

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !59
  %10 = load i8*, i8** %9, align 8, !dbg !59, !tbaa !54
  call void @llvm.dbg.value(metadata i8* %10, metadata !60, metadata !DIExpression()) #8, !dbg !68
  %11 = tail call i64 @strtol(i8* nocapture nonnull %10, i8** null, i32 10) #8, !dbg !70
  %12 = trunc i64 %11 to i32, !dbg !71
  call void @llvm.dbg.value(metadata i32 %12, metadata !21, metadata !DIExpression()), !dbg !72
  %13 = icmp slt i32 %12, 3, !dbg !73
  br i1 %13, label %164, label %14, !dbg !75

; <label>:14:                                     ; preds = %8
  %15 = and i32 %12, 1, !dbg !76
  call void @llvm.dbg.value(metadata i32 undef, metadata !21, metadata !DIExpression()), !dbg !72
  %16 = add i32 %12, -2, !dbg !78
  %17 = add i32 %16, %15, !dbg !79
  %18 = sdiv i32 %17, 2, !dbg !80
  %19 = sext i32 %18 to i64, !dbg !81
  call void @llvm.dbg.value(metadata i64 %19, metadata !23, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64 %19, metadata !83, metadata !DIExpression()) #8, !dbg !89
  %20 = tail call noalias i8* @malloc(i64 %19) #8, !dbg !91
  call void @llvm.dbg.value(metadata i8* %20, metadata !88, metadata !DIExpression()) #8, !dbg !92
  %21 = icmp eq i8* %20, null, !dbg !93
  br i1 %21, label %22, label %25, !dbg !95

; <label>:22:                                     ; preds = %14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !54
  %24 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %23, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !96
  tail call void @exit(i32 1) #9, !dbg !97
  unreachable, !dbg !97

; <label>:25:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %20, metadata !22, metadata !DIExpression()), !dbg !98
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %20, i8 1, i64 %19, i1 false), !dbg !99
  %26 = mul nsw i64 %19, 24, !dbg !100
  call void @llvm.dbg.value(metadata i64 %26, metadata !83, metadata !DIExpression()) #8, !dbg !101
  %27 = tail call noalias i8* @malloc(i64 %26) #8, !dbg !103
  call void @llvm.dbg.value(metadata i8* %27, metadata !88, metadata !DIExpression()) #8, !dbg !104
  %28 = icmp eq i8* %27, null, !dbg !105
  br i1 %28, label %29, label %32, !dbg !106

; <label>:29:                                     ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !107, !tbaa !54
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %30, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !107
  tail call void @exit(i32 1) #9, !dbg !108
  unreachable, !dbg !108

; <label>:32:                                     ; preds = %25
  %33 = bitcast i8* %27 to %struct.prime*, !dbg !109
  call void @llvm.dbg.value(metadata %struct.prime* %33, metadata !28, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 0, metadata !27, metadata !DIExpression()), !dbg !112
  %34 = add i32 %17, 1, !dbg !113
  %35 = icmp ugt i32 %34, 2, !dbg !113
  br i1 %35, label %36, label %81, !dbg !114

; <label>:36:                                     ; preds = %77, %32
  %37 = phi i32 [ 0, %32 ], [ %56, %77 ]
  %38 = phi i64 [ 0, %32 ], [ %75, %77 ]
  call void @llvm.dbg.value(metadata i32 %37, metadata !41, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 %38, metadata !27, metadata !DIExpression()), !dbg !112
  %39 = trunc i64 %38 to i32, !dbg !115
  %40 = shl i32 %39, 1, !dbg !115
  %41 = add i32 %40, 3, !dbg !115
  call void @llvm.dbg.value(metadata i32 %41, metadata !42, metadata !DIExpression()), !dbg !116
  %42 = zext i32 %37 to i64, !dbg !117
  call void @llvm.dbg.value(metadata i32 %41, metadata !118, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i64 -1, metadata !124, metadata !DIExpression()), !dbg !127
  %43 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %42, i32 0, !dbg !128
  store i32 %41, i32* %43, align 8, !dbg !129, !tbaa !130
  %44 = zext i32 %41 to i64, !dbg !134
  call void @llvm.dbg.value(metadata i64 %44, metadata !135, metadata !DIExpression()), !dbg !145
  %45 = shl i32 %41, 1, !dbg !147
  %46 = and i32 %45, 28, !dbg !147
  %47 = lshr i32 -180781647, %46, !dbg !147
  %48 = zext i32 %47 to i64, !dbg !148
  call void @llvm.dbg.value(metadata i64 %48, metadata !140, metadata !DIExpression()), !dbg !149
  br label %49, !dbg !150

; <label>:49:                                     ; preds = %49, %36
  %50 = phi i64 [ %48, %36 ], [ %53, %49 ], !dbg !149
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  %51 = mul i64 %50, %44, !dbg !151
  %52 = sub i64 2, %51, !dbg !152
  %53 = mul i64 %52, %50, !dbg !152
  call void @llvm.dbg.value(metadata i64 %53, metadata !141, metadata !DIExpression()), !dbg !153
  %54 = icmp eq i64 %53, %50, !dbg !154
  call void @llvm.dbg.value(metadata i64 %53, metadata !140, metadata !DIExpression()), !dbg !149
  br i1 %54, label %55, label %49, !llvm.loop !156

; <label>:55:                                     ; preds = %49
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  %56 = add i32 %37, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %50, metadata !140, metadata !DIExpression()), !dbg !149
  %57 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %42, i32 1, !dbg !160
  store i64 %50, i64* %57, align 8, !dbg !161, !tbaa !162
  %58 = udiv i64 -1, %44, !dbg !163
  %59 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %42, i32 2, !dbg !164
  store i64 %58, i64* %59, align 8, !dbg !165, !tbaa !166
  %60 = mul i32 %41, %41, !dbg !167
  %61 = add i32 %60, -3, !dbg !169
  %62 = lshr exact i32 %61, 1, !dbg !170
  call void @llvm.dbg.value(metadata i32 %62, metadata !46, metadata !DIExpression()), !dbg !171
  %63 = zext i32 %62 to i64, !dbg !172
  %64 = icmp ult i64 %63, %19, !dbg !174
  br i1 %64, label %65, label %72, !dbg !175

; <label>:65:                                     ; preds = %55, %65
  %66 = phi i64 [ %70, %65 ], [ %63, %55 ]
  %67 = phi i32 [ %69, %65 ], [ %62, %55 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !46, metadata !DIExpression()), !dbg !171
  %68 = getelementptr inbounds i8, i8* %20, i64 %66, !dbg !176
  store i8 0, i8* %68, align 1, !dbg !177, !tbaa !178
  %69 = add i32 %67, %41, !dbg !179
  call void @llvm.dbg.value(metadata i32 %69, metadata !46, metadata !DIExpression()), !dbg !171
  %70 = zext i32 %69 to i64, !dbg !172
  %71 = icmp ult i64 %70, %19, !dbg !174
  br i1 %71, label %65, label %72, !dbg !175, !llvm.loop !180

; <label>:72:                                     ; preds = %65, %55
  br label %73, !dbg !182

; <label>:73:                                     ; preds = %72, %77
  %74 = phi i64 [ %75, %77 ], [ %38, %72 ], !dbg !183
  call void @llvm.dbg.value(metadata i64 %74, metadata !27, metadata !DIExpression()), !dbg !112
  %75 = add i64 %74, 1, !dbg !182
  call void @llvm.dbg.value(metadata i64 %75, metadata !27, metadata !DIExpression()), !dbg !112
  %76 = icmp ult i64 %75, %19, !dbg !184
  br i1 %76, label %77, label %81, !dbg !185

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds i8, i8* %20, i64 %75, !dbg !186
  %79 = load i8, i8* %78, align 1, !dbg !186, !tbaa !178
  %80 = icmp eq i8 %79, 0, !dbg !187
  br i1 %80, label %73, label %36, !dbg !188, !llvm.loop !189

; <label>:81:                                     ; preds = %73, %32
  %82 = phi i32 [ 0, %32 ], [ %56, %73 ], !dbg !183
  call void @llvm.dbg.value(metadata i32 %82, metadata !41, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata %struct.prime* %33, metadata !191, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32 undef, metadata !198, metadata !DIExpression()) #8, !dbg !210
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()) #8, !dbg !211
  call void @llvm.dbg.value(metadata i64 -1, metadata !203, metadata !DIExpression()) #8, !dbg !212
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()) #8, !dbg !211
  %83 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !213
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 64) #8, !dbg !214
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()) #8, !dbg !215
  call void @llvm.dbg.value(metadata i32 2, metadata !200, metadata !DIExpression()) #8, !dbg !216
  %85 = icmp eq i32 %82, 0, !dbg !217
  br i1 %85, label %121, label %86, !dbg !218

; <label>:86:                                     ; preds = %81
  %87 = zext i32 %82 to i64, !dbg !219
  br label %88, !dbg !219

; <label>:88:                                     ; preds = %106, %86
  %89 = phi i64 [ 0, %86 ], [ %117, %106 ]
  %90 = phi i32 [ 2, %86 ], [ %116, %106 ]
  call void @llvm.dbg.value(metadata i64 %89, metadata !199, metadata !DIExpression()) #8, !dbg !215
  call void @llvm.dbg.value(metadata i32 %90, metadata !200, metadata !DIExpression()) #8, !dbg !216
  %91 = trunc i64 %89 to i32, !dbg !219
  %92 = add i32 %91, 8, !dbg !219
  %93 = icmp ult i32 %92, %82, !dbg !220
  br i1 %93, label %97, label %94, !dbg !221

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %89, i32 0
  %96 = load i32, i32* %95, align 8, !dbg !222, !tbaa !130
  br label %106, !dbg !221

; <label>:97:                                     ; preds = %88
  %98 = zext i32 %92 to i64, !dbg !223
  %99 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %98, i32 0, !dbg !224
  %100 = load i32, i32* %99, align 8, !dbg !224, !tbaa !130
  %101 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %89, i32 0, !dbg !225
  %102 = load i32, i32* %101, align 8, !dbg !225, !tbaa !130
  %103 = sub i32 %100, %102, !dbg !226
  call void @llvm.dbg.value(metadata i32 %103, metadata !204, metadata !DIExpression()) #8, !dbg !227
  %104 = icmp ugt i32 %103, 255, !dbg !228
  br i1 %104, label %105, label %106, !dbg !230

; <label>:105:                                    ; preds = %97
  tail call void @abort() #9, !dbg !231
  unreachable, !dbg !231

; <label>:106:                                    ; preds = %97, %94
  %107 = phi i32* [ %95, %94 ], [ %101, %97 ], !dbg !222
  %108 = phi i32 [ %96, %94 ], [ %102, %97 ], !dbg !222
  %109 = phi i32 [ 255, %94 ], [ %103, %97 ]
  %110 = sub i32 %108, %90, !dbg !222
  %111 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %110, i32 %109) #8, !dbg !222
  %112 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %89, i32 1, !dbg !232
  %113 = load i64, i64* %112, align 8, !dbg !232, !tbaa !162
  tail call fastcc void @print_wide_uint(i64 %113, i32 0, i32 64) #8, !dbg !233
  %114 = load i32, i32* %107, align 8, !dbg !234, !tbaa !130
  %115 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %114) #8, !dbg !234
  %116 = load i32, i32* %107, align 8, !dbg !235, !tbaa !130
  %117 = add nuw nsw i64 %89, 1, !dbg !236
  call void @llvm.dbg.value(metadata i32 undef, metadata !199, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !215
  call void @llvm.dbg.value(metadata i32 %116, metadata !200, metadata !DIExpression()) #8, !dbg !216
  %118 = icmp ult i64 %117, %87, !dbg !217
  br i1 %118, label %88, label %119, !dbg !218, !llvm.loop !237

; <label>:119:                                    ; preds = %106
  %120 = add i32 %116, 2, !dbg !240
  br label %121, !dbg !240

; <label>:121:                                    ; preds = %119, %81
  %122 = phi i32 [ 4, %81 ], [ %120, %119 ]
  %123 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !240
  call void @llvm.dbg.value(metadata i32 %122, metadata !200, metadata !DIExpression()) #8, !dbg !216
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()) #8, !dbg !215
  call void @llvm.dbg.value(metadata i32 1, metadata !201, metadata !DIExpression()) #8, !dbg !241
  %124 = bitcast i8* %27 to i32*, !dbg !242
  %125 = load i32, i32* %124, align 8, !dbg !242, !tbaa !130
  %126 = mul i32 %125, %125, !dbg !248
  %127 = icmp ugt i32 %126, %122, !dbg !249
  br i1 %127, label %150, label %131, !dbg !250

; <label>:128:                                    ; preds = %140
  call void @llvm.dbg.value(metadata i32 %132, metadata !200, metadata !DIExpression()) #8, !dbg !216
  %129 = add i32 %132, 2, !dbg !251
  call void @llvm.dbg.value(metadata i32 %129, metadata !200, metadata !DIExpression()) #8, !dbg !216
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()) #8, !dbg !215
  call void @llvm.dbg.value(metadata i32 1, metadata !201, metadata !DIExpression()) #8, !dbg !241
  %130 = icmp ugt i32 %126, %129, !dbg !249
  br i1 %130, label %150, label %131, !dbg !250

; <label>:131:                                    ; preds = %121, %128
  %132 = phi i32 [ %129, %128 ], [ %122, %121 ]
  %133 = zext i32 %132 to i64
  br label %140, !dbg !250

; <label>:134:                                    ; preds = %140
  call void @llvm.dbg.value(metadata i32 %149, metadata !199, metadata !DIExpression()) #8, !dbg !215
  %135 = zext i32 %149 to i64, !dbg !252
  %136 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %135, i32 0, !dbg !242
  %137 = load i32, i32* %136, align 8, !dbg !242, !tbaa !130
  %138 = mul i32 %137, %137, !dbg !248
  %139 = icmp ugt i32 %138, %132, !dbg !249
  br i1 %139, label %150, label %140, !dbg !250, !llvm.loop !253

; <label>:140:                                    ; preds = %134, %131
  %141 = phi i64 [ 0, %131 ], [ %135, %134 ]
  %142 = phi i32 [ 0, %131 ], [ %149, %134 ]
  call void @llvm.dbg.value(metadata i32 %142, metadata !199, metadata !DIExpression()) #8, !dbg !215
  %143 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %141, i32 1, !dbg !256
  %144 = load i64, i64* %143, align 8, !dbg !256, !tbaa !162
  %145 = mul i64 %144, %133, !dbg !258
  %146 = getelementptr inbounds %struct.prime, %struct.prime* %33, i64 %141, i32 2, !dbg !259
  %147 = load i64, i64* %146, align 8, !dbg !259, !tbaa !166
  %148 = icmp ugt i64 %145, %147, !dbg !260
  %149 = add i32 %142, 1, !dbg !261
  call void @llvm.dbg.value(metadata i32 %149, metadata !199, metadata !DIExpression()) #8, !dbg !215
  br i1 %148, label %134, label %128, !dbg !262

; <label>:150:                                    ; preds = %128, %134, %121
  %151 = phi i32 [ %122, %121 ], [ %132, %134 ], [ %129, %128 ], !dbg !251
  %152 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %151) #8, !dbg !263
  tail call void @free(i8* %20) #8, !dbg !264
  tail call void @free(i8* nonnull %27) #8, !dbg !265
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !266, !tbaa !54
  %154 = tail call i32 @ferror(%struct._IO_FILE* %153) #8, !dbg !268
  %155 = tail call i32 @fclose(%struct._IO_FILE* %153), !dbg !269
  %156 = sub i32 0, %155, !dbg !270
  %157 = icmp eq i32 %154, %156, !dbg !270
  br i1 %157, label %164, label %158, !dbg !271

; <label>:158:                                    ; preds = %150
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !272, !tbaa !54
  %160 = tail call i32* @__errno_location() #10, !dbg !272
  %161 = load i32, i32* %160, align 4, !dbg !272, !tbaa !274
  %162 = tail call i8* @strerror(i32 %161) #8, !dbg !272
  %163 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %159, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %162) #8, !dbg !272
  br label %164, !dbg !275

; <label>:164:                                    ; preds = %150, %8, %158, %4
  %165 = phi i32 [ 1, %4 ], [ 1, %158 ], [ 0, %8 ], [ 0, %150 ], !dbg !276
  ret i32 %165, !dbg !277
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_wide_uint(i64, i32, i32) unnamed_addr #0 !dbg !278 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !282, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 %1, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %2, metadata !284, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 7, metadata !285, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 28, metadata !286, metadata !DIExpression()), !dbg !295
  %4 = trunc i64 %0 to i32, !dbg !296
  %5 = and i32 %4, 268435455, !dbg !296
  call void @llvm.dbg.value(metadata i32 %5, metadata !287, metadata !DIExpression()), !dbg !297
  %6 = zext i32 %5 to i64, !dbg !298
  %7 = icmp eq i64 %6, %0, !dbg !299
  br i1 %7, label %20, label %8, !dbg !300

; <label>:8:                                      ; preds = %3
  %9 = lshr i64 %0, 28, !dbg !301
  %10 = icmp ugt i64 %0, 72057594037927935, !dbg !302
  br i1 %10, label %11, label %16, !dbg !303

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !304
  %13 = add nsw i32 %1, 1, !dbg !306
  tail call fastcc void @print_wide_uint(i64 %9, i32 %13, i32 %2), !dbg !307
  %14 = add nsw i32 %1, 3, !dbg !308
  %15 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !308
  br label %18, !dbg !308

; <label>:16:                                     ; preds = %8
  %17 = add nsw i32 %1, 1, !dbg !306
  tail call fastcc void @print_wide_uint(i64 %9, i32 %17, i32 %2), !dbg !307
  br label %18

; <label>:18:                                     ; preds = %16, %11
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 28) #8, !dbg !310
  br label %28, !dbg !311

; <label>:20:                                     ; preds = %3
  %21 = icmp eq i32 %1, 0, !dbg !312
  br i1 %21, label %28, label %22, !dbg !314

; <label>:22:                                     ; preds = %20
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !315
  %24 = add i32 %2, -1, !dbg !317
  %25 = urem i32 %24, 28, !dbg !318
  %26 = and i32 %25, 3, !dbg !319
  %27 = add nuw nsw i32 %26, 1, !dbg !320
  call void @llvm.dbg.value(metadata i32 %27, metadata !285, metadata !DIExpression()), !dbg !294
  br label %28, !dbg !321

; <label>:28:                                     ; preds = %20, %22, %18
  %29 = phi i32 [ 7, %18 ], [ %27, %22 ], [ 7, %20 ], !dbg !322
  call void @llvm.dbg.value(metadata i32 %29, metadata !285, metadata !DIExpression()), !dbg !294
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %29, i32 %5) #8, !dbg !323
  ret void, !dbg !324
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @strerror(i32) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "src/make-prime-list.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 172, type: !16, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4, !5}
!18 = !{!19, !20, !21, !22, !23, !27, !28, !41, !42, !46}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !15, file: !1, line: 172, type: !4)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !15, file: !1, line: 172, type: !5)
!21 = !DILocalVariable(name: "limit", scope: !15, file: !1, line: 174, type: !4)
!22 = !DILocalVariable(name: "sieve", scope: !15, file: !1, line: 176, type: !6)
!23 = !DILocalVariable(name: "size", scope: !15, file: !1, line: 177, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 62, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 177, type: !24)
!28 = !DILocalVariable(name: "prime_list", scope: !15, file: !1, line: 179, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prime", file: !1, line: 49, size: 192, elements: !31)
!31 = !{!32, !34, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !30, file: !1, line: 51, baseType: !33, size: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "pinv", scope: !30, file: !1, line: 52, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "wide_uint", file: !1, line: 45, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !37, line: 102, baseType: !38)
!37 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !39, line: 72, baseType: !26)
!39 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lim", scope: !30, file: !1, line: 53, baseType: !35, size: 64, offset: 128)
!41 = !DILocalVariable(name: "nprimes", scope: !15, file: !1, line: 180, type: !33)
!42 = !DILocalVariable(name: "p", scope: !43, file: !1, line: 206, type: !33)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 205, column: 5)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 204, column: 3)
!45 = distinct !DILexicalBlock(scope: !15, file: !1, line: 204, column: 3)
!46 = !DILocalVariable(name: "j", scope: !43, file: !1, line: 207, type: !33)
!47 = !DILocation(line: 172, column: 11, scope: !15)
!48 = !DILocation(line: 172, column: 24, scope: !15)
!49 = !DILocation(line: 182, column: 12, scope: !50)
!50 = distinct !DILexicalBlock(scope: !15, file: !1, line: 182, column: 7)
!51 = !DILocation(line: 182, column: 7, scope: !15)
!52 = !DILocation(line: 184, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 183, column: 5)
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !DILocation(line: 186, column: 7, scope: !53)
!59 = !DILocation(line: 188, column: 17, scope: !15)
!60 = !DILocalVariable(name: "__nptr", arg: 1, scope: !61, file: !62, line: 361, type: !65)
!61 = distinct !DISubprogram(name: "atoi", scope: !62, file: !62, line: 361, type: !63, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !67)
!62 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!63 = !DISubroutineType(types: !64)
!64 = !{!4, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!67 = !{!60}
!68 = !DILocation(line: 361, column: 1, scope: !61, inlinedAt: !69)
!69 = distinct !DILocation(line: 188, column: 11, scope: !15)
!70 = !DILocation(line: 363, column: 16, scope: !61, inlinedAt: !69)
!71 = !DILocation(line: 363, column: 10, scope: !61, inlinedAt: !69)
!72 = !DILocation(line: 174, column: 7, scope: !15)
!73 = !DILocation(line: 189, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !15, file: !1, line: 189, column: 7)
!75 = !DILocation(line: 189, column: 7, scope: !15)
!76 = !DILocation(line: 193, column: 16, scope: !77)
!77 = distinct !DILexicalBlock(scope: !15, file: !1, line: 193, column: 8)
!78 = !DILocation(line: 193, column: 8, scope: !15)
!79 = !DILocation(line: 196, column: 16, scope: !15)
!80 = !DILocation(line: 196, column: 19, scope: !15)
!81 = !DILocation(line: 196, column: 10, scope: !15)
!82 = !DILocation(line: 177, column: 10, scope: !15)
!83 = !DILocalVariable(name: "s", arg: 1, scope: !84, file: !1, line: 161, type: !24)
!84 = distinct !DISubprogram(name: "xalloc", scope: !1, file: !1, line: 161, type: !85, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{!8, !24}
!87 = !{!83, !88}
!88 = !DILocalVariable(name: "p", scope: !84, file: !1, line: 163, type: !8)
!89 = !DILocation(line: 161, column: 16, scope: !84, inlinedAt: !90)
!90 = distinct !DILocation(line: 198, column: 11, scope: !15)
!91 = !DILocation(line: 163, column: 13, scope: !84, inlinedAt: !90)
!92 = !DILocation(line: 163, column: 9, scope: !84, inlinedAt: !90)
!93 = !DILocation(line: 164, column: 7, scope: !94, inlinedAt: !90)
!94 = distinct !DILexicalBlock(scope: !84, file: !1, line: 164, column: 7)
!95 = !DILocation(line: 164, column: 7, scope: !84, inlinedAt: !90)
!96 = !DILocation(line: 167, column: 3, scope: !84, inlinedAt: !90)
!97 = !DILocation(line: 168, column: 3, scope: !84, inlinedAt: !90)
!98 = !DILocation(line: 176, column: 9, scope: !15)
!99 = !DILocation(line: 199, column: 3, scope: !15)
!100 = !DILocation(line: 201, column: 29, scope: !15)
!101 = !DILocation(line: 161, column: 16, scope: !84, inlinedAt: !102)
!102 = distinct !DILocation(line: 201, column: 16, scope: !15)
!103 = !DILocation(line: 163, column: 13, scope: !84, inlinedAt: !102)
!104 = !DILocation(line: 163, column: 9, scope: !84, inlinedAt: !102)
!105 = !DILocation(line: 164, column: 7, scope: !94, inlinedAt: !102)
!106 = !DILocation(line: 164, column: 7, scope: !84, inlinedAt: !102)
!107 = !DILocation(line: 167, column: 3, scope: !84, inlinedAt: !102)
!108 = !DILocation(line: 168, column: 3, scope: !84, inlinedAt: !102)
!109 = !DILocation(line: 201, column: 16, scope: !15)
!110 = !DILocation(line: 179, column: 17, scope: !15)
!111 = !DILocation(line: 180, column: 12, scope: !15)
!112 = !DILocation(line: 177, column: 16, scope: !15)
!113 = !DILocation(line: 204, column: 17, scope: !44)
!114 = !DILocation(line: 204, column: 3, scope: !45)
!115 = !DILocation(line: 206, column: 20, scope: !43)
!116 = !DILocation(line: 206, column: 16, scope: !43)
!117 = !DILocation(line: 209, column: 23, scope: !43)
!118 = !DILocalVariable(name: "p", arg: 2, scope: !119, file: !1, line: 70, type: !33)
!119 = distinct !DISubprogram(name: "process_prime", scope: !1, file: !1, line: 70, type: !120, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !29, !33}
!122 = !{!123, !118, !124}
!123 = !DILocalVariable(name: "info", arg: 1, scope: !119, file: !1, line: 70, type: !29)
!124 = !DILocalVariable(name: "max", scope: !119, file: !1, line: 72, type: !35)
!125 = !DILocation(line: 70, column: 45, scope: !119, inlinedAt: !126)
!126 = distinct !DILocation(line: 209, column: 7, scope: !43)
!127 = !DILocation(line: 72, column: 13, scope: !119, inlinedAt: !126)
!128 = !DILocation(line: 73, column: 9, scope: !119, inlinedAt: !126)
!129 = !DILocation(line: 73, column: 11, scope: !119, inlinedAt: !126)
!130 = !{!131, !132, i64 0}
!131 = !{!"prime", !132, i64 0, !133, i64 8, !133, i64 16}
!132 = !{!"int", !56, i64 0}
!133 = !{!"long", !56, i64 0}
!134 = !DILocation(line: 74, column: 25, scope: !119, inlinedAt: !126)
!135 = !DILocalVariable(name: "a", arg: 1, scope: !136, file: !1, line: 57, type: !35)
!136 = distinct !DISubprogram(name: "binvert", scope: !1, file: !1, line: 57, type: !137, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{!35, !35}
!139 = !{!135, !140, !141}
!140 = !DILocalVariable(name: "x", scope: !136, file: !1, line: 59, type: !35)
!141 = !DILocalVariable(name: "y", scope: !142, file: !1, line: 62, type: !35)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 61, column: 5)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 60, column: 3)
!144 = distinct !DILexicalBlock(scope: !136, file: !1, line: 60, column: 3)
!145 = !DILocation(line: 57, column: 20, scope: !136, inlinedAt: !146)
!146 = distinct !DILocation(line: 74, column: 16, scope: !119, inlinedAt: !126)
!147 = !DILocation(line: 59, column: 28, scope: !136, inlinedAt: !146)
!148 = !DILocation(line: 59, column: 17, scope: !136, inlinedAt: !146)
!149 = !DILocation(line: 59, column: 13, scope: !136, inlinedAt: !146)
!150 = !DILocation(line: 60, column: 3, scope: !136, inlinedAt: !146)
!151 = !DILocation(line: 62, column: 28, scope: !142, inlinedAt: !146)
!152 = !DILocation(line: 62, column: 25, scope: !142, inlinedAt: !146)
!153 = !DILocation(line: 62, column: 17, scope: !142, inlinedAt: !146)
!154 = !DILocation(line: 63, column: 13, scope: !155, inlinedAt: !146)
!155 = distinct !DILexicalBlock(scope: !142, file: !1, line: 63, column: 11)
!156 = distinct !{!156, !157, !158}
!157 = !DILocation(line: 60, column: 3, scope: !144)
!158 = !DILocation(line: 66, column: 5, scope: !144)
!159 = !DILocation(line: 209, column: 41, scope: !43)
!160 = !DILocation(line: 74, column: 9, scope: !119, inlinedAt: !126)
!161 = !DILocation(line: 74, column: 14, scope: !119, inlinedAt: !126)
!162 = !{!131, !133, i64 8}
!163 = !DILocation(line: 75, column: 19, scope: !119, inlinedAt: !126)
!164 = !DILocation(line: 75, column: 9, scope: !119, inlinedAt: !126)
!165 = !DILocation(line: 75, column: 13, scope: !119, inlinedAt: !126)
!166 = !{!131, !133, i64 16}
!167 = !DILocation(line: 211, column: 18, scope: !168)
!168 = distinct !DILexicalBlock(scope: !43, file: !1, line: 211, column: 7)
!169 = !DILocation(line: 211, column: 21, scope: !168)
!170 = !DILocation(line: 211, column: 25, scope: !168)
!171 = !DILocation(line: 207, column: 16, scope: !43)
!172 = !DILocation(line: 211, column: 29, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !1, line: 211, column: 7)
!174 = !DILocation(line: 211, column: 31, scope: !173)
!175 = !DILocation(line: 211, column: 7, scope: !168)
!176 = !DILocation(line: 212, column: 9, scope: !173)
!177 = !DILocation(line: 212, column: 18, scope: !173)
!178 = !{!56, !56, i64 0}
!179 = !DILocation(line: 211, column: 40, scope: !173)
!180 = distinct !{!180, !175, !181}
!181 = !DILocation(line: 212, column: 20, scope: !168)
!182 = !DILocation(line: 214, column: 14, scope: !43)
!183 = !DILocation(line: 0, scope: !43)
!184 = !DILocation(line: 214, column: 18, scope: !43)
!185 = !DILocation(line: 214, column: 25, scope: !43)
!186 = !DILocation(line: 214, column: 28, scope: !43)
!187 = !DILocation(line: 214, column: 37, scope: !43)
!188 = !DILocation(line: 214, column: 7, scope: !43)
!189 = distinct !{!189, !188, !190}
!190 = !DILocation(line: 215, column: 9, scope: !43)
!191 = !DILocalVariable(name: "primes", arg: 1, scope: !192, file: !1, line: 110, type: !195)
!192 = distinct !DISubprogram(name: "output_primes", scope: !1, file: !1, line: 110, type: !193, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !197)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195, !33}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!197 = !{!191, !198, !199, !200, !201, !202, !203, !204}
!198 = !DILocalVariable(name: "nprimes", arg: 2, scope: !192, file: !1, line: 110, type: !33)
!199 = !DILocalVariable(name: "i", scope: !192, file: !1, line: 112, type: !33)
!200 = !DILocalVariable(name: "p", scope: !192, file: !1, line: 113, type: !33)
!201 = !DILocalVariable(name: "is_prime", scope: !192, file: !1, line: 114, type: !4)
!202 = !DILocalVariable(name: "wide_uint_bits", scope: !192, file: !1, line: 119, type: !33)
!203 = !DILocalVariable(name: "mask", scope: !192, file: !1, line: 120, type: !35)
!204 = !DILocalVariable(name: "d8", scope: !205, file: !1, line: 129, type: !33)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 128, column: 5)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 127, column: 3)
!207 = distinct !DILexicalBlock(scope: !192, file: !1, line: 127, column: 3)
!208 = !DILocation(line: 110, column: 36, scope: !192, inlinedAt: !209)
!209 = distinct !DILocation(line: 218, column: 3, scope: !15)
!210 = !DILocation(line: 110, column: 53, scope: !192, inlinedAt: !209)
!211 = !DILocation(line: 119, column: 12, scope: !192, inlinedAt: !209)
!212 = !DILocation(line: 120, column: 13, scope: !192, inlinedAt: !209)
!213 = !DILocation(line: 124, column: 3, scope: !192, inlinedAt: !209)
!214 = !DILocation(line: 125, column: 3, scope: !192, inlinedAt: !209)
!215 = !DILocation(line: 112, column: 12, scope: !192, inlinedAt: !209)
!216 = !DILocation(line: 113, column: 12, scope: !192, inlinedAt: !209)
!217 = !DILocation(line: 127, column: 24, scope: !206, inlinedAt: !209)
!218 = !DILocation(line: 127, column: 3, scope: !207, inlinedAt: !209)
!219 = !DILocation(line: 129, column: 27, scope: !205, inlinedAt: !209)
!220 = !DILocation(line: 129, column: 31, scope: !205, inlinedAt: !209)
!221 = !DILocation(line: 129, column: 25, scope: !205, inlinedAt: !209)
!222 = !DILocation(line: 132, column: 7, scope: !205, inlinedAt: !209)
!223 = !DILocation(line: 129, column: 43, scope: !205, inlinedAt: !209)
!224 = !DILocation(line: 129, column: 57, scope: !205, inlinedAt: !209)
!225 = !DILocation(line: 129, column: 71, scope: !205, inlinedAt: !209)
!226 = !DILocation(line: 129, column: 59, scope: !205, inlinedAt: !209)
!227 = !DILocation(line: 129, column: 20, scope: !205, inlinedAt: !209)
!228 = !DILocation(line: 130, column: 15, scope: !229, inlinedAt: !209)
!229 = distinct !DILexicalBlock(scope: !205, file: !1, line: 130, column: 11)
!230 = !DILocation(line: 130, column: 11, scope: !205, inlinedAt: !209)
!231 = !DILocation(line: 131, column: 9, scope: !229, inlinedAt: !209)
!232 = !DILocation(line: 133, column: 34, scope: !205, inlinedAt: !209)
!233 = !DILocation(line: 133, column: 7, scope: !205, inlinedAt: !209)
!234 = !DILocation(line: 134, column: 7, scope: !205, inlinedAt: !209)
!235 = !DILocation(line: 135, column: 21, scope: !205, inlinedAt: !209)
!236 = !DILocation(line: 127, column: 36, scope: !206, inlinedAt: !209)
!237 = distinct !{!237, !238, !239}
!238 = !DILocation(line: 127, column: 3, scope: !207)
!239 = !DILocation(line: 136, column: 5, scope: !207)
!240 = !DILocation(line: 138, column: 3, scope: !192, inlinedAt: !209)
!241 = !DILocation(line: 114, column: 7, scope: !192, inlinedAt: !209)
!242 = !DILocation(line: 146, column: 25, scope: !243, inlinedAt: !209)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 146, column: 15)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 145, column: 9)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 144, column: 7)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 144, column: 7)
!247 = distinct !DILexicalBlock(scope: !192, file: !1, line: 142, column: 5)
!248 = !DILocation(line: 146, column: 27, scope: !243, inlinedAt: !209)
!249 = !DILocation(line: 146, column: 41, scope: !243, inlinedAt: !209)
!250 = !DILocation(line: 146, column: 15, scope: !244, inlinedAt: !209)
!251 = !DILocation(line: 143, column: 9, scope: !247, inlinedAt: !209)
!252 = !DILocation(line: 146, column: 15, scope: !243, inlinedAt: !209)
!253 = distinct !{!253, !254, !255}
!254 = !DILocation(line: 144, column: 7, scope: !246)
!255 = !DILocation(line: 153, column: 9, scope: !246)
!256 = !DILocation(line: 148, column: 29, scope: !257, inlinedAt: !209)
!257 = distinct !DILexicalBlock(scope: !244, file: !1, line: 148, column: 15)
!258 = !DILocation(line: 148, column: 17, scope: !257, inlinedAt: !209)
!259 = !DILocation(line: 148, column: 47, scope: !257, inlinedAt: !209)
!260 = !DILocation(line: 148, column: 34, scope: !257, inlinedAt: !209)
!261 = !DILocation(line: 144, column: 44, scope: !245, inlinedAt: !209)
!262 = !DILocation(line: 148, column: 15, scope: !244, inlinedAt: !209)
!263 = !DILocation(line: 157, column: 3, scope: !192, inlinedAt: !209)
!264 = !DILocation(line: 220, column: 3, scope: !15)
!265 = !DILocation(line: 221, column: 3, scope: !15)
!266 = !DILocation(line: 223, column: 15, scope: !267)
!267 = distinct !DILexicalBlock(scope: !15, file: !1, line: 223, column: 7)
!268 = !DILocation(line: 223, column: 7, scope: !267)
!269 = !DILocation(line: 223, column: 25, scope: !267)
!270 = !DILocation(line: 223, column: 23, scope: !267)
!271 = !DILocation(line: 223, column: 7, scope: !15)
!272 = !DILocation(line: 225, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !267, file: !1, line: 224, column: 5)
!274 = !{!132, !132, i64 0}
!275 = !DILocation(line: 226, column: 7, scope: !273)
!276 = !DILocation(line: 0, scope: !15)
!277 = !DILocation(line: 230, column: 1, scope: !15)
!278 = distinct !DISubprogram(name: "print_wide_uint", scope: !1, file: !1, line: 79, type: !279, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !35, !4, !33}
!281 = !{!282, !283, !284, !285, !286, !287, !288}
!282 = !DILocalVariable(name: "n", arg: 1, scope: !278, file: !1, line: 79, type: !35)
!283 = !DILocalVariable(name: "nesting", arg: 2, scope: !278, file: !1, line: 79, type: !4)
!284 = !DILocalVariable(name: "wide_uint_bits", arg: 3, scope: !278, file: !1, line: 79, type: !33)
!285 = !DILocalVariable(name: "hex_digits_per_literal", scope: !278, file: !1, line: 84, type: !4)
!286 = !DILocalVariable(name: "bits_per_literal", scope: !278, file: !1, line: 85, type: !4)
!287 = !DILocalVariable(name: "remainder", scope: !278, file: !1, line: 87, type: !33)
!288 = !DILocalVariable(name: "needs_parentheses", scope: !289, file: !1, line: 91, type: !4)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 90, column: 5)
!290 = distinct !DILexicalBlock(scope: !278, file: !1, line: 89, column: 7)
!291 = !DILocation(line: 79, column: 28, scope: !278)
!292 = !DILocation(line: 79, column: 35, scope: !278)
!293 = !DILocation(line: 79, column: 53, scope: !278)
!294 = !DILocation(line: 84, column: 7, scope: !278)
!295 = !DILocation(line: 85, column: 7, scope: !278)
!296 = !DILocation(line: 87, column: 24, scope: !278)
!297 = !DILocation(line: 87, column: 12, scope: !278)
!298 = !DILocation(line: 89, column: 12, scope: !290)
!299 = !DILocation(line: 89, column: 9, scope: !290)
!300 = !DILocation(line: 89, column: 7, scope: !278)
!301 = !DILocation(line: 91, column: 33, scope: !289)
!302 = !DILocation(line: 91, column: 73, scope: !289)
!303 = !DILocation(line: 92, column: 11, scope: !289)
!304 = !DILocation(line: 93, column: 9, scope: !305)
!305 = distinct !DILexicalBlock(scope: !289, file: !1, line: 92, column: 11)
!306 = !DILocation(line: 94, column: 55, scope: !289)
!307 = !DILocation(line: 94, column: 7, scope: !289)
!308 = !DILocation(line: 96, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !289, file: !1, line: 95, column: 11)
!310 = !DILocation(line: 97, column: 7, scope: !289)
!311 = !DILocation(line: 98, column: 5, scope: !289)
!312 = !DILocation(line: 99, column: 12, scope: !313)
!313 = distinct !DILexicalBlock(scope: !290, file: !1, line: 99, column: 12)
!314 = !DILocation(line: 99, column: 12, scope: !290)
!315 = !DILocation(line: 101, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !1, line: 100, column: 5)
!317 = !DILocation(line: 103, column: 28, scope: !316)
!318 = !DILocation(line: 103, column: 33, scope: !316)
!319 = !DILocation(line: 103, column: 53, scope: !316)
!320 = !DILocation(line: 103, column: 57, scope: !316)
!321 = !DILocation(line: 104, column: 5, scope: !316)
!322 = !DILocation(line: 0, scope: !278)
!323 = !DILocation(line: 106, column: 3, scope: !278)
!324 = !DILocation(line: 107, column: 1, scope: !278)
