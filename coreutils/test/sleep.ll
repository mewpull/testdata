; ModuleID = 'coreutils-8.30/src/sleep.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [383 x i8] c"Usage: %s NUMBER[SUFFIX]...\0A  or:  %s OPTION\0APause for NUMBER seconds.  SUFFIX may be 's' for seconds (the default),\0A'm' for minutes, 'h' for hours or 'd' for days.  Unlike most implementations\0Athat require NUMBER be an integer, here NUMBER may be an arbitrary floating\0Apoint number.  Given two or more arguments, pause for the amount of time\0Aspecified by the sum of their values.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot read realtime clock\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !24
@.str.29 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !29
@.str.32 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !61
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !66
@.str.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !70
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.43 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.44, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.45, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !77
@.str.1.44 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.45 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !93
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !100
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !145
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !152
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !164
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !171
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !178
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !166
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !180
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.77 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.93 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.94 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.95 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !186
@.str.1.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !656 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !661, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %0, metadata !660, metadata !DIExpression()), !dbg !684
  %3 = icmp eq i32 %0, 0, !dbg !685
  br i1 %3, label %9, label %4, !dbg !686

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !687, !tbaa !689
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !687
  %7 = load i8*, i8** @program_name, align 8, !dbg !687, !tbaa !689
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !687
  br label %54, !dbg !687

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([383 x i8], [383 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !693
  %11 = load i8*, i8** @program_name, align 8, !dbg !693, !tbaa !689
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #10, !dbg !693
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !694
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !694, !tbaa !689
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !694
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !695
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !695, !tbaa !689
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !695
  %19 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !696
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %19) #10, !dbg !696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %19, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !680
  %20 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !697
  call void @llvm.dbg.value(metadata %struct.infomap* %20, metadata !669, metadata !DIExpression()) #10, !dbg !698
  br label %21, !dbg !699

; <label>:21:                                     ; preds = %26, %9
  %22 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %23 = phi %struct.infomap* [ %27, %26 ], [ %20, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !669, metadata !DIExpression()) #10, !dbg !698
  %24 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %22) #15, !dbg !699
  %25 = icmp eq i32 %24, 0, !dbg !699
  br i1 %25, label %31, label %26, !dbg !700

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 1, !dbg !701
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !669, metadata !DIExpression()) #10, !dbg !698
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %27, i64 0, i32 0, !dbg !702
  %29 = load i8*, i8** %28, align 8, !dbg !702, !tbaa !703
  %30 = icmp eq i8* %29, null, !dbg !705
  br i1 %30, label %31, label %21, !dbg !706, !llvm.loop !707

; <label>:31:                                     ; preds = %26, %21
  %32 = phi %struct.infomap* [ %27, %26 ], [ %23, %21 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !669, metadata !DIExpression()) #10, !dbg !698
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !669, metadata !DIExpression()) #10, !dbg !698
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 1, !dbg !710
  %34 = load i8*, i8** %33, align 8, !dbg !710, !tbaa !712
  %35 = icmp eq i8* %34, null, !dbg !713
  %36 = select i1 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %34, !dbg !714
  call void @llvm.dbg.value(metadata i8* %36, metadata !668, metadata !DIExpression()) #10, !dbg !715
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !716
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !716
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !717
  call void @llvm.dbg.value(metadata i8* %39, metadata !676, metadata !DIExpression()) #10, !dbg !718
  %40 = icmp eq i8* %39, null, !dbg !719
  br i1 %40, label %47, label %41, !dbg !721

; <label>:41:                                     ; preds = %31
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #15, !dbg !722
  %43 = icmp eq i32 %42, 0, !dbg !722
  br i1 %43, label %47, label %44, !dbg !723

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !724
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !724
  br label %47, !dbg !726

; <label>:47:                                     ; preds = %31, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !727
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !727
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !728
  %51 = icmp eq i8* %36, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), !dbg !728
  %52 = select i1 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !728
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* %36, i8* %52) #10, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %19) #10, !dbg !729
  br label %54

; <label>:54:                                     ; preds = %47, %4
  tail call void @exit(i32 %0) #16, !dbg !730
  unreachable, !dbg !730
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !731 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !736, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i8** %1, metadata !737, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !738, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8 1, metadata !740, metadata !DIExpression()), !dbg !750
  %5 = load i8*, i8** %1, align 8, !dbg !751, !tbaa !689
  tail call void @set_program_name(i8* %5) #10, !dbg !752
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !753
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !754
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !755
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !756
  %10 = load i8*, i8** @Version, align 8, !dbg !757, !tbaa !689
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %10, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !758
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !759
  %12 = icmp eq i32 %11, -1, !dbg !761
  br i1 %12, label %14, label %13, !dbg !762

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #17, !dbg !763
  unreachable, !dbg !763

; <label>:14:                                     ; preds = %2
  %15 = icmp eq i32 %0, 1, !dbg !764
  br i1 %15, label %16, label %18, !dbg !766

; <label>:16:                                     ; preds = %14
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !767
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17) #10, !dbg !769
  tail call void @usage(i32 1) #17, !dbg !770
  unreachable, !dbg !770

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* @optind, align 4, !dbg !771, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %19, metadata !741, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i8 1, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !738, metadata !DIExpression()), !dbg !749
  %20 = icmp slt i32 %19, %0, !dbg !775
  br i1 %20, label %21, label %75, !dbg !776

; <label>:21:                                     ; preds = %18
  %22 = bitcast double* %3 to i8*
  %23 = bitcast i8** %4 to i8*
  %24 = sext i32 %19 to i64, !dbg !776
  br label %28, !dbg !776

; <label>:25:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i8 %69, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8 %69, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8 %69, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8 %69, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata double %70, metadata !738, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8 %69, metadata !740, metadata !DIExpression()), !dbg !750
  %26 = and i8 %69, 1, !dbg !777
  %27 = icmp eq i8 %26, 0, !dbg !777
  br i1 %27, label %74, label %75, !dbg !779

; <label>:28:                                     ; preds = %67, %21
  %29 = phi i64 [ %24, %21 ], [ %71, %67 ]
  %30 = phi i8 [ 1, %21 ], [ %69, %67 ]
  %31 = phi double [ 0.000000e+00, %21 ], [ %70, %67 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !741, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i8 %30, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata double %31, metadata !738, metadata !DIExpression()), !dbg !749
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #10, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #10, !dbg !781
  %32 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !782
  %33 = load i8*, i8** %32, align 8, !dbg !782, !tbaa !689
  call void @llvm.dbg.value(metadata double* %3, metadata !743, metadata !DIExpression(DW_OP_deref)), !dbg !784
  call void @llvm.dbg.value(metadata i8** %4, metadata !746, metadata !DIExpression(DW_OP_deref)), !dbg !785
  %34 = call zeroext i1 @xstrtod(i8* %33, i8** nonnull %4, double* nonnull %3, double (i8*, i8**)* nonnull @c_strtod) #10, !dbg !786
  br i1 %34, label %42, label %35, !dbg !787

; <label>:35:                                     ; preds = %28
  %36 = tail call i32* @__errno_location() #18, !dbg !788
  %37 = load i32, i32* %36, align 4, !dbg !788, !tbaa !772
  %38 = icmp eq i32 %37, 34, !dbg !789
  %39 = load double, double* %3, align 8, !dbg !790
  call void @llvm.dbg.value(metadata double %39, metadata !743, metadata !DIExpression()), !dbg !784
  %40 = fcmp oge double %39, 0.000000e+00, !dbg !791
  %41 = and i1 %38, %40, !dbg !792
  br i1 %41, label %45, label %62, !dbg !792

; <label>:42:                                     ; preds = %28
  %43 = load double, double* %3, align 8, !dbg !790, !tbaa !793
  call void @llvm.dbg.value(metadata double %43, metadata !743, metadata !DIExpression()), !dbg !784
  %44 = fcmp ult double %43, 0.000000e+00, !dbg !791
  br i1 %44, label %62, label %45, !dbg !795

; <label>:45:                                     ; preds = %42, %35
  %46 = phi double [ %43, %42 ], [ %39, %35 ]
  %47 = load i8*, i8** %4, align 8, !dbg !796, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %47, metadata !746, metadata !DIExpression()), !dbg !785
  %48 = load i8, i8* %47, align 1, !dbg !797, !tbaa !798
  %49 = icmp eq i8 %48, 0, !dbg !797
  br i1 %49, label %54, label %50, !dbg !799

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !800
  %52 = load i8, i8* %51, align 1, !dbg !801, !tbaa !798
  %53 = icmp eq i8 %52, 0, !dbg !801
  br i1 %53, label %54, label %62, !dbg !802

; <label>:54:                                     ; preds = %50, %45
  call void @llvm.dbg.value(metadata i8* %47, metadata !746, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata double* %3, metadata !743, metadata !DIExpression(DW_OP_deref)), !dbg !784
  call void @llvm.dbg.value(metadata double* %3, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i8 %48, metadata !809, metadata !DIExpression()), !dbg !813
  %55 = sext i8 %48 to i32, !dbg !814
  switch i32 %55, label %62 [
    i32 0, label %59
    i32 115, label %59
    i32 109, label %56
    i32 104, label %57
    i32 100, label %58
  ], !dbg !815

; <label>:56:                                     ; preds = %54
  call void @llvm.dbg.value(metadata i32 60, metadata !810, metadata !DIExpression()), !dbg !816
  br label %59, !dbg !817

; <label>:57:                                     ; preds = %54
  call void @llvm.dbg.value(metadata i32 3600, metadata !810, metadata !DIExpression()), !dbg !816
  br label %59, !dbg !819

; <label>:58:                                     ; preds = %54
  call void @llvm.dbg.value(metadata i32 86400, metadata !810, metadata !DIExpression()), !dbg !816
  br label %59, !dbg !820

; <label>:59:                                     ; preds = %54, %54, %56, %57, %58
  %60 = phi double [ 8.640000e+04, %58 ], [ 3.600000e+03, %57 ], [ 6.000000e+01, %56 ], [ 1.000000e+00, %54 ], [ 1.000000e+00, %54 ]
  %61 = fmul double %60, %46, !dbg !821
  store double %61, double* %3, align 8, !dbg !821, !tbaa !793
  br label %67, !dbg !822

; <label>:62:                                     ; preds = %54, %42, %50, %35
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !823
  %64 = load i8*, i8** %32, align 8, !dbg !825, !tbaa !689
  %65 = call i8* @quote(i8* %64) #10, !dbg !826
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63, i8* %65) #10, !dbg !827
  call void @llvm.dbg.value(metadata i8 0, metadata !740, metadata !DIExpression()), !dbg !750
  %66 = load double, double* %3, align 8, !dbg !828, !tbaa !793
  br label %67, !dbg !829

; <label>:67:                                     ; preds = %59, %62
  %68 = phi double [ %66, %62 ], [ %61, %59 ], !dbg !828
  %69 = phi i8 [ 0, %62 ], [ %30, %59 ], !dbg !830
  call void @llvm.dbg.value(metadata double %68, metadata !743, metadata !DIExpression()), !dbg !784
  %70 = fadd double %31, %68, !dbg !831
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #10, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #10, !dbg !832
  %71 = add nsw i64 %29, 1, !dbg !833
  call void @llvm.dbg.value(metadata i32 undef, metadata !741, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !774
  call void @llvm.dbg.value(metadata i8 %69, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata double %70, metadata !738, metadata !DIExpression()), !dbg !749
  %72 = trunc i64 %71 to i32, !dbg !775
  %73 = icmp eq i32 %72, %0, !dbg !775
  br i1 %73, label %25, label %28, !dbg !776, !llvm.loop !834

; <label>:74:                                     ; preds = %25
  call void @usage(i32 1) #17, !dbg !836
  unreachable, !dbg !836

; <label>:75:                                     ; preds = %18, %25
  %76 = phi double [ %70, %25 ], [ 0.000000e+00, %18 ]
  %77 = call i32 @xnanosleep(double %76) #10, !dbg !837
  %78 = icmp eq i32 %77, 0, !dbg !837
  br i1 %78, label %83, label %79, !dbg !839

; <label>:79:                                     ; preds = %75
  %80 = tail call i32* @__errno_location() #18, !dbg !840
  %81 = load i32, i32* %80, align 4, !dbg !840, !tbaa !772
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !840
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %81, i8* %82) #10, !dbg !840
  unreachable, !dbg !840

; <label>:83:                                     ; preds = %75
  ret i32 0, !dbg !841
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8*, i8**) #7 !dbg !842 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !846, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8** %1, metadata !847, metadata !DIExpression()), !dbg !851
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !852, !tbaa !689
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !852
  br i1 %4, label %5, label %7, !dbg !858

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), %struct.__locale_struct* null) #10, !dbg !859
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !860, !tbaa !689
  br label %7, !dbg !861

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !862, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !849, metadata !DIExpression()), !dbg !863
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !864
  br i1 %9, label %10, label %13, !dbg !866

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !867
  br i1 %11, label %15, label %12, !dbg !870

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !871, !tbaa !689
  br label %15, !dbg !872

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #10, !dbg !873
  call void @llvm.dbg.value(metadata double %14, metadata !848, metadata !DIExpression()), !dbg !874
  br label %15, !dbg !875

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ], !dbg !876
  ret double %16, !dbg !877
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !878 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !880, metadata !DIExpression()), !dbg !881
  store i8* %0, i8** @file_name, align 8, !dbg !882, !tbaa !689
  ret void, !dbg !883
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !884 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !888, metadata !DIExpression()), !dbg !889
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !890, !tbaa !891
  ret void, !dbg !893
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !894 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !901, !tbaa !689
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !902
  %3 = icmp eq i32 %2, 0, !dbg !903
  br i1 %3, label %22, label %4, !dbg !904

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !905, !tbaa !891, !range !906
  %6 = icmp eq i8 %5, 0, !dbg !905
  br i1 %6, label %11, label %7, !dbg !907

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #18, !dbg !908
  %9 = load i32, i32* %8, align 4, !dbg !908, !tbaa !772
  %10 = icmp eq i32 %9, 32, !dbg !909
  br i1 %10, label %22, label %11, !dbg !910

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !911
  call void @llvm.dbg.value(metadata i8* %12, metadata !898, metadata !DIExpression()), !dbg !912
  %13 = load i8*, i8** @file_name, align 8, !dbg !913, !tbaa !689
  %14 = icmp eq i8* %13, null, !dbg !913
  %15 = tail call i32* @__errno_location() #18, !dbg !915
  %16 = load i32, i32* %15, align 4, !dbg !915, !tbaa !772
  br i1 %14, label %19, label %17, !dbg !916

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !917
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.36, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !918
  br label %20, !dbg !918

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.37, i64 0, i64 0), i8* %12) #10, !dbg !919
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !920, !tbaa !772
  tail call void @_exit(i32 %21) #16, !dbg !921
  unreachable, !dbg !921

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !922, !tbaa !689
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !924
  %25 = icmp eq i32 %24, 0, !dbg !925
  br i1 %25, label %28, label %26, !dbg !926

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !927, !tbaa !772
  tail call void @_exit(i32 %27) #16, !dbg !928
  unreachable, !dbg !928

; <label>:28:                                     ; preds = %22
  ret void, !dbg !929
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !930 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !935, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8** %1, metadata !936, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i8* %2, metadata !937, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8* %3, metadata !938, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i8* %4, metadata !939, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !940, metadata !DIExpression()), !dbg !965
  %8 = load i32, i32* @opterr, align 4, !dbg !966, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %8, metadata !942, metadata !DIExpression()), !dbg !967
  store i32 0, i32* @opterr, align 4, !dbg !968, !tbaa !772
  %9 = icmp eq i32 %0, 2, !dbg !969
  br i1 %9, label %10, label %17, !dbg !970

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.43, i64 0, i64 0), i32* null) #10, !dbg !971
  call void @llvm.dbg.value(metadata i32 %11, metadata !941, metadata !DIExpression()), !dbg !972
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !973

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !974
  br label %17, !dbg !975

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !976
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !943, metadata !DIExpression()), !dbg !977
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !978
  call void @llvm.va_start(i8* nonnull %14), !dbg !978
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !979, !tbaa !689
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !980
  call void @exit(i32 0) #16, !dbg !981
  unreachable, !dbg !981

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !982, !tbaa !772
  store i32 0, i32* @optind, align 4, !dbg !983, !tbaa !772
  ret void, !dbg !984
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !985 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !987, metadata !DIExpression()), !dbg !990
  %2 = icmp eq i8* %0, null, !dbg !991
  br i1 %2, label %3, label %6, !dbg !993

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !994, !tbaa !689
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !996
  tail call void @abort() #16, !dbg !997
  unreachable, !dbg !997

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !998
  call void @llvm.dbg.value(metadata i8* %7, metadata !988, metadata !DIExpression()), !dbg !999
  %8 = icmp eq i8* %7, null, !dbg !1000
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1001
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %10, metadata !989, metadata !DIExpression()), !dbg !1003
  %11 = ptrtoint i8* %10 to i64, !dbg !1004
  %12 = ptrtoint i8* %0 to i64, !dbg !1004
  %13 = sub i64 %11, %12, !dbg !1004
  %14 = icmp sgt i64 %13, 6, !dbg !1006
  br i1 %14, label %15, label %24, !dbg !1007

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1008
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #15, !dbg !1009
  %18 = icmp eq i32 %17, 0, !dbg !1010
  br i1 %18, label %19, label %24, !dbg !1011

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !987, metadata !DIExpression()), !dbg !990
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #15, !dbg !1012
  %21 = icmp eq i32 %20, 0, !dbg !1015
  br i1 %21, label %22, label %24, !dbg !1016

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1017
  call void @llvm.dbg.value(metadata i8* %23, metadata !987, metadata !DIExpression()), !dbg !990
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1019, !tbaa !689
  br label %24, !dbg !1020

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !987, metadata !DIExpression()), !dbg !990
  store i8* %25, i8** @program_name, align 8, !dbg !1021, !tbaa !689
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1022, !tbaa !689
  ret void, !dbg !1023
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1024 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1029, metadata !DIExpression()), !dbg !1032
  %2 = tail call i32* @__errno_location() #18, !dbg !1033
  %3 = load i32, i32* %2, align 4, !dbg !1033, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %3, metadata !1030, metadata !DIExpression()), !dbg !1034
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1035
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1035
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1035
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1036
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1031, metadata !DIExpression()), !dbg !1037
  store i32 %3, i32* %2, align 4, !dbg !1038, !tbaa !772
  ret %struct.quoting_options* %8, !dbg !1039
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1040 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1046, metadata !DIExpression()), !dbg !1047
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1048
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1048
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1049
  %5 = load i32, i32* %4, align 8, !dbg !1049, !tbaa !1050
  ret i32 %5, !dbg !1052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1053 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1057, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %1, metadata !1058, metadata !DIExpression()), !dbg !1060
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1061
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1061
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1062
  store i32 %1, i32* %5, align 8, !dbg !1063, !tbaa !1050
  ret void, !dbg !1064
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1065 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1069, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i8 %1, metadata !1070, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 %2, metadata !1071, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i8 %1, metadata !1072, metadata !DIExpression()), !dbg !1081
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1082
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1082
  %6 = lshr i8 %1, 5, !dbg !1083
  %7 = zext i8 %6 to i64, !dbg !1083
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1084
  call void @llvm.dbg.value(metadata i32* %8, metadata !1074, metadata !DIExpression()), !dbg !1085
  %9 = and i8 %1, 31, !dbg !1086
  %10 = zext i8 %9 to i32, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %10, metadata !1076, metadata !DIExpression()), !dbg !1087
  %11 = load i32, i32* %8, align 4, !dbg !1088, !tbaa !772
  %12 = lshr i32 %11, %10, !dbg !1089
  %13 = and i32 %12, 1, !dbg !1090
  call void @llvm.dbg.value(metadata i32 %13, metadata !1077, metadata !DIExpression()), !dbg !1091
  %14 = and i32 %2, 1, !dbg !1092
  %15 = xor i32 %13, %14, !dbg !1093
  %16 = shl i32 %15, %10, !dbg !1094
  %17 = xor i32 %16, %11, !dbg !1095
  store i32 %17, i32* %8, align 4, !dbg !1095, !tbaa !772
  ret i32 %13, !dbg !1096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1097 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1101, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i32 %1, metadata !1102, metadata !DIExpression()), !dbg !1105
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1106
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1101, metadata !DIExpression()), !dbg !1104
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1109
  %6 = load i32, i32* %5, align 4, !dbg !1109, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %6, metadata !1103, metadata !DIExpression()), !dbg !1111
  store i32 %1, i32* %5, align 4, !dbg !1112, !tbaa !1110
  ret i32 %6, !dbg !1113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1114 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1118, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8* %1, metadata !1119, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %2, metadata !1120, metadata !DIExpression()), !dbg !1123
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1124
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1118, metadata !DIExpression()), !dbg !1121
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1127
  store i32 10, i32* %6, align 8, !dbg !1128, !tbaa !1050
  %7 = icmp ne i8* %1, null, !dbg !1129
  %8 = icmp ne i8* %2, null, !dbg !1131
  %9 = and i1 %7, %8, !dbg !1132
  br i1 %9, label %11, label %10, !dbg !1132

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1133
  unreachable, !dbg !1133

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1134
  store i8* %1, i8** %12, align 8, !dbg !1135, !tbaa !1136
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1137
  store i8* %2, i8** %13, align 8, !dbg !1138, !tbaa !1139
  ret void, !dbg !1140
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1145, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i64 %1, metadata !1146, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %2, metadata !1147, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %3, metadata !1148, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1149, metadata !DIExpression()), !dbg !1157
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1158
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1158
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1150, metadata !DIExpression()), !dbg !1159
  %8 = tail call i32* @__errno_location() #18, !dbg !1160
  %9 = load i32, i32* %8, align 4, !dbg !1160, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %9, metadata !1151, metadata !DIExpression()), !dbg !1161
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1162
  %11 = load i32, i32* %10, align 8, !dbg !1162, !tbaa !1050
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1163
  %13 = load i32, i32* %12, align 4, !dbg !1163, !tbaa !1110
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1164
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1165
  %16 = load i8*, i8** %15, align 8, !dbg !1165, !tbaa !1136
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1166
  %18 = load i8*, i8** %17, align 8, !dbg !1166, !tbaa !1139
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %19, metadata !1152, metadata !DIExpression()), !dbg !1168
  store i32 %9, i32* %8, align 4, !dbg !1169, !tbaa !772
  ret i64 %19, !dbg !1170
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1171 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %1, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %2, metadata !1179, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i64 %3, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 %4, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %5, metadata !1182, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i32* %6, metadata !1183, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8* %7, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %8, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 0, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* null, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 0, metadata !1190, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 0, metadata !1191, metadata !DIExpression()), !dbg !1254
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1255
  %14 = icmp eq i64 %13, 1, !dbg !1256
  %15 = lshr i32 %5, 1, !dbg !1257
  %16 = trunc i32 %15 to i8, !dbg !1257
  %17 = and i8 %16, 1, !dbg !1257
  call void @llvm.dbg.value(metadata i8 %17, metadata !1193, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 0, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 0, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 1, metadata !1196, metadata !DIExpression()), !dbg !1260
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1261

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1251
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1252
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1253
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1254
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1262
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1258
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1259
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1260
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %39, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %38, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %37, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %36, metadata !1193, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i64 %35, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %34, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %33, metadata !1190, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8* %32, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %31, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 0, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %30, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %29, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i32 %28, metadata !1181, metadata !DIExpression()), !dbg !1245
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1264

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 1, metadata !1193, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %36, metadata !1193, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 5, metadata !1181, metadata !DIExpression()), !dbg !1245
  br label %93, !dbg !1265

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1193, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 5, metadata !1181, metadata !DIExpression()), !dbg !1245
  %43 = and i8 %36, 1, !dbg !1266
  %44 = icmp eq i8 %43, 0, !dbg !1266
  br i1 %44, label %45, label %93, !dbg !1265

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1268
  br i1 %46, label %93, label %47, !dbg !1271

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1268, !tbaa !798
  br label %93, !dbg !1268

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %49, metadata !1184, metadata !DIExpression()), !dbg !1248
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %50, metadata !1185, metadata !DIExpression()), !dbg !1249
  br label %51, !dbg !1277

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %52, metadata !1184, metadata !DIExpression()), !dbg !1248
  %54 = and i8 %36, 1, !dbg !1278
  %55 = icmp eq i8 %54, 0, !dbg !1278
  br i1 %55, label %56, label %71, !dbg !1280

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 0, metadata !1187, metadata !DIExpression()), !dbg !1250
  %57 = load i8, i8* %52, align 1, !dbg !1281, !tbaa !798
  %58 = icmp eq i8 %57, 0, !dbg !1284
  br i1 %58, label %71, label %59, !dbg !1284

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %62, metadata !1187, metadata !DIExpression()), !dbg !1250
  %63 = icmp ult i64 %62, %40, !dbg !1285
  br i1 %63, label %64, label %66, !dbg !1288

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1285
  store i8 %60, i8* %65, align 1, !dbg !1285, !tbaa !798
  br label %66, !dbg !1285

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1288
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %68, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %67, metadata !1187, metadata !DIExpression()), !dbg !1250
  %69 = load i8, i8* %68, align 1, !dbg !1281, !tbaa !798
  %70 = icmp eq i8 %69, 0, !dbg !1284
  br i1 %70, label %71, label %59, !dbg !1284, !llvm.loop !1290

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1250
  call void @llvm.dbg.value(metadata i64 %72, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8* %53, metadata !1189, metadata !DIExpression()), !dbg !1252
  %73 = call i64 @strlen(i8* %53) #15, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %73, metadata !1190, metadata !DIExpression()), !dbg !1253
  br label %93, !dbg !1293

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1191, metadata !DIExpression()), !dbg !1254
  br label %75, !dbg !1294

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1262
  call void @llvm.dbg.value(metadata i8 %76, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 1, metadata !1193, metadata !DIExpression()), !dbg !1257
  br label %77, !dbg !1295

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1254
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1262
  call void @llvm.dbg.value(metadata i8 %79, metadata !1193, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %78, metadata !1191, metadata !DIExpression()), !dbg !1254
  %80 = and i8 %79, 1, !dbg !1296
  %81 = icmp eq i8 %80, 0, !dbg !1296
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1298
  br label %83, !dbg !1298

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1299
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8 %85, metadata !1193, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %84, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 2, metadata !1181, metadata !DIExpression()), !dbg !1245
  %86 = and i8 %85, 1, !dbg !1300
  %87 = icmp eq i8 %86, 0, !dbg !1300
  br i1 %87, label %88, label %93, !dbg !1302

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1303
  br i1 %89, label %93, label %90, !dbg !1306

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1303, !tbaa !798
  br label %93, !dbg !1303

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1193, metadata !DIExpression()), !dbg !1257
  br label %93, !dbg !1307

; <label>:92:                                     ; preds = %27
  call void @abort() #16, !dbg !1308
  unreachable, !dbg !1308

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1250
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ], !dbg !1262
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1262
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1262
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1309
  call void @llvm.dbg.value(metadata i8 %101, metadata !1193, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %99, metadata !1190, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %97, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i32 %94, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 0, metadata !1186, metadata !DIExpression()), !dbg !1310
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !1311

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1312
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1250
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1251
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1258
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1259
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1260
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %125, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %122, metadata !1186, metadata !DIExpression()), !dbg !1310
  %130 = icmp eq i64 %125, -1, !dbg !1313
  br i1 %130, label %131, label %135, !dbg !1314

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1315
  %133 = load i8, i8* %132, align 1, !dbg !1315, !tbaa !798
  %134 = icmp eq i8 %133, 0, !dbg !1316
  br i1 %134, label %617, label %137, !dbg !1317

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1318
  br i1 %136, label %617, label %137, !dbg !1317

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1202, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i8 0, metadata !1203, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1204, metadata !DIExpression()), !dbg !1321
  br i1 %107, label %138, label %153, !dbg !1322

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1324
  %140 = and i1 %108, %130, !dbg !1325
  br i1 %140, label %141, label %143, !dbg !1325

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %142, metadata !1180, metadata !DIExpression()), !dbg !1244
  br label %143, !dbg !1327

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1180, metadata !DIExpression()), !dbg !1244
  %145 = icmp ugt i64 %139, %144, !dbg !1328
  br i1 %145, label %153, label %146, !dbg !1329

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1330
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !1331
  %149 = icmp ne i32 %148, 0, !dbg !1332
  %150 = or i1 %149, %110, !dbg !1333
  %151 = xor i1 %149, true, !dbg !1333
  %152 = zext i1 %151 to i8, !dbg !1333
  br i1 %150, label %153, label %661, !dbg !1333

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1334
  call void @llvm.dbg.value(metadata i8 %155, metadata !1202, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %154, metadata !1180, metadata !DIExpression()), !dbg !1244
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1335
  %157 = load i8, i8* %156, align 1, !dbg !1335, !tbaa !798
  call void @llvm.dbg.value(metadata i8 %157, metadata !1197, metadata !DIExpression()), !dbg !1336
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !1337

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1338

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1339

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1203, metadata !DIExpression()), !dbg !1320
  %161 = and i8 %126, 1, !dbg !1343
  %162 = icmp eq i8 %161, 0, !dbg !1343
  %163 = and i1 %114, %162, !dbg !1343
  br i1 %163, label %164, label %180, !dbg !1343

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1345
  br i1 %165, label %166, label %168, !dbg !1349

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1345
  store i8 39, i8* %167, align 1, !dbg !1345, !tbaa !798
  br label %168, !dbg !1345

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %169, metadata !1187, metadata !DIExpression()), !dbg !1250
  %170 = icmp ult i64 %169, %129, !dbg !1350
  br i1 %170, label %171, label %173, !dbg !1353

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1350
  store i8 36, i8* %172, align 1, !dbg !1350, !tbaa !798
  br label %173, !dbg !1350

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %174, metadata !1187, metadata !DIExpression()), !dbg !1250
  %175 = icmp ult i64 %174, %129, !dbg !1354
  br i1 %175, label %176, label %178, !dbg !1357

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1354
  store i8 39, i8* %177, align 1, !dbg !1354, !tbaa !798
  br label %178, !dbg !1354

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %179, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1194, metadata !DIExpression()), !dbg !1258
  br label %180, !dbg !1358

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1309
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1309
  call void @llvm.dbg.value(metadata i8 %182, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %181, metadata !1187, metadata !DIExpression()), !dbg !1250
  %183 = icmp ult i64 %181, %129, !dbg !1359
  br i1 %183, label %184, label %186, !dbg !1362

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1359
  store i8 92, i8* %185, align 1, !dbg !1359, !tbaa !798
  br label %186, !dbg !1359

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %187, metadata !1187, metadata !DIExpression()), !dbg !1250
  br i1 %104, label %188, label %478, !dbg !1363

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1365
  %190 = icmp ult i64 %189, %154, !dbg !1366
  br i1 %190, label %191, label %467, !dbg !1367

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1368
  %193 = load i8, i8* %192, align 1, !dbg !1368, !tbaa !798
  %194 = add i8 %193, -48, !dbg !1369
  %195 = icmp ult i8 %194, 10, !dbg !1369
  br i1 %195, label %196, label %467, !dbg !1369

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1370
  br i1 %197, label %198, label %200, !dbg !1374

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1370
  store i8 48, i8* %199, align 1, !dbg !1370, !tbaa !798
  br label %200, !dbg !1370

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %201, metadata !1187, metadata !DIExpression()), !dbg !1250
  %202 = icmp ult i64 %201, %129, !dbg !1375
  br i1 %202, label %203, label %205, !dbg !1378

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1375
  store i8 48, i8* %204, align 1, !dbg !1375, !tbaa !798
  br label %205, !dbg !1375

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %206, metadata !1187, metadata !DIExpression()), !dbg !1250
  br label %467, !dbg !1379

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1380

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1381

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1382

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1384

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1386
  %213 = icmp ult i64 %212, %154, !dbg !1387
  br i1 %213, label %214, label %467, !dbg !1388

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1389
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1390
  %217 = load i8, i8* %216, align 1, !dbg !1390, !tbaa !798
  %218 = icmp eq i8 %217, 63, !dbg !1391
  br i1 %218, label %219, label %467, !dbg !1392

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1393
  %221 = load i8, i8* %220, align 1, !dbg !1393, !tbaa !798
  %222 = sext i8 %221 to i32, !dbg !1393
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !1394

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1395

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1197, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %212, metadata !1186, metadata !DIExpression()), !dbg !1310
  %225 = icmp ult i64 %123, %129, !dbg !1397
  br i1 %225, label %226, label %228, !dbg !1400

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1397
  store i8 63, i8* %227, align 1, !dbg !1397, !tbaa !798
  br label %228, !dbg !1397

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %229, metadata !1187, metadata !DIExpression()), !dbg !1250
  %230 = icmp ult i64 %229, %129, !dbg !1401
  br i1 %230, label %231, label %233, !dbg !1404

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1401
  store i8 34, i8* %232, align 1, !dbg !1401, !tbaa !798
  br label %233, !dbg !1401

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %234, metadata !1187, metadata !DIExpression()), !dbg !1250
  %235 = icmp ult i64 %234, %129, !dbg !1405
  br i1 %235, label %236, label %238, !dbg !1408

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1405
  store i8 34, i8* %237, align 1, !dbg !1405, !tbaa !798
  br label %238, !dbg !1405

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %239, metadata !1187, metadata !DIExpression()), !dbg !1250
  %240 = icmp ult i64 %239, %129, !dbg !1409
  br i1 %240, label %241, label %243, !dbg !1412

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1409
  store i8 63, i8* %242, align 1, !dbg !1409, !tbaa !798
  br label %243, !dbg !1409

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %244, metadata !1187, metadata !DIExpression()), !dbg !1250
  br label %467, !dbg !1413

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1201, metadata !DIExpression()), !dbg !1414
  br label %255, !dbg !1415

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1201, metadata !DIExpression()), !dbg !1414
  br label %255, !dbg !1416

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1201, metadata !DIExpression()), !dbg !1414
  br label %253, !dbg !1417

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1201, metadata !DIExpression()), !dbg !1414
  br label %253, !dbg !1418

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1201, metadata !DIExpression()), !dbg !1414
  br label %255, !dbg !1419

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1201, metadata !DIExpression()), !dbg !1414
  br i1 %114, label %251, label %252, !dbg !1420

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1421

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1424

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8 %254, metadata !1201, metadata !DIExpression()), !dbg !1414
  br i1 %113, label %255, label %661, !dbg !1427

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8 %256, metadata !1201, metadata !DIExpression()), !dbg !1414
  br i1 %103, label %524, label %478, !dbg !1429

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1430
  br i1 %258, label %259, label %264, !dbg !1432

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1433, !tbaa !798
  %261 = icmp ne i8 %260, 0, !dbg !1434
  %262 = icmp ne i64 %122, 0, !dbg !1435
  %263 = or i1 %262, %261, !dbg !1437
  br i1 %263, label %467, label %270, !dbg !1437

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1438
  %266 = icmp ne i64 %122, 0, !dbg !1435
  %267 = or i1 %266, %265, !dbg !1432
  br i1 %267, label %467, label %270, !dbg !1432

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1435
  br i1 %269, label %270, label %467, !dbg !1439

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1204, metadata !DIExpression()), !dbg !1321
  br label %271, !dbg !1440

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8 %272, metadata !1204, metadata !DIExpression()), !dbg !1321
  br i1 %113, label %467, label %661, !dbg !1441

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 1, metadata !1204, metadata !DIExpression()), !dbg !1321
  br i1 %114, label %274, label %467, !dbg !1443

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1444

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1447
  %277 = icmp ne i64 %124, 0, !dbg !1449
  %278 = or i1 %277, %276, !dbg !1450
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1450
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %280, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %279, metadata !1188, metadata !DIExpression()), !dbg !1251
  %281 = icmp ult i64 %123, %280, !dbg !1451
  br i1 %281, label %282, label %284, !dbg !1454

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1451
  store i8 39, i8* %283, align 1, !dbg !1451, !tbaa !798
  br label %284, !dbg !1451

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %285, metadata !1187, metadata !DIExpression()), !dbg !1250
  %286 = icmp ult i64 %285, %280, !dbg !1455
  br i1 %286, label %287, label %289, !dbg !1458

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1455
  store i8 92, i8* %288, align 1, !dbg !1455, !tbaa !798
  br label %289, !dbg !1455

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %290, metadata !1187, metadata !DIExpression()), !dbg !1250
  %291 = icmp ult i64 %290, %280, !dbg !1459
  br i1 %291, label %292, label %294, !dbg !1462

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1459
  store i8 39, i8* %293, align 1, !dbg !1459, !tbaa !798
  br label %294, !dbg !1459

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %295, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1194, metadata !DIExpression()), !dbg !1258
  br label %467, !dbg !1463

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1464

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1205, metadata !DIExpression()), !dbg !1465
  %298 = tail call i16** @__ctype_b_loc() #18, !dbg !1466
  %299 = load i16*, i16** %298, align 8, !dbg !1466, !tbaa !689
  %300 = zext i8 %157 to i64, !dbg !1466
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1466
  %302 = load i16, i16* %301, align 2, !dbg !1466, !tbaa !1468
  %303 = lshr i16 %302, 14, !dbg !1470
  %304 = trunc i16 %303 to i8, !dbg !1470
  %305 = and i8 %304, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i8 %305, metadata !1208, metadata !DIExpression()), !dbg !1471
  br label %359, !dbg !1472

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1473
  store i64 0, i64* %10, align 8, !dbg !1474
  call void @llvm.dbg.value(metadata i64 0, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 1, metadata !1208, metadata !DIExpression()), !dbg !1471
  %307 = icmp eq i64 %154, -1, !dbg !1475
  br i1 %307, label %308, label %310, !dbg !1477

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %309, metadata !1180, metadata !DIExpression()), !dbg !1244
  br label %310, !dbg !1479

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1480
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  br label %312, !dbg !1481

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1482
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %314, metadata !1208, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1484
  %315 = add i64 %313, %122, !dbg !1485
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1486
  %317 = sub i64 %311, %315, !dbg !1487
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1209, metadata !DIExpression(DW_OP_deref)), !dbg !1488
  call void @llvm.dbg.value(metadata i32* %12, metadata !1227, metadata !DIExpression(DW_OP_deref)), !dbg !1489
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %318, metadata !1230, metadata !DIExpression()), !dbg !1491
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1492

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  %320 = icmp ugt i64 %311, %315, !dbg !1493
  br i1 %320, label %321, label %344, !dbg !1495

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1205, metadata !DIExpression()), !dbg !1465
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1496
  %325 = load i8, i8* %324, align 1, !dbg !1496, !tbaa !798
  %326 = icmp eq i8 %325, 0, !dbg !1495
  br i1 %326, label %344, label %327, !dbg !1497

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %328, metadata !1205, metadata !DIExpression()), !dbg !1465
  %329 = add i64 %328, %122, !dbg !1499
  %330 = icmp ult i64 %329, %311, !dbg !1493
  br i1 %330, label %321, label %344, !dbg !1495, !llvm.loop !1500

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1501
  %333 = and i1 %116, %332, !dbg !1504
  call void @llvm.dbg.value(metadata i64 1, metadata !1231, metadata !DIExpression()), !dbg !1505
  br i1 %333, label %334, label %347, !dbg !1504

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1231, metadata !DIExpression()), !dbg !1505
  %336 = add i64 %335, %315, !dbg !1506
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1507
  %338 = load i8, i8* %337, align 1, !dbg !1507, !tbaa !798
  %339 = sext i8 %338 to i32, !dbg !1507
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1508

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %341, metadata !1231, metadata !DIExpression()), !dbg !1505
  %342 = icmp ult i64 %341, %318, !dbg !1501
  br i1 %342, label %334, label %347, !dbg !1510, !llvm.loop !1511

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %314, metadata !1208, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %313, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %314, metadata !1208, metadata !DIExpression()), !dbg !1471
  br label %344, !dbg !1513

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1208, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %352, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1513
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1514, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %348, metadata !1227, metadata !DIExpression()), !dbg !1489
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1516
  %350 = icmp eq i32 %349, 0, !dbg !1516
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1517
  call void @llvm.dbg.value(metadata i8 %351, metadata !1208, metadata !DIExpression()), !dbg !1471
  %352 = add i64 %318, %313, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %352, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %351, metadata !1208, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %352, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1513
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1209, metadata !DIExpression(DW_OP_deref)), !dbg !1488
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !1519
  %354 = icmp eq i32 %353, 0, !dbg !1520
  br i1 %354, label %312, label %355, !dbg !1521, !llvm.loop !1522

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1524
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 2, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 2, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 2, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 2, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 2, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 %94, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %94, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %94, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %94, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %94, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %100, metadata !1191, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %311, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %351, metadata !1208, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %352, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1513
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1524
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1525
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1526
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1526
  call void @llvm.dbg.value(metadata i8 %362, metadata !1208, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %361, metadata !1205, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %360, metadata !1180, metadata !DIExpression()), !dbg !1244
  %363 = and i8 %362, 1, !dbg !1527
  %364 = icmp ne i8 %363, 0, !dbg !1527
  call void @llvm.dbg.value(metadata i8 %363, metadata !1204, metadata !DIExpression()), !dbg !1321
  %365 = icmp ult i64 %361, 2, !dbg !1528
  %366 = or i1 %364, %115, !dbg !1529
  %367 = and i1 %365, %366, !dbg !1530
  br i1 %367, label %467, label %368, !dbg !1530

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %369, metadata !1238, metadata !DIExpression()), !dbg !1532
  br label %370, !dbg !1533

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1534
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1538
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1258
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1534
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1540
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1320
  call void @llvm.dbg.value(metadata i8 %376, metadata !1203, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %375, metadata !1202, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i8 %374, metadata !1197, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %373, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %372, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %371, metadata !1186, metadata !DIExpression()), !dbg !1310
  br i1 %366, label %423, label %377, !dbg !1544

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1545

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1203, metadata !DIExpression()), !dbg !1320
  %379 = and i8 %373, 1, !dbg !1548
  %380 = icmp eq i8 %379, 0, !dbg !1548
  %381 = and i1 %114, %380, !dbg !1548
  br i1 %381, label %382, label %398, !dbg !1548

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1550
  br i1 %383, label %384, label %386, !dbg !1554

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1550
  store i8 39, i8* %385, align 1, !dbg !1550, !tbaa !798
  br label %386, !dbg !1550

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %387, metadata !1187, metadata !DIExpression()), !dbg !1250
  %388 = icmp ult i64 %387, %129, !dbg !1555
  br i1 %388, label %389, label %391, !dbg !1558

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1555
  store i8 36, i8* %390, align 1, !dbg !1555, !tbaa !798
  br label %391, !dbg !1555

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %392, metadata !1187, metadata !DIExpression()), !dbg !1250
  %393 = icmp ult i64 %392, %129, !dbg !1559
  br i1 %393, label %394, label %396, !dbg !1562

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1559
  store i8 39, i8* %395, align 1, !dbg !1559, !tbaa !798
  br label %396, !dbg !1559

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %397, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1194, metadata !DIExpression()), !dbg !1258
  br label %398, !dbg !1563

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1309
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1309
  call void @llvm.dbg.value(metadata i8 %400, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %399, metadata !1187, metadata !DIExpression()), !dbg !1250
  %401 = icmp ult i64 %399, %129, !dbg !1564
  br i1 %401, label %402, label %404, !dbg !1567

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1564
  store i8 92, i8* %403, align 1, !dbg !1564, !tbaa !798
  br label %404, !dbg !1564

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %405, metadata !1187, metadata !DIExpression()), !dbg !1250
  %406 = icmp ult i64 %405, %129, !dbg !1568
  br i1 %406, label %407, label %411, !dbg !1571

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1568
  %409 = or i8 %408, 48, !dbg !1568
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1568
  store i8 %409, i8* %410, align 1, !dbg !1568, !tbaa !798
  br label %411, !dbg !1568

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %412, metadata !1187, metadata !DIExpression()), !dbg !1250
  %413 = icmp ult i64 %412, %129, !dbg !1572
  br i1 %413, label %414, label %419, !dbg !1575

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1572
  %416 = and i8 %415, 7, !dbg !1572
  %417 = or i8 %416, 48, !dbg !1572
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1572
  store i8 %417, i8* %418, align 1, !dbg !1572, !tbaa !798
  br label %419, !dbg !1572

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %420, metadata !1187, metadata !DIExpression()), !dbg !1250
  %421 = and i8 %374, 7, !dbg !1576
  %422 = or i8 %421, 48, !dbg !1577
  call void @llvm.dbg.value(metadata i8 %422, metadata !1197, metadata !DIExpression()), !dbg !1336
  br label %432, !dbg !1578

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1579
  %425 = icmp eq i8 %424, 0, !dbg !1579
  br i1 %425, label %432, label %426, !dbg !1580

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1581
  br i1 %427, label %428, label %430, !dbg !1584

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1581
  store i8 92, i8* %429, align 1, !dbg !1581, !tbaa !798
  br label %430, !dbg !1581

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %431, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1202, metadata !DIExpression()), !dbg !1319
  br label %432, !dbg !1585

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1586
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1258
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1587
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1588
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %437, metadata !1203, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %436, metadata !1202, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i8 %435, metadata !1197, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %434, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %433, metadata !1187, metadata !DIExpression()), !dbg !1250
  %438 = add i64 %371, 1, !dbg !1591
  %439 = icmp ugt i64 %369, %438, !dbg !1593
  br i1 %439, label %440, label %562, !dbg !1594

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1595
  %442 = icmp ne i8 %441, 0, !dbg !1595
  %443 = and i8 %437, 1, !dbg !1595
  %444 = icmp eq i8 %443, 0, !dbg !1595
  %445 = and i1 %442, %444, !dbg !1595
  br i1 %445, label %446, label %457, !dbg !1595

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1598
  br i1 %447, label %448, label %450, !dbg !1602

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1598
  store i8 39, i8* %449, align 1, !dbg !1598, !tbaa !798
  br label %450, !dbg !1598

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %451, metadata !1187, metadata !DIExpression()), !dbg !1250
  %452 = icmp ult i64 %451, %129, !dbg !1603
  br i1 %452, label %453, label %455, !dbg !1606

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1603
  store i8 39, i8* %454, align 1, !dbg !1603, !tbaa !798
  br label %455, !dbg !1603

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %456, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1194, metadata !DIExpression()), !dbg !1258
  br label %457, !dbg !1607

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1608
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1309
  call void @llvm.dbg.value(metadata i8 %459, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %458, metadata !1187, metadata !DIExpression()), !dbg !1250
  %460 = icmp ult i64 %458, %129, !dbg !1609
  br i1 %460, label %461, label %463, !dbg !1611

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1609
  store i8 %435, i8* %462, align 1, !dbg !1609, !tbaa !798
  br label %463, !dbg !1609

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %464, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %438, metadata !1186, metadata !DIExpression()), !dbg !1310
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1612
  %466 = load i8, i8* %465, align 1, !dbg !1612, !tbaa !798
  call void @llvm.dbg.value(metadata i8 %466, metadata !1197, metadata !DIExpression()), !dbg !1336
  br label %370, !dbg !1613, !llvm.loop !1614

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1617
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1309
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1251
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1618
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1309
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1309
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1334
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1334
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1334
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %476, metadata !1204, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %475, metadata !1203, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %155, metadata !1202, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i8 %474, metadata !1197, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %473, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %472, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %471, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %470, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %469, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %468, metadata !1186, metadata !DIExpression()), !dbg !1310
  br i1 %105, label %489, label %478, !dbg !1619

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !1621

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1622

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !1623
  %502 = zext i8 %501 to i64, !dbg !1623
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1624
  %504 = load i32, i32* %503, align 4, !dbg !1624, !tbaa !772
  %505 = and i8 %494, 31, !dbg !1625
  %506 = zext i8 %505 to i32, !dbg !1625
  %507 = shl i32 1, %506, !dbg !1626
  %508 = and i32 %504, %507, !dbg !1626
  %509 = icmp eq i32 %508, 0, !dbg !1626
  %510 = icmp eq i8 %155, 0, !dbg !1627
  %511 = and i1 %510, %509, !dbg !1628
  br i1 %511, label %562, label %524, !dbg !1628

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !1627
  br i1 %523, label %562, label %524, !dbg !1629

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1630
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1309
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1251
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1618
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1258
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1259
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1631
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1334
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %532, metadata !1204, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %531, metadata !1197, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %530, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %529, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %528, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %527, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %526, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %525, metadata !1186, metadata !DIExpression()), !dbg !1310
  br i1 %110, label %534, label %661, !dbg !1634

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1203, metadata !DIExpression()), !dbg !1320
  %535 = and i8 %529, 1, !dbg !1636
  %536 = icmp eq i8 %535, 0, !dbg !1636
  %537 = and i1 %114, %536, !dbg !1636
  br i1 %537, label %538, label %554, !dbg !1636

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1638
  br i1 %539, label %540, label %542, !dbg !1642

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1638
  store i8 39, i8* %541, align 1, !dbg !1638, !tbaa !798
  br label %542, !dbg !1638

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %543, metadata !1187, metadata !DIExpression()), !dbg !1250
  %544 = icmp ult i64 %543, %533, !dbg !1643
  br i1 %544, label %545, label %547, !dbg !1646

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1643
  store i8 36, i8* %546, align 1, !dbg !1643, !tbaa !798
  br label %547, !dbg !1643

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %548, metadata !1187, metadata !DIExpression()), !dbg !1250
  %549 = icmp ult i64 %548, %533, !dbg !1647
  br i1 %549, label %550, label %552, !dbg !1650

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1647
  store i8 39, i8* %551, align 1, !dbg !1647, !tbaa !798
  br label %552, !dbg !1647

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %553, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1194, metadata !DIExpression()), !dbg !1258
  br label %554, !dbg !1651

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1608
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1309
  call void @llvm.dbg.value(metadata i8 %556, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %555, metadata !1187, metadata !DIExpression()), !dbg !1250
  %557 = icmp ult i64 %555, %533, !dbg !1652
  br i1 %557, label %558, label %560, !dbg !1655

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1652
  store i8 92, i8* %559, align 1, !dbg !1652, !tbaa !798
  br label %560, !dbg !1652

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %561, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %572, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %571, metadata !1204, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %570, metadata !1203, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %569, metadata !1197, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %568, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %567, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %566, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %565, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %564, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %563, metadata !1186, metadata !DIExpression()), !dbg !1310
  br label %589, !dbg !1656

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1630
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1309
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1251
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1618
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1258
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1259
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1659
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1334
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1334
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %571, metadata !1204, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %570, metadata !1203, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %569, metadata !1197, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %568, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %567, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %566, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %565, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %564, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %563, metadata !1186, metadata !DIExpression()), !dbg !1310
  %573 = and i8 %567, 1, !dbg !1656
  %574 = icmp ne i8 %573, 0, !dbg !1656
  %575 = and i8 %570, 1, !dbg !1656
  %576 = icmp eq i8 %575, 0, !dbg !1656
  %577 = and i1 %574, %576, !dbg !1656
  br i1 %577, label %578, label %589, !dbg !1656

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1660
  br i1 %579, label %580, label %582, !dbg !1664

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1660
  store i8 39, i8* %581, align 1, !dbg !1660, !tbaa !798
  br label %582, !dbg !1660

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %583, metadata !1187, metadata !DIExpression()), !dbg !1250
  %584 = icmp ult i64 %583, %572, !dbg !1665
  br i1 %584, label %585, label %587, !dbg !1668

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1665
  store i8 39, i8* %586, align 1, !dbg !1665, !tbaa !798
  br label %587, !dbg !1665

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %588, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1194, metadata !DIExpression()), !dbg !1258
  br label %589, !dbg !1669

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1608
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1309
  call void @llvm.dbg.value(metadata i8 %598, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %597, metadata !1187, metadata !DIExpression()), !dbg !1250
  %599 = icmp ult i64 %597, %590, !dbg !1670
  br i1 %599, label %600, label %602, !dbg !1673

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1670
  store i8 %592, i8* %601, align 1, !dbg !1670, !tbaa !798
  br label %602, !dbg !1670

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %603, metadata !1187, metadata !DIExpression()), !dbg !1250
  %604 = and i8 %591, 1, !dbg !1674
  %605 = icmp eq i8 %604, 0, !dbg !1674
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1676
  call void @llvm.dbg.value(metadata i8 %606, metadata !1196, metadata !DIExpression()), !dbg !1260
  br label %607, !dbg !1677

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1630
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1309
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1251
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1618
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1258
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1309
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1260
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %614, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %613, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %612, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %611, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %610, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %609, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %608, metadata !1186, metadata !DIExpression()), !dbg !1310
  %616 = add i64 %608, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %616, metadata !1186, metadata !DIExpression()), !dbg !1310
  br label %121, !dbg !1679, !llvm.loop !1680

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %618, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %618, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %125, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %125, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %126, metadata !1194, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %127, metadata !1195, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %128, metadata !1196, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  %619 = icmp eq i64 %123, 0, !dbg !1682
  %620 = and i1 %114, %619, !dbg !1684
  %621 = xor i1 %620, true, !dbg !1684
  %622 = or i1 %110, %621, !dbg !1684
  br i1 %622, label %623, label %661, !dbg !1684

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1685
  %625 = xor i1 %624, true, !dbg !1685
  %626 = and i8 %127, 1, !dbg !1687
  %627 = icmp eq i8 %626, 0, !dbg !1687
  %628 = or i1 %627, %625, !dbg !1685
  br i1 %628, label %638, label %629, !dbg !1685

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1688
  %631 = icmp eq i8 %630, 0, !dbg !1688
  br i1 %631, label %634, label %632, !dbg !1691

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %618, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %618, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %618, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %618, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1184, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %96, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %124, metadata !1188, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %125, metadata !1180, metadata !DIExpression()), !dbg !1244
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1692
  br label %671, !dbg !1693

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1694
  %636 = icmp ne i64 %124, 0, !dbg !1696
  %637 = and i1 %636, %635, !dbg !1697
  br i1 %637, label %27, label %638, !dbg !1697

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %129, metadata !1178, metadata !DIExpression()), !dbg !1242
  %639 = icmp ne i8* %98, null, !dbg !1698
  %640 = and i1 %639, %110, !dbg !1700
  br i1 %640, label %641, label %656, !dbg !1700

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %123, metadata !1187, metadata !DIExpression()), !dbg !1250
  %642 = load i8, i8* %98, align 1, !dbg !1701, !tbaa !798
  %643 = icmp eq i8 %642, 0, !dbg !1704
  br i1 %643, label %656, label %644, !dbg !1704

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %647, metadata !1187, metadata !DIExpression()), !dbg !1250
  %648 = icmp ult i64 %647, %129, !dbg !1705
  br i1 %648, label %649, label %651, !dbg !1708

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1705
  store i8 %645, i8* %650, align 1, !dbg !1705, !tbaa !798
  br label %651, !dbg !1705

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1708
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1709
  call void @llvm.dbg.value(metadata i8* %653, metadata !1189, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i64 %652, metadata !1187, metadata !DIExpression()), !dbg !1250
  %654 = load i8, i8* %653, align 1, !dbg !1701, !tbaa !798
  %655 = icmp eq i8 %654, 0, !dbg !1704
  br i1 %655, label %656, label %644, !dbg !1704, !llvm.loop !1710

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1250
  call void @llvm.dbg.value(metadata i64 %657, metadata !1187, metadata !DIExpression()), !dbg !1250
  %658 = icmp ult i64 %657, %129, !dbg !1712
  br i1 %658, label %659, label %671, !dbg !1714

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1715
  store i8 0, i8* %660, align 1, !dbg !1716, !tbaa !798
  br label %671, !dbg !1715

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 %663, metadata !1180, metadata !DIExpression()), !dbg !1244
  %665 = icmp ne i32 %662, 2, !dbg !1717
  %666 = icmp eq i8 %102, 0, !dbg !1719
  %667 = or i1 %665, %666, !dbg !1720
  call void @llvm.dbg.value(metadata i32 4, metadata !1181, metadata !DIExpression()), !dbg !1245
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %668, metadata !1181, metadata !DIExpression()), !dbg !1245
  %669 = and i32 %5, -3, !dbg !1721
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1722
  br label %671, !dbg !1723

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1724
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1729, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i32 %1, metadata !1730, metadata !DIExpression()), !dbg !1734
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %3, metadata !1731, metadata !DIExpression()), !dbg !1736
  %4 = icmp eq i8* %3, %0, !dbg !1737
  br i1 %4, label %5, label %71, !dbg !1739

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %6, metadata !1732, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8* %6, metadata !1742, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8* null, metadata !1748, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 85, metadata !1749, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 84, metadata !1750, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 70, metadata !1751, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 45, metadata !1752, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 56, metadata !1753, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1754, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 0, metadata !1755, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1756, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1770
  %7 = load i8, i8* %6, align 1, !dbg !1771, !tbaa !798
  %8 = and i8 %7, -33, !dbg !1771
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1771

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1773, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8* null, metadata !1778, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8 84, metadata !1779, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8 70, metadata !1780, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 45, metadata !1781, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 56, metadata !1782, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1799
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1800
  %11 = load i8, i8* %10, align 1, !dbg !1800, !tbaa !798
  %12 = and i8 %11, -33, !dbg !1800
  %13 = icmp eq i8 %12, 84, !dbg !1800
  br i1 %13, label %14, label %68, !dbg !1800

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1802, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i8* null, metadata !1807, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 70, metadata !1808, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 45, metadata !1809, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 56, metadata !1810, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1826
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1827
  %16 = load i8, i8* %15, align 1, !dbg !1827, !tbaa !798
  %17 = and i8 %16, -33, !dbg !1827
  %18 = icmp eq i8 %17, 70, !dbg !1827
  br i1 %18, label %19, label %68, !dbg !1827

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1829, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* null, metadata !1834, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 45, metadata !1835, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 56, metadata !1836, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1851
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1852
  %21 = load i8, i8* %20, align 1, !dbg !1852, !tbaa !798
  %22 = icmp eq i8 %21, 45, !dbg !1852
  br i1 %22, label %23, label %68, !dbg !1854

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1855, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* null, metadata !1860, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 56, metadata !1861, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 0, metadata !1862, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 0, metadata !1863, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 0, metadata !1864, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 0, metadata !1865, metadata !DIExpression()), !dbg !1875
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1876
  %25 = load i8, i8* %24, align 1, !dbg !1876, !tbaa !798
  %26 = icmp eq i8 %25, 56, !dbg !1876
  br i1 %26, label %27, label %68, !dbg !1878

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1879, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8* null, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 0, metadata !1885, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1886, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1887, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 0, metadata !1888, metadata !DIExpression()), !dbg !1897
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1898
  %29 = load i8, i8* %28, align 1, !dbg !1898, !tbaa !798
  %30 = icmp eq i8 %29, 0, !dbg !1898
  br i1 %30, label %31, label %68, !dbg !1900

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1901, !tbaa !798
  %33 = icmp eq i8 %32, 96, !dbg !1902
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !1901
  br label %71, !dbg !1903

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1773, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8* null, metadata !1778, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 66, metadata !1779, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 49, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 56, metadata !1781, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 48, metadata !1782, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 51, metadata !1783, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 48, metadata !1784, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1916
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1917
  %37 = load i8, i8* %36, align 1, !dbg !1917, !tbaa !798
  %38 = and i8 %37, -33, !dbg !1917
  %39 = icmp eq i8 %38, 66, !dbg !1917
  br i1 %39, label %40, label %68, !dbg !1917

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1802, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8* null, metadata !1807, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 49, metadata !1808, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 56, metadata !1809, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 48, metadata !1810, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 51, metadata !1811, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 48, metadata !1812, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1927
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1928
  %42 = load i8, i8* %41, align 1, !dbg !1928, !tbaa !798
  %43 = icmp eq i8 %42, 49, !dbg !1928
  br i1 %43, label %44, label %68, !dbg !1929

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1829, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8* null, metadata !1834, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 56, metadata !1835, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 48, metadata !1836, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 51, metadata !1837, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 48, metadata !1838, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1938
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1939
  %46 = load i8, i8* %45, align 1, !dbg !1939, !tbaa !798
  %47 = icmp eq i8 %46, 56, !dbg !1939
  br i1 %47, label %48, label %68, !dbg !1940

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1855, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* null, metadata !1860, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 48, metadata !1861, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 51, metadata !1862, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 48, metadata !1863, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 0, metadata !1864, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, metadata !1865, metadata !DIExpression()), !dbg !1948
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1949
  %50 = load i8, i8* %49, align 1, !dbg !1949, !tbaa !798
  %51 = icmp eq i8 %50, 48, !dbg !1949
  br i1 %51, label %52, label %68, !dbg !1950

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1879, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* null, metadata !1884, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 51, metadata !1885, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 48, metadata !1886, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 0, metadata !1887, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1888, metadata !DIExpression()), !dbg !1957
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1958
  %54 = load i8, i8* %53, align 1, !dbg !1958, !tbaa !798
  %55 = icmp eq i8 %54, 51, !dbg !1958
  br i1 %55, label %56, label %68, !dbg !1959

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1960, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* null, metadata !1965, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 48, metadata !1966, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1976
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1977
  %58 = load i8, i8* %57, align 1, !dbg !1977, !tbaa !798
  %59 = icmp eq i8 %58, 48, !dbg !1977
  br i1 %59, label %60, label %68, !dbg !1979

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1980, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* null, metadata !1985, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !1994
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1995
  %62 = load i8, i8* %61, align 1, !dbg !1995, !tbaa !798
  %63 = icmp eq i8 %62, 0, !dbg !1995
  br i1 %63, label %64, label %68, !dbg !1997

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1998, !tbaa !798
  %66 = icmp eq i8 %65, 96, !dbg !1999
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !1998
  br label %71, !dbg !2000

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2001
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2002
  br label %71, !dbg !2003

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2004
  ret i8* %72, !dbg !2005
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2006 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2010, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %1, metadata !2011, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2012, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8* %0, metadata !2016, metadata !DIExpression()) #10, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %1, metadata !2021, metadata !DIExpression()) #10, !dbg !2031
  call void @llvm.dbg.value(metadata i64* null, metadata !2022, metadata !DIExpression()) #10, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2023, metadata !DIExpression()) #10, !dbg !2033
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2034
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2024, metadata !DIExpression()) #10, !dbg !2035
  %6 = tail call i32* @__errno_location() #18, !dbg !2036
  %7 = load i32, i32* %6, align 4, !dbg !2036, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %7, metadata !2025, metadata !DIExpression()) #10, !dbg !2037
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2038
  %9 = load i32, i32* %8, align 4, !dbg !2038, !tbaa !1110
  %10 = or i32 %9, 1, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %10, metadata !2026, metadata !DIExpression()) #10, !dbg !2040
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2041
  %12 = load i32, i32* %11, align 8, !dbg !2041, !tbaa !1050
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2043
  %15 = load i8*, i8** %14, align 8, !dbg !2043, !tbaa !1136
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2044
  %17 = load i8*, i8** %16, align 8, !dbg !2044, !tbaa !1139
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2045
  %19 = add i64 %18, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %19, metadata !2027, metadata !DIExpression()) #10, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %19, metadata !2048, metadata !DIExpression()) #10, !dbg !2053
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %20, metadata !2028, metadata !DIExpression()) #10, !dbg !2056
  %21 = load i32, i32* %11, align 8, !dbg !2057, !tbaa !1050
  %22 = load i8*, i8** %14, align 8, !dbg !2058, !tbaa !1136
  %23 = load i8*, i8** %16, align 8, !dbg !2059, !tbaa !1139
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2060
  store i32 %7, i32* %6, align 4, !dbg !2061, !tbaa !772
  ret i8* %20, !dbg !2062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2017 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %1, metadata !2021, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64* %2, metadata !2022, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2023, metadata !DIExpression()), !dbg !2066
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2067
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2067
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2024, metadata !DIExpression()), !dbg !2068
  %7 = tail call i32* @__errno_location() #18, !dbg !2069
  %8 = load i32, i32* %7, align 4, !dbg !2069, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %8, metadata !2025, metadata !DIExpression()), !dbg !2070
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2071
  %10 = load i32, i32* %9, align 4, !dbg !2071, !tbaa !1110
  %11 = icmp ne i64* %2, null, !dbg !2072
  %12 = xor i1 %11, true, !dbg !2072
  %13 = zext i1 %12 to i32, !dbg !2072
  %14 = or i32 %10, %13, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %14, metadata !2026, metadata !DIExpression()), !dbg !2074
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2075
  %16 = load i32, i32* %15, align 8, !dbg !2075, !tbaa !1050
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2076
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2077
  %19 = load i8*, i8** %18, align 8, !dbg !2077, !tbaa !1136
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2078
  %21 = load i8*, i8** %20, align 8, !dbg !2078, !tbaa !1139
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2079
  %23 = add i64 %22, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %23, metadata !2027, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %23, metadata !2048, metadata !DIExpression()) #10, !dbg !2082
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2084
  call void @llvm.dbg.value(metadata i8* %24, metadata !2028, metadata !DIExpression()), !dbg !2085
  %25 = load i32, i32* %15, align 8, !dbg !2086, !tbaa !1050
  %26 = load i8*, i8** %18, align 8, !dbg !2087, !tbaa !1136
  %27 = load i8*, i8** %20, align 8, !dbg !2088, !tbaa !1139
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2089
  store i32 %8, i32* %7, align 4, !dbg !2090, !tbaa !772
  br i1 %11, label %29, label %30, !dbg !2091

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2092, !tbaa !2094
  br label %30, !dbg !2096

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2097
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2098 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2102, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 1, metadata !2101, metadata !DIExpression()), !dbg !2104
  %2 = load i32, i32* @nslots, align 4, !dbg !2105, !tbaa !772
  %3 = icmp sgt i32 %2, 1, !dbg !2108
  br i1 %3, label %4, label %12, !dbg !2109

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2101, metadata !DIExpression()), !dbg !2104
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2110
  %7 = load i8*, i8** %6, align 8, !dbg !2110, !tbaa !2111
  tail call void @free(i8* %7) #10, !dbg !2113
  %8 = add nuw nsw i64 %5, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i32 undef, metadata !2101, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2104
  %9 = load i32, i32* @nslots, align 4, !dbg !2105, !tbaa !772
  %10 = sext i32 %9 to i64, !dbg !2108
  %11 = icmp slt i64 %8, %10, !dbg !2108
  br i1 %11, label %4, label %12, !dbg !2109, !llvm.loop !2115

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2117
  %14 = load i8*, i8** %13, align 8, !dbg !2117, !tbaa !2111
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2119
  br i1 %15, label %17, label %16, !dbg !2120

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2121
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2123, !tbaa !2124
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2125, !tbaa !2111
  br label %17, !dbg !2126

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2127
  br i1 %18, label %21, label %19, !dbg !2129

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2130
  tail call void @free(i8* %20) #10, !dbg !2132
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2133, !tbaa !689
  br label %21, !dbg !2134

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2135, !tbaa !772
  ret void, !dbg !2136
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %1, metadata !2142, metadata !DIExpression()), !dbg !2144
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2145
  ret i8* %3, !dbg !2146
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2147 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2151, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8* %1, metadata !2152, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %2, metadata !2153, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2154, metadata !DIExpression()), !dbg !2169
  %5 = tail call i32* @__errno_location() #18, !dbg !2170
  %6 = load i32, i32* %5, align 4, !dbg !2170, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %6, metadata !2155, metadata !DIExpression()), !dbg !2171
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2172, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2156, metadata !DIExpression()), !dbg !2173
  %8 = icmp slt i32 %0, 0, !dbg !2174
  br i1 %8, label %9, label %10, !dbg !2176

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2177
  unreachable, !dbg !2177

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2178, !tbaa !772
  %12 = icmp sgt i32 %11, %0, !dbg !2179
  br i1 %12, label %34, label %13, !dbg !2180

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2181
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2160, metadata !DIExpression()), !dbg !2182
  %15 = icmp eq i32 %0, 2147483647, !dbg !2183
  br i1 %15, label %16, label %17, !dbg !2185

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2186
  unreachable, !dbg !2186

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2187
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2187
  %20 = add nsw i32 %0, 1, !dbg !2188
  %21 = sext i32 %20 to i64, !dbg !2189
  %22 = shl nsw i64 %21, 4, !dbg !2190
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2191
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2156, metadata !DIExpression()), !dbg !2173
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2192, !tbaa !689
  br i1 %14, label %25, label %26, !dbg !2193

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2194, !tbaa.struct !2196
  br label %26, !dbg !2197

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2198, !tbaa !772
  %28 = sext i32 %27 to i64, !dbg !2199
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2199
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2200
  %31 = sub nsw i32 %20, %27, !dbg !2201
  %32 = sext i32 %31 to i64, !dbg !2202
  %33 = shl nsw i64 %32, 4, !dbg !2203
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2200
  store i32 %20, i32* @nslots, align 4, !dbg !2204, !tbaa !772
  br label %34, !dbg !2205

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2206
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2156, metadata !DIExpression()), !dbg !2173
  %36 = sext i32 %0 to i64, !dbg !2207
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2208
  %38 = load i64, i64* %37, align 8, !dbg !2208, !tbaa !2124
  call void @llvm.dbg.value(metadata i64 %38, metadata !2161, metadata !DIExpression()), !dbg !2209
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2210
  %40 = load i8*, i8** %39, align 8, !dbg !2210, !tbaa !2111
  call void @llvm.dbg.value(metadata i8* %40, metadata !2163, metadata !DIExpression()), !dbg !2211
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2212
  %42 = load i32, i32* %41, align 4, !dbg !2212, !tbaa !1110
  %43 = or i32 %42, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %43, metadata !2164, metadata !DIExpression()), !dbg !2214
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2215
  %45 = load i32, i32* %44, align 8, !dbg !2215, !tbaa !1050
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2216
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2217
  %48 = load i8*, i8** %47, align 8, !dbg !2217, !tbaa !1136
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2218
  %50 = load i8*, i8** %49, align 8, !dbg !2218, !tbaa !1139
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2219
  call void @llvm.dbg.value(metadata i64 %51, metadata !2165, metadata !DIExpression()), !dbg !2220
  %52 = icmp ugt i64 %38, %51, !dbg !2221
  br i1 %52, label %63, label %53, !dbg !2223

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %54, metadata !2161, metadata !DIExpression()), !dbg !2209
  store i64 %54, i64* %37, align 8, !dbg !2226, !tbaa !2124
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2227
  br i1 %55, label %57, label %56, !dbg !2229

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2230
  br label %57, !dbg !2230

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2048, metadata !DIExpression()) #10, !dbg !2231
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2233
  call void @llvm.dbg.value(metadata i8* %58, metadata !2163, metadata !DIExpression()), !dbg !2211
  store i8* %58, i8** %39, align 8, !dbg !2234, !tbaa !2111
  %59 = load i32, i32* %44, align 8, !dbg !2235, !tbaa !1050
  %60 = load i8*, i8** %47, align 8, !dbg !2236, !tbaa !1136
  %61 = load i8*, i8** %49, align 8, !dbg !2237, !tbaa !1139
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2238
  br label %63, !dbg !2239

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2240
  call void @llvm.dbg.value(metadata i8* %64, metadata !2163, metadata !DIExpression()), !dbg !2211
  store i32 %6, i32* %5, align 4, !dbg !2241, !tbaa !772
  ret i8* %64, !dbg !2242
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2243 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2247, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %1, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %2, metadata !2249, metadata !DIExpression()), !dbg !2252
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2253
  ret i8* %4, !dbg !2254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2255 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2259, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 0, metadata !2141, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata i8* %0, metadata !2142, metadata !DIExpression()) #10, !dbg !2263
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2264
  ret i8* %2, !dbg !2265
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2266 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %1, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 0, metadata !2247, metadata !DIExpression()) #10, !dbg !2274
  call void @llvm.dbg.value(metadata i8* %0, metadata !2248, metadata !DIExpression()) #10, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %1, metadata !2249, metadata !DIExpression()) #10, !dbg !2277
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2278
  ret i8* %3, !dbg !2279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2280 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2284, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %1, metadata !2285, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %2, metadata !2286, metadata !DIExpression()), !dbg !2290
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2291
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2287, metadata !DIExpression(DW_OP_deref)), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %1, metadata !2293, metadata !DIExpression()) #10, !dbg !2299
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2301, !alias.scope !2302
  %6 = icmp eq i32 %1, 10, !dbg !2305
  br i1 %6, label %7, label %8, !dbg !2307

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2308, !noalias !2302
  unreachable, !dbg !2308

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2309
  store i32 %1, i32* %9, align 8, !dbg !2310, !tbaa !1050, !alias.scope !2302
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2287, metadata !DIExpression(DW_OP_deref)), !dbg !2292
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2298, metadata !DIExpression(DW_OP_deref)), !dbg !2301
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2311
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2312
  ret i8* %10, !dbg !2313
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2314 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2318, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 %1, metadata !2319, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %2, metadata !2320, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %3, metadata !2321, metadata !DIExpression()), !dbg !2326
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2327
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2322, metadata !DIExpression(DW_OP_deref)), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %1, metadata !2293, metadata !DIExpression()) #10, !dbg !2329
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2331, !alias.scope !2332
  %7 = icmp eq i32 %1, 10, !dbg !2335
  br i1 %7, label %8, label %9, !dbg !2336

; <label>:8:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2337, !noalias !2332
  unreachable, !dbg !2337

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2338
  store i32 %1, i32* %10, align 8, !dbg !2339, !tbaa !1050, !alias.scope !2332
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2322, metadata !DIExpression(DW_OP_deref)), !dbg !2328
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2298, metadata !DIExpression(DW_OP_deref)), !dbg !2331
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2340
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2341
  ret i8* %11, !dbg !2342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2343 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %1, metadata !2348, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i32 0, metadata !2284, metadata !DIExpression()) #10, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %0, metadata !2285, metadata !DIExpression()) #10, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %1, metadata !2286, metadata !DIExpression()) #10, !dbg !2354
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2355
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2287, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2356
  call void @llvm.dbg.value(metadata i32 %0, metadata !2293, metadata !DIExpression()) #10, !dbg !2357
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2359, !alias.scope !2360
  %5 = icmp eq i32 %0, 10, !dbg !2363
  br i1 %5, label %6, label %7, !dbg !2364

; <label>:6:                                      ; preds = %2
  tail call void @abort() #16, !dbg !2365, !noalias !2360
  unreachable, !dbg !2365

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2366
  store i32 %0, i32* %8, align 8, !dbg !2367, !tbaa !1050, !alias.scope !2360
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2287, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2356
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2298, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2359
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2368
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2369
  ret i8* %9, !dbg !2370
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2371 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2375, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8* %1, metadata !2376, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %2, metadata !2377, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 0, metadata !2318, metadata !DIExpression()) #10, !dbg !2381
  call void @llvm.dbg.value(metadata i32 %0, metadata !2319, metadata !DIExpression()) #10, !dbg !2383
  call void @llvm.dbg.value(metadata i8* %1, metadata !2320, metadata !DIExpression()) #10, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %2, metadata !2321, metadata !DIExpression()) #10, !dbg !2385
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2386
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2322, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %0, metadata !2293, metadata !DIExpression()) #10, !dbg !2388
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2390, !alias.scope !2391
  %6 = icmp eq i32 %0, 10, !dbg !2394
  br i1 %6, label %7, label %8, !dbg !2395

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2396, !noalias !2391
  unreachable, !dbg !2396

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2397
  store i32 %0, i32* %9, align 8, !dbg !2398, !tbaa !1050, !alias.scope !2391
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2322, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2387
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2298, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2390
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2399
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2400
  ret i8* %10, !dbg !2401
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2402 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i64 %1, metadata !2407, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 %2, metadata !2408, metadata !DIExpression()), !dbg !2412
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2413
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2414, !tbaa.struct !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2409, metadata !DIExpression(DW_OP_deref)), !dbg !2416
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1069, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 %2, metadata !1070, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 %2, metadata !1072, metadata !DIExpression()), !dbg !2421
  %6 = lshr i8 %2, 5, !dbg !2422
  %7 = zext i8 %6 to i64, !dbg !2422
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2423
  call void @llvm.dbg.value(metadata i32* %8, metadata !1074, metadata !DIExpression()), !dbg !2424
  %9 = and i8 %2, 31, !dbg !2425
  %10 = zext i8 %9 to i32, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %10, metadata !1076, metadata !DIExpression()), !dbg !2426
  %11 = load i32, i32* %8, align 4, !dbg !2427, !tbaa !772
  %12 = lshr i32 %11, %10, !dbg !2428
  %13 = and i32 %12, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %13, metadata !1077, metadata !DIExpression()), !dbg !2430
  %14 = xor i32 %13, 1, !dbg !2431
  %15 = shl i32 %14, %10, !dbg !2432
  %16 = xor i32 %15, %11, !dbg !2433
  store i32 %16, i32* %8, align 4, !dbg !2433, !tbaa !772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2409, metadata !DIExpression(DW_OP_deref)), !dbg !2416
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2435
  ret i8* %17, !dbg !2436
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2437 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %1, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %0, metadata !2406, metadata !DIExpression()) #10, !dbg !2445
  call void @llvm.dbg.value(metadata i64 -1, metadata !2407, metadata !DIExpression()) #10, !dbg !2447
  call void @llvm.dbg.value(metadata i8 %1, metadata !2408, metadata !DIExpression()) #10, !dbg !2448
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2449
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2450, !tbaa.struct !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2409, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1069, metadata !DIExpression()) #10, !dbg !2452
  call void @llvm.dbg.value(metadata i8 %1, metadata !1070, metadata !DIExpression()) #10, !dbg !2454
  call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()) #10, !dbg !2455
  call void @llvm.dbg.value(metadata i8 %1, metadata !1072, metadata !DIExpression()) #10, !dbg !2456
  %5 = lshr i8 %1, 5, !dbg !2457
  %6 = zext i8 %5 to i64, !dbg !2457
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2458
  call void @llvm.dbg.value(metadata i32* %7, metadata !1074, metadata !DIExpression()) #10, !dbg !2459
  %8 = and i8 %1, 31, !dbg !2460
  %9 = zext i8 %8 to i32, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %9, metadata !1076, metadata !DIExpression()) #10, !dbg !2461
  %10 = load i32, i32* %7, align 4, !dbg !2462, !tbaa !772
  %11 = lshr i32 %10, %9, !dbg !2463
  %12 = and i32 %11, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %12, metadata !1077, metadata !DIExpression()) #10, !dbg !2465
  %13 = xor i32 %12, 1, !dbg !2466
  %14 = shl i32 %13, %9, !dbg !2467
  %15 = xor i32 %14, %10, !dbg !2468
  store i32 %15, i32* %7, align 4, !dbg !2468, !tbaa !772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2409, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2451
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2469
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2470
  ret i8* %16, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2472 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()) #10, !dbg !2476
  call void @llvm.dbg.value(metadata i8 58, metadata !2442, metadata !DIExpression()) #10, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %0, metadata !2406, metadata !DIExpression()) #10, !dbg !2479
  call void @llvm.dbg.value(metadata i64 -1, metadata !2407, metadata !DIExpression()) #10, !dbg !2481
  call void @llvm.dbg.value(metadata i8 58, metadata !2408, metadata !DIExpression()) #10, !dbg !2482
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2483
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2483
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2484, !tbaa.struct !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2409, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1069, metadata !DIExpression()) #10, !dbg !2486
  call void @llvm.dbg.value(metadata i8 58, metadata !1070, metadata !DIExpression()) #10, !dbg !2488
  call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()) #10, !dbg !2489
  call void @llvm.dbg.value(metadata i8 58, metadata !1072, metadata !DIExpression()) #10, !dbg !2490
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2491
  call void @llvm.dbg.value(metadata i32* %4, metadata !1074, metadata !DIExpression()) #10, !dbg !2492
  call void @llvm.dbg.value(metadata i32 26, metadata !1076, metadata !DIExpression()) #10, !dbg !2493
  %5 = load i32, i32* %4, align 4, !dbg !2494, !tbaa !772
  %6 = or i32 %5, 67108864, !dbg !2495
  store i32 %6, i32* %4, align 4, !dbg !2495, !tbaa !772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2409, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2485
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2496
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2497
  ret i8* %7, !dbg !2498
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2499 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2501, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %1, metadata !2502, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8* %0, metadata !2406, metadata !DIExpression()) #10, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %1, metadata !2407, metadata !DIExpression()) #10, !dbg !2507
  call void @llvm.dbg.value(metadata i8 58, metadata !2408, metadata !DIExpression()) #10, !dbg !2508
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2509
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2510, !tbaa.struct !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2409, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2511
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1069, metadata !DIExpression()) #10, !dbg !2512
  call void @llvm.dbg.value(metadata i8 58, metadata !1070, metadata !DIExpression()) #10, !dbg !2514
  call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()) #10, !dbg !2515
  call void @llvm.dbg.value(metadata i8 58, metadata !1072, metadata !DIExpression()) #10, !dbg !2516
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2517
  call void @llvm.dbg.value(metadata i32* %5, metadata !1074, metadata !DIExpression()) #10, !dbg !2518
  call void @llvm.dbg.value(metadata i32 26, metadata !1076, metadata !DIExpression()) #10, !dbg !2519
  %6 = load i32, i32* %5, align 4, !dbg !2520, !tbaa !772
  %7 = or i32 %6, 67108864, !dbg !2521
  store i32 %7, i32* %5, align 4, !dbg !2521, !tbaa !772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2409, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2511
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2523
  ret i8* %8, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2525 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2298, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2531
  call void @llvm.dbg.value(metadata i32 %0, metadata !2527, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %1, metadata !2528, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %2, metadata !2529, metadata !DIExpression()), !dbg !2535
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2536
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2537
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2537
  call void @llvm.dbg.value(metadata i32 %1, metadata !2293, metadata !DIExpression()) #10, !dbg !2538
  call void @llvm.dbg.value(metadata i32 0, metadata !2298, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2531
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2531, !alias.scope !2539
  %8 = icmp eq i32 %1, 10, !dbg !2542
  br i1 %8, label %9, label %10, !dbg !2543

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !2544, !noalias !2539
  unreachable, !dbg !2544

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2298, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2531
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2537
  store i32 %1, i32* %11, align 8, !dbg !2537
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2537
  %13 = bitcast i32* %12 to i8*, !dbg !2537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2537
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2530, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1069, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 58, metadata !1070, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 58, metadata !1072, metadata !DIExpression()), !dbg !2550
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2551
  call void @llvm.dbg.value(metadata i32* %14, metadata !1074, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 26, metadata !1076, metadata !DIExpression()), !dbg !2553
  %15 = load i32, i32* %14, align 4, !dbg !2554, !tbaa !772
  %16 = or i32 %15, 67108864, !dbg !2555
  store i32 %16, i32* %14, align 4, !dbg !2555, !tbaa !772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2530, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2556
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2557
  ret i8* %17, !dbg !2558
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2559 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8* %1, metadata !2564, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %2, metadata !2565, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %3, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()) #10, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %1, metadata !2576, metadata !DIExpression()) #10, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %2, metadata !2577, metadata !DIExpression()) #10, !dbg !2584
  call void @llvm.dbg.value(metadata i8* %3, metadata !2578, metadata !DIExpression()) #10, !dbg !2585
  call void @llvm.dbg.value(metadata i64 -1, metadata !2579, metadata !DIExpression()) #10, !dbg !2586
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2588, !tbaa.struct !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2580, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1118, metadata !DIExpression()) #10, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %1, metadata !1119, metadata !DIExpression()) #10, !dbg !2592
  call void @llvm.dbg.value(metadata i8* %2, metadata !1120, metadata !DIExpression()) #10, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1118, metadata !DIExpression()) #10, !dbg !2590
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2594
  store i32 10, i32* %7, align 8, !dbg !2595, !tbaa !1050
  %8 = icmp ne i8* %1, null, !dbg !2596
  %9 = icmp ne i8* %2, null, !dbg !2597
  %10 = and i1 %8, %9, !dbg !2598
  br i1 %10, label %12, label %11, !dbg !2598

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !2599
  unreachable, !dbg !2599

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2600
  store i8* %1, i8** %13, align 8, !dbg !2601, !tbaa !1136
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2602
  store i8* %2, i8** %14, align 8, !dbg !2603, !tbaa !1139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2580, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2589
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2604
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2605
  ret i8* %15, !dbg !2606
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2572 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8* %1, metadata !2576, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* %2, metadata !2577, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %3, metadata !2578, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %4, metadata !2579, metadata !DIExpression()), !dbg !2611
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2612
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2613, !tbaa.struct !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2580, metadata !DIExpression(DW_OP_deref)), !dbg !2614
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1118, metadata !DIExpression()) #10, !dbg !2615
  call void @llvm.dbg.value(metadata i8* %1, metadata !1119, metadata !DIExpression()) #10, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %2, metadata !1120, metadata !DIExpression()) #10, !dbg !2618
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1118, metadata !DIExpression()) #10, !dbg !2615
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2619
  store i32 10, i32* %8, align 8, !dbg !2620, !tbaa !1050
  %9 = icmp ne i8* %1, null, !dbg !2621
  %10 = icmp ne i8* %2, null, !dbg !2622
  %11 = and i1 %9, %10, !dbg !2623
  br i1 %11, label %13, label %12, !dbg !2623

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !2624
  unreachable, !dbg !2624

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2625
  store i8* %1, i8** %14, align 8, !dbg !2626, !tbaa !1136
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2627
  store i8* %2, i8** %15, align 8, !dbg !2628, !tbaa !1139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2580, metadata !DIExpression(DW_OP_deref)), !dbg !2614
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2630
  ret i8* %16, !dbg !2631
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2632 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2636, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8* %1, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %2, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 0, metadata !2563, metadata !DIExpression()) #10, !dbg !2642
  call void @llvm.dbg.value(metadata i8* %0, metadata !2564, metadata !DIExpression()) #10, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %1, metadata !2565, metadata !DIExpression()) #10, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %2, metadata !2566, metadata !DIExpression()) #10, !dbg !2646
  call void @llvm.dbg.value(metadata i32 0, metadata !2571, metadata !DIExpression()) #10, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %0, metadata !2576, metadata !DIExpression()) #10, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2577, metadata !DIExpression()) #10, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %2, metadata !2578, metadata !DIExpression()) #10, !dbg !2651
  call void @llvm.dbg.value(metadata i64 -1, metadata !2579, metadata !DIExpression()) #10, !dbg !2652
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2653
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2654, !tbaa.struct !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2580, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2655
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1118, metadata !DIExpression()) #10, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %0, metadata !1119, metadata !DIExpression()) #10, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %1, metadata !1120, metadata !DIExpression()) #10, !dbg !2659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1118, metadata !DIExpression()) #10, !dbg !2656
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2660
  store i32 10, i32* %6, align 8, !dbg !2661, !tbaa !1050
  %7 = icmp ne i8* %0, null, !dbg !2662
  %8 = icmp ne i8* %1, null, !dbg !2663
  %9 = and i1 %7, %8, !dbg !2664
  br i1 %9, label %11, label %10, !dbg !2664

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !2665
  unreachable, !dbg !2665

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2666
  store i8* %0, i8** %12, align 8, !dbg !2667, !tbaa !1136
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2668
  store i8* %1, i8** %13, align 8, !dbg !2669, !tbaa !1139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2580, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2655
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2670
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2671
  ret i8* %14, !dbg !2672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2673 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2677, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8* %1, metadata !2678, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i8* %2, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i64 %3, metadata !2680, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2571, metadata !DIExpression()) #10, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %0, metadata !2576, metadata !DIExpression()) #10, !dbg !2687
  call void @llvm.dbg.value(metadata i8* %1, metadata !2577, metadata !DIExpression()) #10, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %2, metadata !2578, metadata !DIExpression()) #10, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %3, metadata !2579, metadata !DIExpression()) #10, !dbg !2690
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2691
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2692, !tbaa.struct !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2580, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1118, metadata !DIExpression()) #10, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %0, metadata !1119, metadata !DIExpression()) #10, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %1, metadata !1120, metadata !DIExpression()) #10, !dbg !2697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1118, metadata !DIExpression()) #10, !dbg !2694
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2698
  store i32 10, i32* %7, align 8, !dbg !2699, !tbaa !1050
  %8 = icmp ne i8* %0, null, !dbg !2700
  %9 = icmp ne i8* %1, null, !dbg !2701
  %10 = and i1 %8, %9, !dbg !2702
  br i1 %10, label %12, label %11, !dbg !2702

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !2703
  unreachable, !dbg !2703

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2704
  store i8* %0, i8** %13, align 8, !dbg !2705, !tbaa !1136
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2706
  store i8* %1, i8** %14, align 8, !dbg !2707, !tbaa !1139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2580, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2693
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2708
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2709
  ret i8* %15, !dbg !2710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2716, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %2, metadata !2717, metadata !DIExpression()), !dbg !2720
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2721
  ret i8* %4, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2723 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i64 %1, metadata !2728, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2715, metadata !DIExpression()) #10, !dbg !2731
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()) #10, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %1, metadata !2717, metadata !DIExpression()) #10, !dbg !2734
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2735
  ret i8* %3, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8* %1, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()) #10, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %1, metadata !2716, metadata !DIExpression()) #10, !dbg !2747
  call void @llvm.dbg.value(metadata i64 -1, metadata !2717, metadata !DIExpression()) #10, !dbg !2748
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2749
  ret i8* %3, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2751 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i32 0, metadata !2741, metadata !DIExpression()) #10, !dbg !2757
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()) #10, !dbg !2759
  call void @llvm.dbg.value(metadata i32 0, metadata !2715, metadata !DIExpression()) #10, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()) #10, !dbg !2762
  call void @llvm.dbg.value(metadata i64 -1, metadata !2717, metadata !DIExpression()) #10, !dbg !2763
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2764
  ret i8* %2, !dbg !2765
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2766 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2822, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* %1, metadata !2823, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %2, metadata !2824, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* %3, metadata !2825, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8** %4, metadata !2826, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %5, metadata !2827, metadata !DIExpression()), !dbg !2833
  %7 = icmp eq i8* %1, null, !dbg !2834
  br i1 %7, label %10, label %8, !dbg !2836

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2837
  br label %12, !dbg !2837

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2838
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i32 5) #10, !dbg !2839
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2839
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.77, i64 0, i64 0), i32 5) #10, !dbg !2840
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2840
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ], !dbg !2841

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !2842
  unreachable, !dbg !2842

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.78, i64 0, i64 0), i32 5) #10, !dbg !2844
  %20 = load i8*, i8** %4, align 8, !dbg !2844, !tbaa !689
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2844
  br label %146, !dbg !2845

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.79, i64 0, i64 0), i32 5) #10, !dbg !2846
  %24 = load i8*, i8** %4, align 8, !dbg !2846, !tbaa !689
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2846
  %26 = load i8*, i8** %25, align 8, !dbg !2846, !tbaa !689
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2846
  br label %146, !dbg !2847

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.80, i64 0, i64 0), i32 5) #10, !dbg !2848
  %30 = load i8*, i8** %4, align 8, !dbg !2848, !tbaa !689
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2848
  %32 = load i8*, i8** %31, align 8, !dbg !2848, !tbaa !689
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2848
  %34 = load i8*, i8** %33, align 8, !dbg !2848, !tbaa !689
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2848
  br label %146, !dbg !2849

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.81, i64 0, i64 0), i32 5) #10, !dbg !2850
  %38 = load i8*, i8** %4, align 8, !dbg !2850, !tbaa !689
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2850
  %40 = load i8*, i8** %39, align 8, !dbg !2850, !tbaa !689
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2850
  %42 = load i8*, i8** %41, align 8, !dbg !2850, !tbaa !689
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2850
  %44 = load i8*, i8** %43, align 8, !dbg !2850, !tbaa !689
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2850
  br label %146, !dbg !2851

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.82, i64 0, i64 0), i32 5) #10, !dbg !2852
  %48 = load i8*, i8** %4, align 8, !dbg !2852, !tbaa !689
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2852
  %50 = load i8*, i8** %49, align 8, !dbg !2852, !tbaa !689
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2852
  %52 = load i8*, i8** %51, align 8, !dbg !2852, !tbaa !689
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2852
  %54 = load i8*, i8** %53, align 8, !dbg !2852, !tbaa !689
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2852
  %56 = load i8*, i8** %55, align 8, !dbg !2852, !tbaa !689
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2852
  br label %146, !dbg !2853

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.83, i64 0, i64 0), i32 5) #10, !dbg !2854
  %60 = load i8*, i8** %4, align 8, !dbg !2854, !tbaa !689
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2854
  %62 = load i8*, i8** %61, align 8, !dbg !2854, !tbaa !689
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2854
  %64 = load i8*, i8** %63, align 8, !dbg !2854, !tbaa !689
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2854
  %66 = load i8*, i8** %65, align 8, !dbg !2854, !tbaa !689
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2854
  %68 = load i8*, i8** %67, align 8, !dbg !2854, !tbaa !689
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2854
  %70 = load i8*, i8** %69, align 8, !dbg !2854, !tbaa !689
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2854
  br label %146, !dbg !2855

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.84, i64 0, i64 0), i32 5) #10, !dbg !2856
  %74 = load i8*, i8** %4, align 8, !dbg !2856, !tbaa !689
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2856
  %76 = load i8*, i8** %75, align 8, !dbg !2856, !tbaa !689
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2856
  %78 = load i8*, i8** %77, align 8, !dbg !2856, !tbaa !689
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2856
  %80 = load i8*, i8** %79, align 8, !dbg !2856, !tbaa !689
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2856
  %82 = load i8*, i8** %81, align 8, !dbg !2856, !tbaa !689
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2856
  %84 = load i8*, i8** %83, align 8, !dbg !2856, !tbaa !689
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2856
  %86 = load i8*, i8** %85, align 8, !dbg !2856, !tbaa !689
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2856
  br label %146, !dbg !2857

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.85, i64 0, i64 0), i32 5) #10, !dbg !2858
  %90 = load i8*, i8** %4, align 8, !dbg !2858, !tbaa !689
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2858
  %92 = load i8*, i8** %91, align 8, !dbg !2858, !tbaa !689
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2858
  %94 = load i8*, i8** %93, align 8, !dbg !2858, !tbaa !689
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2858
  %96 = load i8*, i8** %95, align 8, !dbg !2858, !tbaa !689
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2858
  %98 = load i8*, i8** %97, align 8, !dbg !2858, !tbaa !689
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2858
  %100 = load i8*, i8** %99, align 8, !dbg !2858, !tbaa !689
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2858
  %102 = load i8*, i8** %101, align 8, !dbg !2858, !tbaa !689
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2858
  %104 = load i8*, i8** %103, align 8, !dbg !2858, !tbaa !689
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2858
  br label %146, !dbg !2859

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.86, i64 0, i64 0), i32 5) #10, !dbg !2860
  %108 = load i8*, i8** %4, align 8, !dbg !2860, !tbaa !689
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2860
  %110 = load i8*, i8** %109, align 8, !dbg !2860, !tbaa !689
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2860
  %112 = load i8*, i8** %111, align 8, !dbg !2860, !tbaa !689
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2860
  %114 = load i8*, i8** %113, align 8, !dbg !2860, !tbaa !689
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2860
  %116 = load i8*, i8** %115, align 8, !dbg !2860, !tbaa !689
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2860
  %118 = load i8*, i8** %117, align 8, !dbg !2860, !tbaa !689
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2860
  %120 = load i8*, i8** %119, align 8, !dbg !2860, !tbaa !689
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2860
  %122 = load i8*, i8** %121, align 8, !dbg !2860, !tbaa !689
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2860
  %124 = load i8*, i8** %123, align 8, !dbg !2860, !tbaa !689
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2860
  br label %146, !dbg !2861

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.87, i64 0, i64 0), i32 5) #10, !dbg !2862
  %128 = load i8*, i8** %4, align 8, !dbg !2862, !tbaa !689
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2862
  %130 = load i8*, i8** %129, align 8, !dbg !2862, !tbaa !689
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2862
  %132 = load i8*, i8** %131, align 8, !dbg !2862, !tbaa !689
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2862
  %134 = load i8*, i8** %133, align 8, !dbg !2862, !tbaa !689
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2862
  %136 = load i8*, i8** %135, align 8, !dbg !2862, !tbaa !689
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2862
  %138 = load i8*, i8** %137, align 8, !dbg !2862, !tbaa !689
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2862
  %140 = load i8*, i8** %139, align 8, !dbg !2862, !tbaa !689
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2862
  %142 = load i8*, i8** %141, align 8, !dbg !2862, !tbaa !689
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2862
  %144 = load i8*, i8** %143, align 8, !dbg !2862, !tbaa !689
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2862
  br label %146, !dbg !2863

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2865 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2869, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %1, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %2, metadata !2871, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* %3, metadata !2872, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8** %4, metadata !2873, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 0, metadata !2874, metadata !DIExpression()), !dbg !2880
  br label %6, !dbg !2881

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2883
  call void @llvm.dbg.value(metadata i64 %7, metadata !2874, metadata !DIExpression()), !dbg !2880
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2885
  %9 = load i8*, i8** %8, align 8, !dbg !2885, !tbaa !689
  %10 = icmp eq i8* %9, null, !dbg !2886
  %11 = add i64 %7, 1, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %11, metadata !2874, metadata !DIExpression()), !dbg !2880
  br i1 %10, label %12, label %6, !dbg !2886, !llvm.loop !2888

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %7, metadata !2874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %7, metadata !2874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %7, metadata !2874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %7, metadata !2874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %7, metadata !2874, metadata !DIExpression()), !dbg !2880
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2890
  ret void, !dbg !2891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2892 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2903, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %1, metadata !2904, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %2, metadata !2905, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8* %3, metadata !2906, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2907, metadata !DIExpression()), !dbg !2915
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2916
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2916
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2909, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 0, metadata !2908, metadata !DIExpression()), !dbg !2918
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2908, metadata !DIExpression()), !dbg !2918
  %11 = load i32, i32* %8, align 8, !dbg !2919
  %12 = icmp ult i32 %11, 41, !dbg !2919
  br i1 %12, label %13, label %18, !dbg !2919

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2919
  %15 = sext i32 %11 to i64, !dbg !2919
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2919
  %17 = add i32 %11, 8, !dbg !2919
  store i32 %17, i32* %8, align 8, !dbg !2919
  br label %21, !dbg !2919

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2919
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2919
  store i8* %20, i8** %10, align 8, !dbg !2919
  br label %21, !dbg !2919

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2919
  %25 = load i8*, i8** %24, align 8, !dbg !2919
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2922
  store i8* %25, i8** %26, align 16, !dbg !2923, !tbaa !689
  %27 = icmp eq i8* %25, null, !dbg !2924
  br i1 %27, label %30, label %28, !dbg !2925

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 1, metadata !2908, metadata !DIExpression()), !dbg !2918
  %29 = icmp ult i32 %22, 41, !dbg !2919
  br i1 %29, label %35, label %32, !dbg !2919

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2926
  call void @llvm.dbg.value(metadata i64 %31, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %31, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2927
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2928
  ret void, !dbg !2928

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2919
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2919
  store i8* %34, i8** %10, align 8, !dbg !2919
  br label %40, !dbg !2919

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2919
  %37 = sext i32 %22 to i64, !dbg !2919
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2919
  %39 = add i32 %22, 8, !dbg !2919
  store i32 %39, i32* %8, align 8, !dbg !2919
  br label %40, !dbg !2919

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2919
  %44 = load i8*, i8** %43, align 8, !dbg !2919
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2922
  store i8* %44, i8** %45, align 8, !dbg !2923, !tbaa !689
  %46 = icmp eq i8* %44, null, !dbg !2924
  br i1 %46, label %30, label %47, !dbg !2925

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 2, metadata !2908, metadata !DIExpression()), !dbg !2918
  %48 = icmp ult i32 %41, 41, !dbg !2919
  br i1 %48, label %52, label %49, !dbg !2919

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2919
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2919
  store i8* %51, i8** %10, align 8, !dbg !2919
  br label %57, !dbg !2919

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2919
  %54 = sext i32 %41 to i64, !dbg !2919
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2919
  %56 = add i32 %41, 8, !dbg !2919
  store i32 %56, i32* %8, align 8, !dbg !2919
  br label %57, !dbg !2919

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2919
  %61 = load i8*, i8** %60, align 8, !dbg !2919
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2922
  store i8* %61, i8** %62, align 16, !dbg !2923, !tbaa !689
  %63 = icmp eq i8* %61, null, !dbg !2924
  br i1 %63, label %30, label %64, !dbg !2925

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 3, metadata !2908, metadata !DIExpression()), !dbg !2918
  %65 = icmp ult i32 %58, 41, !dbg !2919
  br i1 %65, label %69, label %66, !dbg !2919

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2919
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2919
  store i8* %68, i8** %10, align 8, !dbg !2919
  br label %74, !dbg !2919

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2919
  %71 = sext i32 %58 to i64, !dbg !2919
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2919
  %73 = add i32 %58, 8, !dbg !2919
  store i32 %73, i32* %8, align 8, !dbg !2919
  br label %74, !dbg !2919

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2919
  %78 = load i8*, i8** %77, align 8, !dbg !2919
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2922
  store i8* %78, i8** %79, align 8, !dbg !2923, !tbaa !689
  %80 = icmp eq i8* %78, null, !dbg !2924
  br i1 %80, label %30, label %81, !dbg !2925

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 4, metadata !2908, metadata !DIExpression()), !dbg !2918
  %82 = icmp ult i32 %75, 41, !dbg !2919
  br i1 %82, label %86, label %83, !dbg !2919

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2919
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2919
  store i8* %85, i8** %10, align 8, !dbg !2919
  br label %91, !dbg !2919

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2919
  %88 = sext i32 %75 to i64, !dbg !2919
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2919
  %90 = add i32 %75, 8, !dbg !2919
  store i32 %90, i32* %8, align 8, !dbg !2919
  br label %91, !dbg !2919

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2919
  %95 = load i8*, i8** %94, align 8, !dbg !2919
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2922
  store i8* %95, i8** %96, align 16, !dbg !2923, !tbaa !689
  %97 = icmp eq i8* %95, null, !dbg !2924
  br i1 %97, label %30, label %98, !dbg !2925

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 5, metadata !2908, metadata !DIExpression()), !dbg !2918
  %99 = icmp ult i32 %92, 41, !dbg !2919
  br i1 %99, label %103, label %100, !dbg !2919

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2919
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2919
  store i8* %102, i8** %10, align 8, !dbg !2919
  br label %108, !dbg !2919

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2919
  %105 = sext i32 %92 to i64, !dbg !2919
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2919
  %107 = add i32 %92, 8, !dbg !2919
  store i32 %107, i32* %8, align 8, !dbg !2919
  br label %108, !dbg !2919

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2919
  %111 = load i8*, i8** %110, align 8, !dbg !2919
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2922
  store i8* %111, i8** %112, align 8, !dbg !2923, !tbaa !689
  %113 = icmp eq i8* %111, null, !dbg !2924
  br i1 %113, label %30, label %114, !dbg !2925

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 6, metadata !2908, metadata !DIExpression()), !dbg !2918
  %115 = load i8*, i8** %10, align 8, !dbg !2919
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2919
  store i8* %116, i8** %10, align 8, !dbg !2919
  %117 = bitcast i8* %115 to i8**, !dbg !2919
  %118 = load i8*, i8** %117, align 8, !dbg !2919
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2922
  store i8* %118, i8** %119, align 16, !dbg !2923, !tbaa !689
  %120 = icmp eq i8* %118, null, !dbg !2924
  br i1 %120, label %30, label %121, !dbg !2925

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 7, metadata !2908, metadata !DIExpression()), !dbg !2918
  %122 = load i8*, i8** %10, align 8, !dbg !2919
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2919
  store i8* %123, i8** %10, align 8, !dbg !2919
  %124 = bitcast i8* %122 to i8**, !dbg !2919
  %125 = load i8*, i8** %124, align 8, !dbg !2919
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2922
  store i8* %125, i8** %126, align 8, !dbg !2923, !tbaa !689
  %127 = icmp eq i8* %125, null, !dbg !2924
  br i1 %127, label %30, label %128, !dbg !2925

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 8, metadata !2908, metadata !DIExpression()), !dbg !2918
  %129 = load i8*, i8** %10, align 8, !dbg !2919
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2919
  store i8* %130, i8** %10, align 8, !dbg !2919
  %131 = bitcast i8* %129 to i8**, !dbg !2919
  %132 = load i8*, i8** %131, align 8, !dbg !2919
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2922
  store i8* %132, i8** %133, align 16, !dbg !2923, !tbaa !689
  %134 = icmp eq i8* %132, null, !dbg !2924
  br i1 %134, label %30, label %135, !dbg !2925

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2908, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 9, metadata !2908, metadata !DIExpression()), !dbg !2918
  %136 = load i8*, i8** %10, align 8, !dbg !2919
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2919
  store i8* %137, i8** %10, align 8, !dbg !2919
  %138 = bitcast i8* %136 to i8**, !dbg !2919
  %139 = load i8*, i8** %138, align 8, !dbg !2919
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2922
  store i8* %139, i8** %140, align 8, !dbg !2923, !tbaa !689
  %141 = icmp eq i8* %139, null, !dbg !2924
  %142 = select i1 %141, i64 9, i64 10, !dbg !2925
  br label %30, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2929 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2933, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8* %1, metadata !2934, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* %2, metadata !2935, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %3, metadata !2936, metadata !DIExpression()), !dbg !2945
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2946
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2937, metadata !DIExpression()), !dbg !2947
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2948
  call void @llvm.va_start(i8* nonnull %6), !dbg !2948
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2949
  call void @llvm.va_end(i8* nonnull %6), !dbg !2950
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2951
  ret void, !dbg !2951
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2952 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #10, !dbg !2953
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.91, i64 0, i64 0)) #10, !dbg !2953
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.92, i64 0, i64 0), i32 5) #10, !dbg !2954
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.94, i64 0, i64 0)) #10, !dbg !2954
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.95, i64 0, i64 0), i32 5) #10, !dbg !2955
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2955, !tbaa !689
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2955
  ret void, !dbg !2956
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2957 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()), !dbg !2964
  %3 = udiv i64 9223372036854775807, %1, !dbg !2965
  %4 = icmp ult i64 %3, %0, !dbg !2965
  br i1 %4, label %5, label %6, !dbg !2967

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !2968
  unreachable, !dbg !2968

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %7, metadata !2970, metadata !DIExpression()) #10, !dbg !2977
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2979
  call void @llvm.dbg.value(metadata i8* %8, metadata !2976, metadata !DIExpression()) #10, !dbg !2980
  %9 = icmp eq i8* %8, null, !dbg !2981
  %10 = icmp ne i64 %7, 0, !dbg !2983
  %11 = and i1 %10, %9, !dbg !2984
  br i1 %11, label %12, label %13, !dbg !2984

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !2985
  unreachable, !dbg !2985

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2986
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2971 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2987
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %2, metadata !2976, metadata !DIExpression()), !dbg !2989
  %3 = icmp eq i8* %2, null, !dbg !2990
  %4 = icmp ne i64 %0, 0, !dbg !2991
  %5 = and i1 %4, %3, !dbg !2992
  br i1 %5, label %6, label %7, !dbg !2992

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !2993
  unreachable, !dbg !2993

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2994
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2995 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2999, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %1, metadata !3000, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %2, metadata !3001, metadata !DIExpression()), !dbg !3004
  %4 = udiv i64 9223372036854775807, %2, !dbg !3005
  %5 = icmp ult i64 %4, %1, !dbg !3005
  br i1 %5, label %6, label %7, !dbg !3007

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !3008
  unreachable, !dbg !3008

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3009
  call void @llvm.dbg.value(metadata i8* %0, metadata !3010, metadata !DIExpression()) #10, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %8, metadata !3015, metadata !DIExpression()) #10, !dbg !3018
  %9 = icmp eq i64 %8, 0, !dbg !3019
  %10 = icmp ne i8* %0, null, !dbg !3021
  %11 = and i1 %10, %9, !dbg !3022
  br i1 %11, label %12, label %13, !dbg !3022

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3023
  br label %19, !dbg !3025

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %14, metadata !3010, metadata !DIExpression()) #10, !dbg !3016
  %15 = icmp eq i8* %14, null, !dbg !3027
  %16 = icmp ne i64 %8, 0, !dbg !3029
  %17 = and i1 %16, %15, !dbg !3030
  br i1 %17, label %18, label %19, !dbg !3030

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3031
  unreachable, !dbg !3031

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3032
  ret i8* %20, !dbg !3033
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3011 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3010, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !3015, metadata !DIExpression()), !dbg !3035
  %3 = icmp eq i64 %1, 0, !dbg !3036
  %4 = icmp ne i8* %0, null, !dbg !3037
  %5 = and i1 %4, %3, !dbg !3038
  br i1 %5, label %6, label %7, !dbg !3038

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3039
  br label %13, !dbg !3040

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %8, metadata !3010, metadata !DIExpression()), !dbg !3034
  %9 = icmp eq i8* %8, null, !dbg !3042
  %10 = icmp ne i64 %1, 0, !dbg !3043
  %11 = and i1 %10, %9, !dbg !3044
  br i1 %11, label %12, label %13, !dbg !3044

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3045
  unreachable, !dbg !3045

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3046
  ret i8* %14, !dbg !3047
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !213, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i64* %1, metadata !214, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %2, metadata !215, metadata !DIExpression()), !dbg !3050
  %4 = load i64, i64* %1, align 8, !dbg !3051, !tbaa !2094
  call void @llvm.dbg.value(metadata i64 %4, metadata !216, metadata !DIExpression()), !dbg !3052
  %5 = icmp eq i8* %0, null, !dbg !3053
  br i1 %5, label %6, label %20, !dbg !3055

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3056
  br i1 %7, label %8, label %13, !dbg !3059

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %9, metadata !216, metadata !DIExpression()), !dbg !3052
  %10 = icmp ugt i64 %2, 128, !dbg !3062
  %11 = zext i1 %10 to i64, !dbg !3062
  %12 = add nuw nsw i64 %9, %11, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %12, metadata !216, metadata !DIExpression()), !dbg !3052
  br label %13, !dbg !3064

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3065
  call void @llvm.dbg.value(metadata i64 %14, metadata !216, metadata !DIExpression()), !dbg !3052
  %15 = udiv i64 9223372036854775807, %2, !dbg !3066
  %16 = icmp ult i64 %15, %14, !dbg !3066
  br i1 %16, label %19, label %17, !dbg !3068

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !216, metadata !DIExpression()), !dbg !3052
  store i64 %14, i64* %1, align 8, !dbg !3069, !tbaa !2094
  %18 = mul i64 %14, %2, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %0, metadata !3010, metadata !DIExpression()) #10, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %28, metadata !3015, metadata !DIExpression()) #10, !dbg !3073
  br label %31, !dbg !3074

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3075
  unreachable, !dbg !3075

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3076
  %22 = icmp ugt i64 %21, %4, !dbg !3079
  br i1 %22, label %24, label %23, !dbg !3080

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #16, !dbg !3081
  unreachable, !dbg !3081

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3082
  %26 = add i64 %4, 1, !dbg !3083
  %27 = add i64 %26, %25, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %27, metadata !216, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %27, metadata !216, metadata !DIExpression()), !dbg !3052
  store i64 %27, i64* %1, align 8, !dbg !3069, !tbaa !2094
  %28 = mul i64 %27, %2, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %0, metadata !3010, metadata !DIExpression()) #10, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %28, metadata !3015, metadata !DIExpression()) #10, !dbg !3073
  %29 = icmp eq i64 %28, 0, !dbg !3085
  br i1 %29, label %30, label %31, !dbg !3074

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3086
  br label %38, !dbg !3087

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %33, metadata !3010, metadata !DIExpression()) #10, !dbg !3071
  %34 = icmp eq i8* %33, null, !dbg !3089
  %35 = icmp ne i64 %32, 0, !dbg !3090
  %36 = and i1 %35, %34, !dbg !3091
  br i1 %36, label %37, label %38, !dbg !3091

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #16, !dbg !3092
  unreachable, !dbg !3092

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3093
  ret i8* %39, !dbg !3094
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3095 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()) #10, !dbg !3099
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %2, metadata !2976, metadata !DIExpression()) #10, !dbg !3102
  %3 = icmp eq i8* %2, null, !dbg !3103
  %4 = icmp ne i64 %0, 0, !dbg !3104
  %5 = and i1 %4, %3, !dbg !3105
  br i1 %5, label %6, label %7, !dbg !3105

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3106
  unreachable, !dbg !3106

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3108 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64* %1, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8* %0, metadata !213, metadata !DIExpression()) #10, !dbg !3116
  call void @llvm.dbg.value(metadata i64* %1, metadata !214, metadata !DIExpression()) #10, !dbg !3118
  call void @llvm.dbg.value(metadata i64 1, metadata !215, metadata !DIExpression()) #10, !dbg !3119
  %3 = load i64, i64* %1, align 8, !dbg !3120, !tbaa !2094
  call void @llvm.dbg.value(metadata i64 %3, metadata !216, metadata !DIExpression()) #10, !dbg !3121
  %4 = icmp eq i8* %0, null, !dbg !3122
  br i1 %4, label %5, label %12, !dbg !3123

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3124
  br i1 %6, label %9, label %7, !dbg !3125

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !216, metadata !DIExpression()) #10, !dbg !3121
  %8 = icmp slt i64 %3, 0, !dbg !3126
  br i1 %8, label %11, label %9, !dbg !3127

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !216, metadata !DIExpression()) #10, !dbg !3121
  store i64 %10, i64* %1, align 8, !dbg !3128, !tbaa !2094
  call void @llvm.dbg.value(metadata i8* %0, metadata !3010, metadata !DIExpression()) #10, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %18, metadata !3015, metadata !DIExpression()) #10, !dbg !3131
  br label %21, !dbg !3132

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3133
  unreachable, !dbg !3133

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3134
  br i1 %13, label %15, label %14, !dbg !3135

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #16, !dbg !3136
  unreachable, !dbg !3136

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3137
  %17 = add i64 %3, 1, !dbg !3138
  %18 = add i64 %17, %16, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %18, metadata !216, metadata !DIExpression()) #10, !dbg !3121
  call void @llvm.dbg.value(metadata i64 %18, metadata !216, metadata !DIExpression()) #10, !dbg !3121
  store i64 %18, i64* %1, align 8, !dbg !3128, !tbaa !2094
  call void @llvm.dbg.value(metadata i8* %0, metadata !3010, metadata !DIExpression()) #10, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %18, metadata !3015, metadata !DIExpression()) #10, !dbg !3131
  %19 = icmp eq i64 %18, 0, !dbg !3140
  br i1 %19, label %20, label %21, !dbg !3132

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3141
  br label %28, !dbg !3142

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %23, metadata !3010, metadata !DIExpression()) #10, !dbg !3129
  %24 = icmp eq i8* %23, null, !dbg !3144
  %25 = icmp ne i64 %22, 0, !dbg !3145
  %26 = and i1 %25, %24, !dbg !3146
  br i1 %26, label %27, label %28, !dbg !3146

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #16, !dbg !3147
  unreachable, !dbg !3147

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3148
  ret i8* %29, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3150 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3152, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()) #10, !dbg !3154
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3156
  call void @llvm.dbg.value(metadata i8* %2, metadata !2976, metadata !DIExpression()) #10, !dbg !3157
  %3 = icmp eq i8* %2, null, !dbg !3158
  %4 = icmp ne i64 %0, 0, !dbg !3159
  %5 = and i1 %4, %3, !dbg !3160
  br i1 %5, label %6, label %7, !dbg !3160

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3161
  unreachable, !dbg !3161

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3162
  ret i8* %2, !dbg !3163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3164 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3166, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %1, metadata !3167, metadata !DIExpression()), !dbg !3170
  %3 = udiv i64 9223372036854775807, %1, !dbg !3171
  %4 = icmp ult i64 %3, %0, !dbg !3171
  br i1 %4, label %8, label %5, !dbg !3173

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %6, metadata !3168, metadata !DIExpression()), !dbg !3175
  %7 = icmp eq i8* %6, null, !dbg !3176
  br i1 %7, label %8, label %9, !dbg !3177

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !3178
  unreachable, !dbg !3178

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3179
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3180 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()) #10, !dbg !3190
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %3, metadata !2976, metadata !DIExpression()) #10, !dbg !3193
  %4 = icmp eq i8* %3, null, !dbg !3194
  %5 = icmp ne i64 %1, 0, !dbg !3195
  %6 = and i1 %5, %4, !dbg !3196
  br i1 %6, label %7, label %8, !dbg !3196

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3197
  unreachable, !dbg !3197

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3198
  ret i8* %3, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3200 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()), !dbg !3203
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !3204
  %3 = add i64 %2, 1, !dbg !3205
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()) #10, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %3, metadata !3187, metadata !DIExpression()) #10, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %3, metadata !2970, metadata !DIExpression()) #10, !dbg !3209
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %4, metadata !2976, metadata !DIExpression()) #10, !dbg !3212
  %5 = icmp eq i8* %4, null, !dbg !3213
  %6 = icmp ne i64 %3, 0, !dbg !3214
  %7 = and i1 %6, %5, !dbg !3215
  br i1 %7, label %8, label %9, !dbg !3215

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3216
  unreachable, !dbg !3216

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3217
  ret i8* %4, !dbg !3218
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3219 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3221, !tbaa !772
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.106, i64 0, i64 0), i32 5) #10, !dbg !3222
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %2) #10, !dbg !3223
  tail call void @abort() #16, !dbg !3224
  unreachable, !dbg !3224
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xnanosleep(double) local_unnamed_addr #7 !dbg !3225 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !3230, metadata !DIExpression()), !dbg !3238
  %3 = bitcast %struct.timespec* %2 to i8*, !dbg !3239
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #10, !dbg !3239
  %4 = tail call { i64, i64 } @dtotimespec(double %0) #18, !dbg !3240
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0, !dbg !3240
  %6 = extractvalue { i64, i64 } %4, 0, !dbg !3240
  store i64 %6, i64* %5, align 8, !dbg !3240
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1, !dbg !3240
  %8 = extractvalue { i64, i64 } %4, 1, !dbg !3240
  store i64 %8, i64* %7, align 8, !dbg !3240
  %9 = tail call i32* @__errno_location() #18, !dbg !3241
  store i32 0, i32* %9, align 4, !dbg !3245, !tbaa !772
  call void @llvm.dbg.value(metadata %struct.timespec* %2, metadata !3231, metadata !DIExpression(DW_OP_deref)), !dbg !3246
  %10 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* null) #10, !dbg !3247
  %11 = icmp eq i32 %10, 0, !dbg !3249
  br i1 %11, label %17, label %12, !dbg !3250

; <label>:12:                                     ; preds = %1, %14
  %13 = load i32, i32* %9, align 4, !dbg !3251, !tbaa !772
  switch i32 %13, label %17 [
    i32 4, label %14
    i32 0, label %14
  ], !dbg !3253

; <label>:14:                                     ; preds = %12, %12
  store i32 0, i32* %9, align 4, !dbg !3245, !tbaa !772
  call void @llvm.dbg.value(metadata %struct.timespec* %2, metadata !3231, metadata !DIExpression(DW_OP_deref)), !dbg !3246
  %15 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* null) #10, !dbg !3247
  %16 = icmp eq i32 %15, 0, !dbg !3249
  br i1 %16, label %17, label %12, !dbg !3250, !llvm.loop !3254

; <label>:17:                                     ; preds = %12, %14, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %14 ], [ -1, %12 ], !dbg !3257
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #10, !dbg !3258
  ret i32 %18, !dbg !3258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtod(i8*, i8**, double* nocapture, double (i8*, i8**)* nocapture) local_unnamed_addr #7 !dbg !3259 {
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3266, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8** %1, metadata !3267, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata double* %2, metadata !3268, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, metadata !3269, metadata !DIExpression()), !dbg !3276
  %6 = bitcast i8** %5 to i8*, !dbg !3277
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !3277
  call void @llvm.dbg.value(metadata i8 1, metadata !3272, metadata !DIExpression()), !dbg !3278
  %7 = tail call i32* @__errno_location() #18, !dbg !3279
  store i32 0, i32* %7, align 4, !dbg !3280, !tbaa !772
  call void @llvm.dbg.value(metadata i8** %5, metadata !3271, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %8 = call double %3(i8* %0, i8** nonnull %5) #10, !dbg !3282
  call void @llvm.dbg.value(metadata double %8, metadata !3270, metadata !DIExpression()), !dbg !3283
  %9 = load i8*, i8** %5, align 8, !dbg !3284, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %9, metadata !3271, metadata !DIExpression()), !dbg !3281
  %10 = icmp eq i8* %9, %0, !dbg !3286
  %11 = ptrtoint i8* %9 to i64, !dbg !3287
  br i1 %10, label %22, label %12, !dbg !3287

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !3288
  br i1 %13, label %14, label %17, !dbg !3289

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !3290, !tbaa !798
  %16 = icmp eq i8 %15, 0, !dbg !3291
  br i1 %16, label %17, label %27, !dbg !3292

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00, !dbg !3293
  br i1 %18, label %19, label %22, !dbg !3296

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !3297, !tbaa !772
  %21 = icmp ne i32 %20, 34, !dbg !3298
  br label %22, !dbg !3299

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !3300
  br i1 %24, label %27, label %25, !dbg !3302

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8** %5, metadata !3271, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %26 = bitcast i8** %1 to i64*, !dbg !3303
  store i64 %11, i64* %26, align 8, !dbg !3303, !tbaa !689
  br label %27, !dbg !3304

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8, !dbg !3305, !tbaa !793
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !3306
  ret i1 %28, !dbg !3307
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3308 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3318
  %3 = icmp eq i64 %0, 0, !dbg !3319
  %4 = icmp eq i64 %1, 0, !dbg !3320
  %5 = or i1 %3, %4, !dbg !3321
  br i1 %5, label %12, label %6, !dbg !3321

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %7, metadata !3314, metadata !DIExpression()), !dbg !3323
  %8 = udiv i64 %7, %1, !dbg !3324
  %9 = icmp eq i64 %8, %0, !dbg !3326
  br i1 %9, label %12, label %10, !dbg !3327

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !3328
  store i32 12, i32* %11, align 4, !dbg !3330, !tbaa !772
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %13, metadata !3312, metadata !DIExpression()), !dbg !3318
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3331
  call void @llvm.dbg.value(metadata i8* %15, metadata !3313, metadata !DIExpression()), !dbg !3332
  br label %16, !dbg !3333

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3334
  ret i8* %17, !dbg !3335
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3336 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3353, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3354, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %2, metadata !3355, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3356, metadata !DIExpression()), !dbg !3365
  %6 = bitcast i32* %5 to i8*, !dbg !3366
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3366
  %7 = icmp eq i32* %0, null, !dbg !3367
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3369
  call void @llvm.dbg.value(metadata i32* %8, metadata !3353, metadata !DIExpression()), !dbg !3362
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %9, metadata !3357, metadata !DIExpression()), !dbg !3371
  %10 = icmp ugt i64 %9, -3, !dbg !3372
  %11 = icmp ne i64 %2, 0, !dbg !3373
  %12 = and i1 %11, %10, !dbg !3374
  br i1 %12, label %13, label %18, !dbg !3374

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3375
  br i1 %14, label %18, label %15, !dbg !3376

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3377, !tbaa !798
  call void @llvm.dbg.value(metadata i8 %16, metadata !3359, metadata !DIExpression()), !dbg !3378
  %17 = zext i8 %16 to i32, !dbg !3379
  store i32 %17, i32* %8, align 4, !dbg !3380, !tbaa !772
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3381
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3382
  ret i64 %19, !dbg !3382
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_nanosleep(%struct.timespec* nocapture nonnull readonly, %struct.timespec*) local_unnamed_addr #7 !dbg !3383 {
  %3 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !3394, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata %struct.timespec* %1, metadata !3395, metadata !DIExpression()), !dbg !3404
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !3405
  %5 = load i64, i64* %4, align 8, !dbg !3405, !tbaa !3407
  %6 = icmp ugt i64 %5, 999999999, !dbg !3409
  br i1 %6, label %7, label %9, !dbg !3409

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno_location() #18, !dbg !3410
  store i32 22, i32* %8, align 4, !dbg !3412, !tbaa !772
  br label %33, !dbg !3413

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i64 2073600, metadata !3396, metadata !DIExpression()), !dbg !3414
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !3415
  %11 = load i64, i64* %10, align 8, !dbg !3415, !tbaa !3416
  call void @llvm.dbg.value(metadata i64 %11, metadata !3399, metadata !DIExpression()), !dbg !3417
  %12 = bitcast %struct.timespec* %3 to i8*, !dbg !3418
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #10, !dbg !3418
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 1, !dbg !3419
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0
  br label %15, !dbg !3420

; <label>:15:                                     ; preds = %19, %9
  %16 = phi i64 [ %5, %9 ], [ 0, %19 ]
  %17 = phi i64 [ %11, %9 ], [ %21, %19 ], !dbg !3421
  store i64 %16, i64* %13, align 8, !dbg !3421, !tbaa !3407
  call void @llvm.dbg.value(metadata i64 %17, metadata !3399, metadata !DIExpression()), !dbg !3417
  %18 = icmp sgt i64 %17, 2073600, !dbg !3422
  br i1 %18, label %19, label %29, !dbg !3420

; <label>:19:                                     ; preds = %15
  store i64 2073600, i64* %14, align 8, !dbg !3423, !tbaa !3416
  call void @llvm.dbg.value(metadata %struct.timespec* %3, metadata !3400, metadata !DIExpression(DW_OP_deref)), !dbg !3424
  %20 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #10, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %20, metadata !3401, metadata !DIExpression()), !dbg !3426
  %21 = add nsw i64 %17, -2073600, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %21, metadata !3399, metadata !DIExpression()), !dbg !3417
  %22 = icmp eq i32 %20, 0, !dbg !3428
  br i1 %22, label %15, label %23, !dbg !3430

; <label>:23:                                     ; preds = %19
  %24 = icmp eq %struct.timespec* %1, null, !dbg !3431
  br i1 %24, label %31, label %25, !dbg !3434

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0, !dbg !3435
  %27 = load i64, i64* %26, align 8, !dbg !3436, !tbaa !3416
  %28 = add nsw i64 %27, %21, !dbg !3436
  store i64 %28, i64* %26, align 8, !dbg !3436, !tbaa !3416
  br label %31, !dbg !3437

; <label>:29:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i64 %17, metadata !3399, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %17, metadata !3399, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %17, metadata !3399, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %17, metadata !3399, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %17, metadata !3399, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %17, metadata !3399, metadata !DIExpression()), !dbg !3417
  store i64 %17, i64* %14, align 8, !dbg !3438, !tbaa !3416
  call void @llvm.dbg.value(metadata %struct.timespec* %3, metadata !3400, metadata !DIExpression(DW_OP_deref)), !dbg !3424
  %30 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #10, !dbg !3439
  br label %31, !dbg !3440

; <label>:31:                                     ; preds = %25, %23, %29
  %32 = phi i32 [ %30, %29 ], [ %20, %23 ], [ %20, %25 ], !dbg !3441
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #10, !dbg !3442
  br label %33

; <label>:33:                                     ; preds = %31, %7
  %34 = phi i32 [ -1, %7 ], [ %32, %31 ], !dbg !3443
  ret i32 %34, !dbg !3444
}

declare i32 @nanosleep(%struct.timespec*, %struct.timespec*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3445 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3484, metadata !DIExpression()), !dbg !3489
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3490
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3491, metadata !DIExpression()), !dbg !3495
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3497
  %4 = load i32, i32* %3, align 8, !dbg !3497, !tbaa !3498
  %5 = and i32 %4, 32, !dbg !3497
  %6 = icmp eq i32 %5, 0, !dbg !3500
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3501
  %8 = icmp ne i32 %7, 0, !dbg !3502
  br i1 %6, label %9, label %19, !dbg !3503

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3505
  %11 = xor i1 %8, true, !dbg !3506
  %12 = or i1 %10, %11, !dbg !3506
  %13 = sext i1 %8 to i32, !dbg !3506
  br i1 %12, label %22, label %14, !dbg !3506

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !3507
  %16 = load i32, i32* %15, align 4, !dbg !3507, !tbaa !772
  %17 = icmp ne i32 %16, 9, !dbg !3508
  %18 = sext i1 %17 to i32, !dbg !3509
  br label %22, !dbg !3509

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3510

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !3512
  store i32 0, i32* %21, align 4, !dbg !3514, !tbaa !772
  br label %22, !dbg !3512

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3515
  ret i32 %23, !dbg !3516
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define dso_local { i64, i64 } @dtotimespec(double) local_unnamed_addr #14 !dbg !3517 {
  call void @llvm.dbg.value(metadata double %0, metadata !3526, metadata !DIExpression()), !dbg !3533
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3534
  br i1 %2, label %3, label %23, !dbg !3535

; <label>:3:                                      ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3536
  br i1 %4, label %5, label %23, !dbg !3537

; <label>:5:                                      ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %6, metadata !3527, metadata !DIExpression()), !dbg !3539
  %7 = sitofp i64 %6 to double, !dbg !3540
  %8 = fsub double %0, %7, !dbg !3541
  %9 = fmul double %8, 1.000000e+09, !dbg !3542
  call void @llvm.dbg.value(metadata double %9, metadata !3531, metadata !DIExpression()), !dbg !3543
  %10 = fptosi double %9 to i64, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %10, metadata !3532, metadata !DIExpression()), !dbg !3545
  %11 = sitofp i64 %10 to double, !dbg !3546
  %12 = fcmp ogt double %9, %11, !dbg !3547
  %13 = zext i1 %12 to i64, !dbg !3546
  %14 = add nsw i64 %13, %10, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %14, metadata !3532, metadata !DIExpression()), !dbg !3545
  %15 = sdiv i64 %14, 1000000000, !dbg !3549
  %16 = add nsw i64 %15, %6, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %16, metadata !3527, metadata !DIExpression()), !dbg !3539
  %17 = srem i64 %14, 1000000000, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %17, metadata !3532, metadata !DIExpression()), !dbg !3545
  %18 = icmp slt i64 %17, 0, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %16, metadata !3527, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3539
  %19 = add nsw i64 %17, 1000000000, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %19, metadata !3532, metadata !DIExpression()), !dbg !3545
  %20 = ashr i64 %17, 63, !dbg !3556
  %21 = add nsw i64 %16, %20, !dbg !3556
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %22, metadata !3532, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %21, metadata !3527, metadata !DIExpression()), !dbg !3539
  br label %23

; <label>:23:                                     ; preds = %3, %1, %5
  %24 = phi i64 [ %21, %5 ], [ -9223372036854775808, %1 ], [ 9223372036854775807, %3 ], !dbg !3557
  %25 = phi i64 [ %22, %5 ], [ 0, %1 ], [ 999999999, %3 ], !dbg !3557
  %26 = insertvalue { i64, i64 } undef, i64 %24, 0, !dbg !3558
  %27 = insertvalue { i64, i64 } %26, i64 %25, 1, !dbg !3558
  ret { i64, i64 } %27, !dbg !3558
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3559 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3564, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i8 1, metadata !3565, metadata !DIExpression()), !dbg !3568
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %2, metadata !3566, metadata !DIExpression()), !dbg !3570
  %3 = icmp eq i8* %2, null, !dbg !3571
  br i1 %3, label %11, label %4, !dbg !3573

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0)) #15, !dbg !3574
  %6 = icmp eq i32 %5, 0, !dbg !3579
  br i1 %6, label %10, label %7, !dbg !3580

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0)) #15, !dbg !3581
  %9 = icmp eq i32 %8, 0, !dbg !3582
  br i1 %9, label %10, label %11, !dbg !3583

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3565, metadata !DIExpression()), !dbg !3568
  br label %11, !dbg !3584

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3586 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3592
  call void @llvm.dbg.value(metadata i8* %1, metadata !3591, metadata !DIExpression()), !dbg !3593
  %2 = icmp eq i8* %1, null, !dbg !3594
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), i8* %1, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %3, metadata !3591, metadata !DIExpression()), !dbg !3593
  %4 = load i8, i8* %3, align 1, !dbg !3597, !tbaa !798
  %5 = icmp eq i8 %4, 0, !dbg !3601
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0), i8* %3, !dbg !3602
  call void @llvm.dbg.value(metadata i8* %6, metadata !3591, metadata !DIExpression()), !dbg !3593
  ret i8* %6, !dbg !3603
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3604 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3643, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 0, metadata !3644, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 0, metadata !3646, metadata !DIExpression()), !dbg !3649
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3650
  call void @llvm.dbg.value(metadata i32 %2, metadata !3645, metadata !DIExpression()), !dbg !3651
  %3 = icmp slt i32 %2, 0, !dbg !3652
  br i1 %3, label %4, label %6, !dbg !3654

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3655
  br label %24, !dbg !3656

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3657
  %8 = icmp eq i32 %7, 0, !dbg !3657
  br i1 %8, label %13, label %9, !dbg !3659

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3660
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3661
  %12 = icmp eq i64 %11, -1, !dbg !3662
  br i1 %12, label %16, label %13, !dbg !3663

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3664
  %15 = icmp eq i32 %14, 0, !dbg !3664
  br i1 %15, label %16, label %18, !dbg !3665

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3644, metadata !DIExpression()), !dbg !3648
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3666
  call void @llvm.dbg.value(metadata i32 %21, metadata !3646, metadata !DIExpression()), !dbg !3649
  br label %24, !dbg !3667

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !3668
  %20 = load i32, i32* %19, align 4, !dbg !3668, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %20, metadata !3644, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 %20, metadata !3644, metadata !DIExpression()), !dbg !3648
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3666
  call void @llvm.dbg.value(metadata i32 %21, metadata !3646, metadata !DIExpression()), !dbg !3649
  %22 = icmp eq i32 %20, 0, !dbg !3669
  br i1 %22, label %24, label %23, !dbg !3667

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3671, !tbaa !772
  call void @llvm.dbg.value(metadata i32 -1, metadata !3646, metadata !DIExpression()), !dbg !3649
  br label %24, !dbg !3673

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3674
  ret i32 %25, !dbg !3675
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3676 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3715, metadata !DIExpression()), !dbg !3716
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3717
  br i1 %2, label %6, label %3, !dbg !3719

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3720
  %5 = icmp eq i32 %4, 0, !dbg !3720
  br i1 %5, label %6, label %8, !dbg !3721

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3722
  br label %17, !dbg !3723

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3724, metadata !DIExpression()) #10, !dbg !3729
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3731
  %10 = load i32, i32* %9, align 8, !dbg !3731, !tbaa !3498
  %11 = and i32 %10, 256, !dbg !3733
  %12 = icmp eq i32 %11, 0, !dbg !3733
  br i1 %12, label %15, label %13, !dbg !3734

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3735
  br label %15, !dbg !3735

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3736
  br label %17, !dbg !3737

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3738
  ret i32 %18, !dbg !3739
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3740 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3780, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i64 %1, metadata !3781, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i32 %2, metadata !3782, metadata !DIExpression()), !dbg !3788
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3789
  %5 = load i8*, i8** %4, align 8, !dbg !3789, !tbaa !3790
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3791
  %7 = load i8*, i8** %6, align 8, !dbg !3791, !tbaa !3792
  %8 = icmp eq i8* %5, %7, !dbg !3793
  br i1 %8, label %9, label %28, !dbg !3794

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3795
  %11 = load i8*, i8** %10, align 8, !dbg !3795, !tbaa !3796
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3797
  %13 = load i8*, i8** %12, align 8, !dbg !3797, !tbaa !3798
  %14 = icmp eq i8* %11, %13, !dbg !3799
  br i1 %14, label %15, label %28, !dbg !3800

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3801
  %17 = load i8*, i8** %16, align 8, !dbg !3801, !tbaa !3802
  %18 = icmp eq i8* %17, null, !dbg !3803
  br i1 %18, label %19, label %28, !dbg !3804

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3805
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %21, metadata !3783, metadata !DIExpression()), !dbg !3807
  %22 = icmp eq i64 %21, -1, !dbg !3808
  br i1 %22, label %30, label %23, !dbg !3810

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3811
  %25 = load i32, i32* %24, align 8, !dbg !3812, !tbaa !3498
  %26 = and i32 %25, -17, !dbg !3812
  store i32 %26, i32* %24, align 8, !dbg !3812, !tbaa !3498
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3813
  store i64 %21, i64* %27, align 8, !dbg !3814, !tbaa !3815
  br label %30, !dbg !3816

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3817
  br label %30, !dbg !3818

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3819
  ret i32 %31, !dbg !3820
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !26, !31, !63, !72, !79, !95, !102, !195, !188, !203, !220, !222, !224, !226, !228, !231, !238, !240, !253, !255, !644, !646, !648}
!llvm.ident = !{!650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650, !650}
!llvm.module.flags = !{!651, !652, !653, !654, !655}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 38, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/sleep.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !22)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!15 = !{!16, !17, !19, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 52, baseType: !6, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !13, file: !14, line: 55, baseType: !18, size: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !14, line: 56, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !13, file: !14, line: 57, baseType: !18, size: 32, offset: 192)
!22 = !{!23}
!23 = !DISubrange(count: 1)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "Version", scope: !26, file: !27, line: 2, type: !6, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !28)
!27 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!28 = !{!24}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !31, file: !59, line: 51, type: !60, isLocal: true, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !33, globals: !58)
!32 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !36, line: 24, baseType: !37)
!36 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !38, line: 42, baseType: !39)
!38 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !38, line: 28, size: 1856, elements: !41)
!41 = !{!42, !48, !52, !55, !56}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !40, file: !38, line: 31, baseType: !43, size: 832)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 832, elements: !46)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !38, line: 31, flags: DIFlagFwdDecl)
!46 = !{!47}
!47 = !DISubrange(count: 13)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !40, file: !38, line: 34, baseType: !49, size: 64, offset: 832)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !40, file: !38, line: 35, baseType: !53, size: 64, offset: 896)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !40, file: !38, line: 36, baseType: !53, size: 64, offset: 960)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !40, file: !38, line: 39, baseType: !57, size: 832, offset: 1024)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !46)
!58 = !{!29}
!59 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "file_name", scope: !63, file: !68, line: 46, type: !6, isLocal: true, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !65)
!64 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!65 = !{!61, !66}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !63, file: !68, line: 56, type: !69, isLocal: true, isDefinition: true)
!68 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!69 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "exit_failure", scope: !72, file: !75, line: 24, type: !76, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !74)
!73 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!74 = !{!70}
!75 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!76 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "long_options", scope: !79, file: !82, line: 33, type: !83, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !81)
!80 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!81 = !{!77}
!82 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 768, elements: !91)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !14, line: 52, baseType: !6, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !85, file: !14, line: 55, baseType: !18, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !85, file: !14, line: 56, baseType: !20, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !85, file: !14, line: 57, baseType: !18, size: 32, offset: 192)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "program_name", scope: !95, file: !99, line: 33, type: !6, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !97, globals: !98)
!96 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!97 = !{!9, !34}
!98 = !{!93}
!99 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !102, file: !147, line: 85, type: !182, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !104, retainedTypes: !140, globals: !144)
!103 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!104 = !{!105, !120, !125}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !106, line: 32, baseType: !107, size: 32, elements: !108)
!106 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!107 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!109 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!112 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!113 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!114 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!115 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!116 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!117 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!118 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!119 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !106, line: 242, baseType: !107, size: 32, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 46, baseType: !107, size: 32, elements: !127)
!126 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!128 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!129 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!130 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!131 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!132 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!133 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!140 = !{!18, !51, !141, !34}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 62, baseType: !143)
!142 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!143 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!144 = !{!100, !145, !152, !164, !166, !171, !178, !180}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !102, file: !147, line: 101, type: !148, isLocal: false, isDefinition: true)
!147 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 320, elements: !150)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!150 = !{!151}
!151 = !DISubrange(count: 10)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !102, file: !147, line: 1052, type: !154, isLocal: false, isDefinition: true)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !147, line: 65, size: 448, elements: !155)
!155 = !{!156, !157, !158, !162, !163}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !154, file: !147, line: 68, baseType: !105, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !147, line: 71, baseType: !18, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !154, file: !147, line: 75, baseType: !159, size: 256, offset: 64)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !154, file: !147, line: 78, baseType: !6, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !154, file: !147, line: 81, baseType: !6, size: 64, offset: 384)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !102, file: !147, line: 116, type: !154, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "slot0", scope: !102, file: !147, line: 842, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 256)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "slotvec", scope: !102, file: !147, line: 845, type: !173, isLocal: true, isDefinition: true)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !147, line: 834, size: 128, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !147, line: 836, baseType: !141, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !174, file: !147, line: 837, baseType: !34, size: 64, offset: 64)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "nslots", scope: !102, file: !147, line: 843, type: !18, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "slotvec0", scope: !102, file: !147, line: 844, type: !174, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 704, elements: !184)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!184 = !{!185}
!185 = !DISubrange(count: 11)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !188, file: !191, line: 26, type: !192, isLocal: false, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !190)
!189 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!190 = !{!186}
!191 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 47)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !202)
!196 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!197 = !{!198}
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !199, line: 41, baseType: !107, size: 32, elements: !200)
!199 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!200 = !{!201}
!201 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!202 = !{!9}
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !205, retainedTypes: !219)
!204 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!205 = !{!206}
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !208, file: !207, line: 186, baseType: !107, size: 32, elements: !217)
!207 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!208 = distinct !DISubprogram(name: "x2nrealloc", scope: !207, file: !207, line: 174, type: !209, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !212)
!209 = !DISubroutineType(types: !210)
!210 = !{!9, !9, !211, !141}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!212 = !{!213, !214, !215, !216}
!213 = !DILocalVariable(name: "p", arg: 1, scope: !208, file: !207, line: 174, type: !9)
!214 = !DILocalVariable(name: "pn", arg: 2, scope: !208, file: !207, line: 174, type: !211)
!215 = !DILocalVariable(name: "s", arg: 3, scope: !208, file: !207, line: 174, type: !141)
!216 = !DILocalVariable(name: "n", scope: !208, file: !207, line: 176, type: !141)
!217 = !{!218}
!218 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!219 = !{!141, !34, !9}
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!221 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!223 = !DIFile(filename: "./lib/xnanosleep.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !202)
!225 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !202)
!227 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !230)
!229 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!230 = !{!141}
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !233)
!232 = !DIFile(filename: "./lib/nanosleep.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!233 = !{!234}
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !235, line: 41, baseType: !107, size: 32, elements: !236)
!235 = !DIFile(filename: "lib/nanosleep.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!236 = !{!237}
!237 = !DIEnumerator(name: "BILLION", value: 1000000000, isUnsigned: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!239 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !247)
!241 = !DIFile(filename: "./lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!242 = !{!243}
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 41, baseType: !107, size: 32, elements: !245)
!244 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!245 = !{!246}
!246 = !DIEnumerator(name: "TIMESPEC_RESOLUTION", value: 1000000000, isUnsigned: true)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !249, line: 7, baseType: !250)
!249 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !251, line: 158, baseType: !252)
!251 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!252 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!254 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !202)
!256 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!257 = !{!258}
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !259, line: 41, baseType: !107, size: 32, elements: !260)
!259 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!261 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!262 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!263 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!264 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!265 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!266 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!267 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!268 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!269 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!270 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!271 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!272 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!273 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!274 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!275 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!276 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!277 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!278 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!279 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!280 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!281 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!282 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!283 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!284 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!285 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!287 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!288 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!289 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!290 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!291 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!292 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!293 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!294 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!295 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!296 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!297 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!299 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!300 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!301 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!302 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!303 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!304 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!305 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!306 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!307 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!308 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!309 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!310 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!369 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!372 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!373 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!374 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!375 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!376 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!377 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!378 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!379 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!380 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!381 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!382 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!456 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!529 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!530 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!531 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!532 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!533 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!534 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!535 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!536 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!537 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!538 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!539 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!540 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!541 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!542 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!543 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!545 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!546 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!547 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!548 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!549 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!550 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!576 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!577 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!578 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!579 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!580 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!585 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!586 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!587 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!588 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!644 = distinct !DICompileUnit(language: DW_LANG_C99, file: !645, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!645 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !202)
!647 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !202)
!649 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!650 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!651 = !{i32 2, !"Dwarf Version", i32 4}
!652 = !{i32 2, !"Debug Info Version", i32 3}
!653 = !{i32 1, !"wchar_size", i32 4}
!654 = !{i32 7, !"PIC Level", i32 2}
!655 = !{i32 7, !"PIE Level", i32 2}
!656 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 44, type: !657, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !18}
!659 = !{!660}
!660 = !DILocalVariable(name: "status", arg: 1, scope: !656, file: !3, line: 44, type: !18)
!661 = !DILocalVariable(name: "infomap", scope: !662, file: !663, line: 632, type: !677)
!662 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !663, file: !663, line: 630, type: !664, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !666)
!663 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!664 = !DISubroutineType(types: !665)
!665 = !{null, !6}
!666 = !{!667, !661, !668, !669, !676}
!667 = !DILocalVariable(name: "program", arg: 1, scope: !662, file: !663, line: 630, type: !6)
!668 = !DILocalVariable(name: "node", scope: !662, file: !663, line: 642, type: !6)
!669 = !DILocalVariable(name: "map_prog", scope: !662, file: !663, line: 643, type: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !662, file: !663, line: 632, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !672, file: !663, line: 632, baseType: !6, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !663, line: 632, baseType: !6, size: 64, offset: 64)
!676 = !DILocalVariable(name: "lc_messages", scope: !662, file: !663, line: 655, type: !6)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 896, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 7)
!680 = !DILocation(line: 632, column: 67, scope: !662, inlinedAt: !681)
!681 = distinct !DILocation(line: 63, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 49, column: 5)
!683 = distinct !DILexicalBlock(scope: !656, file: !3, line: 46, column: 7)
!684 = !DILocation(line: 44, column: 12, scope: !656)
!685 = !DILocation(line: 46, column: 14, scope: !683)
!686 = !DILocation(line: 46, column: 7, scope: !656)
!687 = !DILocation(line: 47, column: 5, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !3, line: 47, column: 5)
!689 = !{!690, !690, i64 0}
!690 = !{!"any pointer", !691, i64 0}
!691 = !{!"omnipotent char", !692, i64 0}
!692 = !{!"Simple C/C++ TBAA"}
!693 = !DILocation(line: 50, column: 7, scope: !682)
!694 = !DILocation(line: 61, column: 7, scope: !682)
!695 = !DILocation(line: 62, column: 7, scope: !682)
!696 = !DILocation(line: 632, column: 3, scope: !662, inlinedAt: !681)
!697 = !DILocation(line: 643, column: 36, scope: !662, inlinedAt: !681)
!698 = !DILocation(line: 643, column: 25, scope: !662, inlinedAt: !681)
!699 = !DILocation(line: 645, column: 33, scope: !662, inlinedAt: !681)
!700 = !DILocation(line: 645, column: 3, scope: !662, inlinedAt: !681)
!701 = !DILocation(line: 646, column: 13, scope: !662, inlinedAt: !681)
!702 = !DILocation(line: 645, column: 20, scope: !662, inlinedAt: !681)
!703 = !{!704, !690, i64 0}
!704 = !{!"infomap", !690, i64 0, !690, i64 8}
!705 = !DILocation(line: 645, column: 10, scope: !662, inlinedAt: !681)
!706 = !DILocation(line: 645, column: 28, scope: !662, inlinedAt: !681)
!707 = distinct !{!707, !708, !709}
!708 = !DILocation(line: 645, column: 3, scope: !662)
!709 = !DILocation(line: 646, column: 13, scope: !662)
!710 = !DILocation(line: 648, column: 17, scope: !711, inlinedAt: !681)
!711 = distinct !DILexicalBlock(scope: !662, file: !663, line: 648, column: 7)
!712 = !{!704, !690, i64 8}
!713 = !DILocation(line: 648, column: 7, scope: !711, inlinedAt: !681)
!714 = !DILocation(line: 648, column: 7, scope: !662, inlinedAt: !681)
!715 = !DILocation(line: 642, column: 15, scope: !662, inlinedAt: !681)
!716 = !DILocation(line: 651, column: 3, scope: !662, inlinedAt: !681)
!717 = !DILocation(line: 655, column: 29, scope: !662, inlinedAt: !681)
!718 = !DILocation(line: 655, column: 15, scope: !662, inlinedAt: !681)
!719 = !DILocation(line: 656, column: 7, scope: !720, inlinedAt: !681)
!720 = distinct !DILexicalBlock(scope: !662, file: !663, line: 656, column: 7)
!721 = !DILocation(line: 656, column: 19, scope: !720, inlinedAt: !681)
!722 = !DILocation(line: 656, column: 22, scope: !720, inlinedAt: !681)
!723 = !DILocation(line: 656, column: 7, scope: !662, inlinedAt: !681)
!724 = !DILocation(line: 662, column: 7, scope: !725, inlinedAt: !681)
!725 = distinct !DILexicalBlock(scope: !720, file: !663, line: 657, column: 5)
!726 = !DILocation(line: 664, column: 5, scope: !725, inlinedAt: !681)
!727 = !DILocation(line: 665, column: 3, scope: !662, inlinedAt: !681)
!728 = !DILocation(line: 667, column: 3, scope: !662, inlinedAt: !681)
!729 = !DILocation(line: 669, column: 1, scope: !662, inlinedAt: !681)
!730 = !DILocation(line: 65, column: 3, scope: !656)
!731 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 104, type: !732, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !735)
!732 = !DISubroutineType(types: !733)
!733 = !{!18, !18, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!735 = !{!736, !737, !738, !740, !741, !743, !746}
!736 = !DILocalVariable(name: "argc", arg: 1, scope: !731, file: !3, line: 104, type: !18)
!737 = !DILocalVariable(name: "argv", arg: 2, scope: !731, file: !3, line: 104, type: !734)
!738 = !DILocalVariable(name: "seconds", scope: !731, file: !3, line: 106, type: !739)
!739 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!740 = !DILocalVariable(name: "ok", scope: !731, file: !3, line: 107, type: !69)
!741 = !DILocalVariable(name: "i", scope: !742, file: !3, line: 128, type: !18)
!742 = distinct !DILexicalBlock(scope: !731, file: !3, line: 128, column: 3)
!743 = !DILocalVariable(name: "s", scope: !744, file: !3, line: 130, type: !739)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 129, column: 5)
!745 = distinct !DILexicalBlock(scope: !742, file: !3, line: 128, column: 3)
!746 = !DILocalVariable(name: "p", scope: !744, file: !3, line: 131, type: !6)
!747 = !DILocation(line: 104, column: 11, scope: !731)
!748 = !DILocation(line: 104, column: 24, scope: !731)
!749 = !DILocation(line: 106, column: 10, scope: !731)
!750 = !DILocation(line: 107, column: 8, scope: !731)
!751 = !DILocation(line: 110, column: 21, scope: !731)
!752 = !DILocation(line: 110, column: 3, scope: !731)
!753 = !DILocation(line: 111, column: 3, scope: !731)
!754 = !DILocation(line: 112, column: 3, scope: !731)
!755 = !DILocation(line: 113, column: 3, scope: !731)
!756 = !DILocation(line: 115, column: 3, scope: !731)
!757 = !DILocation(line: 117, column: 63, scope: !731)
!758 = !DILocation(line: 117, column: 3, scope: !731)
!759 = !DILocation(line: 119, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !731, file: !3, line: 119, column: 7)
!761 = !DILocation(line: 119, column: 56, scope: !760)
!762 = !DILocation(line: 119, column: 7, scope: !731)
!763 = !DILocation(line: 120, column: 5, scope: !760)
!764 = !DILocation(line: 122, column: 12, scope: !765)
!765 = distinct !DILexicalBlock(scope: !731, file: !3, line: 122, column: 7)
!766 = !DILocation(line: 122, column: 7, scope: !731)
!767 = !DILocation(line: 124, column: 20, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !3, line: 123, column: 5)
!769 = !DILocation(line: 124, column: 7, scope: !768)
!770 = !DILocation(line: 125, column: 7, scope: !768)
!771 = !DILocation(line: 128, column: 16, scope: !742)
!772 = !{!773, !773, i64 0}
!773 = !{!"int", !691, i64 0}
!774 = !DILocation(line: 128, column: 12, scope: !742)
!775 = !DILocation(line: 128, column: 26, scope: !745)
!776 = !DILocation(line: 128, column: 3, scope: !742)
!777 = !DILocation(line: 147, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !731, file: !3, line: 147, column: 7)
!779 = !DILocation(line: 147, column: 7, scope: !731)
!780 = !DILocation(line: 130, column: 7, scope: !744)
!781 = !DILocation(line: 131, column: 7, scope: !744)
!782 = !DILocation(line: 132, column: 23, scope: !783)
!783 = distinct !DILexicalBlock(scope: !744, file: !3, line: 132, column: 11)
!784 = !DILocation(line: 130, column: 14, scope: !744)
!785 = !DILocation(line: 131, column: 19, scope: !744)
!786 = !DILocation(line: 132, column: 14, scope: !783)
!787 = !DILocation(line: 132, column: 50, scope: !783)
!788 = !DILocation(line: 132, column: 53, scope: !783)
!789 = !DILocation(line: 132, column: 59, scope: !783)
!790 = !DILocation(line: 134, column: 22, scope: !783)
!791 = !DILocation(line: 134, column: 19, scope: !783)
!792 = !DILocation(line: 134, column: 11, scope: !783)
!793 = !{!794, !794, i64 0}
!794 = !{!"double", !691, i64 0}
!795 = !DILocation(line: 136, column: 11, scope: !783)
!796 = !DILocation(line: 136, column: 16, scope: !783)
!797 = !DILocation(line: 136, column: 15, scope: !783)
!798 = !{!691, !691, i64 0}
!799 = !DILocation(line: 136, column: 18, scope: !783)
!800 = !DILocation(line: 136, column: 24, scope: !783)
!801 = !DILocation(line: 136, column: 21, scope: !783)
!802 = !DILocation(line: 138, column: 11, scope: !783)
!803 = !DILocalVariable(name: "x", arg: 1, scope: !804, file: !3, line: 75, type: !807)
!804 = distinct !DISubprogram(name: "apply_suffix", scope: !3, file: !3, line: 75, type: !805, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !808)
!805 = !DISubroutineType(types: !806)
!806 = !{!69, !807, !8}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!808 = !{!803, !809, !810}
!809 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !804, file: !3, line: 75, type: !8)
!810 = !DILocalVariable(name: "multiplier", scope: !804, file: !3, line: 77, type: !18)
!811 = !DILocation(line: 75, column: 23, scope: !804, inlinedAt: !812)
!812 = distinct !DILocation(line: 138, column: 16, scope: !783)
!813 = !DILocation(line: 75, column: 31, scope: !804, inlinedAt: !812)
!814 = !DILocation(line: 79, column: 11, scope: !804, inlinedAt: !812)
!815 = !DILocation(line: 79, column: 3, scope: !804, inlinedAt: !812)
!816 = !DILocation(line: 77, column: 7, scope: !804, inlinedAt: !812)
!817 = !DILocation(line: 87, column: 7, scope: !818, inlinedAt: !812)
!818 = distinct !DILexicalBlock(scope: !804, file: !3, line: 80, column: 5)
!819 = !DILocation(line: 90, column: 7, scope: !818, inlinedAt: !812)
!820 = !DILocation(line: 93, column: 7, scope: !818, inlinedAt: !812)
!821 = !DILocation(line: 98, column: 6, scope: !804, inlinedAt: !812)
!822 = !DILocation(line: 132, column: 11, scope: !744)
!823 = !DILocation(line: 140, column: 24, scope: !824)
!824 = distinct !DILexicalBlock(scope: !783, file: !3, line: 139, column: 9)
!825 = !DILocation(line: 140, column: 62, scope: !824)
!826 = !DILocation(line: 140, column: 55, scope: !824)
!827 = !DILocation(line: 140, column: 11, scope: !824)
!828 = !DILocation(line: 144, column: 18, scope: !744)
!829 = !DILocation(line: 142, column: 9, scope: !824)
!830 = !DILocation(line: 0, scope: !731)
!831 = !DILocation(line: 144, column: 15, scope: !744)
!832 = !DILocation(line: 145, column: 5, scope: !745)
!833 = !DILocation(line: 128, column: 35, scope: !745)
!834 = distinct !{!834, !776, !835}
!835 = !DILocation(line: 145, column: 5, scope: !742)
!836 = !DILocation(line: 148, column: 5, scope: !778)
!837 = !DILocation(line: 150, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !731, file: !3, line: 150, column: 7)
!839 = !DILocation(line: 150, column: 7, scope: !731)
!840 = !DILocation(line: 151, column: 5, scope: !838)
!841 = !DILocation(line: 153, column: 3, scope: !731)
!842 = distinct !DISubprogram(name: "c_strtod", scope: !59, file: !59, line: 66, type: !843, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !31, retainedNodes: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!739, !6, !734}
!845 = !{!846, !847, !848, !849}
!846 = !DILocalVariable(name: "nptr", arg: 1, scope: !842, file: !59, line: 66, type: !6)
!847 = !DILocalVariable(name: "endptr", arg: 2, scope: !842, file: !59, line: 66, type: !734)
!848 = !DILocalVariable(name: "r", scope: !842, file: !59, line: 68, type: !739)
!849 = !DILocalVariable(name: "locale", scope: !842, file: !59, line: 72, type: !35)
!850 = !DILocation(line: 66, column: 23, scope: !842)
!851 = !DILocation(line: 66, column: 36, scope: !842)
!852 = !DILocation(line: 58, column: 8, scope: !853, inlinedAt: !857)
!853 = distinct !DILexicalBlock(scope: !854, file: !59, line: 58, column: 7)
!854 = distinct !DISubprogram(name: "c_locale", scope: !59, file: !59, line: 56, type: !855, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !31, retainedNodes: !4)
!855 = !DISubroutineType(types: !856)
!856 = !{!35}
!857 = distinct !DILocation(line: 72, column: 21, scope: !842)
!858 = !DILocation(line: 58, column: 7, scope: !854, inlinedAt: !857)
!859 = !DILocation(line: 59, column: 22, scope: !853, inlinedAt: !857)
!860 = !DILocation(line: 59, column: 20, scope: !853, inlinedAt: !857)
!861 = !DILocation(line: 59, column: 5, scope: !853, inlinedAt: !857)
!862 = !DILocation(line: 60, column: 10, scope: !854, inlinedAt: !857)
!863 = !DILocation(line: 72, column: 12, scope: !842)
!864 = !DILocation(line: 73, column: 8, scope: !865)
!865 = distinct !DILexicalBlock(scope: !842, file: !59, line: 73, column: 7)
!866 = !DILocation(line: 73, column: 7, scope: !842)
!867 = !DILocation(line: 75, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !59, line: 75, column: 11)
!869 = distinct !DILexicalBlock(scope: !865, file: !59, line: 74, column: 5)
!870 = !DILocation(line: 75, column: 11, scope: !869)
!871 = !DILocation(line: 76, column: 17, scope: !868)
!872 = !DILocation(line: 76, column: 9, scope: !868)
!873 = !DILocation(line: 80, column: 7, scope: !842)
!874 = !DILocation(line: 68, column: 10, scope: !842)
!875 = !DILocation(line: 111, column: 3, scope: !842)
!876 = !DILocation(line: 0, scope: !869)
!877 = !DILocation(line: 112, column: 1, scope: !842)
!878 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !68, file: !68, line: 51, type: !664, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !879)
!879 = !{!880}
!880 = !DILocalVariable(name: "file", arg: 1, scope: !878, file: !68, line: 51, type: !6)
!881 = !DILocation(line: 51, column: 41, scope: !878)
!882 = !DILocation(line: 53, column: 13, scope: !878)
!883 = !DILocation(line: 54, column: 1, scope: !878)
!884 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !68, file: !68, line: 88, type: !885, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !69}
!887 = !{!888}
!888 = !DILocalVariable(name: "ignore", arg: 1, scope: !884, file: !68, line: 88, type: !69)
!889 = !DILocation(line: 88, column: 37, scope: !884)
!890 = !DILocation(line: 90, column: 16, scope: !884)
!891 = !{!892, !892, i64 0}
!892 = !{!"_Bool", !691, i64 0}
!893 = !DILocation(line: 91, column: 1, scope: !884)
!894 = distinct !DISubprogram(name: "close_stdout", scope: !68, file: !68, line: 117, type: !895, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{null}
!897 = !{!898}
!898 = !DILocalVariable(name: "write_error", scope: !899, file: !68, line: 122, type: !6)
!899 = distinct !DILexicalBlock(scope: !900, file: !68, line: 121, column: 5)
!900 = distinct !DILexicalBlock(scope: !894, file: !68, line: 119, column: 7)
!901 = !DILocation(line: 119, column: 21, scope: !900)
!902 = !DILocation(line: 119, column: 7, scope: !900)
!903 = !DILocation(line: 119, column: 29, scope: !900)
!904 = !DILocation(line: 120, column: 7, scope: !900)
!905 = !DILocation(line: 120, column: 12, scope: !900)
!906 = !{i8 0, i8 2}
!907 = !DILocation(line: 120, column: 25, scope: !900)
!908 = !DILocation(line: 120, column: 28, scope: !900)
!909 = !DILocation(line: 120, column: 34, scope: !900)
!910 = !DILocation(line: 119, column: 7, scope: !894)
!911 = !DILocation(line: 122, column: 33, scope: !899)
!912 = !DILocation(line: 122, column: 19, scope: !899)
!913 = !DILocation(line: 123, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !899, file: !68, line: 123, column: 11)
!915 = !DILocation(line: 0, scope: !914)
!916 = !DILocation(line: 123, column: 11, scope: !899)
!917 = !DILocation(line: 124, column: 36, scope: !914)
!918 = !DILocation(line: 124, column: 9, scope: !914)
!919 = !DILocation(line: 127, column: 9, scope: !914)
!920 = !DILocation(line: 129, column: 14, scope: !899)
!921 = !DILocation(line: 129, column: 7, scope: !899)
!922 = !DILocation(line: 134, column: 42, scope: !923)
!923 = distinct !DILexicalBlock(scope: !894, file: !68, line: 134, column: 7)
!924 = !DILocation(line: 134, column: 28, scope: !923)
!925 = !DILocation(line: 134, column: 50, scope: !923)
!926 = !DILocation(line: 134, column: 7, scope: !894)
!927 = !DILocation(line: 135, column: 12, scope: !923)
!928 = !DILocation(line: 135, column: 5, scope: !923)
!929 = !DILocation(line: 136, column: 1, scope: !894)
!930 = distinct !DISubprogram(name: "parse_long_options", scope: !82, file: !82, line: 44, type: !931, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !79, retainedNodes: !934)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !18, !734, !6, !6, !6, !933, null}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943}
!935 = !DILocalVariable(name: "argc", arg: 1, scope: !930, file: !82, line: 44, type: !18)
!936 = !DILocalVariable(name: "argv", arg: 2, scope: !930, file: !82, line: 45, type: !734)
!937 = !DILocalVariable(name: "command_name", arg: 3, scope: !930, file: !82, line: 46, type: !6)
!938 = !DILocalVariable(name: "package", arg: 4, scope: !930, file: !82, line: 47, type: !6)
!939 = !DILocalVariable(name: "version", arg: 5, scope: !930, file: !82, line: 48, type: !6)
!940 = !DILocalVariable(name: "usage_func", arg: 6, scope: !930, file: !82, line: 49, type: !933)
!941 = !DILocalVariable(name: "c", scope: !930, file: !82, line: 52, type: !18)
!942 = !DILocalVariable(name: "saved_opterr", scope: !930, file: !82, line: 53, type: !18)
!943 = !DILocalVariable(name: "authors", scope: !944, file: !82, line: 71, type: !948)
!944 = distinct !DILexicalBlock(scope: !945, file: !82, line: 70, column: 11)
!945 = distinct !DILexicalBlock(scope: !946, file: !82, line: 64, column: 9)
!946 = distinct !DILexicalBlock(scope: !947, file: !82, line: 62, column: 5)
!947 = distinct !DILexicalBlock(scope: !930, file: !82, line: 60, column: 7)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !949, line: 52, baseType: !950)
!949 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !951, line: 48, baseType: !952)
!951 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !80, line: 71, baseType: !953)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 192, elements: !22)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !80, line: 71, size: 192, elements: !955)
!955 = !{!956, !957, !958, !959}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !954, file: !80, line: 71, baseType: !107, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !954, file: !80, line: 71, baseType: !107, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !954, file: !80, line: 71, baseType: !9, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !954, file: !80, line: 71, baseType: !9, size: 64, offset: 128)
!960 = !DILocation(line: 44, column: 25, scope: !930)
!961 = !DILocation(line: 45, column: 28, scope: !930)
!962 = !DILocation(line: 46, column: 33, scope: !930)
!963 = !DILocation(line: 47, column: 33, scope: !930)
!964 = !DILocation(line: 48, column: 33, scope: !930)
!965 = !DILocation(line: 49, column: 28, scope: !930)
!966 = !DILocation(line: 55, column: 18, scope: !930)
!967 = !DILocation(line: 53, column: 7, scope: !930)
!968 = !DILocation(line: 58, column: 10, scope: !930)
!969 = !DILocation(line: 60, column: 12, scope: !947)
!970 = !DILocation(line: 61, column: 7, scope: !947)
!971 = !DILocation(line: 61, column: 15, scope: !947)
!972 = !DILocation(line: 52, column: 7, scope: !930)
!973 = !DILocation(line: 60, column: 7, scope: !930)
!974 = !DILocation(line: 66, column: 11, scope: !945)
!975 = !DILocation(line: 67, column: 11, scope: !945)
!976 = !DILocation(line: 71, column: 13, scope: !944)
!977 = !DILocation(line: 71, column: 21, scope: !944)
!978 = !DILocation(line: 72, column: 13, scope: !944)
!979 = !DILocation(line: 73, column: 29, scope: !944)
!980 = !DILocation(line: 73, column: 13, scope: !944)
!981 = !DILocation(line: 74, column: 13, scope: !944)
!982 = !DILocation(line: 84, column: 10, scope: !930)
!983 = !DILocation(line: 88, column: 10, scope: !930)
!984 = !DILocation(line: 89, column: 1, scope: !930)
!985 = distinct !DISubprogram(name: "set_program_name", scope: !99, file: !99, line: 39, type: !664, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !95, retainedNodes: !986)
!986 = !{!987, !988, !989}
!987 = !DILocalVariable(name: "argv0", arg: 1, scope: !985, file: !99, line: 39, type: !6)
!988 = !DILocalVariable(name: "slash", scope: !985, file: !99, line: 46, type: !6)
!989 = !DILocalVariable(name: "base", scope: !985, file: !99, line: 47, type: !6)
!990 = !DILocation(line: 39, column: 31, scope: !985)
!991 = !DILocation(line: 51, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !985, file: !99, line: 51, column: 7)
!993 = !DILocation(line: 51, column: 7, scope: !985)
!994 = !DILocation(line: 55, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !99, line: 52, column: 5)
!996 = !DILocation(line: 54, column: 7, scope: !995)
!997 = !DILocation(line: 56, column: 7, scope: !995)
!998 = !DILocation(line: 59, column: 11, scope: !985)
!999 = !DILocation(line: 46, column: 15, scope: !985)
!1000 = !DILocation(line: 60, column: 17, scope: !985)
!1001 = !DILocation(line: 60, column: 33, scope: !985)
!1002 = !DILocation(line: 60, column: 11, scope: !985)
!1003 = !DILocation(line: 47, column: 15, scope: !985)
!1004 = !DILocation(line: 61, column: 12, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !985, file: !99, line: 61, column: 7)
!1006 = !DILocation(line: 61, column: 20, scope: !1005)
!1007 = !DILocation(line: 61, column: 25, scope: !1005)
!1008 = !DILocation(line: 61, column: 42, scope: !1005)
!1009 = !DILocation(line: 61, column: 28, scope: !1005)
!1010 = !DILocation(line: 61, column: 61, scope: !1005)
!1011 = !DILocation(line: 61, column: 7, scope: !985)
!1012 = !DILocation(line: 64, column: 11, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !99, line: 64, column: 11)
!1014 = distinct !DILexicalBlock(scope: !1005, file: !99, line: 62, column: 5)
!1015 = !DILocation(line: 64, column: 36, scope: !1013)
!1016 = !DILocation(line: 64, column: 11, scope: !1014)
!1017 = !DILocation(line: 66, column: 24, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !99, line: 65, column: 9)
!1019 = !DILocation(line: 70, column: 41, scope: !1018)
!1020 = !DILocation(line: 72, column: 9, scope: !1018)
!1021 = !DILocation(line: 84, column: 16, scope: !985)
!1022 = !DILocation(line: 90, column: 27, scope: !985)
!1023 = !DILocation(line: 92, column: 1, scope: !985)
!1024 = distinct !DISubprogram(name: "clone_quoting_options", scope: !147, file: !147, line: 122, type: !1025, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1028)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1027, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!1028 = !{!1029, !1030, !1031}
!1029 = !DILocalVariable(name: "o", arg: 1, scope: !1024, file: !147, line: 122, type: !1027)
!1030 = !DILocalVariable(name: "e", scope: !1024, file: !147, line: 124, type: !18)
!1031 = !DILocalVariable(name: "p", scope: !1024, file: !147, line: 125, type: !1027)
!1032 = !DILocation(line: 122, column: 48, scope: !1024)
!1033 = !DILocation(line: 124, column: 11, scope: !1024)
!1034 = !DILocation(line: 124, column: 7, scope: !1024)
!1035 = !DILocation(line: 125, column: 40, scope: !1024)
!1036 = !DILocation(line: 125, column: 31, scope: !1024)
!1037 = !DILocation(line: 125, column: 27, scope: !1024)
!1038 = !DILocation(line: 127, column: 9, scope: !1024)
!1039 = !DILocation(line: 128, column: 3, scope: !1024)
!1040 = distinct !DISubprogram(name: "get_quoting_style", scope: !147, file: !147, line: 133, type: !1041, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1045)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!105, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!1045 = !{!1046}
!1046 = !DILocalVariable(name: "o", arg: 1, scope: !1040, file: !147, line: 133, type: !1043)
!1047 = !DILocation(line: 133, column: 50, scope: !1040)
!1048 = !DILocation(line: 135, column: 11, scope: !1040)
!1049 = !DILocation(line: 135, column: 46, scope: !1040)
!1050 = !{!1051, !691, i64 0}
!1051 = !{!"quoting_options", !691, i64 0, !773, i64 4, !691, i64 8, !690, i64 40, !690, i64 48}
!1052 = !DILocation(line: 135, column: 3, scope: !1040)
!1053 = distinct !DISubprogram(name: "set_quoting_style", scope: !147, file: !147, line: 141, type: !1054, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !1027, !105}
!1056 = !{!1057, !1058}
!1057 = !DILocalVariable(name: "o", arg: 1, scope: !1053, file: !147, line: 141, type: !1027)
!1058 = !DILocalVariable(name: "s", arg: 2, scope: !1053, file: !147, line: 141, type: !105)
!1059 = !DILocation(line: 141, column: 44, scope: !1053)
!1060 = !DILocation(line: 141, column: 66, scope: !1053)
!1061 = !DILocation(line: 143, column: 4, scope: !1053)
!1062 = !DILocation(line: 143, column: 39, scope: !1053)
!1063 = !DILocation(line: 143, column: 45, scope: !1053)
!1064 = !DILocation(line: 144, column: 1, scope: !1053)
!1065 = distinct !DISubprogram(name: "set_char_quoting", scope: !147, file: !147, line: 152, type: !1066, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1068)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!18, !1027, !8, !18}
!1068 = !{!1069, !1070, !1071, !1072, !1074, !1076, !1077}
!1069 = !DILocalVariable(name: "o", arg: 1, scope: !1065, file: !147, line: 152, type: !1027)
!1070 = !DILocalVariable(name: "c", arg: 2, scope: !1065, file: !147, line: 152, type: !8)
!1071 = !DILocalVariable(name: "i", arg: 3, scope: !1065, file: !147, line: 152, type: !18)
!1072 = !DILocalVariable(name: "uc", scope: !1065, file: !147, line: 154, type: !1073)
!1073 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1074 = !DILocalVariable(name: "p", scope: !1065, file: !147, line: 155, type: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1076 = !DILocalVariable(name: "shift", scope: !1065, file: !147, line: 157, type: !18)
!1077 = !DILocalVariable(name: "r", scope: !1065, file: !147, line: 158, type: !18)
!1078 = !DILocation(line: 152, column: 43, scope: !1065)
!1079 = !DILocation(line: 152, column: 51, scope: !1065)
!1080 = !DILocation(line: 152, column: 58, scope: !1065)
!1081 = !DILocation(line: 154, column: 17, scope: !1065)
!1082 = !DILocation(line: 156, column: 6, scope: !1065)
!1083 = !DILocation(line: 156, column: 62, scope: !1065)
!1084 = !DILocation(line: 156, column: 57, scope: !1065)
!1085 = !DILocation(line: 155, column: 17, scope: !1065)
!1086 = !DILocation(line: 157, column: 15, scope: !1065)
!1087 = !DILocation(line: 157, column: 7, scope: !1065)
!1088 = !DILocation(line: 158, column: 12, scope: !1065)
!1089 = !DILocation(line: 158, column: 15, scope: !1065)
!1090 = !DILocation(line: 158, column: 25, scope: !1065)
!1091 = !DILocation(line: 158, column: 7, scope: !1065)
!1092 = !DILocation(line: 159, column: 13, scope: !1065)
!1093 = !DILocation(line: 159, column: 18, scope: !1065)
!1094 = !DILocation(line: 159, column: 23, scope: !1065)
!1095 = !DILocation(line: 159, column: 6, scope: !1065)
!1096 = !DILocation(line: 160, column: 3, scope: !1065)
!1097 = distinct !DISubprogram(name: "set_quoting_flags", scope: !147, file: !147, line: 168, type: !1098, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!18, !1027, !18}
!1100 = !{!1101, !1102, !1103}
!1101 = !DILocalVariable(name: "o", arg: 1, scope: !1097, file: !147, line: 168, type: !1027)
!1102 = !DILocalVariable(name: "i", arg: 2, scope: !1097, file: !147, line: 168, type: !18)
!1103 = !DILocalVariable(name: "r", scope: !1097, file: !147, line: 170, type: !18)
!1104 = !DILocation(line: 168, column: 44, scope: !1097)
!1105 = !DILocation(line: 168, column: 51, scope: !1097)
!1106 = !DILocation(line: 171, column: 8, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1097, file: !147, line: 171, column: 7)
!1108 = !DILocation(line: 171, column: 7, scope: !1097)
!1109 = !DILocation(line: 173, column: 10, scope: !1097)
!1110 = !{!1051, !773, i64 4}
!1111 = !DILocation(line: 170, column: 7, scope: !1097)
!1112 = !DILocation(line: 174, column: 12, scope: !1097)
!1113 = !DILocation(line: 175, column: 3, scope: !1097)
!1114 = distinct !DISubprogram(name: "set_custom_quoting", scope: !147, file: !147, line: 179, type: !1115, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1027, !6, !6}
!1117 = !{!1118, !1119, !1120}
!1118 = !DILocalVariable(name: "o", arg: 1, scope: !1114, file: !147, line: 179, type: !1027)
!1119 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1114, file: !147, line: 180, type: !6)
!1120 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1114, file: !147, line: 180, type: !6)
!1121 = !DILocation(line: 179, column: 45, scope: !1114)
!1122 = !DILocation(line: 180, column: 33, scope: !1114)
!1123 = !DILocation(line: 180, column: 57, scope: !1114)
!1124 = !DILocation(line: 182, column: 8, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1114, file: !147, line: 182, column: 7)
!1126 = !DILocation(line: 182, column: 7, scope: !1114)
!1127 = !DILocation(line: 184, column: 6, scope: !1114)
!1128 = !DILocation(line: 184, column: 12, scope: !1114)
!1129 = !DILocation(line: 185, column: 8, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1114, file: !147, line: 185, column: 7)
!1131 = !DILocation(line: 185, column: 23, scope: !1130)
!1132 = !DILocation(line: 185, column: 19, scope: !1130)
!1133 = !DILocation(line: 186, column: 5, scope: !1130)
!1134 = !DILocation(line: 187, column: 6, scope: !1114)
!1135 = !DILocation(line: 187, column: 17, scope: !1114)
!1136 = !{!1051, !690, i64 40}
!1137 = !DILocation(line: 188, column: 6, scope: !1114)
!1138 = !DILocation(line: 188, column: 18, scope: !1114)
!1139 = !{!1051, !690, i64 48}
!1140 = !DILocation(line: 189, column: 1, scope: !1114)
!1141 = distinct !DISubprogram(name: "quotearg_buffer", scope: !147, file: !147, line: 784, type: !1142, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!141, !34, !141, !6, !141, !1043}
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1145 = !DILocalVariable(name: "buffer", arg: 1, scope: !1141, file: !147, line: 784, type: !34)
!1146 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1141, file: !147, line: 784, type: !141)
!1147 = !DILocalVariable(name: "arg", arg: 3, scope: !1141, file: !147, line: 785, type: !6)
!1148 = !DILocalVariable(name: "argsize", arg: 4, scope: !1141, file: !147, line: 785, type: !141)
!1149 = !DILocalVariable(name: "o", arg: 5, scope: !1141, file: !147, line: 786, type: !1043)
!1150 = !DILocalVariable(name: "p", scope: !1141, file: !147, line: 788, type: !1043)
!1151 = !DILocalVariable(name: "e", scope: !1141, file: !147, line: 789, type: !18)
!1152 = !DILocalVariable(name: "r", scope: !1141, file: !147, line: 790, type: !141)
!1153 = !DILocation(line: 784, column: 24, scope: !1141)
!1154 = !DILocation(line: 784, column: 39, scope: !1141)
!1155 = !DILocation(line: 785, column: 30, scope: !1141)
!1156 = !DILocation(line: 785, column: 42, scope: !1141)
!1157 = !DILocation(line: 786, column: 48, scope: !1141)
!1158 = !DILocation(line: 788, column: 37, scope: !1141)
!1159 = !DILocation(line: 788, column: 33, scope: !1141)
!1160 = !DILocation(line: 789, column: 11, scope: !1141)
!1161 = !DILocation(line: 789, column: 7, scope: !1141)
!1162 = !DILocation(line: 791, column: 43, scope: !1141)
!1163 = !DILocation(line: 791, column: 53, scope: !1141)
!1164 = !DILocation(line: 791, column: 60, scope: !1141)
!1165 = !DILocation(line: 792, column: 43, scope: !1141)
!1166 = !DILocation(line: 792, column: 58, scope: !1141)
!1167 = !DILocation(line: 790, column: 14, scope: !1141)
!1168 = !DILocation(line: 790, column: 10, scope: !1141)
!1169 = !DILocation(line: 793, column: 9, scope: !1141)
!1170 = !DILocation(line: 794, column: 3, scope: !1141)
!1171 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !147, file: !147, line: 256, type: !1172, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1176)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!141, !34, !141, !6, !141, !105, !18, !1174, !6, !6}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1201, !1202, !1203, !1204, !1205, !1208, !1209, !1227, !1230, !1231, !1238}
!1177 = !DILocalVariable(name: "buffer", arg: 1, scope: !1171, file: !147, line: 256, type: !34)
!1178 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1171, file: !147, line: 256, type: !141)
!1179 = !DILocalVariable(name: "arg", arg: 3, scope: !1171, file: !147, line: 257, type: !6)
!1180 = !DILocalVariable(name: "argsize", arg: 4, scope: !1171, file: !147, line: 257, type: !141)
!1181 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1171, file: !147, line: 258, type: !105)
!1182 = !DILocalVariable(name: "flags", arg: 6, scope: !1171, file: !147, line: 258, type: !18)
!1183 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1171, file: !147, line: 259, type: !1174)
!1184 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1171, file: !147, line: 260, type: !6)
!1185 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1171, file: !147, line: 261, type: !6)
!1186 = !DILocalVariable(name: "i", scope: !1171, file: !147, line: 263, type: !141)
!1187 = !DILocalVariable(name: "len", scope: !1171, file: !147, line: 264, type: !141)
!1188 = !DILocalVariable(name: "orig_buffersize", scope: !1171, file: !147, line: 265, type: !141)
!1189 = !DILocalVariable(name: "quote_string", scope: !1171, file: !147, line: 266, type: !6)
!1190 = !DILocalVariable(name: "quote_string_len", scope: !1171, file: !147, line: 267, type: !141)
!1191 = !DILocalVariable(name: "backslash_escapes", scope: !1171, file: !147, line: 268, type: !69)
!1192 = !DILocalVariable(name: "unibyte_locale", scope: !1171, file: !147, line: 269, type: !69)
!1193 = !DILocalVariable(name: "elide_outer_quotes", scope: !1171, file: !147, line: 270, type: !69)
!1194 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1171, file: !147, line: 271, type: !69)
!1195 = !DILocalVariable(name: "encountered_single_quote", scope: !1171, file: !147, line: 272, type: !69)
!1196 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1171, file: !147, line: 273, type: !69)
!1197 = !DILocalVariable(name: "c", scope: !1198, file: !147, line: 402, type: !1073)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !147, line: 401, column: 5)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !147, line: 400, column: 3)
!1200 = distinct !DILexicalBlock(scope: !1171, file: !147, line: 400, column: 3)
!1201 = !DILocalVariable(name: "esc", scope: !1198, file: !147, line: 403, type: !1073)
!1202 = !DILocalVariable(name: "is_right_quote", scope: !1198, file: !147, line: 404, type: !69)
!1203 = !DILocalVariable(name: "escaping", scope: !1198, file: !147, line: 405, type: !69)
!1204 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1198, file: !147, line: 406, type: !69)
!1205 = !DILocalVariable(name: "m", scope: !1206, file: !147, line: 610, type: !141)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 608, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1198, file: !147, line: 426, column: 9)
!1208 = !DILocalVariable(name: "printable", scope: !1206, file: !147, line: 612, type: !69)
!1209 = !DILocalVariable(name: "mbstate", scope: !1210, file: !147, line: 621, type: !1212)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !147, line: 620, column: 15)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !147, line: 614, column: 17)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1213, line: 6, baseType: !1214)
!1213 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1215, line: 21, baseType: !1216)
!1215 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 13, size: 64, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1216, file: !1215, line: 15, baseType: !18, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1216, file: !1215, line: 20, baseType: !1220, size: 32, offset: 32)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !1215, line: 16, size: 32, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1220, file: !1215, line: 18, baseType: !107, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1220, file: !1215, line: 19, baseType: !1224, size: 32)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 4)
!1227 = !DILocalVariable(name: "w", scope: !1228, file: !147, line: 631, type: !1229)
!1228 = distinct !DILexicalBlock(scope: !1210, file: !147, line: 630, column: 19)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !142, line: 90, baseType: !18)
!1230 = !DILocalVariable(name: "bytes", scope: !1228, file: !147, line: 632, type: !141)
!1231 = !DILocalVariable(name: "j", scope: !1232, file: !147, line: 657, type: !141)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !147, line: 656, column: 27)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !147, line: 654, column: 29)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !147, line: 649, column: 23)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !147, line: 641, column: 30)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !147, line: 636, column: 30)
!1237 = distinct !DILexicalBlock(scope: !1228, file: !147, line: 634, column: 25)
!1238 = !DILocalVariable(name: "ilim", scope: !1239, file: !147, line: 684, type: !141)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !147, line: 681, column: 15)
!1240 = distinct !DILexicalBlock(scope: !1206, file: !147, line: 680, column: 17)
!1241 = !DILocation(line: 256, column: 33, scope: !1171)
!1242 = !DILocation(line: 256, column: 48, scope: !1171)
!1243 = !DILocation(line: 257, column: 39, scope: !1171)
!1244 = !DILocation(line: 257, column: 51, scope: !1171)
!1245 = !DILocation(line: 258, column: 46, scope: !1171)
!1246 = !DILocation(line: 258, column: 65, scope: !1171)
!1247 = !DILocation(line: 259, column: 47, scope: !1171)
!1248 = !DILocation(line: 260, column: 39, scope: !1171)
!1249 = !DILocation(line: 261, column: 39, scope: !1171)
!1250 = !DILocation(line: 264, column: 10, scope: !1171)
!1251 = !DILocation(line: 265, column: 10, scope: !1171)
!1252 = !DILocation(line: 266, column: 15, scope: !1171)
!1253 = !DILocation(line: 267, column: 10, scope: !1171)
!1254 = !DILocation(line: 268, column: 8, scope: !1171)
!1255 = !DILocation(line: 269, column: 25, scope: !1171)
!1256 = !DILocation(line: 269, column: 36, scope: !1171)
!1257 = !DILocation(line: 270, column: 8, scope: !1171)
!1258 = !DILocation(line: 271, column: 8, scope: !1171)
!1259 = !DILocation(line: 272, column: 8, scope: !1171)
!1260 = !DILocation(line: 273, column: 8, scope: !1171)
!1261 = !DILocation(line: 273, column: 3, scope: !1171)
!1262 = !DILocation(line: 0, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1171, file: !147, line: 317, column: 5)
!1264 = !DILocation(line: 316, column: 3, scope: !1171)
!1265 = !DILocation(line: 323, column: 11, scope: !1263)
!1266 = !DILocation(line: 323, column: 12, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 323, column: 11)
!1268 = !DILocation(line: 324, column: 9, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !147, line: 324, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !147, line: 324, column: 9)
!1271 = !DILocation(line: 324, column: 9, scope: !1270)
!1272 = !DILocation(line: 362, column: 26, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !147, line: 340, column: 11)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !147, line: 339, column: 13)
!1275 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 338, column: 7)
!1276 = !DILocation(line: 363, column: 27, scope: !1273)
!1277 = !DILocation(line: 364, column: 11, scope: !1273)
!1278 = !DILocation(line: 365, column: 14, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !147, line: 365, column: 13)
!1280 = !DILocation(line: 365, column: 13, scope: !1275)
!1281 = !DILocation(line: 366, column: 43, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !147, line: 366, column: 11)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !147, line: 366, column: 11)
!1284 = !DILocation(line: 366, column: 11, scope: !1283)
!1285 = !DILocation(line: 367, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !147, line: 367, column: 13)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !147, line: 367, column: 13)
!1288 = !DILocation(line: 367, column: 13, scope: !1287)
!1289 = !DILocation(line: 366, column: 70, scope: !1282)
!1290 = distinct !{!1290, !1284, !1291}
!1291 = !DILocation(line: 367, column: 13, scope: !1283)
!1292 = !DILocation(line: 370, column: 28, scope: !1275)
!1293 = !DILocation(line: 372, column: 7, scope: !1263)
!1294 = !DILocation(line: 376, column: 7, scope: !1263)
!1295 = !DILocation(line: 379, column: 7, scope: !1263)
!1296 = !DILocation(line: 381, column: 12, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 381, column: 11)
!1298 = !DILocation(line: 381, column: 11, scope: !1263)
!1299 = !DILocation(line: 0, scope: !1297)
!1300 = !DILocation(line: 386, column: 12, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1263, file: !147, line: 386, column: 11)
!1302 = !DILocation(line: 386, column: 11, scope: !1263)
!1303 = !DILocation(line: 387, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !147, line: 387, column: 9)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !147, line: 387, column: 9)
!1306 = !DILocation(line: 387, column: 9, scope: !1305)
!1307 = !DILocation(line: 394, column: 7, scope: !1263)
!1308 = !DILocation(line: 397, column: 7, scope: !1263)
!1309 = !DILocation(line: 0, scope: !1171)
!1310 = !DILocation(line: 263, column: 10, scope: !1171)
!1311 = !DILocation(line: 400, column: 8, scope: !1200)
!1312 = !DILocation(line: 0, scope: !1199)
!1313 = !DILocation(line: 400, column: 27, scope: !1199)
!1314 = !DILocation(line: 400, column: 19, scope: !1199)
!1315 = !DILocation(line: 400, column: 41, scope: !1199)
!1316 = !DILocation(line: 400, column: 48, scope: !1199)
!1317 = !DILocation(line: 400, column: 3, scope: !1200)
!1318 = !DILocation(line: 400, column: 60, scope: !1199)
!1319 = !DILocation(line: 404, column: 12, scope: !1198)
!1320 = !DILocation(line: 405, column: 12, scope: !1198)
!1321 = !DILocation(line: 406, column: 12, scope: !1198)
!1322 = !DILocation(line: 409, column: 11, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1198, file: !147, line: 408, column: 11)
!1324 = !DILocation(line: 411, column: 17, scope: !1323)
!1325 = !DILocation(line: 412, column: 39, scope: !1323)
!1326 = !DILocation(line: 416, column: 32, scope: !1323)
!1327 = !DILocation(line: 412, column: 19, scope: !1323)
!1328 = !DILocation(line: 412, column: 15, scope: !1323)
!1329 = !DILocation(line: 417, column: 11, scope: !1323)
!1330 = !DILocation(line: 417, column: 26, scope: !1323)
!1331 = !DILocation(line: 417, column: 14, scope: !1323)
!1332 = !DILocation(line: 417, column: 63, scope: !1323)
!1333 = !DILocation(line: 408, column: 11, scope: !1198)
!1334 = !DILocation(line: 0, scope: !1198)
!1335 = !DILocation(line: 424, column: 11, scope: !1198)
!1336 = !DILocation(line: 402, column: 21, scope: !1198)
!1337 = !DILocation(line: 425, column: 7, scope: !1198)
!1338 = !DILocation(line: 428, column: 15, scope: !1207)
!1339 = !DILocation(line: 430, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !147, line: 430, column: 15)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !147, line: 429, column: 13)
!1342 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 428, column: 15)
!1343 = !DILocation(line: 430, column: 15, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !147, line: 430, column: 15)
!1345 = !DILocation(line: 430, column: 15, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !147, line: 430, column: 15)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !147, line: 430, column: 15)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !147, line: 430, column: 15)
!1349 = !DILocation(line: 430, column: 15, scope: !1347)
!1350 = !DILocation(line: 430, column: 15, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !147, line: 430, column: 15)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !147, line: 430, column: 15)
!1353 = !DILocation(line: 430, column: 15, scope: !1352)
!1354 = !DILocation(line: 430, column: 15, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !147, line: 430, column: 15)
!1356 = distinct !DILexicalBlock(scope: !1348, file: !147, line: 430, column: 15)
!1357 = !DILocation(line: 430, column: 15, scope: !1356)
!1358 = !DILocation(line: 430, column: 15, scope: !1348)
!1359 = !DILocation(line: 430, column: 15, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !147, line: 430, column: 15)
!1361 = distinct !DILexicalBlock(scope: !1340, file: !147, line: 430, column: 15)
!1362 = !DILocation(line: 430, column: 15, scope: !1361)
!1363 = !DILocation(line: 438, column: 19, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1341, file: !147, line: 437, column: 19)
!1365 = !DILocation(line: 438, column: 24, scope: !1364)
!1366 = !DILocation(line: 438, column: 28, scope: !1364)
!1367 = !DILocation(line: 438, column: 38, scope: !1364)
!1368 = !DILocation(line: 438, column: 48, scope: !1364)
!1369 = !DILocation(line: 438, column: 59, scope: !1364)
!1370 = !DILocation(line: 440, column: 19, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !147, line: 440, column: 19)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !147, line: 440, column: 19)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !147, line: 439, column: 17)
!1374 = !DILocation(line: 440, column: 19, scope: !1372)
!1375 = !DILocation(line: 441, column: 19, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !147, line: 441, column: 19)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !147, line: 441, column: 19)
!1378 = !DILocation(line: 441, column: 19, scope: !1377)
!1379 = !DILocation(line: 442, column: 17, scope: !1373)
!1380 = !DILocation(line: 449, column: 20, scope: !1342)
!1381 = !DILocation(line: 454, column: 11, scope: !1207)
!1382 = !DILocation(line: 457, column: 19, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 455, column: 13)
!1384 = !DILocation(line: 463, column: 19, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1383, file: !147, line: 462, column: 19)
!1386 = !DILocation(line: 463, column: 24, scope: !1385)
!1387 = !DILocation(line: 463, column: 28, scope: !1385)
!1388 = !DILocation(line: 463, column: 38, scope: !1385)
!1389 = !DILocation(line: 463, column: 47, scope: !1385)
!1390 = !DILocation(line: 463, column: 41, scope: !1385)
!1391 = !DILocation(line: 463, column: 52, scope: !1385)
!1392 = !DILocation(line: 462, column: 19, scope: !1383)
!1393 = !DILocation(line: 464, column: 25, scope: !1385)
!1394 = !DILocation(line: 464, column: 17, scope: !1385)
!1395 = !DILocation(line: 471, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1385, file: !147, line: 465, column: 19)
!1397 = !DILocation(line: 475, column: 21, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !147, line: 475, column: 21)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !147, line: 475, column: 21)
!1400 = !DILocation(line: 475, column: 21, scope: !1399)
!1401 = !DILocation(line: 476, column: 21, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !147, line: 476, column: 21)
!1403 = distinct !DILexicalBlock(scope: !1396, file: !147, line: 476, column: 21)
!1404 = !DILocation(line: 476, column: 21, scope: !1403)
!1405 = !DILocation(line: 477, column: 21, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !147, line: 477, column: 21)
!1407 = distinct !DILexicalBlock(scope: !1396, file: !147, line: 477, column: 21)
!1408 = !DILocation(line: 477, column: 21, scope: !1407)
!1409 = !DILocation(line: 478, column: 21, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !147, line: 478, column: 21)
!1411 = distinct !DILexicalBlock(scope: !1396, file: !147, line: 478, column: 21)
!1412 = !DILocation(line: 478, column: 21, scope: !1411)
!1413 = !DILocation(line: 479, column: 21, scope: !1396)
!1414 = !DILocation(line: 403, column: 21, scope: !1198)
!1415 = !DILocation(line: 492, column: 31, scope: !1207)
!1416 = !DILocation(line: 493, column: 31, scope: !1207)
!1417 = !DILocation(line: 495, column: 31, scope: !1207)
!1418 = !DILocation(line: 496, column: 31, scope: !1207)
!1419 = !DILocation(line: 497, column: 31, scope: !1207)
!1420 = !DILocation(line: 500, column: 15, scope: !1207)
!1421 = !DILocation(line: 502, column: 19, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !147, line: 501, column: 13)
!1423 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 500, column: 15)
!1424 = !DILocation(line: 509, column: 33, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 509, column: 15)
!1426 = !DILocation(line: 0, scope: !1207)
!1427 = !DILocation(line: 514, column: 15, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 513, column: 15)
!1429 = !DILocation(line: 518, column: 15, scope: !1207)
!1430 = !DILocation(line: 526, column: 26, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 526, column: 15)
!1432 = !DILocation(line: 526, column: 15, scope: !1207)
!1433 = !DILocation(line: 526, column: 40, scope: !1431)
!1434 = !DILocation(line: 526, column: 47, scope: !1431)
!1435 = !DILocation(line: 530, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 530, column: 15)
!1437 = !DILocation(line: 526, column: 18, scope: !1431)
!1438 = !DILocation(line: 526, column: 65, scope: !1431)
!1439 = !DILocation(line: 530, column: 15, scope: !1207)
!1440 = !DILocation(line: 535, column: 11, scope: !1207)
!1441 = !DILocation(line: 549, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 548, column: 15)
!1443 = !DILocation(line: 556, column: 15, scope: !1207)
!1444 = !DILocation(line: 558, column: 19, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !147, line: 557, column: 13)
!1446 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 556, column: 15)
!1447 = !DILocation(line: 561, column: 19, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !147, line: 561, column: 19)
!1449 = !DILocation(line: 561, column: 35, scope: !1448)
!1450 = !DILocation(line: 561, column: 30, scope: !1448)
!1451 = !DILocation(line: 570, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !147, line: 570, column: 15)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !147, line: 570, column: 15)
!1454 = !DILocation(line: 570, column: 15, scope: !1453)
!1455 = !DILocation(line: 571, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !147, line: 571, column: 15)
!1457 = distinct !DILexicalBlock(scope: !1445, file: !147, line: 571, column: 15)
!1458 = !DILocation(line: 571, column: 15, scope: !1457)
!1459 = !DILocation(line: 572, column: 15, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !147, line: 572, column: 15)
!1461 = distinct !DILexicalBlock(scope: !1445, file: !147, line: 572, column: 15)
!1462 = !DILocation(line: 572, column: 15, scope: !1461)
!1463 = !DILocation(line: 574, column: 13, scope: !1445)
!1464 = !DILocation(line: 614, column: 17, scope: !1206)
!1465 = !DILocation(line: 610, column: 20, scope: !1206)
!1466 = !DILocation(line: 617, column: 29, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1211, file: !147, line: 615, column: 15)
!1468 = !{!1469, !1469, i64 0}
!1469 = !{!"short", !691, i64 0}
!1470 = !DILocation(line: 617, column: 27, scope: !1467)
!1471 = !DILocation(line: 612, column: 18, scope: !1206)
!1472 = !DILocation(line: 618, column: 15, scope: !1467)
!1473 = !DILocation(line: 621, column: 17, scope: !1210)
!1474 = !DILocation(line: 622, column: 17, scope: !1210)
!1475 = !DILocation(line: 626, column: 29, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1210, file: !147, line: 626, column: 21)
!1477 = !DILocation(line: 626, column: 21, scope: !1210)
!1478 = !DILocation(line: 627, column: 29, scope: !1476)
!1479 = !DILocation(line: 627, column: 19, scope: !1476)
!1480 = !DILocation(line: 0, scope: !1323)
!1481 = !DILocation(line: 629, column: 17, scope: !1210)
!1482 = !DILocation(line: 624, column: 19, scope: !1210)
!1483 = !DILocation(line: 625, column: 27, scope: !1210)
!1484 = !DILocation(line: 631, column: 21, scope: !1228)
!1485 = !DILocation(line: 632, column: 56, scope: !1228)
!1486 = !DILocation(line: 632, column: 50, scope: !1228)
!1487 = !DILocation(line: 633, column: 53, scope: !1228)
!1488 = !DILocation(line: 621, column: 27, scope: !1210)
!1489 = !DILocation(line: 631, column: 29, scope: !1228)
!1490 = !DILocation(line: 632, column: 36, scope: !1228)
!1491 = !DILocation(line: 632, column: 28, scope: !1228)
!1492 = !DILocation(line: 634, column: 25, scope: !1228)
!1493 = !DILocation(line: 644, column: 38, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1235, file: !147, line: 642, column: 23)
!1495 = !DILocation(line: 644, column: 48, scope: !1494)
!1496 = !DILocation(line: 644, column: 51, scope: !1494)
!1497 = !DILocation(line: 644, column: 25, scope: !1494)
!1498 = !DILocation(line: 645, column: 28, scope: !1494)
!1499 = !DILocation(line: 644, column: 34, scope: !1494)
!1500 = distinct !{!1500, !1497, !1498}
!1501 = !DILocation(line: 658, column: 43, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !147, line: 658, column: 29)
!1503 = distinct !DILexicalBlock(scope: !1232, file: !147, line: 658, column: 29)
!1504 = !DILocation(line: 655, column: 29, scope: !1233)
!1505 = !DILocation(line: 657, column: 36, scope: !1232)
!1506 = !DILocation(line: 659, column: 49, scope: !1502)
!1507 = !DILocation(line: 659, column: 39, scope: !1502)
!1508 = !DILocation(line: 659, column: 31, scope: !1502)
!1509 = !DILocation(line: 658, column: 53, scope: !1502)
!1510 = !DILocation(line: 658, column: 29, scope: !1503)
!1511 = distinct !{!1511, !1510, !1512}
!1512 = !DILocation(line: 667, column: 33, scope: !1503)
!1513 = !DILocation(line: 674, column: 19, scope: !1210)
!1514 = !DILocation(line: 670, column: 41, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1234, file: !147, line: 670, column: 29)
!1516 = !DILocation(line: 670, column: 31, scope: !1515)
!1517 = !DILocation(line: 670, column: 29, scope: !1234)
!1518 = !DILocation(line: 672, column: 27, scope: !1234)
!1519 = !DILocation(line: 675, column: 26, scope: !1210)
!1520 = !DILocation(line: 675, column: 24, scope: !1210)
!1521 = !DILocation(line: 674, column: 19, scope: !1228)
!1522 = distinct !{!1522, !1481, !1523}
!1523 = !DILocation(line: 675, column: 44, scope: !1210)
!1524 = !DILocation(line: 676, column: 15, scope: !1211)
!1525 = !DILocation(line: 0, scope: !1476)
!1526 = !DILocation(line: 0, scope: !1210)
!1527 = !DILocation(line: 678, column: 40, scope: !1206)
!1528 = !DILocation(line: 680, column: 19, scope: !1240)
!1529 = !DILocation(line: 680, column: 45, scope: !1240)
!1530 = !DILocation(line: 680, column: 23, scope: !1240)
!1531 = !DILocation(line: 684, column: 33, scope: !1239)
!1532 = !DILocation(line: 684, column: 24, scope: !1239)
!1533 = !DILocation(line: 686, column: 17, scope: !1239)
!1534 = !DILocation(line: 0, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !147, line: 687, column: 19)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !147, line: 686, column: 17)
!1537 = distinct !DILexicalBlock(scope: !1239, file: !147, line: 686, column: 17)
!1538 = !DILocation(line: 0, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !147, line: 703, column: 21)
!1540 = !DILocation(line: 0, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !147, line: 696, column: 23)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !147, line: 695, column: 30)
!1543 = distinct !DILexicalBlock(scope: !1535, file: !147, line: 688, column: 25)
!1544 = !DILocation(line: 688, column: 43, scope: !1543)
!1545 = !DILocation(line: 690, column: 25, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !147, line: 690, column: 25)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !147, line: 689, column: 23)
!1548 = !DILocation(line: 690, column: 25, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1546, file: !147, line: 690, column: 25)
!1550 = !DILocation(line: 690, column: 25, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !147, line: 690, column: 25)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !147, line: 690, column: 25)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !147, line: 690, column: 25)
!1554 = !DILocation(line: 690, column: 25, scope: !1552)
!1555 = !DILocation(line: 690, column: 25, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !147, line: 690, column: 25)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !147, line: 690, column: 25)
!1558 = !DILocation(line: 690, column: 25, scope: !1557)
!1559 = !DILocation(line: 690, column: 25, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !147, line: 690, column: 25)
!1561 = distinct !DILexicalBlock(scope: !1553, file: !147, line: 690, column: 25)
!1562 = !DILocation(line: 690, column: 25, scope: !1561)
!1563 = !DILocation(line: 690, column: 25, scope: !1553)
!1564 = !DILocation(line: 690, column: 25, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !147, line: 690, column: 25)
!1566 = distinct !DILexicalBlock(scope: !1546, file: !147, line: 690, column: 25)
!1567 = !DILocation(line: 690, column: 25, scope: !1566)
!1568 = !DILocation(line: 691, column: 25, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !147, line: 691, column: 25)
!1570 = distinct !DILexicalBlock(scope: !1547, file: !147, line: 691, column: 25)
!1571 = !DILocation(line: 691, column: 25, scope: !1570)
!1572 = !DILocation(line: 692, column: 25, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !147, line: 692, column: 25)
!1574 = distinct !DILexicalBlock(scope: !1547, file: !147, line: 692, column: 25)
!1575 = !DILocation(line: 692, column: 25, scope: !1574)
!1576 = !DILocation(line: 693, column: 38, scope: !1547)
!1577 = !DILocation(line: 693, column: 33, scope: !1547)
!1578 = !DILocation(line: 694, column: 23, scope: !1547)
!1579 = !DILocation(line: 695, column: 30, scope: !1542)
!1580 = !DILocation(line: 695, column: 30, scope: !1543)
!1581 = !DILocation(line: 697, column: 25, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !147, line: 697, column: 25)
!1583 = distinct !DILexicalBlock(scope: !1541, file: !147, line: 697, column: 25)
!1584 = !DILocation(line: 697, column: 25, scope: !1583)
!1585 = !DILocation(line: 699, column: 23, scope: !1541)
!1586 = !DILocation(line: 0, scope: !1574)
!1587 = !DILocation(line: 0, scope: !1547)
!1588 = !DILocation(line: 0, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1323, file: !147, line: 418, column: 9)
!1590 = !DILocation(line: 0, scope: !1546)
!1591 = !DILocation(line: 700, column: 35, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1535, file: !147, line: 700, column: 25)
!1593 = !DILocation(line: 700, column: 30, scope: !1592)
!1594 = !DILocation(line: 700, column: 25, scope: !1535)
!1595 = !DILocation(line: 702, column: 21, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !147, line: 702, column: 21)
!1597 = distinct !DILexicalBlock(scope: !1535, file: !147, line: 702, column: 21)
!1598 = !DILocation(line: 702, column: 21, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !147, line: 702, column: 21)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !147, line: 702, column: 21)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !147, line: 702, column: 21)
!1602 = !DILocation(line: 702, column: 21, scope: !1600)
!1603 = !DILocation(line: 702, column: 21, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !147, line: 702, column: 21)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !147, line: 702, column: 21)
!1606 = !DILocation(line: 702, column: 21, scope: !1605)
!1607 = !DILocation(line: 702, column: 21, scope: !1601)
!1608 = !DILocation(line: 0, scope: !1583)
!1609 = !DILocation(line: 703, column: 21, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1539, file: !147, line: 703, column: 21)
!1611 = !DILocation(line: 703, column: 21, scope: !1539)
!1612 = !DILocation(line: 704, column: 25, scope: !1535)
!1613 = !DILocation(line: 686, column: 17, scope: !1536)
!1614 = distinct !{!1614, !1615, !1616}
!1615 = !DILocation(line: 686, column: 17, scope: !1537)
!1616 = !DILocation(line: 705, column: 19, scope: !1537)
!1617 = !DILocation(line: 0, scope: !1200)
!1618 = !DILocation(line: 416, column: 30, scope: !1323)
!1619 = !DILocation(line: 712, column: 34, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1198, file: !147, line: 712, column: 11)
!1621 = !DILocation(line: 714, column: 14, scope: !1620)
!1622 = !DILocation(line: 715, column: 14, scope: !1620)
!1623 = !DILocation(line: 715, column: 35, scope: !1620)
!1624 = !DILocation(line: 715, column: 17, scope: !1620)
!1625 = !DILocation(line: 715, column: 47, scope: !1620)
!1626 = !DILocation(line: 715, column: 65, scope: !1620)
!1627 = !DILocation(line: 716, column: 15, scope: !1620)
!1628 = !DILocation(line: 716, column: 11, scope: !1620)
!1629 = !DILocation(line: 712, column: 11, scope: !1198)
!1630 = !DILocation(line: 400, column: 10, scope: !1200)
!1631 = !DILocation(line: 0, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !147, line: 519, column: 13)
!1633 = distinct !DILexicalBlock(scope: !1207, file: !147, line: 518, column: 15)
!1634 = !DILocation(line: 720, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1198, file: !147, line: 720, column: 7)
!1636 = !DILocation(line: 720, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1635, file: !147, line: 720, column: 7)
!1638 = !DILocation(line: 720, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !147, line: 720, column: 7)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !147, line: 720, column: 7)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !147, line: 720, column: 7)
!1642 = !DILocation(line: 720, column: 7, scope: !1640)
!1643 = !DILocation(line: 720, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !147, line: 720, column: 7)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !147, line: 720, column: 7)
!1646 = !DILocation(line: 720, column: 7, scope: !1645)
!1647 = !DILocation(line: 720, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !147, line: 720, column: 7)
!1649 = distinct !DILexicalBlock(scope: !1641, file: !147, line: 720, column: 7)
!1650 = !DILocation(line: 720, column: 7, scope: !1649)
!1651 = !DILocation(line: 720, column: 7, scope: !1641)
!1652 = !DILocation(line: 720, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !147, line: 720, column: 7)
!1654 = distinct !DILexicalBlock(scope: !1635, file: !147, line: 720, column: 7)
!1655 = !DILocation(line: 720, column: 7, scope: !1654)
!1656 = !DILocation(line: 723, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !147, line: 723, column: 7)
!1658 = distinct !DILexicalBlock(scope: !1198, file: !147, line: 723, column: 7)
!1659 = !DILocation(line: 424, column: 9, scope: !1198)
!1660 = !DILocation(line: 723, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !147, line: 723, column: 7)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !147, line: 723, column: 7)
!1663 = distinct !DILexicalBlock(scope: !1657, file: !147, line: 723, column: 7)
!1664 = !DILocation(line: 723, column: 7, scope: !1662)
!1665 = !DILocation(line: 723, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !147, line: 723, column: 7)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !147, line: 723, column: 7)
!1668 = !DILocation(line: 723, column: 7, scope: !1667)
!1669 = !DILocation(line: 723, column: 7, scope: !1663)
!1670 = !DILocation(line: 724, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !147, line: 724, column: 7)
!1672 = distinct !DILexicalBlock(scope: !1198, file: !147, line: 724, column: 7)
!1673 = !DILocation(line: 724, column: 7, scope: !1672)
!1674 = !DILocation(line: 726, column: 13, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1198, file: !147, line: 726, column: 11)
!1676 = !DILocation(line: 726, column: 11, scope: !1198)
!1677 = !DILocation(line: 728, column: 5, scope: !1199)
!1678 = !DILocation(line: 400, column: 75, scope: !1199)
!1679 = !DILocation(line: 400, column: 3, scope: !1199)
!1680 = distinct !{!1680, !1317, !1681}
!1681 = !DILocation(line: 728, column: 5, scope: !1200)
!1682 = !DILocation(line: 730, column: 11, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1171, file: !147, line: 730, column: 7)
!1684 = !DILocation(line: 730, column: 16, scope: !1683)
!1685 = !DILocation(line: 738, column: 51, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1171, file: !147, line: 738, column: 7)
!1687 = !DILocation(line: 739, column: 10, scope: !1686)
!1688 = !DILocation(line: 741, column: 11, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !147, line: 741, column: 11)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !147, line: 740, column: 5)
!1691 = !DILocation(line: 741, column: 11, scope: !1690)
!1692 = !DILocation(line: 742, column: 16, scope: !1689)
!1693 = !DILocation(line: 742, column: 9, scope: !1689)
!1694 = !DILocation(line: 746, column: 18, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1689, file: !147, line: 746, column: 16)
!1696 = !DILocation(line: 746, column: 32, scope: !1695)
!1697 = !DILocation(line: 746, column: 29, scope: !1695)
!1698 = !DILocation(line: 755, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1171, file: !147, line: 755, column: 7)
!1700 = !DILocation(line: 755, column: 20, scope: !1699)
!1701 = !DILocation(line: 756, column: 12, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !147, line: 756, column: 5)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !147, line: 756, column: 5)
!1704 = !DILocation(line: 756, column: 5, scope: !1703)
!1705 = !DILocation(line: 757, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !147, line: 757, column: 7)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !147, line: 757, column: 7)
!1708 = !DILocation(line: 757, column: 7, scope: !1707)
!1709 = !DILocation(line: 756, column: 39, scope: !1702)
!1710 = distinct !{!1710, !1704, !1711}
!1711 = !DILocation(line: 757, column: 7, scope: !1703)
!1712 = !DILocation(line: 759, column: 11, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1171, file: !147, line: 759, column: 7)
!1714 = !DILocation(line: 759, column: 7, scope: !1171)
!1715 = !DILocation(line: 760, column: 5, scope: !1713)
!1716 = !DILocation(line: 760, column: 17, scope: !1713)
!1717 = !DILocation(line: 766, column: 21, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1171, file: !147, line: 766, column: 7)
!1719 = !DILocation(line: 766, column: 54, scope: !1718)
!1720 = !DILocation(line: 766, column: 51, scope: !1718)
!1721 = !DILocation(line: 770, column: 42, scope: !1171)
!1722 = !DILocation(line: 768, column: 10, scope: !1171)
!1723 = !DILocation(line: 768, column: 3, scope: !1171)
!1724 = !DILocation(line: 772, column: 1, scope: !1171)
!1725 = distinct !DISubprogram(name: "gettext_quote", scope: !147, file: !147, line: 207, type: !1726, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!6, !6, !105}
!1728 = !{!1729, !1730, !1731, !1732}
!1729 = !DILocalVariable(name: "msgid", arg: 1, scope: !1725, file: !147, line: 207, type: !6)
!1730 = !DILocalVariable(name: "s", arg: 2, scope: !1725, file: !147, line: 207, type: !105)
!1731 = !DILocalVariable(name: "translation", scope: !1725, file: !147, line: 209, type: !6)
!1732 = !DILocalVariable(name: "locale_code", scope: !1725, file: !147, line: 210, type: !6)
!1733 = !DILocation(line: 207, column: 28, scope: !1725)
!1734 = !DILocation(line: 207, column: 54, scope: !1725)
!1735 = !DILocation(line: 209, column: 29, scope: !1725)
!1736 = !DILocation(line: 209, column: 15, scope: !1725)
!1737 = !DILocation(line: 212, column: 19, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1725, file: !147, line: 212, column: 7)
!1739 = !DILocation(line: 212, column: 7, scope: !1725)
!1740 = !DILocation(line: 233, column: 17, scope: !1725)
!1741 = !DILocation(line: 210, column: 15, scope: !1725)
!1742 = !DILocalVariable(name: "s1", arg: 1, scope: !1743, file: !1744, line: 160, type: !6)
!1743 = distinct !DISubprogram(name: "strcaseeq0", scope: !1744, file: !1744, line: 160, type: !1745, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1747)
!1744 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1747 = !{!1742, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1748 = !DILocalVariable(name: "s2", arg: 2, scope: !1743, file: !1744, line: 160, type: !6)
!1749 = !DILocalVariable(name: "s20", arg: 3, scope: !1743, file: !1744, line: 160, type: !8)
!1750 = !DILocalVariable(name: "s21", arg: 4, scope: !1743, file: !1744, line: 160, type: !8)
!1751 = !DILocalVariable(name: "s22", arg: 5, scope: !1743, file: !1744, line: 160, type: !8)
!1752 = !DILocalVariable(name: "s23", arg: 6, scope: !1743, file: !1744, line: 160, type: !8)
!1753 = !DILocalVariable(name: "s24", arg: 7, scope: !1743, file: !1744, line: 160, type: !8)
!1754 = !DILocalVariable(name: "s25", arg: 8, scope: !1743, file: !1744, line: 160, type: !8)
!1755 = !DILocalVariable(name: "s26", arg: 9, scope: !1743, file: !1744, line: 160, type: !8)
!1756 = !DILocalVariable(name: "s27", arg: 10, scope: !1743, file: !1744, line: 160, type: !8)
!1757 = !DILocalVariable(name: "s28", arg: 11, scope: !1743, file: !1744, line: 160, type: !8)
!1758 = !DILocation(line: 160, column: 25, scope: !1743, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 234, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1725, file: !147, line: 234, column: 7)
!1761 = !DILocation(line: 160, column: 41, scope: !1743, inlinedAt: !1759)
!1762 = !DILocation(line: 160, column: 50, scope: !1743, inlinedAt: !1759)
!1763 = !DILocation(line: 160, column: 60, scope: !1743, inlinedAt: !1759)
!1764 = !DILocation(line: 160, column: 70, scope: !1743, inlinedAt: !1759)
!1765 = !DILocation(line: 160, column: 80, scope: !1743, inlinedAt: !1759)
!1766 = !DILocation(line: 160, column: 90, scope: !1743, inlinedAt: !1759)
!1767 = !DILocation(line: 160, column: 100, scope: !1743, inlinedAt: !1759)
!1768 = !DILocation(line: 160, column: 110, scope: !1743, inlinedAt: !1759)
!1769 = !DILocation(line: 160, column: 120, scope: !1743, inlinedAt: !1759)
!1770 = !DILocation(line: 160, column: 130, scope: !1743, inlinedAt: !1759)
!1771 = !DILocation(line: 162, column: 7, scope: !1772, inlinedAt: !1759)
!1772 = distinct !DILexicalBlock(scope: !1743, file: !1744, line: 162, column: 7)
!1773 = !DILocalVariable(name: "s1", arg: 1, scope: !1774, file: !1744, line: 146, type: !6)
!1774 = distinct !DISubprogram(name: "strcaseeq1", scope: !1744, file: !1744, line: 146, type: !1775, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1777 = !{!1773, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1778 = !DILocalVariable(name: "s2", arg: 2, scope: !1774, file: !1744, line: 146, type: !6)
!1779 = !DILocalVariable(name: "s21", arg: 3, scope: !1774, file: !1744, line: 146, type: !8)
!1780 = !DILocalVariable(name: "s22", arg: 4, scope: !1774, file: !1744, line: 146, type: !8)
!1781 = !DILocalVariable(name: "s23", arg: 5, scope: !1774, file: !1744, line: 146, type: !8)
!1782 = !DILocalVariable(name: "s24", arg: 6, scope: !1774, file: !1744, line: 146, type: !8)
!1783 = !DILocalVariable(name: "s25", arg: 7, scope: !1774, file: !1744, line: 146, type: !8)
!1784 = !DILocalVariable(name: "s26", arg: 8, scope: !1774, file: !1744, line: 146, type: !8)
!1785 = !DILocalVariable(name: "s27", arg: 9, scope: !1774, file: !1744, line: 146, type: !8)
!1786 = !DILocalVariable(name: "s28", arg: 10, scope: !1774, file: !1744, line: 146, type: !8)
!1787 = !DILocation(line: 146, column: 25, scope: !1774, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 167, column: 16, scope: !1789, inlinedAt: !1759)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !1744, line: 164, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1772, file: !1744, line: 163, column: 5)
!1791 = !DILocation(line: 146, column: 41, scope: !1774, inlinedAt: !1788)
!1792 = !DILocation(line: 146, column: 50, scope: !1774, inlinedAt: !1788)
!1793 = !DILocation(line: 146, column: 60, scope: !1774, inlinedAt: !1788)
!1794 = !DILocation(line: 146, column: 70, scope: !1774, inlinedAt: !1788)
!1795 = !DILocation(line: 146, column: 80, scope: !1774, inlinedAt: !1788)
!1796 = !DILocation(line: 146, column: 90, scope: !1774, inlinedAt: !1788)
!1797 = !DILocation(line: 146, column: 100, scope: !1774, inlinedAt: !1788)
!1798 = !DILocation(line: 146, column: 110, scope: !1774, inlinedAt: !1788)
!1799 = !DILocation(line: 146, column: 120, scope: !1774, inlinedAt: !1788)
!1800 = !DILocation(line: 148, column: 7, scope: !1801, inlinedAt: !1788)
!1801 = distinct !DILexicalBlock(scope: !1774, file: !1744, line: 148, column: 7)
!1802 = !DILocalVariable(name: "s1", arg: 1, scope: !1803, file: !1744, line: 132, type: !6)
!1803 = distinct !DISubprogram(name: "strcaseeq2", scope: !1744, file: !1744, line: 132, type: !1804, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1806 = !{!1802, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814}
!1807 = !DILocalVariable(name: "s2", arg: 2, scope: !1803, file: !1744, line: 132, type: !6)
!1808 = !DILocalVariable(name: "s22", arg: 3, scope: !1803, file: !1744, line: 132, type: !8)
!1809 = !DILocalVariable(name: "s23", arg: 4, scope: !1803, file: !1744, line: 132, type: !8)
!1810 = !DILocalVariable(name: "s24", arg: 5, scope: !1803, file: !1744, line: 132, type: !8)
!1811 = !DILocalVariable(name: "s25", arg: 6, scope: !1803, file: !1744, line: 132, type: !8)
!1812 = !DILocalVariable(name: "s26", arg: 7, scope: !1803, file: !1744, line: 132, type: !8)
!1813 = !DILocalVariable(name: "s27", arg: 8, scope: !1803, file: !1744, line: 132, type: !8)
!1814 = !DILocalVariable(name: "s28", arg: 9, scope: !1803, file: !1744, line: 132, type: !8)
!1815 = !DILocation(line: 132, column: 25, scope: !1803, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 153, column: 16, scope: !1817, inlinedAt: !1788)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !1744, line: 150, column: 11)
!1818 = distinct !DILexicalBlock(scope: !1801, file: !1744, line: 149, column: 5)
!1819 = !DILocation(line: 132, column: 41, scope: !1803, inlinedAt: !1816)
!1820 = !DILocation(line: 132, column: 50, scope: !1803, inlinedAt: !1816)
!1821 = !DILocation(line: 132, column: 60, scope: !1803, inlinedAt: !1816)
!1822 = !DILocation(line: 132, column: 70, scope: !1803, inlinedAt: !1816)
!1823 = !DILocation(line: 132, column: 80, scope: !1803, inlinedAt: !1816)
!1824 = !DILocation(line: 132, column: 90, scope: !1803, inlinedAt: !1816)
!1825 = !DILocation(line: 132, column: 100, scope: !1803, inlinedAt: !1816)
!1826 = !DILocation(line: 132, column: 110, scope: !1803, inlinedAt: !1816)
!1827 = !DILocation(line: 134, column: 7, scope: !1828, inlinedAt: !1816)
!1828 = distinct !DILexicalBlock(scope: !1803, file: !1744, line: 134, column: 7)
!1829 = !DILocalVariable(name: "s1", arg: 1, scope: !1830, file: !1744, line: 118, type: !6)
!1830 = distinct !DISubprogram(name: "strcaseeq3", scope: !1744, file: !1744, line: 118, type: !1831, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!1833 = !{!1829, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1834 = !DILocalVariable(name: "s2", arg: 2, scope: !1830, file: !1744, line: 118, type: !6)
!1835 = !DILocalVariable(name: "s23", arg: 3, scope: !1830, file: !1744, line: 118, type: !8)
!1836 = !DILocalVariable(name: "s24", arg: 4, scope: !1830, file: !1744, line: 118, type: !8)
!1837 = !DILocalVariable(name: "s25", arg: 5, scope: !1830, file: !1744, line: 118, type: !8)
!1838 = !DILocalVariable(name: "s26", arg: 6, scope: !1830, file: !1744, line: 118, type: !8)
!1839 = !DILocalVariable(name: "s27", arg: 7, scope: !1830, file: !1744, line: 118, type: !8)
!1840 = !DILocalVariable(name: "s28", arg: 8, scope: !1830, file: !1744, line: 118, type: !8)
!1841 = !DILocation(line: 118, column: 25, scope: !1830, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 139, column: 16, scope: !1843, inlinedAt: !1816)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !1744, line: 136, column: 11)
!1844 = distinct !DILexicalBlock(scope: !1828, file: !1744, line: 135, column: 5)
!1845 = !DILocation(line: 118, column: 41, scope: !1830, inlinedAt: !1842)
!1846 = !DILocation(line: 118, column: 50, scope: !1830, inlinedAt: !1842)
!1847 = !DILocation(line: 118, column: 60, scope: !1830, inlinedAt: !1842)
!1848 = !DILocation(line: 118, column: 70, scope: !1830, inlinedAt: !1842)
!1849 = !DILocation(line: 118, column: 80, scope: !1830, inlinedAt: !1842)
!1850 = !DILocation(line: 118, column: 90, scope: !1830, inlinedAt: !1842)
!1851 = !DILocation(line: 118, column: 100, scope: !1830, inlinedAt: !1842)
!1852 = !DILocation(line: 120, column: 7, scope: !1853, inlinedAt: !1842)
!1853 = distinct !DILexicalBlock(scope: !1830, file: !1744, line: 120, column: 7)
!1854 = !DILocation(line: 120, column: 7, scope: !1830, inlinedAt: !1842)
!1855 = !DILocalVariable(name: "s1", arg: 1, scope: !1856, file: !1744, line: 104, type: !6)
!1856 = distinct !DISubprogram(name: "strcaseeq4", scope: !1744, file: !1744, line: 104, type: !1857, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!1859 = !{!1855, !1860, !1861, !1862, !1863, !1864, !1865}
!1860 = !DILocalVariable(name: "s2", arg: 2, scope: !1856, file: !1744, line: 104, type: !6)
!1861 = !DILocalVariable(name: "s24", arg: 3, scope: !1856, file: !1744, line: 104, type: !8)
!1862 = !DILocalVariable(name: "s25", arg: 4, scope: !1856, file: !1744, line: 104, type: !8)
!1863 = !DILocalVariable(name: "s26", arg: 5, scope: !1856, file: !1744, line: 104, type: !8)
!1864 = !DILocalVariable(name: "s27", arg: 6, scope: !1856, file: !1744, line: 104, type: !8)
!1865 = !DILocalVariable(name: "s28", arg: 7, scope: !1856, file: !1744, line: 104, type: !8)
!1866 = !DILocation(line: 104, column: 25, scope: !1856, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 125, column: 16, scope: !1868, inlinedAt: !1842)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !1744, line: 122, column: 11)
!1869 = distinct !DILexicalBlock(scope: !1853, file: !1744, line: 121, column: 5)
!1870 = !DILocation(line: 104, column: 41, scope: !1856, inlinedAt: !1867)
!1871 = !DILocation(line: 104, column: 50, scope: !1856, inlinedAt: !1867)
!1872 = !DILocation(line: 104, column: 60, scope: !1856, inlinedAt: !1867)
!1873 = !DILocation(line: 104, column: 70, scope: !1856, inlinedAt: !1867)
!1874 = !DILocation(line: 104, column: 80, scope: !1856, inlinedAt: !1867)
!1875 = !DILocation(line: 104, column: 90, scope: !1856, inlinedAt: !1867)
!1876 = !DILocation(line: 106, column: 7, scope: !1877, inlinedAt: !1867)
!1877 = distinct !DILexicalBlock(scope: !1856, file: !1744, line: 106, column: 7)
!1878 = !DILocation(line: 106, column: 7, scope: !1856, inlinedAt: !1867)
!1879 = !DILocalVariable(name: "s1", arg: 1, scope: !1880, file: !1744, line: 90, type: !6)
!1880 = distinct !DISubprogram(name: "strcaseeq5", scope: !1744, file: !1744, line: 90, type: !1881, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!18, !6, !6, !8, !8, !8, !8}
!1883 = !{!1879, !1884, !1885, !1886, !1887, !1888}
!1884 = !DILocalVariable(name: "s2", arg: 2, scope: !1880, file: !1744, line: 90, type: !6)
!1885 = !DILocalVariable(name: "s25", arg: 3, scope: !1880, file: !1744, line: 90, type: !8)
!1886 = !DILocalVariable(name: "s26", arg: 4, scope: !1880, file: !1744, line: 90, type: !8)
!1887 = !DILocalVariable(name: "s27", arg: 5, scope: !1880, file: !1744, line: 90, type: !8)
!1888 = !DILocalVariable(name: "s28", arg: 6, scope: !1880, file: !1744, line: 90, type: !8)
!1889 = !DILocation(line: 90, column: 25, scope: !1880, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 111, column: 16, scope: !1891, inlinedAt: !1867)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !1744, line: 108, column: 11)
!1892 = distinct !DILexicalBlock(scope: !1877, file: !1744, line: 107, column: 5)
!1893 = !DILocation(line: 90, column: 41, scope: !1880, inlinedAt: !1890)
!1894 = !DILocation(line: 90, column: 50, scope: !1880, inlinedAt: !1890)
!1895 = !DILocation(line: 90, column: 60, scope: !1880, inlinedAt: !1890)
!1896 = !DILocation(line: 90, column: 70, scope: !1880, inlinedAt: !1890)
!1897 = !DILocation(line: 90, column: 80, scope: !1880, inlinedAt: !1890)
!1898 = !DILocation(line: 92, column: 7, scope: !1899, inlinedAt: !1890)
!1899 = distinct !DILexicalBlock(scope: !1880, file: !1744, line: 92, column: 7)
!1900 = !DILocation(line: 92, column: 7, scope: !1880, inlinedAt: !1890)
!1901 = !DILocation(line: 235, column: 12, scope: !1760)
!1902 = !DILocation(line: 235, column: 21, scope: !1760)
!1903 = !DILocation(line: 235, column: 5, scope: !1760)
!1904 = !DILocation(line: 146, column: 25, scope: !1774, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 167, column: 16, scope: !1789, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 236, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1725, file: !147, line: 236, column: 7)
!1908 = !DILocation(line: 146, column: 41, scope: !1774, inlinedAt: !1905)
!1909 = !DILocation(line: 146, column: 50, scope: !1774, inlinedAt: !1905)
!1910 = !DILocation(line: 146, column: 60, scope: !1774, inlinedAt: !1905)
!1911 = !DILocation(line: 146, column: 70, scope: !1774, inlinedAt: !1905)
!1912 = !DILocation(line: 146, column: 80, scope: !1774, inlinedAt: !1905)
!1913 = !DILocation(line: 146, column: 90, scope: !1774, inlinedAt: !1905)
!1914 = !DILocation(line: 146, column: 100, scope: !1774, inlinedAt: !1905)
!1915 = !DILocation(line: 146, column: 110, scope: !1774, inlinedAt: !1905)
!1916 = !DILocation(line: 146, column: 120, scope: !1774, inlinedAt: !1905)
!1917 = !DILocation(line: 148, column: 7, scope: !1801, inlinedAt: !1905)
!1918 = !DILocation(line: 132, column: 25, scope: !1803, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 153, column: 16, scope: !1817, inlinedAt: !1905)
!1920 = !DILocation(line: 132, column: 41, scope: !1803, inlinedAt: !1919)
!1921 = !DILocation(line: 132, column: 50, scope: !1803, inlinedAt: !1919)
!1922 = !DILocation(line: 132, column: 60, scope: !1803, inlinedAt: !1919)
!1923 = !DILocation(line: 132, column: 70, scope: !1803, inlinedAt: !1919)
!1924 = !DILocation(line: 132, column: 80, scope: !1803, inlinedAt: !1919)
!1925 = !DILocation(line: 132, column: 90, scope: !1803, inlinedAt: !1919)
!1926 = !DILocation(line: 132, column: 100, scope: !1803, inlinedAt: !1919)
!1927 = !DILocation(line: 132, column: 110, scope: !1803, inlinedAt: !1919)
!1928 = !DILocation(line: 134, column: 7, scope: !1828, inlinedAt: !1919)
!1929 = !DILocation(line: 134, column: 7, scope: !1803, inlinedAt: !1919)
!1930 = !DILocation(line: 118, column: 25, scope: !1830, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 139, column: 16, scope: !1843, inlinedAt: !1919)
!1932 = !DILocation(line: 118, column: 41, scope: !1830, inlinedAt: !1931)
!1933 = !DILocation(line: 118, column: 50, scope: !1830, inlinedAt: !1931)
!1934 = !DILocation(line: 118, column: 60, scope: !1830, inlinedAt: !1931)
!1935 = !DILocation(line: 118, column: 70, scope: !1830, inlinedAt: !1931)
!1936 = !DILocation(line: 118, column: 80, scope: !1830, inlinedAt: !1931)
!1937 = !DILocation(line: 118, column: 90, scope: !1830, inlinedAt: !1931)
!1938 = !DILocation(line: 118, column: 100, scope: !1830, inlinedAt: !1931)
!1939 = !DILocation(line: 120, column: 7, scope: !1853, inlinedAt: !1931)
!1940 = !DILocation(line: 120, column: 7, scope: !1830, inlinedAt: !1931)
!1941 = !DILocation(line: 104, column: 25, scope: !1856, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 125, column: 16, scope: !1868, inlinedAt: !1931)
!1943 = !DILocation(line: 104, column: 41, scope: !1856, inlinedAt: !1942)
!1944 = !DILocation(line: 104, column: 50, scope: !1856, inlinedAt: !1942)
!1945 = !DILocation(line: 104, column: 60, scope: !1856, inlinedAt: !1942)
!1946 = !DILocation(line: 104, column: 70, scope: !1856, inlinedAt: !1942)
!1947 = !DILocation(line: 104, column: 80, scope: !1856, inlinedAt: !1942)
!1948 = !DILocation(line: 104, column: 90, scope: !1856, inlinedAt: !1942)
!1949 = !DILocation(line: 106, column: 7, scope: !1877, inlinedAt: !1942)
!1950 = !DILocation(line: 106, column: 7, scope: !1856, inlinedAt: !1942)
!1951 = !DILocation(line: 90, column: 25, scope: !1880, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 111, column: 16, scope: !1891, inlinedAt: !1942)
!1953 = !DILocation(line: 90, column: 41, scope: !1880, inlinedAt: !1952)
!1954 = !DILocation(line: 90, column: 50, scope: !1880, inlinedAt: !1952)
!1955 = !DILocation(line: 90, column: 60, scope: !1880, inlinedAt: !1952)
!1956 = !DILocation(line: 90, column: 70, scope: !1880, inlinedAt: !1952)
!1957 = !DILocation(line: 90, column: 80, scope: !1880, inlinedAt: !1952)
!1958 = !DILocation(line: 92, column: 7, scope: !1899, inlinedAt: !1952)
!1959 = !DILocation(line: 92, column: 7, scope: !1880, inlinedAt: !1952)
!1960 = !DILocalVariable(name: "s1", arg: 1, scope: !1961, file: !1744, line: 76, type: !6)
!1961 = distinct !DISubprogram(name: "strcaseeq6", scope: !1744, file: !1744, line: 76, type: !1962, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!18, !6, !6, !8, !8, !8}
!1964 = !{!1960, !1965, !1966, !1967, !1968}
!1965 = !DILocalVariable(name: "s2", arg: 2, scope: !1961, file: !1744, line: 76, type: !6)
!1966 = !DILocalVariable(name: "s26", arg: 3, scope: !1961, file: !1744, line: 76, type: !8)
!1967 = !DILocalVariable(name: "s27", arg: 4, scope: !1961, file: !1744, line: 76, type: !8)
!1968 = !DILocalVariable(name: "s28", arg: 5, scope: !1961, file: !1744, line: 76, type: !8)
!1969 = !DILocation(line: 76, column: 25, scope: !1961, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 97, column: 16, scope: !1971, inlinedAt: !1952)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !1744, line: 94, column: 11)
!1972 = distinct !DILexicalBlock(scope: !1899, file: !1744, line: 93, column: 5)
!1973 = !DILocation(line: 76, column: 41, scope: !1961, inlinedAt: !1970)
!1974 = !DILocation(line: 76, column: 50, scope: !1961, inlinedAt: !1970)
!1975 = !DILocation(line: 76, column: 60, scope: !1961, inlinedAt: !1970)
!1976 = !DILocation(line: 76, column: 70, scope: !1961, inlinedAt: !1970)
!1977 = !DILocation(line: 78, column: 7, scope: !1978, inlinedAt: !1970)
!1978 = distinct !DILexicalBlock(scope: !1961, file: !1744, line: 78, column: 7)
!1979 = !DILocation(line: 78, column: 7, scope: !1961, inlinedAt: !1970)
!1980 = !DILocalVariable(name: "s1", arg: 1, scope: !1981, file: !1744, line: 62, type: !6)
!1981 = distinct !DISubprogram(name: "strcaseeq7", scope: !1744, file: !1744, line: 62, type: !1982, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!18, !6, !6, !8, !8}
!1984 = !{!1980, !1985, !1986, !1987}
!1985 = !DILocalVariable(name: "s2", arg: 2, scope: !1981, file: !1744, line: 62, type: !6)
!1986 = !DILocalVariable(name: "s27", arg: 3, scope: !1981, file: !1744, line: 62, type: !8)
!1987 = !DILocalVariable(name: "s28", arg: 4, scope: !1981, file: !1744, line: 62, type: !8)
!1988 = !DILocation(line: 62, column: 25, scope: !1981, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 83, column: 16, scope: !1990, inlinedAt: !1970)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !1744, line: 80, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1978, file: !1744, line: 79, column: 5)
!1992 = !DILocation(line: 62, column: 41, scope: !1981, inlinedAt: !1989)
!1993 = !DILocation(line: 62, column: 50, scope: !1981, inlinedAt: !1989)
!1994 = !DILocation(line: 62, column: 60, scope: !1981, inlinedAt: !1989)
!1995 = !DILocation(line: 64, column: 7, scope: !1996, inlinedAt: !1989)
!1996 = distinct !DILexicalBlock(scope: !1981, file: !1744, line: 64, column: 7)
!1997 = !DILocation(line: 236, column: 7, scope: !1725)
!1998 = !DILocation(line: 237, column: 12, scope: !1907)
!1999 = !DILocation(line: 237, column: 21, scope: !1907)
!2000 = !DILocation(line: 237, column: 5, scope: !1907)
!2001 = !DILocation(line: 239, column: 13, scope: !1725)
!2002 = !DILocation(line: 239, column: 11, scope: !1725)
!2003 = !DILocation(line: 239, column: 3, scope: !1725)
!2004 = !DILocation(line: 0, scope: !1725)
!2005 = !DILocation(line: 240, column: 1, scope: !1725)
!2006 = distinct !DISubprogram(name: "quotearg_alloc", scope: !147, file: !147, line: 799, type: !2007, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!34, !6, !141, !1043}
!2009 = !{!2010, !2011, !2012}
!2010 = !DILocalVariable(name: "arg", arg: 1, scope: !2006, file: !147, line: 799, type: !6)
!2011 = !DILocalVariable(name: "argsize", arg: 2, scope: !2006, file: !147, line: 799, type: !141)
!2012 = !DILocalVariable(name: "o", arg: 3, scope: !2006, file: !147, line: 800, type: !1043)
!2013 = !DILocation(line: 799, column: 29, scope: !2006)
!2014 = !DILocation(line: 799, column: 41, scope: !2006)
!2015 = !DILocation(line: 800, column: 47, scope: !2006)
!2016 = !DILocalVariable(name: "arg", arg: 1, scope: !2017, file: !147, line: 812, type: !6)
!2017 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !147, file: !147, line: 812, type: !2018, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!34, !6, !141, !211, !1043}
!2020 = !{!2016, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2021 = !DILocalVariable(name: "argsize", arg: 2, scope: !2017, file: !147, line: 812, type: !141)
!2022 = !DILocalVariable(name: "size", arg: 3, scope: !2017, file: !147, line: 812, type: !211)
!2023 = !DILocalVariable(name: "o", arg: 4, scope: !2017, file: !147, line: 813, type: !1043)
!2024 = !DILocalVariable(name: "p", scope: !2017, file: !147, line: 815, type: !1043)
!2025 = !DILocalVariable(name: "e", scope: !2017, file: !147, line: 816, type: !18)
!2026 = !DILocalVariable(name: "flags", scope: !2017, file: !147, line: 818, type: !18)
!2027 = !DILocalVariable(name: "bufsize", scope: !2017, file: !147, line: 819, type: !141)
!2028 = !DILocalVariable(name: "buf", scope: !2017, file: !147, line: 823, type: !34)
!2029 = !DILocation(line: 812, column: 33, scope: !2017, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 802, column: 10, scope: !2006)
!2031 = !DILocation(line: 812, column: 45, scope: !2017, inlinedAt: !2030)
!2032 = !DILocation(line: 812, column: 62, scope: !2017, inlinedAt: !2030)
!2033 = !DILocation(line: 813, column: 51, scope: !2017, inlinedAt: !2030)
!2034 = !DILocation(line: 815, column: 37, scope: !2017, inlinedAt: !2030)
!2035 = !DILocation(line: 815, column: 33, scope: !2017, inlinedAt: !2030)
!2036 = !DILocation(line: 816, column: 11, scope: !2017, inlinedAt: !2030)
!2037 = !DILocation(line: 816, column: 7, scope: !2017, inlinedAt: !2030)
!2038 = !DILocation(line: 818, column: 18, scope: !2017, inlinedAt: !2030)
!2039 = !DILocation(line: 818, column: 24, scope: !2017, inlinedAt: !2030)
!2040 = !DILocation(line: 818, column: 7, scope: !2017, inlinedAt: !2030)
!2041 = !DILocation(line: 819, column: 69, scope: !2017, inlinedAt: !2030)
!2042 = !DILocation(line: 820, column: 53, scope: !2017, inlinedAt: !2030)
!2043 = !DILocation(line: 821, column: 49, scope: !2017, inlinedAt: !2030)
!2044 = !DILocation(line: 822, column: 49, scope: !2017, inlinedAt: !2030)
!2045 = !DILocation(line: 819, column: 20, scope: !2017, inlinedAt: !2030)
!2046 = !DILocation(line: 822, column: 62, scope: !2017, inlinedAt: !2030)
!2047 = !DILocation(line: 819, column: 10, scope: !2017, inlinedAt: !2030)
!2048 = !DILocalVariable(name: "n", arg: 1, scope: !2049, file: !207, line: 216, type: !141)
!2049 = distinct !DISubprogram(name: "xcharalloc", scope: !207, file: !207, line: 216, type: !2050, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!34, !141}
!2052 = !{!2048}
!2053 = !DILocation(line: 216, column: 20, scope: !2049, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 823, column: 15, scope: !2017, inlinedAt: !2030)
!2055 = !DILocation(line: 218, column: 10, scope: !2049, inlinedAt: !2054)
!2056 = !DILocation(line: 823, column: 9, scope: !2017, inlinedAt: !2030)
!2057 = !DILocation(line: 824, column: 60, scope: !2017, inlinedAt: !2030)
!2058 = !DILocation(line: 826, column: 32, scope: !2017, inlinedAt: !2030)
!2059 = !DILocation(line: 826, column: 47, scope: !2017, inlinedAt: !2030)
!2060 = !DILocation(line: 824, column: 3, scope: !2017, inlinedAt: !2030)
!2061 = !DILocation(line: 827, column: 9, scope: !2017, inlinedAt: !2030)
!2062 = !DILocation(line: 802, column: 3, scope: !2006)
!2063 = !DILocation(line: 812, column: 33, scope: !2017)
!2064 = !DILocation(line: 812, column: 45, scope: !2017)
!2065 = !DILocation(line: 812, column: 62, scope: !2017)
!2066 = !DILocation(line: 813, column: 51, scope: !2017)
!2067 = !DILocation(line: 815, column: 37, scope: !2017)
!2068 = !DILocation(line: 815, column: 33, scope: !2017)
!2069 = !DILocation(line: 816, column: 11, scope: !2017)
!2070 = !DILocation(line: 816, column: 7, scope: !2017)
!2071 = !DILocation(line: 818, column: 18, scope: !2017)
!2072 = !DILocation(line: 818, column: 27, scope: !2017)
!2073 = !DILocation(line: 818, column: 24, scope: !2017)
!2074 = !DILocation(line: 818, column: 7, scope: !2017)
!2075 = !DILocation(line: 819, column: 69, scope: !2017)
!2076 = !DILocation(line: 820, column: 53, scope: !2017)
!2077 = !DILocation(line: 821, column: 49, scope: !2017)
!2078 = !DILocation(line: 822, column: 49, scope: !2017)
!2079 = !DILocation(line: 819, column: 20, scope: !2017)
!2080 = !DILocation(line: 822, column: 62, scope: !2017)
!2081 = !DILocation(line: 819, column: 10, scope: !2017)
!2082 = !DILocation(line: 216, column: 20, scope: !2049, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 823, column: 15, scope: !2017)
!2084 = !DILocation(line: 218, column: 10, scope: !2049, inlinedAt: !2083)
!2085 = !DILocation(line: 823, column: 9, scope: !2017)
!2086 = !DILocation(line: 824, column: 60, scope: !2017)
!2087 = !DILocation(line: 826, column: 32, scope: !2017)
!2088 = !DILocation(line: 826, column: 47, scope: !2017)
!2089 = !DILocation(line: 824, column: 3, scope: !2017)
!2090 = !DILocation(line: 827, column: 9, scope: !2017)
!2091 = !DILocation(line: 828, column: 7, scope: !2017)
!2092 = !DILocation(line: 829, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2017, file: !147, line: 828, column: 7)
!2094 = !{!2095, !2095, i64 0}
!2095 = !{!"long", !691, i64 0}
!2096 = !DILocation(line: 829, column: 5, scope: !2093)
!2097 = !DILocation(line: 830, column: 3, scope: !2017)
!2098 = distinct !DISubprogram(name: "quotearg_free", scope: !147, file: !147, line: 848, type: !895, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2099)
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "sv", scope: !2098, file: !147, line: 850, type: !173)
!2101 = !DILocalVariable(name: "i", scope: !2098, file: !147, line: 851, type: !18)
!2102 = !DILocation(line: 850, column: 24, scope: !2098)
!2103 = !DILocation(line: 850, column: 19, scope: !2098)
!2104 = !DILocation(line: 851, column: 7, scope: !2098)
!2105 = !DILocation(line: 852, column: 19, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !147, line: 852, column: 3)
!2107 = distinct !DILexicalBlock(scope: !2098, file: !147, line: 852, column: 3)
!2108 = !DILocation(line: 852, column: 17, scope: !2106)
!2109 = !DILocation(line: 852, column: 3, scope: !2107)
!2110 = !DILocation(line: 853, column: 17, scope: !2106)
!2111 = !{!2112, !690, i64 8}
!2112 = !{!"slotvec", !2095, i64 0, !690, i64 8}
!2113 = !DILocation(line: 853, column: 5, scope: !2106)
!2114 = !DILocation(line: 852, column: 28, scope: !2106)
!2115 = distinct !{!2115, !2109, !2116}
!2116 = !DILocation(line: 853, column: 20, scope: !2107)
!2117 = !DILocation(line: 854, column: 13, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2098, file: !147, line: 854, column: 7)
!2119 = !DILocation(line: 854, column: 17, scope: !2118)
!2120 = !DILocation(line: 854, column: 7, scope: !2098)
!2121 = !DILocation(line: 856, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !147, line: 855, column: 5)
!2123 = !DILocation(line: 857, column: 21, scope: !2122)
!2124 = !{!2112, !2095, i64 0}
!2125 = !DILocation(line: 858, column: 20, scope: !2122)
!2126 = !DILocation(line: 859, column: 5, scope: !2122)
!2127 = !DILocation(line: 860, column: 10, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2098, file: !147, line: 860, column: 7)
!2129 = !DILocation(line: 860, column: 7, scope: !2098)
!2130 = !DILocation(line: 862, column: 13, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2128, file: !147, line: 861, column: 5)
!2132 = !DILocation(line: 862, column: 7, scope: !2131)
!2133 = !DILocation(line: 863, column: 15, scope: !2131)
!2134 = !DILocation(line: 864, column: 5, scope: !2131)
!2135 = !DILocation(line: 865, column: 10, scope: !2098)
!2136 = !DILocation(line: 866, column: 1, scope: !2098)
!2137 = distinct !DISubprogram(name: "quotearg_n", scope: !147, file: !147, line: 931, type: !2138, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!34, !18, !6}
!2140 = !{!2141, !2142}
!2141 = !DILocalVariable(name: "n", arg: 1, scope: !2137, file: !147, line: 931, type: !18)
!2142 = !DILocalVariable(name: "arg", arg: 2, scope: !2137, file: !147, line: 931, type: !6)
!2143 = !DILocation(line: 931, column: 17, scope: !2137)
!2144 = !DILocation(line: 931, column: 32, scope: !2137)
!2145 = !DILocation(line: 933, column: 10, scope: !2137)
!2146 = !DILocation(line: 933, column: 3, scope: !2137)
!2147 = distinct !DISubprogram(name: "quotearg_n_options", scope: !147, file: !147, line: 877, type: !2148, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!34, !18, !6, !141, !1043}
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2160, !2161, !2163, !2164, !2165}
!2151 = !DILocalVariable(name: "n", arg: 1, scope: !2147, file: !147, line: 877, type: !18)
!2152 = !DILocalVariable(name: "arg", arg: 2, scope: !2147, file: !147, line: 877, type: !6)
!2153 = !DILocalVariable(name: "argsize", arg: 3, scope: !2147, file: !147, line: 877, type: !141)
!2154 = !DILocalVariable(name: "options", arg: 4, scope: !2147, file: !147, line: 878, type: !1043)
!2155 = !DILocalVariable(name: "e", scope: !2147, file: !147, line: 880, type: !18)
!2156 = !DILocalVariable(name: "sv", scope: !2147, file: !147, line: 882, type: !173)
!2157 = !DILocalVariable(name: "preallocated", scope: !2158, file: !147, line: 889, type: !69)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !147, line: 888, column: 5)
!2159 = distinct !DILexicalBlock(scope: !2147, file: !147, line: 887, column: 7)
!2160 = !DILocalVariable(name: "nmax", scope: !2158, file: !147, line: 890, type: !18)
!2161 = !DILocalVariable(name: "size", scope: !2162, file: !147, line: 903, type: !141)
!2162 = distinct !DILexicalBlock(scope: !2147, file: !147, line: 902, column: 3)
!2163 = !DILocalVariable(name: "val", scope: !2162, file: !147, line: 904, type: !34)
!2164 = !DILocalVariable(name: "flags", scope: !2162, file: !147, line: 906, type: !18)
!2165 = !DILocalVariable(name: "qsize", scope: !2162, file: !147, line: 907, type: !141)
!2166 = !DILocation(line: 877, column: 25, scope: !2147)
!2167 = !DILocation(line: 877, column: 40, scope: !2147)
!2168 = !DILocation(line: 877, column: 52, scope: !2147)
!2169 = !DILocation(line: 878, column: 51, scope: !2147)
!2170 = !DILocation(line: 880, column: 11, scope: !2147)
!2171 = !DILocation(line: 880, column: 7, scope: !2147)
!2172 = !DILocation(line: 882, column: 24, scope: !2147)
!2173 = !DILocation(line: 882, column: 19, scope: !2147)
!2174 = !DILocation(line: 884, column: 9, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2147, file: !147, line: 884, column: 7)
!2176 = !DILocation(line: 884, column: 7, scope: !2147)
!2177 = !DILocation(line: 885, column: 5, scope: !2175)
!2178 = !DILocation(line: 887, column: 7, scope: !2159)
!2179 = !DILocation(line: 887, column: 14, scope: !2159)
!2180 = !DILocation(line: 887, column: 7, scope: !2147)
!2181 = !DILocation(line: 889, column: 31, scope: !2158)
!2182 = !DILocation(line: 890, column: 11, scope: !2158)
!2183 = !DILocation(line: 892, column: 16, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2158, file: !147, line: 892, column: 11)
!2185 = !DILocation(line: 892, column: 11, scope: !2158)
!2186 = !DILocation(line: 893, column: 9, scope: !2184)
!2187 = !DILocation(line: 895, column: 32, scope: !2158)
!2188 = !DILocation(line: 895, column: 61, scope: !2158)
!2189 = !DILocation(line: 895, column: 58, scope: !2158)
!2190 = !DILocation(line: 895, column: 66, scope: !2158)
!2191 = !DILocation(line: 895, column: 22, scope: !2158)
!2192 = !DILocation(line: 895, column: 15, scope: !2158)
!2193 = !DILocation(line: 896, column: 11, scope: !2158)
!2194 = !DILocation(line: 897, column: 15, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2158, file: !147, line: 896, column: 11)
!2196 = !{i64 0, i64 8, !2094, i64 8, i64 8, !689}
!2197 = !DILocation(line: 897, column: 9, scope: !2195)
!2198 = !DILocation(line: 898, column: 20, scope: !2158)
!2199 = !DILocation(line: 898, column: 18, scope: !2158)
!2200 = !DILocation(line: 898, column: 7, scope: !2158)
!2201 = !DILocation(line: 898, column: 38, scope: !2158)
!2202 = !DILocation(line: 898, column: 31, scope: !2158)
!2203 = !DILocation(line: 898, column: 48, scope: !2158)
!2204 = !DILocation(line: 899, column: 14, scope: !2158)
!2205 = !DILocation(line: 900, column: 5, scope: !2158)
!2206 = !DILocation(line: 0, scope: !2147)
!2207 = !DILocation(line: 903, column: 19, scope: !2162)
!2208 = !DILocation(line: 903, column: 25, scope: !2162)
!2209 = !DILocation(line: 903, column: 12, scope: !2162)
!2210 = !DILocation(line: 904, column: 23, scope: !2162)
!2211 = !DILocation(line: 904, column: 11, scope: !2162)
!2212 = !DILocation(line: 906, column: 26, scope: !2162)
!2213 = !DILocation(line: 906, column: 32, scope: !2162)
!2214 = !DILocation(line: 906, column: 9, scope: !2162)
!2215 = !DILocation(line: 908, column: 55, scope: !2162)
!2216 = !DILocation(line: 909, column: 46, scope: !2162)
!2217 = !DILocation(line: 910, column: 55, scope: !2162)
!2218 = !DILocation(line: 911, column: 55, scope: !2162)
!2219 = !DILocation(line: 907, column: 20, scope: !2162)
!2220 = !DILocation(line: 907, column: 12, scope: !2162)
!2221 = !DILocation(line: 913, column: 14, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2162, file: !147, line: 913, column: 9)
!2223 = !DILocation(line: 913, column: 9, scope: !2162)
!2224 = !DILocation(line: 915, column: 35, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !147, line: 914, column: 7)
!2226 = !DILocation(line: 915, column: 20, scope: !2225)
!2227 = !DILocation(line: 916, column: 17, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !147, line: 916, column: 13)
!2229 = !DILocation(line: 916, column: 13, scope: !2225)
!2230 = !DILocation(line: 917, column: 11, scope: !2228)
!2231 = !DILocation(line: 216, column: 20, scope: !2049, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 918, column: 27, scope: !2225)
!2233 = !DILocation(line: 218, column: 10, scope: !2049, inlinedAt: !2232)
!2234 = !DILocation(line: 918, column: 19, scope: !2225)
!2235 = !DILocation(line: 919, column: 69, scope: !2225)
!2236 = !DILocation(line: 921, column: 44, scope: !2225)
!2237 = !DILocation(line: 922, column: 44, scope: !2225)
!2238 = !DILocation(line: 919, column: 9, scope: !2225)
!2239 = !DILocation(line: 923, column: 7, scope: !2225)
!2240 = !DILocation(line: 0, scope: !2162)
!2241 = !DILocation(line: 925, column: 11, scope: !2162)
!2242 = !DILocation(line: 926, column: 5, scope: !2162)
!2243 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !147, file: !147, line: 937, type: !2244, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!34, !18, !6, !141}
!2246 = !{!2247, !2248, !2249}
!2247 = !DILocalVariable(name: "n", arg: 1, scope: !2243, file: !147, line: 937, type: !18)
!2248 = !DILocalVariable(name: "arg", arg: 2, scope: !2243, file: !147, line: 937, type: !6)
!2249 = !DILocalVariable(name: "argsize", arg: 3, scope: !2243, file: !147, line: 937, type: !141)
!2250 = !DILocation(line: 937, column: 21, scope: !2243)
!2251 = !DILocation(line: 937, column: 36, scope: !2243)
!2252 = !DILocation(line: 937, column: 48, scope: !2243)
!2253 = !DILocation(line: 939, column: 10, scope: !2243)
!2254 = !DILocation(line: 939, column: 3, scope: !2243)
!2255 = distinct !DISubprogram(name: "quotearg", scope: !147, file: !147, line: 943, type: !2256, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!34, !6}
!2258 = !{!2259}
!2259 = !DILocalVariable(name: "arg", arg: 1, scope: !2255, file: !147, line: 943, type: !6)
!2260 = !DILocation(line: 943, column: 23, scope: !2255)
!2261 = !DILocation(line: 931, column: 17, scope: !2137, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 945, column: 10, scope: !2255)
!2263 = !DILocation(line: 931, column: 32, scope: !2137, inlinedAt: !2262)
!2264 = !DILocation(line: 933, column: 10, scope: !2137, inlinedAt: !2262)
!2265 = !DILocation(line: 945, column: 3, scope: !2255)
!2266 = distinct !DISubprogram(name: "quotearg_mem", scope: !147, file: !147, line: 949, type: !2267, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!34, !6, !141}
!2269 = !{!2270, !2271}
!2270 = !DILocalVariable(name: "arg", arg: 1, scope: !2266, file: !147, line: 949, type: !6)
!2271 = !DILocalVariable(name: "argsize", arg: 2, scope: !2266, file: !147, line: 949, type: !141)
!2272 = !DILocation(line: 949, column: 27, scope: !2266)
!2273 = !DILocation(line: 949, column: 39, scope: !2266)
!2274 = !DILocation(line: 937, column: 21, scope: !2243, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 951, column: 10, scope: !2266)
!2276 = !DILocation(line: 937, column: 36, scope: !2243, inlinedAt: !2275)
!2277 = !DILocation(line: 937, column: 48, scope: !2243, inlinedAt: !2275)
!2278 = !DILocation(line: 939, column: 10, scope: !2243, inlinedAt: !2275)
!2279 = !DILocation(line: 951, column: 3, scope: !2266)
!2280 = distinct !DISubprogram(name: "quotearg_n_style", scope: !147, file: !147, line: 955, type: !2281, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!34, !18, !105, !6}
!2283 = !{!2284, !2285, !2286, !2287}
!2284 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !147, line: 955, type: !18)
!2285 = !DILocalVariable(name: "s", arg: 2, scope: !2280, file: !147, line: 955, type: !105)
!2286 = !DILocalVariable(name: "arg", arg: 3, scope: !2280, file: !147, line: 955, type: !6)
!2287 = !DILocalVariable(name: "o", scope: !2280, file: !147, line: 957, type: !1044)
!2288 = !DILocation(line: 955, column: 23, scope: !2280)
!2289 = !DILocation(line: 955, column: 45, scope: !2280)
!2290 = !DILocation(line: 955, column: 60, scope: !2280)
!2291 = !DILocation(line: 957, column: 3, scope: !2280)
!2292 = !DILocation(line: 957, column: 32, scope: !2280)
!2293 = !DILocalVariable(name: "style", arg: 1, scope: !2294, file: !147, line: 193, type: !105)
!2294 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !147, file: !147, line: 193, type: !2295, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2297)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!154, !105}
!2297 = !{!2293, !2298}
!2298 = !DILocalVariable(name: "o", scope: !2294, file: !147, line: 195, type: !154)
!2299 = !DILocation(line: 193, column: 48, scope: !2294, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 957, column: 36, scope: !2280)
!2301 = !DILocation(line: 195, column: 26, scope: !2294, inlinedAt: !2300)
!2302 = !{!2303}
!2303 = distinct !{!2303, !2304, !"quoting_options_from_style: argument 0"}
!2304 = distinct !{!2304, !"quoting_options_from_style"}
!2305 = !DILocation(line: 196, column: 13, scope: !2306, inlinedAt: !2300)
!2306 = distinct !DILexicalBlock(scope: !2294, file: !147, line: 196, column: 7)
!2307 = !DILocation(line: 196, column: 7, scope: !2294, inlinedAt: !2300)
!2308 = !DILocation(line: 197, column: 5, scope: !2306, inlinedAt: !2300)
!2309 = !DILocation(line: 198, column: 5, scope: !2294, inlinedAt: !2300)
!2310 = !DILocation(line: 198, column: 11, scope: !2294, inlinedAt: !2300)
!2311 = !DILocation(line: 958, column: 10, scope: !2280)
!2312 = !DILocation(line: 959, column: 1, scope: !2280)
!2313 = !DILocation(line: 958, column: 3, scope: !2280)
!2314 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !147, file: !147, line: 962, type: !2315, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!34, !18, !105, !6, !141}
!2317 = !{!2318, !2319, !2320, !2321, !2322}
!2318 = !DILocalVariable(name: "n", arg: 1, scope: !2314, file: !147, line: 962, type: !18)
!2319 = !DILocalVariable(name: "s", arg: 2, scope: !2314, file: !147, line: 962, type: !105)
!2320 = !DILocalVariable(name: "arg", arg: 3, scope: !2314, file: !147, line: 963, type: !6)
!2321 = !DILocalVariable(name: "argsize", arg: 4, scope: !2314, file: !147, line: 963, type: !141)
!2322 = !DILocalVariable(name: "o", scope: !2314, file: !147, line: 965, type: !1044)
!2323 = !DILocation(line: 962, column: 27, scope: !2314)
!2324 = !DILocation(line: 962, column: 49, scope: !2314)
!2325 = !DILocation(line: 963, column: 35, scope: !2314)
!2326 = !DILocation(line: 963, column: 47, scope: !2314)
!2327 = !DILocation(line: 965, column: 3, scope: !2314)
!2328 = !DILocation(line: 965, column: 32, scope: !2314)
!2329 = !DILocation(line: 193, column: 48, scope: !2294, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 965, column: 36, scope: !2314)
!2331 = !DILocation(line: 195, column: 26, scope: !2294, inlinedAt: !2330)
!2332 = !{!2333}
!2333 = distinct !{!2333, !2334, !"quoting_options_from_style: argument 0"}
!2334 = distinct !{!2334, !"quoting_options_from_style"}
!2335 = !DILocation(line: 196, column: 13, scope: !2306, inlinedAt: !2330)
!2336 = !DILocation(line: 196, column: 7, scope: !2294, inlinedAt: !2330)
!2337 = !DILocation(line: 197, column: 5, scope: !2306, inlinedAt: !2330)
!2338 = !DILocation(line: 198, column: 5, scope: !2294, inlinedAt: !2330)
!2339 = !DILocation(line: 198, column: 11, scope: !2294, inlinedAt: !2330)
!2340 = !DILocation(line: 966, column: 10, scope: !2314)
!2341 = !DILocation(line: 967, column: 1, scope: !2314)
!2342 = !DILocation(line: 966, column: 3, scope: !2314)
!2343 = distinct !DISubprogram(name: "quotearg_style", scope: !147, file: !147, line: 970, type: !2344, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!34, !105, !6}
!2346 = !{!2347, !2348}
!2347 = !DILocalVariable(name: "s", arg: 1, scope: !2343, file: !147, line: 970, type: !105)
!2348 = !DILocalVariable(name: "arg", arg: 2, scope: !2343, file: !147, line: 970, type: !6)
!2349 = !DILocation(line: 970, column: 36, scope: !2343)
!2350 = !DILocation(line: 970, column: 51, scope: !2343)
!2351 = !DILocation(line: 955, column: 23, scope: !2280, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 972, column: 10, scope: !2343)
!2353 = !DILocation(line: 955, column: 45, scope: !2280, inlinedAt: !2352)
!2354 = !DILocation(line: 955, column: 60, scope: !2280, inlinedAt: !2352)
!2355 = !DILocation(line: 957, column: 3, scope: !2280, inlinedAt: !2352)
!2356 = !DILocation(line: 957, column: 32, scope: !2280, inlinedAt: !2352)
!2357 = !DILocation(line: 193, column: 48, scope: !2294, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 957, column: 36, scope: !2280, inlinedAt: !2352)
!2359 = !DILocation(line: 195, column: 26, scope: !2294, inlinedAt: !2358)
!2360 = !{!2361}
!2361 = distinct !{!2361, !2362, !"quoting_options_from_style: argument 0"}
!2362 = distinct !{!2362, !"quoting_options_from_style"}
!2363 = !DILocation(line: 196, column: 13, scope: !2306, inlinedAt: !2358)
!2364 = !DILocation(line: 196, column: 7, scope: !2294, inlinedAt: !2358)
!2365 = !DILocation(line: 197, column: 5, scope: !2306, inlinedAt: !2358)
!2366 = !DILocation(line: 198, column: 5, scope: !2294, inlinedAt: !2358)
!2367 = !DILocation(line: 198, column: 11, scope: !2294, inlinedAt: !2358)
!2368 = !DILocation(line: 958, column: 10, scope: !2280, inlinedAt: !2352)
!2369 = !DILocation(line: 959, column: 1, scope: !2280, inlinedAt: !2352)
!2370 = !DILocation(line: 972, column: 3, scope: !2343)
!2371 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !147, file: !147, line: 976, type: !2372, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!34, !105, !6, !141}
!2374 = !{!2375, !2376, !2377}
!2375 = !DILocalVariable(name: "s", arg: 1, scope: !2371, file: !147, line: 976, type: !105)
!2376 = !DILocalVariable(name: "arg", arg: 2, scope: !2371, file: !147, line: 976, type: !6)
!2377 = !DILocalVariable(name: "argsize", arg: 3, scope: !2371, file: !147, line: 976, type: !141)
!2378 = !DILocation(line: 976, column: 40, scope: !2371)
!2379 = !DILocation(line: 976, column: 55, scope: !2371)
!2380 = !DILocation(line: 976, column: 67, scope: !2371)
!2381 = !DILocation(line: 962, column: 27, scope: !2314, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 978, column: 10, scope: !2371)
!2383 = !DILocation(line: 962, column: 49, scope: !2314, inlinedAt: !2382)
!2384 = !DILocation(line: 963, column: 35, scope: !2314, inlinedAt: !2382)
!2385 = !DILocation(line: 963, column: 47, scope: !2314, inlinedAt: !2382)
!2386 = !DILocation(line: 965, column: 3, scope: !2314, inlinedAt: !2382)
!2387 = !DILocation(line: 965, column: 32, scope: !2314, inlinedAt: !2382)
!2388 = !DILocation(line: 193, column: 48, scope: !2294, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 965, column: 36, scope: !2314, inlinedAt: !2382)
!2390 = !DILocation(line: 195, column: 26, scope: !2294, inlinedAt: !2389)
!2391 = !{!2392}
!2392 = distinct !{!2392, !2393, !"quoting_options_from_style: argument 0"}
!2393 = distinct !{!2393, !"quoting_options_from_style"}
!2394 = !DILocation(line: 196, column: 13, scope: !2306, inlinedAt: !2389)
!2395 = !DILocation(line: 196, column: 7, scope: !2294, inlinedAt: !2389)
!2396 = !DILocation(line: 197, column: 5, scope: !2306, inlinedAt: !2389)
!2397 = !DILocation(line: 198, column: 5, scope: !2294, inlinedAt: !2389)
!2398 = !DILocation(line: 198, column: 11, scope: !2294, inlinedAt: !2389)
!2399 = !DILocation(line: 966, column: 10, scope: !2314, inlinedAt: !2382)
!2400 = !DILocation(line: 967, column: 1, scope: !2314, inlinedAt: !2382)
!2401 = !DILocation(line: 978, column: 3, scope: !2371)
!2402 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !147, file: !147, line: 982, type: !2403, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!34, !6, !141, !8}
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DILocalVariable(name: "arg", arg: 1, scope: !2402, file: !147, line: 982, type: !6)
!2407 = !DILocalVariable(name: "argsize", arg: 2, scope: !2402, file: !147, line: 982, type: !141)
!2408 = !DILocalVariable(name: "ch", arg: 3, scope: !2402, file: !147, line: 982, type: !8)
!2409 = !DILocalVariable(name: "options", scope: !2402, file: !147, line: 984, type: !154)
!2410 = !DILocation(line: 982, column: 32, scope: !2402)
!2411 = !DILocation(line: 982, column: 44, scope: !2402)
!2412 = !DILocation(line: 982, column: 58, scope: !2402)
!2413 = !DILocation(line: 984, column: 3, scope: !2402)
!2414 = !DILocation(line: 985, column: 13, scope: !2402)
!2415 = !{i64 0, i64 4, !798, i64 4, i64 4, !772, i64 8, i64 32, !798, i64 40, i64 8, !689, i64 48, i64 8, !689}
!2416 = !DILocation(line: 984, column: 26, scope: !2402)
!2417 = !DILocation(line: 152, column: 43, scope: !1065, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 986, column: 3, scope: !2402)
!2419 = !DILocation(line: 152, column: 51, scope: !1065, inlinedAt: !2418)
!2420 = !DILocation(line: 152, column: 58, scope: !1065, inlinedAt: !2418)
!2421 = !DILocation(line: 154, column: 17, scope: !1065, inlinedAt: !2418)
!2422 = !DILocation(line: 156, column: 62, scope: !1065, inlinedAt: !2418)
!2423 = !DILocation(line: 156, column: 57, scope: !1065, inlinedAt: !2418)
!2424 = !DILocation(line: 155, column: 17, scope: !1065, inlinedAt: !2418)
!2425 = !DILocation(line: 157, column: 15, scope: !1065, inlinedAt: !2418)
!2426 = !DILocation(line: 157, column: 7, scope: !1065, inlinedAt: !2418)
!2427 = !DILocation(line: 158, column: 12, scope: !1065, inlinedAt: !2418)
!2428 = !DILocation(line: 158, column: 15, scope: !1065, inlinedAt: !2418)
!2429 = !DILocation(line: 158, column: 25, scope: !1065, inlinedAt: !2418)
!2430 = !DILocation(line: 158, column: 7, scope: !1065, inlinedAt: !2418)
!2431 = !DILocation(line: 159, column: 18, scope: !1065, inlinedAt: !2418)
!2432 = !DILocation(line: 159, column: 23, scope: !1065, inlinedAt: !2418)
!2433 = !DILocation(line: 159, column: 6, scope: !1065, inlinedAt: !2418)
!2434 = !DILocation(line: 987, column: 10, scope: !2402)
!2435 = !DILocation(line: 988, column: 1, scope: !2402)
!2436 = !DILocation(line: 987, column: 3, scope: !2402)
!2437 = distinct !DISubprogram(name: "quotearg_char", scope: !147, file: !147, line: 991, type: !2438, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!34, !6, !8}
!2440 = !{!2441, !2442}
!2441 = !DILocalVariable(name: "arg", arg: 1, scope: !2437, file: !147, line: 991, type: !6)
!2442 = !DILocalVariable(name: "ch", arg: 2, scope: !2437, file: !147, line: 991, type: !8)
!2443 = !DILocation(line: 991, column: 28, scope: !2437)
!2444 = !DILocation(line: 991, column: 38, scope: !2437)
!2445 = !DILocation(line: 982, column: 32, scope: !2402, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 993, column: 10, scope: !2437)
!2447 = !DILocation(line: 982, column: 44, scope: !2402, inlinedAt: !2446)
!2448 = !DILocation(line: 982, column: 58, scope: !2402, inlinedAt: !2446)
!2449 = !DILocation(line: 984, column: 3, scope: !2402, inlinedAt: !2446)
!2450 = !DILocation(line: 985, column: 13, scope: !2402, inlinedAt: !2446)
!2451 = !DILocation(line: 984, column: 26, scope: !2402, inlinedAt: !2446)
!2452 = !DILocation(line: 152, column: 43, scope: !1065, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 986, column: 3, scope: !2402, inlinedAt: !2446)
!2454 = !DILocation(line: 152, column: 51, scope: !1065, inlinedAt: !2453)
!2455 = !DILocation(line: 152, column: 58, scope: !1065, inlinedAt: !2453)
!2456 = !DILocation(line: 154, column: 17, scope: !1065, inlinedAt: !2453)
!2457 = !DILocation(line: 156, column: 62, scope: !1065, inlinedAt: !2453)
!2458 = !DILocation(line: 156, column: 57, scope: !1065, inlinedAt: !2453)
!2459 = !DILocation(line: 155, column: 17, scope: !1065, inlinedAt: !2453)
!2460 = !DILocation(line: 157, column: 15, scope: !1065, inlinedAt: !2453)
!2461 = !DILocation(line: 157, column: 7, scope: !1065, inlinedAt: !2453)
!2462 = !DILocation(line: 158, column: 12, scope: !1065, inlinedAt: !2453)
!2463 = !DILocation(line: 158, column: 15, scope: !1065, inlinedAt: !2453)
!2464 = !DILocation(line: 158, column: 25, scope: !1065, inlinedAt: !2453)
!2465 = !DILocation(line: 158, column: 7, scope: !1065, inlinedAt: !2453)
!2466 = !DILocation(line: 159, column: 18, scope: !1065, inlinedAt: !2453)
!2467 = !DILocation(line: 159, column: 23, scope: !1065, inlinedAt: !2453)
!2468 = !DILocation(line: 159, column: 6, scope: !1065, inlinedAt: !2453)
!2469 = !DILocation(line: 987, column: 10, scope: !2402, inlinedAt: !2446)
!2470 = !DILocation(line: 988, column: 1, scope: !2402, inlinedAt: !2446)
!2471 = !DILocation(line: 993, column: 3, scope: !2437)
!2472 = distinct !DISubprogram(name: "quotearg_colon", scope: !147, file: !147, line: 997, type: !2256, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2473)
!2473 = !{!2474}
!2474 = !DILocalVariable(name: "arg", arg: 1, scope: !2472, file: !147, line: 997, type: !6)
!2475 = !DILocation(line: 997, column: 29, scope: !2472)
!2476 = !DILocation(line: 991, column: 28, scope: !2437, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 999, column: 10, scope: !2472)
!2478 = !DILocation(line: 991, column: 38, scope: !2437, inlinedAt: !2477)
!2479 = !DILocation(line: 982, column: 32, scope: !2402, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 993, column: 10, scope: !2437, inlinedAt: !2477)
!2481 = !DILocation(line: 982, column: 44, scope: !2402, inlinedAt: !2480)
!2482 = !DILocation(line: 982, column: 58, scope: !2402, inlinedAt: !2480)
!2483 = !DILocation(line: 984, column: 3, scope: !2402, inlinedAt: !2480)
!2484 = !DILocation(line: 985, column: 13, scope: !2402, inlinedAt: !2480)
!2485 = !DILocation(line: 984, column: 26, scope: !2402, inlinedAt: !2480)
!2486 = !DILocation(line: 152, column: 43, scope: !1065, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 986, column: 3, scope: !2402, inlinedAt: !2480)
!2488 = !DILocation(line: 152, column: 51, scope: !1065, inlinedAt: !2487)
!2489 = !DILocation(line: 152, column: 58, scope: !1065, inlinedAt: !2487)
!2490 = !DILocation(line: 154, column: 17, scope: !1065, inlinedAt: !2487)
!2491 = !DILocation(line: 156, column: 57, scope: !1065, inlinedAt: !2487)
!2492 = !DILocation(line: 155, column: 17, scope: !1065, inlinedAt: !2487)
!2493 = !DILocation(line: 157, column: 7, scope: !1065, inlinedAt: !2487)
!2494 = !DILocation(line: 158, column: 12, scope: !1065, inlinedAt: !2487)
!2495 = !DILocation(line: 159, column: 6, scope: !1065, inlinedAt: !2487)
!2496 = !DILocation(line: 987, column: 10, scope: !2402, inlinedAt: !2480)
!2497 = !DILocation(line: 988, column: 1, scope: !2402, inlinedAt: !2480)
!2498 = !DILocation(line: 999, column: 3, scope: !2472)
!2499 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !147, file: !147, line: 1003, type: !2267, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2500)
!2500 = !{!2501, !2502}
!2501 = !DILocalVariable(name: "arg", arg: 1, scope: !2499, file: !147, line: 1003, type: !6)
!2502 = !DILocalVariable(name: "argsize", arg: 2, scope: !2499, file: !147, line: 1003, type: !141)
!2503 = !DILocation(line: 1003, column: 33, scope: !2499)
!2504 = !DILocation(line: 1003, column: 45, scope: !2499)
!2505 = !DILocation(line: 982, column: 32, scope: !2402, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 1005, column: 10, scope: !2499)
!2507 = !DILocation(line: 982, column: 44, scope: !2402, inlinedAt: !2506)
!2508 = !DILocation(line: 982, column: 58, scope: !2402, inlinedAt: !2506)
!2509 = !DILocation(line: 984, column: 3, scope: !2402, inlinedAt: !2506)
!2510 = !DILocation(line: 985, column: 13, scope: !2402, inlinedAt: !2506)
!2511 = !DILocation(line: 984, column: 26, scope: !2402, inlinedAt: !2506)
!2512 = !DILocation(line: 152, column: 43, scope: !1065, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 986, column: 3, scope: !2402, inlinedAt: !2506)
!2514 = !DILocation(line: 152, column: 51, scope: !1065, inlinedAt: !2513)
!2515 = !DILocation(line: 152, column: 58, scope: !1065, inlinedAt: !2513)
!2516 = !DILocation(line: 154, column: 17, scope: !1065, inlinedAt: !2513)
!2517 = !DILocation(line: 156, column: 57, scope: !1065, inlinedAt: !2513)
!2518 = !DILocation(line: 155, column: 17, scope: !1065, inlinedAt: !2513)
!2519 = !DILocation(line: 157, column: 7, scope: !1065, inlinedAt: !2513)
!2520 = !DILocation(line: 158, column: 12, scope: !1065, inlinedAt: !2513)
!2521 = !DILocation(line: 159, column: 6, scope: !1065, inlinedAt: !2513)
!2522 = !DILocation(line: 987, column: 10, scope: !2402, inlinedAt: !2506)
!2523 = !DILocation(line: 988, column: 1, scope: !2402, inlinedAt: !2506)
!2524 = !DILocation(line: 1005, column: 3, scope: !2499)
!2525 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !147, file: !147, line: 1009, type: !2281, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2526)
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DILocalVariable(name: "n", arg: 1, scope: !2525, file: !147, line: 1009, type: !18)
!2528 = !DILocalVariable(name: "s", arg: 2, scope: !2525, file: !147, line: 1009, type: !105)
!2529 = !DILocalVariable(name: "arg", arg: 3, scope: !2525, file: !147, line: 1009, type: !6)
!2530 = !DILocalVariable(name: "options", scope: !2525, file: !147, line: 1011, type: !154)
!2531 = !DILocation(line: 195, column: 26, scope: !2294, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 1012, column: 13, scope: !2525)
!2533 = !DILocation(line: 1009, column: 29, scope: !2525)
!2534 = !DILocation(line: 1009, column: 51, scope: !2525)
!2535 = !DILocation(line: 1009, column: 66, scope: !2525)
!2536 = !DILocation(line: 1011, column: 3, scope: !2525)
!2537 = !DILocation(line: 1012, column: 13, scope: !2525)
!2538 = !DILocation(line: 193, column: 48, scope: !2294, inlinedAt: !2532)
!2539 = !{!2540}
!2540 = distinct !{!2540, !2541, !"quoting_options_from_style: argument 0"}
!2541 = distinct !{!2541, !"quoting_options_from_style"}
!2542 = !DILocation(line: 196, column: 13, scope: !2306, inlinedAt: !2532)
!2543 = !DILocation(line: 196, column: 7, scope: !2294, inlinedAt: !2532)
!2544 = !DILocation(line: 197, column: 5, scope: !2306, inlinedAt: !2532)
!2545 = !DILocation(line: 1011, column: 26, scope: !2525)
!2546 = !DILocation(line: 152, column: 43, scope: !1065, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 1013, column: 3, scope: !2525)
!2548 = !DILocation(line: 152, column: 51, scope: !1065, inlinedAt: !2547)
!2549 = !DILocation(line: 152, column: 58, scope: !1065, inlinedAt: !2547)
!2550 = !DILocation(line: 154, column: 17, scope: !1065, inlinedAt: !2547)
!2551 = !DILocation(line: 156, column: 57, scope: !1065, inlinedAt: !2547)
!2552 = !DILocation(line: 155, column: 17, scope: !1065, inlinedAt: !2547)
!2553 = !DILocation(line: 157, column: 7, scope: !1065, inlinedAt: !2547)
!2554 = !DILocation(line: 158, column: 12, scope: !1065, inlinedAt: !2547)
!2555 = !DILocation(line: 159, column: 6, scope: !1065, inlinedAt: !2547)
!2556 = !DILocation(line: 1014, column: 10, scope: !2525)
!2557 = !DILocation(line: 1015, column: 1, scope: !2525)
!2558 = !DILocation(line: 1014, column: 3, scope: !2525)
!2559 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !147, file: !147, line: 1018, type: !2560, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!34, !18, !6, !6, !6}
!2562 = !{!2563, !2564, !2565, !2566}
!2563 = !DILocalVariable(name: "n", arg: 1, scope: !2559, file: !147, line: 1018, type: !18)
!2564 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2559, file: !147, line: 1018, type: !6)
!2565 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2559, file: !147, line: 1019, type: !6)
!2566 = !DILocalVariable(name: "arg", arg: 4, scope: !2559, file: !147, line: 1019, type: !6)
!2567 = !DILocation(line: 1018, column: 24, scope: !2559)
!2568 = !DILocation(line: 1018, column: 39, scope: !2559)
!2569 = !DILocation(line: 1019, column: 32, scope: !2559)
!2570 = !DILocation(line: 1019, column: 57, scope: !2559)
!2571 = !DILocalVariable(name: "n", arg: 1, scope: !2572, file: !147, line: 1026, type: !18)
!2572 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !147, file: !147, line: 1026, type: !2573, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!34, !18, !6, !6, !6, !141}
!2575 = !{!2571, !2576, !2577, !2578, !2579, !2580}
!2576 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2572, file: !147, line: 1026, type: !6)
!2577 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2572, file: !147, line: 1027, type: !6)
!2578 = !DILocalVariable(name: "arg", arg: 4, scope: !2572, file: !147, line: 1028, type: !6)
!2579 = !DILocalVariable(name: "argsize", arg: 5, scope: !2572, file: !147, line: 1028, type: !141)
!2580 = !DILocalVariable(name: "o", scope: !2572, file: !147, line: 1030, type: !154)
!2581 = !DILocation(line: 1026, column: 28, scope: !2572, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 1021, column: 10, scope: !2559)
!2583 = !DILocation(line: 1026, column: 43, scope: !2572, inlinedAt: !2582)
!2584 = !DILocation(line: 1027, column: 36, scope: !2572, inlinedAt: !2582)
!2585 = !DILocation(line: 1028, column: 36, scope: !2572, inlinedAt: !2582)
!2586 = !DILocation(line: 1028, column: 48, scope: !2572, inlinedAt: !2582)
!2587 = !DILocation(line: 1030, column: 3, scope: !2572, inlinedAt: !2582)
!2588 = !DILocation(line: 1030, column: 30, scope: !2572, inlinedAt: !2582)
!2589 = !DILocation(line: 1030, column: 26, scope: !2572, inlinedAt: !2582)
!2590 = !DILocation(line: 179, column: 45, scope: !1114, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 1031, column: 3, scope: !2572, inlinedAt: !2582)
!2592 = !DILocation(line: 180, column: 33, scope: !1114, inlinedAt: !2591)
!2593 = !DILocation(line: 180, column: 57, scope: !1114, inlinedAt: !2591)
!2594 = !DILocation(line: 184, column: 6, scope: !1114, inlinedAt: !2591)
!2595 = !DILocation(line: 184, column: 12, scope: !1114, inlinedAt: !2591)
!2596 = !DILocation(line: 185, column: 8, scope: !1130, inlinedAt: !2591)
!2597 = !DILocation(line: 185, column: 23, scope: !1130, inlinedAt: !2591)
!2598 = !DILocation(line: 185, column: 19, scope: !1130, inlinedAt: !2591)
!2599 = !DILocation(line: 186, column: 5, scope: !1130, inlinedAt: !2591)
!2600 = !DILocation(line: 187, column: 6, scope: !1114, inlinedAt: !2591)
!2601 = !DILocation(line: 187, column: 17, scope: !1114, inlinedAt: !2591)
!2602 = !DILocation(line: 188, column: 6, scope: !1114, inlinedAt: !2591)
!2603 = !DILocation(line: 188, column: 18, scope: !1114, inlinedAt: !2591)
!2604 = !DILocation(line: 1032, column: 10, scope: !2572, inlinedAt: !2582)
!2605 = !DILocation(line: 1033, column: 1, scope: !2572, inlinedAt: !2582)
!2606 = !DILocation(line: 1021, column: 3, scope: !2559)
!2607 = !DILocation(line: 1026, column: 28, scope: !2572)
!2608 = !DILocation(line: 1026, column: 43, scope: !2572)
!2609 = !DILocation(line: 1027, column: 36, scope: !2572)
!2610 = !DILocation(line: 1028, column: 36, scope: !2572)
!2611 = !DILocation(line: 1028, column: 48, scope: !2572)
!2612 = !DILocation(line: 1030, column: 3, scope: !2572)
!2613 = !DILocation(line: 1030, column: 30, scope: !2572)
!2614 = !DILocation(line: 1030, column: 26, scope: !2572)
!2615 = !DILocation(line: 179, column: 45, scope: !1114, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1031, column: 3, scope: !2572)
!2617 = !DILocation(line: 180, column: 33, scope: !1114, inlinedAt: !2616)
!2618 = !DILocation(line: 180, column: 57, scope: !1114, inlinedAt: !2616)
!2619 = !DILocation(line: 184, column: 6, scope: !1114, inlinedAt: !2616)
!2620 = !DILocation(line: 184, column: 12, scope: !1114, inlinedAt: !2616)
!2621 = !DILocation(line: 185, column: 8, scope: !1130, inlinedAt: !2616)
!2622 = !DILocation(line: 185, column: 23, scope: !1130, inlinedAt: !2616)
!2623 = !DILocation(line: 185, column: 19, scope: !1130, inlinedAt: !2616)
!2624 = !DILocation(line: 186, column: 5, scope: !1130, inlinedAt: !2616)
!2625 = !DILocation(line: 187, column: 6, scope: !1114, inlinedAt: !2616)
!2626 = !DILocation(line: 187, column: 17, scope: !1114, inlinedAt: !2616)
!2627 = !DILocation(line: 188, column: 6, scope: !1114, inlinedAt: !2616)
!2628 = !DILocation(line: 188, column: 18, scope: !1114, inlinedAt: !2616)
!2629 = !DILocation(line: 1032, column: 10, scope: !2572)
!2630 = !DILocation(line: 1033, column: 1, scope: !2572)
!2631 = !DILocation(line: 1032, column: 3, scope: !2572)
!2632 = distinct !DISubprogram(name: "quotearg_custom", scope: !147, file: !147, line: 1036, type: !2633, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!34, !6, !6, !6}
!2635 = !{!2636, !2637, !2638}
!2636 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2632, file: !147, line: 1036, type: !6)
!2637 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2632, file: !147, line: 1036, type: !6)
!2638 = !DILocalVariable(name: "arg", arg: 3, scope: !2632, file: !147, line: 1037, type: !6)
!2639 = !DILocation(line: 1036, column: 30, scope: !2632)
!2640 = !DILocation(line: 1036, column: 54, scope: !2632)
!2641 = !DILocation(line: 1037, column: 30, scope: !2632)
!2642 = !DILocation(line: 1018, column: 24, scope: !2559, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1039, column: 10, scope: !2632)
!2644 = !DILocation(line: 1018, column: 39, scope: !2559, inlinedAt: !2643)
!2645 = !DILocation(line: 1019, column: 32, scope: !2559, inlinedAt: !2643)
!2646 = !DILocation(line: 1019, column: 57, scope: !2559, inlinedAt: !2643)
!2647 = !DILocation(line: 1026, column: 28, scope: !2572, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1021, column: 10, scope: !2559, inlinedAt: !2643)
!2649 = !DILocation(line: 1026, column: 43, scope: !2572, inlinedAt: !2648)
!2650 = !DILocation(line: 1027, column: 36, scope: !2572, inlinedAt: !2648)
!2651 = !DILocation(line: 1028, column: 36, scope: !2572, inlinedAt: !2648)
!2652 = !DILocation(line: 1028, column: 48, scope: !2572, inlinedAt: !2648)
!2653 = !DILocation(line: 1030, column: 3, scope: !2572, inlinedAt: !2648)
!2654 = !DILocation(line: 1030, column: 30, scope: !2572, inlinedAt: !2648)
!2655 = !DILocation(line: 1030, column: 26, scope: !2572, inlinedAt: !2648)
!2656 = !DILocation(line: 179, column: 45, scope: !1114, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1031, column: 3, scope: !2572, inlinedAt: !2648)
!2658 = !DILocation(line: 180, column: 33, scope: !1114, inlinedAt: !2657)
!2659 = !DILocation(line: 180, column: 57, scope: !1114, inlinedAt: !2657)
!2660 = !DILocation(line: 184, column: 6, scope: !1114, inlinedAt: !2657)
!2661 = !DILocation(line: 184, column: 12, scope: !1114, inlinedAt: !2657)
!2662 = !DILocation(line: 185, column: 8, scope: !1130, inlinedAt: !2657)
!2663 = !DILocation(line: 185, column: 23, scope: !1130, inlinedAt: !2657)
!2664 = !DILocation(line: 185, column: 19, scope: !1130, inlinedAt: !2657)
!2665 = !DILocation(line: 186, column: 5, scope: !1130, inlinedAt: !2657)
!2666 = !DILocation(line: 187, column: 6, scope: !1114, inlinedAt: !2657)
!2667 = !DILocation(line: 187, column: 17, scope: !1114, inlinedAt: !2657)
!2668 = !DILocation(line: 188, column: 6, scope: !1114, inlinedAt: !2657)
!2669 = !DILocation(line: 188, column: 18, scope: !1114, inlinedAt: !2657)
!2670 = !DILocation(line: 1032, column: 10, scope: !2572, inlinedAt: !2648)
!2671 = !DILocation(line: 1033, column: 1, scope: !2572, inlinedAt: !2648)
!2672 = !DILocation(line: 1039, column: 3, scope: !2632)
!2673 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !147, file: !147, line: 1043, type: !2674, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!34, !6, !6, !6, !141}
!2676 = !{!2677, !2678, !2679, !2680}
!2677 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2673, file: !147, line: 1043, type: !6)
!2678 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2673, file: !147, line: 1043, type: !6)
!2679 = !DILocalVariable(name: "arg", arg: 3, scope: !2673, file: !147, line: 1044, type: !6)
!2680 = !DILocalVariable(name: "argsize", arg: 4, scope: !2673, file: !147, line: 1044, type: !141)
!2681 = !DILocation(line: 1043, column: 34, scope: !2673)
!2682 = !DILocation(line: 1043, column: 58, scope: !2673)
!2683 = !DILocation(line: 1044, column: 34, scope: !2673)
!2684 = !DILocation(line: 1044, column: 46, scope: !2673)
!2685 = !DILocation(line: 1026, column: 28, scope: !2572, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1046, column: 10, scope: !2673)
!2687 = !DILocation(line: 1026, column: 43, scope: !2572, inlinedAt: !2686)
!2688 = !DILocation(line: 1027, column: 36, scope: !2572, inlinedAt: !2686)
!2689 = !DILocation(line: 1028, column: 36, scope: !2572, inlinedAt: !2686)
!2690 = !DILocation(line: 1028, column: 48, scope: !2572, inlinedAt: !2686)
!2691 = !DILocation(line: 1030, column: 3, scope: !2572, inlinedAt: !2686)
!2692 = !DILocation(line: 1030, column: 30, scope: !2572, inlinedAt: !2686)
!2693 = !DILocation(line: 1030, column: 26, scope: !2572, inlinedAt: !2686)
!2694 = !DILocation(line: 179, column: 45, scope: !1114, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1031, column: 3, scope: !2572, inlinedAt: !2686)
!2696 = !DILocation(line: 180, column: 33, scope: !1114, inlinedAt: !2695)
!2697 = !DILocation(line: 180, column: 57, scope: !1114, inlinedAt: !2695)
!2698 = !DILocation(line: 184, column: 6, scope: !1114, inlinedAt: !2695)
!2699 = !DILocation(line: 184, column: 12, scope: !1114, inlinedAt: !2695)
!2700 = !DILocation(line: 185, column: 8, scope: !1130, inlinedAt: !2695)
!2701 = !DILocation(line: 185, column: 23, scope: !1130, inlinedAt: !2695)
!2702 = !DILocation(line: 185, column: 19, scope: !1130, inlinedAt: !2695)
!2703 = !DILocation(line: 186, column: 5, scope: !1130, inlinedAt: !2695)
!2704 = !DILocation(line: 187, column: 6, scope: !1114, inlinedAt: !2695)
!2705 = !DILocation(line: 187, column: 17, scope: !1114, inlinedAt: !2695)
!2706 = !DILocation(line: 188, column: 6, scope: !1114, inlinedAt: !2695)
!2707 = !DILocation(line: 188, column: 18, scope: !1114, inlinedAt: !2695)
!2708 = !DILocation(line: 1032, column: 10, scope: !2572, inlinedAt: !2686)
!2709 = !DILocation(line: 1033, column: 1, scope: !2572, inlinedAt: !2686)
!2710 = !DILocation(line: 1046, column: 3, scope: !2673)
!2711 = distinct !DISubprogram(name: "quote_n_mem", scope: !147, file: !147, line: 1061, type: !2712, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!6, !18, !6, !141}
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "n", arg: 1, scope: !2711, file: !147, line: 1061, type: !18)
!2716 = !DILocalVariable(name: "arg", arg: 2, scope: !2711, file: !147, line: 1061, type: !6)
!2717 = !DILocalVariable(name: "argsize", arg: 3, scope: !2711, file: !147, line: 1061, type: !141)
!2718 = !DILocation(line: 1061, column: 18, scope: !2711)
!2719 = !DILocation(line: 1061, column: 33, scope: !2711)
!2720 = !DILocation(line: 1061, column: 45, scope: !2711)
!2721 = !DILocation(line: 1063, column: 10, scope: !2711)
!2722 = !DILocation(line: 1063, column: 3, scope: !2711)
!2723 = distinct !DISubprogram(name: "quote_mem", scope: !147, file: !147, line: 1067, type: !2724, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!6, !6, !141}
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "arg", arg: 1, scope: !2723, file: !147, line: 1067, type: !6)
!2728 = !DILocalVariable(name: "argsize", arg: 2, scope: !2723, file: !147, line: 1067, type: !141)
!2729 = !DILocation(line: 1067, column: 24, scope: !2723)
!2730 = !DILocation(line: 1067, column: 36, scope: !2723)
!2731 = !DILocation(line: 1061, column: 18, scope: !2711, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 1069, column: 10, scope: !2723)
!2733 = !DILocation(line: 1061, column: 33, scope: !2711, inlinedAt: !2732)
!2734 = !DILocation(line: 1061, column: 45, scope: !2711, inlinedAt: !2732)
!2735 = !DILocation(line: 1063, column: 10, scope: !2711, inlinedAt: !2732)
!2736 = !DILocation(line: 1069, column: 3, scope: !2723)
!2737 = distinct !DISubprogram(name: "quote_n", scope: !147, file: !147, line: 1073, type: !2738, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!6, !18, !6}
!2740 = !{!2741, !2742}
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !147, line: 1073, type: !18)
!2742 = !DILocalVariable(name: "arg", arg: 2, scope: !2737, file: !147, line: 1073, type: !6)
!2743 = !DILocation(line: 1073, column: 14, scope: !2737)
!2744 = !DILocation(line: 1073, column: 29, scope: !2737)
!2745 = !DILocation(line: 1061, column: 18, scope: !2711, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1075, column: 10, scope: !2737)
!2747 = !DILocation(line: 1061, column: 33, scope: !2711, inlinedAt: !2746)
!2748 = !DILocation(line: 1061, column: 45, scope: !2711, inlinedAt: !2746)
!2749 = !DILocation(line: 1063, column: 10, scope: !2711, inlinedAt: !2746)
!2750 = !DILocation(line: 1075, column: 3, scope: !2737)
!2751 = distinct !DISubprogram(name: "quote", scope: !147, file: !147, line: 1079, type: !2752, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!6, !6}
!2754 = !{!2755}
!2755 = !DILocalVariable(name: "arg", arg: 1, scope: !2751, file: !147, line: 1079, type: !6)
!2756 = !DILocation(line: 1079, column: 20, scope: !2751)
!2757 = !DILocation(line: 1073, column: 14, scope: !2737, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 1081, column: 10, scope: !2751)
!2759 = !DILocation(line: 1073, column: 29, scope: !2737, inlinedAt: !2758)
!2760 = !DILocation(line: 1061, column: 18, scope: !2711, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1075, column: 10, scope: !2737, inlinedAt: !2758)
!2762 = !DILocation(line: 1061, column: 33, scope: !2711, inlinedAt: !2761)
!2763 = !DILocation(line: 1061, column: 45, scope: !2711, inlinedAt: !2761)
!2764 = !DILocation(line: 1063, column: 10, scope: !2711, inlinedAt: !2761)
!2765 = !DILocation(line: 1081, column: 3, scope: !2751)
!2766 = distinct !DISubprogram(name: "version_etc_arn", scope: !199, file: !199, line: 62, type: !2767, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2821)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !2769, !6, !6, !6, !2820, !141}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2771, line: 7, baseType: !2772)
!2771 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2773, line: 49, size: 1728, elements: !2774)
!2773 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2774 = !{!2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2790, !2792, !2793, !2794, !2796, !2797, !2799, !2801, !2804, !2806, !2809, !2812, !2813, !2814, !2815, !2816}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2772, file: !2773, line: 51, baseType: !18, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2772, file: !2773, line: 54, baseType: !34, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2772, file: !2773, line: 55, baseType: !34, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2772, file: !2773, line: 56, baseType: !34, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2772, file: !2773, line: 57, baseType: !34, size: 64, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2772, file: !2773, line: 58, baseType: !34, size: 64, offset: 320)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2772, file: !2773, line: 59, baseType: !34, size: 64, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2772, file: !2773, line: 60, baseType: !34, size: 64, offset: 448)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2772, file: !2773, line: 61, baseType: !34, size: 64, offset: 512)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2772, file: !2773, line: 64, baseType: !34, size: 64, offset: 576)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2772, file: !2773, line: 65, baseType: !34, size: 64, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2772, file: !2773, line: 66, baseType: !34, size: 64, offset: 704)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2772, file: !2773, line: 68, baseType: !2788, size: 64, offset: 768)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2773, line: 36, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2772, file: !2773, line: 70, baseType: !2791, size: 64, offset: 832)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2772, file: !2773, line: 72, baseType: !18, size: 32, offset: 896)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2772, file: !2773, line: 73, baseType: !18, size: 32, offset: 928)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2772, file: !2773, line: 74, baseType: !2795, size: 64, offset: 960)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !251, line: 150, baseType: !252)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2772, file: !2773, line: 77, baseType: !51, size: 16, offset: 1024)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2772, file: !2773, line: 78, baseType: !2798, size: 8, offset: 1040)
!2798 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2772, file: !2773, line: 79, baseType: !2800, size: 8, offset: 1048)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !22)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2772, file: !2773, line: 81, baseType: !2802, size: 64, offset: 1088)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2773, line: 43, baseType: null)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2772, file: !2773, line: 89, baseType: !2805, size: 64, offset: 1152)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !251, line: 151, baseType: !252)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2772, file: !2773, line: 91, baseType: !2807, size: 64, offset: 1216)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2773, line: 37, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2772, file: !2773, line: 92, baseType: !2810, size: 64, offset: 1280)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2773, line: 38, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2772, file: !2773, line: 93, baseType: !2791, size: 64, offset: 1344)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2772, file: !2773, line: 94, baseType: !9, size: 64, offset: 1408)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2772, file: !2773, line: 95, baseType: !141, size: 64, offset: 1472)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2772, file: !2773, line: 96, baseType: !18, size: 32, offset: 1536)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2772, file: !2773, line: 98, baseType: !2817, size: 160, offset: 1568)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2818)
!2818 = !{!2819}
!2819 = !DISubrange(count: 20)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827}
!2822 = !DILocalVariable(name: "stream", arg: 1, scope: !2766, file: !199, line: 62, type: !2769)
!2823 = !DILocalVariable(name: "command_name", arg: 2, scope: !2766, file: !199, line: 63, type: !6)
!2824 = !DILocalVariable(name: "package", arg: 3, scope: !2766, file: !199, line: 63, type: !6)
!2825 = !DILocalVariable(name: "version", arg: 4, scope: !2766, file: !199, line: 64, type: !6)
!2826 = !DILocalVariable(name: "authors", arg: 5, scope: !2766, file: !199, line: 65, type: !2820)
!2827 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2766, file: !199, line: 65, type: !141)
!2828 = !DILocation(line: 62, column: 24, scope: !2766)
!2829 = !DILocation(line: 63, column: 30, scope: !2766)
!2830 = !DILocation(line: 63, column: 56, scope: !2766)
!2831 = !DILocation(line: 64, column: 30, scope: !2766)
!2832 = !DILocation(line: 65, column: 39, scope: !2766)
!2833 = !DILocation(line: 65, column: 55, scope: !2766)
!2834 = !DILocation(line: 67, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2766, file: !199, line: 67, column: 7)
!2836 = !DILocation(line: 67, column: 7, scope: !2766)
!2837 = !DILocation(line: 68, column: 5, scope: !2835)
!2838 = !DILocation(line: 70, column: 5, scope: !2835)
!2839 = !DILocation(line: 84, column: 3, scope: !2766)
!2840 = !DILocation(line: 86, column: 3, scope: !2766)
!2841 = !DILocation(line: 95, column: 3, scope: !2766)
!2842 = !DILocation(line: 99, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2766, file: !199, line: 96, column: 5)
!2844 = !DILocation(line: 102, column: 7, scope: !2843)
!2845 = !DILocation(line: 103, column: 7, scope: !2843)
!2846 = !DILocation(line: 106, column: 7, scope: !2843)
!2847 = !DILocation(line: 107, column: 7, scope: !2843)
!2848 = !DILocation(line: 110, column: 7, scope: !2843)
!2849 = !DILocation(line: 112, column: 7, scope: !2843)
!2850 = !DILocation(line: 117, column: 7, scope: !2843)
!2851 = !DILocation(line: 119, column: 7, scope: !2843)
!2852 = !DILocation(line: 124, column: 7, scope: !2843)
!2853 = !DILocation(line: 126, column: 7, scope: !2843)
!2854 = !DILocation(line: 131, column: 7, scope: !2843)
!2855 = !DILocation(line: 134, column: 7, scope: !2843)
!2856 = !DILocation(line: 139, column: 7, scope: !2843)
!2857 = !DILocation(line: 142, column: 7, scope: !2843)
!2858 = !DILocation(line: 147, column: 7, scope: !2843)
!2859 = !DILocation(line: 151, column: 7, scope: !2843)
!2860 = !DILocation(line: 156, column: 7, scope: !2843)
!2861 = !DILocation(line: 160, column: 7, scope: !2843)
!2862 = !DILocation(line: 167, column: 7, scope: !2843)
!2863 = !DILocation(line: 171, column: 7, scope: !2843)
!2864 = !DILocation(line: 173, column: 1, scope: !2766)
!2865 = distinct !DISubprogram(name: "version_etc_ar", scope: !199, file: !199, line: 180, type: !2866, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2769, !6, !6, !6, !2820}
!2868 = !{!2869, !2870, !2871, !2872, !2873, !2874}
!2869 = !DILocalVariable(name: "stream", arg: 1, scope: !2865, file: !199, line: 180, type: !2769)
!2870 = !DILocalVariable(name: "command_name", arg: 2, scope: !2865, file: !199, line: 181, type: !6)
!2871 = !DILocalVariable(name: "package", arg: 3, scope: !2865, file: !199, line: 181, type: !6)
!2872 = !DILocalVariable(name: "version", arg: 4, scope: !2865, file: !199, line: 182, type: !6)
!2873 = !DILocalVariable(name: "authors", arg: 5, scope: !2865, file: !199, line: 182, type: !2820)
!2874 = !DILocalVariable(name: "n_authors", scope: !2865, file: !199, line: 184, type: !141)
!2875 = !DILocation(line: 180, column: 23, scope: !2865)
!2876 = !DILocation(line: 181, column: 29, scope: !2865)
!2877 = !DILocation(line: 181, column: 55, scope: !2865)
!2878 = !DILocation(line: 182, column: 29, scope: !2865)
!2879 = !DILocation(line: 182, column: 59, scope: !2865)
!2880 = !DILocation(line: 184, column: 10, scope: !2865)
!2881 = !DILocation(line: 186, column: 8, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2865, file: !199, line: 186, column: 3)
!2883 = !DILocation(line: 0, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2882, file: !199, line: 186, column: 3)
!2885 = !DILocation(line: 186, column: 23, scope: !2884)
!2886 = !DILocation(line: 186, column: 3, scope: !2882)
!2887 = !DILocation(line: 186, column: 52, scope: !2884)
!2888 = distinct !{!2888, !2886, !2889}
!2889 = !DILocation(line: 187, column: 5, scope: !2882)
!2890 = !DILocation(line: 188, column: 3, scope: !2865)
!2891 = !DILocation(line: 189, column: 1, scope: !2865)
!2892 = distinct !DISubprogram(name: "version_etc_va", scope: !199, file: !199, line: 196, type: !2893, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2902)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2769, !6, !6, !6, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !196, line: 189, size: 192, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2896, file: !196, line: 189, baseType: !107, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2896, file: !196, line: 189, baseType: !107, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2896, file: !196, line: 189, baseType: !9, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2896, file: !196, line: 189, baseType: !9, size: 64, offset: 128)
!2902 = !{!2903, !2904, !2905, !2906, !2907, !2908, !2909}
!2903 = !DILocalVariable(name: "stream", arg: 1, scope: !2892, file: !199, line: 196, type: !2769)
!2904 = !DILocalVariable(name: "command_name", arg: 2, scope: !2892, file: !199, line: 197, type: !6)
!2905 = !DILocalVariable(name: "package", arg: 3, scope: !2892, file: !199, line: 197, type: !6)
!2906 = !DILocalVariable(name: "version", arg: 4, scope: !2892, file: !199, line: 198, type: !6)
!2907 = !DILocalVariable(name: "authors", arg: 5, scope: !2892, file: !199, line: 198, type: !2895)
!2908 = !DILocalVariable(name: "n_authors", scope: !2892, file: !199, line: 200, type: !141)
!2909 = !DILocalVariable(name: "authtab", scope: !2892, file: !199, line: 201, type: !2910)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !150)
!2911 = !DILocation(line: 196, column: 23, scope: !2892)
!2912 = !DILocation(line: 197, column: 29, scope: !2892)
!2913 = !DILocation(line: 197, column: 55, scope: !2892)
!2914 = !DILocation(line: 198, column: 29, scope: !2892)
!2915 = !DILocation(line: 198, column: 46, scope: !2892)
!2916 = !DILocation(line: 201, column: 3, scope: !2892)
!2917 = !DILocation(line: 201, column: 15, scope: !2892)
!2918 = !DILocation(line: 200, column: 10, scope: !2892)
!2919 = !DILocation(line: 205, column: 35, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !199, line: 203, column: 3)
!2921 = distinct !DILexicalBlock(scope: !2892, file: !199, line: 203, column: 3)
!2922 = !DILocation(line: 205, column: 14, scope: !2920)
!2923 = !DILocation(line: 205, column: 33, scope: !2920)
!2924 = !DILocation(line: 205, column: 67, scope: !2920)
!2925 = !DILocation(line: 203, column: 3, scope: !2921)
!2926 = !DILocation(line: 0, scope: !2920)
!2927 = !DILocation(line: 208, column: 3, scope: !2892)
!2928 = !DILocation(line: 210, column: 1, scope: !2892)
!2929 = distinct !DISubprogram(name: "version_etc", scope: !199, file: !199, line: 227, type: !2930, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !2769, !6, !6, !6, null}
!2932 = !{!2933, !2934, !2935, !2936, !2937}
!2933 = !DILocalVariable(name: "stream", arg: 1, scope: !2929, file: !199, line: 227, type: !2769)
!2934 = !DILocalVariable(name: "command_name", arg: 2, scope: !2929, file: !199, line: 228, type: !6)
!2935 = !DILocalVariable(name: "package", arg: 3, scope: !2929, file: !199, line: 228, type: !6)
!2936 = !DILocalVariable(name: "version", arg: 4, scope: !2929, file: !199, line: 229, type: !6)
!2937 = !DILocalVariable(name: "authors", scope: !2929, file: !199, line: 231, type: !2938)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !949, line: 52, baseType: !2939)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !951, line: 48, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !196, line: 231, baseType: !2941)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2896, size: 192, elements: !22)
!2942 = !DILocation(line: 227, column: 20, scope: !2929)
!2943 = !DILocation(line: 228, column: 26, scope: !2929)
!2944 = !DILocation(line: 228, column: 52, scope: !2929)
!2945 = !DILocation(line: 229, column: 26, scope: !2929)
!2946 = !DILocation(line: 231, column: 3, scope: !2929)
!2947 = !DILocation(line: 231, column: 11, scope: !2929)
!2948 = !DILocation(line: 233, column: 3, scope: !2929)
!2949 = !DILocation(line: 234, column: 3, scope: !2929)
!2950 = !DILocation(line: 235, column: 3, scope: !2929)
!2951 = !DILocation(line: 236, column: 1, scope: !2929)
!2952 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !199, file: !199, line: 239, type: !895, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !4)
!2953 = !DILocation(line: 245, column: 3, scope: !2952)
!2954 = !DILocation(line: 251, column: 3, scope: !2952)
!2955 = !DILocation(line: 256, column: 3, scope: !2952)
!2956 = !DILocation(line: 258, column: 1, scope: !2952)
!2957 = distinct !DISubprogram(name: "xnmalloc", scope: !207, file: !207, line: 99, type: !2958, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!9, !141, !141}
!2960 = !{!2961, !2962}
!2961 = !DILocalVariable(name: "n", arg: 1, scope: !2957, file: !207, line: 99, type: !141)
!2962 = !DILocalVariable(name: "s", arg: 2, scope: !2957, file: !207, line: 99, type: !141)
!2963 = !DILocation(line: 99, column: 18, scope: !2957)
!2964 = !DILocation(line: 99, column: 28, scope: !2957)
!2965 = !DILocation(line: 101, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2957, file: !207, line: 101, column: 7)
!2967 = !DILocation(line: 101, column: 7, scope: !2957)
!2968 = !DILocation(line: 102, column: 5, scope: !2966)
!2969 = !DILocation(line: 103, column: 21, scope: !2957)
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2971, file: !2972, line: 39, type: !141)
!2971 = distinct !DISubprogram(name: "xmalloc", scope: !2972, file: !2972, line: 39, type: !2973, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !2975)
!2972 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!9, !141}
!2975 = !{!2970, !2976}
!2976 = !DILocalVariable(name: "p", scope: !2971, file: !2972, line: 41, type: !9)
!2977 = !DILocation(line: 39, column: 17, scope: !2971, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 103, column: 10, scope: !2957)
!2979 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !2978)
!2980 = !DILocation(line: 41, column: 9, scope: !2971, inlinedAt: !2978)
!2981 = !DILocation(line: 42, column: 8, scope: !2982, inlinedAt: !2978)
!2982 = distinct !DILexicalBlock(scope: !2971, file: !2972, line: 42, column: 7)
!2983 = !DILocation(line: 42, column: 15, scope: !2982, inlinedAt: !2978)
!2984 = !DILocation(line: 42, column: 10, scope: !2982, inlinedAt: !2978)
!2985 = !DILocation(line: 43, column: 5, scope: !2982, inlinedAt: !2978)
!2986 = !DILocation(line: 103, column: 3, scope: !2957)
!2987 = !DILocation(line: 39, column: 17, scope: !2971)
!2988 = !DILocation(line: 41, column: 13, scope: !2971)
!2989 = !DILocation(line: 41, column: 9, scope: !2971)
!2990 = !DILocation(line: 42, column: 8, scope: !2982)
!2991 = !DILocation(line: 42, column: 15, scope: !2982)
!2992 = !DILocation(line: 42, column: 10, scope: !2982)
!2993 = !DILocation(line: 43, column: 5, scope: !2982)
!2994 = !DILocation(line: 44, column: 3, scope: !2971)
!2995 = distinct !DISubprogram(name: "xnrealloc", scope: !207, file: !207, line: 112, type: !2996, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!9, !9, !141, !141}
!2998 = !{!2999, !3000, !3001}
!2999 = !DILocalVariable(name: "p", arg: 1, scope: !2995, file: !207, line: 112, type: !9)
!3000 = !DILocalVariable(name: "n", arg: 2, scope: !2995, file: !207, line: 112, type: !141)
!3001 = !DILocalVariable(name: "s", arg: 3, scope: !2995, file: !207, line: 112, type: !141)
!3002 = !DILocation(line: 112, column: 18, scope: !2995)
!3003 = !DILocation(line: 112, column: 28, scope: !2995)
!3004 = !DILocation(line: 112, column: 38, scope: !2995)
!3005 = !DILocation(line: 114, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2995, file: !207, line: 114, column: 7)
!3007 = !DILocation(line: 114, column: 7, scope: !2995)
!3008 = !DILocation(line: 115, column: 5, scope: !3006)
!3009 = !DILocation(line: 116, column: 25, scope: !2995)
!3010 = !DILocalVariable(name: "p", arg: 1, scope: !3011, file: !2972, line: 51, type: !9)
!3011 = distinct !DISubprogram(name: "xrealloc", scope: !2972, file: !2972, line: 51, type: !3012, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!9, !9, !141}
!3014 = !{!3010, !3015}
!3015 = !DILocalVariable(name: "n", arg: 2, scope: !3011, file: !2972, line: 51, type: !141)
!3016 = !DILocation(line: 51, column: 17, scope: !3011, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 116, column: 10, scope: !2995)
!3018 = !DILocation(line: 51, column: 27, scope: !3011, inlinedAt: !3017)
!3019 = !DILocation(line: 53, column: 8, scope: !3020, inlinedAt: !3017)
!3020 = distinct !DILexicalBlock(scope: !3011, file: !2972, line: 53, column: 7)
!3021 = !DILocation(line: 53, column: 13, scope: !3020, inlinedAt: !3017)
!3022 = !DILocation(line: 53, column: 10, scope: !3020, inlinedAt: !3017)
!3023 = !DILocation(line: 57, column: 7, scope: !3024, inlinedAt: !3017)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !2972, line: 54, column: 5)
!3025 = !DILocation(line: 58, column: 7, scope: !3024, inlinedAt: !3017)
!3026 = !DILocation(line: 61, column: 7, scope: !3011, inlinedAt: !3017)
!3027 = !DILocation(line: 62, column: 8, scope: !3028, inlinedAt: !3017)
!3028 = distinct !DILexicalBlock(scope: !3011, file: !2972, line: 62, column: 7)
!3029 = !DILocation(line: 62, column: 13, scope: !3028, inlinedAt: !3017)
!3030 = !DILocation(line: 62, column: 10, scope: !3028, inlinedAt: !3017)
!3031 = !DILocation(line: 63, column: 5, scope: !3028, inlinedAt: !3017)
!3032 = !DILocation(line: 0, scope: !3011, inlinedAt: !3017)
!3033 = !DILocation(line: 116, column: 3, scope: !2995)
!3034 = !DILocation(line: 51, column: 17, scope: !3011)
!3035 = !DILocation(line: 51, column: 27, scope: !3011)
!3036 = !DILocation(line: 53, column: 8, scope: !3020)
!3037 = !DILocation(line: 53, column: 13, scope: !3020)
!3038 = !DILocation(line: 53, column: 10, scope: !3020)
!3039 = !DILocation(line: 57, column: 7, scope: !3024)
!3040 = !DILocation(line: 58, column: 7, scope: !3024)
!3041 = !DILocation(line: 61, column: 7, scope: !3011)
!3042 = !DILocation(line: 62, column: 8, scope: !3028)
!3043 = !DILocation(line: 62, column: 13, scope: !3028)
!3044 = !DILocation(line: 62, column: 10, scope: !3028)
!3045 = !DILocation(line: 63, column: 5, scope: !3028)
!3046 = !DILocation(line: 0, scope: !3011)
!3047 = !DILocation(line: 65, column: 1, scope: !3011)
!3048 = !DILocation(line: 174, column: 19, scope: !208)
!3049 = !DILocation(line: 174, column: 30, scope: !208)
!3050 = !DILocation(line: 174, column: 41, scope: !208)
!3051 = !DILocation(line: 176, column: 14, scope: !208)
!3052 = !DILocation(line: 176, column: 10, scope: !208)
!3053 = !DILocation(line: 178, column: 9, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !208, file: !207, line: 178, column: 7)
!3055 = !DILocation(line: 178, column: 7, scope: !208)
!3056 = !DILocation(line: 180, column: 13, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !207, line: 180, column: 11)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !207, line: 179, column: 5)
!3059 = !DILocation(line: 180, column: 11, scope: !3058)
!3060 = !DILocation(line: 188, column: 30, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !207, line: 181, column: 9)
!3062 = !DILocation(line: 189, column: 16, scope: !3061)
!3063 = !DILocation(line: 189, column: 13, scope: !3061)
!3064 = !DILocation(line: 190, column: 9, scope: !3061)
!3065 = !DILocation(line: 0, scope: !3061)
!3066 = !DILocation(line: 191, column: 11, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3058, file: !207, line: 191, column: 11)
!3068 = !DILocation(line: 191, column: 11, scope: !3058)
!3069 = !DILocation(line: 206, column: 7, scope: !208)
!3070 = !DILocation(line: 207, column: 25, scope: !208)
!3071 = !DILocation(line: 51, column: 17, scope: !3011, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 207, column: 10, scope: !208)
!3073 = !DILocation(line: 51, column: 27, scope: !3011, inlinedAt: !3072)
!3074 = !DILocation(line: 53, column: 10, scope: !3020, inlinedAt: !3072)
!3075 = !DILocation(line: 192, column: 9, scope: !3067)
!3076 = !DILocation(line: 200, column: 69, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !207, line: 200, column: 11)
!3078 = distinct !DILexicalBlock(scope: !3054, file: !207, line: 195, column: 5)
!3079 = !DILocation(line: 201, column: 11, scope: !3077)
!3080 = !DILocation(line: 200, column: 11, scope: !3078)
!3081 = !DILocation(line: 202, column: 9, scope: !3077)
!3082 = !DILocation(line: 203, column: 14, scope: !3078)
!3083 = !DILocation(line: 203, column: 18, scope: !3078)
!3084 = !DILocation(line: 203, column: 9, scope: !3078)
!3085 = !DILocation(line: 53, column: 8, scope: !3020, inlinedAt: !3072)
!3086 = !DILocation(line: 57, column: 7, scope: !3024, inlinedAt: !3072)
!3087 = !DILocation(line: 58, column: 7, scope: !3024, inlinedAt: !3072)
!3088 = !DILocation(line: 61, column: 7, scope: !3011, inlinedAt: !3072)
!3089 = !DILocation(line: 62, column: 8, scope: !3028, inlinedAt: !3072)
!3090 = !DILocation(line: 62, column: 13, scope: !3028, inlinedAt: !3072)
!3091 = !DILocation(line: 62, column: 10, scope: !3028, inlinedAt: !3072)
!3092 = !DILocation(line: 63, column: 5, scope: !3028, inlinedAt: !3072)
!3093 = !DILocation(line: 0, scope: !3011, inlinedAt: !3072)
!3094 = !DILocation(line: 207, column: 3, scope: !208)
!3095 = distinct !DISubprogram(name: "xcharalloc", scope: !207, file: !207, line: 216, type: !2050, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3096)
!3096 = !{!3097}
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3095, file: !207, line: 216, type: !141)
!3098 = !DILocation(line: 216, column: 20, scope: !3095)
!3099 = !DILocation(line: 39, column: 17, scope: !2971, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 218, column: 10, scope: !3095)
!3101 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3100)
!3102 = !DILocation(line: 41, column: 9, scope: !2971, inlinedAt: !3100)
!3103 = !DILocation(line: 42, column: 8, scope: !2982, inlinedAt: !3100)
!3104 = !DILocation(line: 42, column: 15, scope: !2982, inlinedAt: !3100)
!3105 = !DILocation(line: 42, column: 10, scope: !2982, inlinedAt: !3100)
!3106 = !DILocation(line: 43, column: 5, scope: !2982, inlinedAt: !3100)
!3107 = !DILocation(line: 218, column: 3, scope: !3095)
!3108 = distinct !DISubprogram(name: "x2realloc", scope: !2972, file: !2972, line: 74, type: !3109, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!9, !9, !211}
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "p", arg: 1, scope: !3108, file: !2972, line: 74, type: !9)
!3113 = !DILocalVariable(name: "pn", arg: 2, scope: !3108, file: !2972, line: 74, type: !211)
!3114 = !DILocation(line: 74, column: 18, scope: !3108)
!3115 = !DILocation(line: 74, column: 29, scope: !3108)
!3116 = !DILocation(line: 174, column: 19, scope: !208, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 76, column: 10, scope: !3108)
!3118 = !DILocation(line: 174, column: 30, scope: !208, inlinedAt: !3117)
!3119 = !DILocation(line: 174, column: 41, scope: !208, inlinedAt: !3117)
!3120 = !DILocation(line: 176, column: 14, scope: !208, inlinedAt: !3117)
!3121 = !DILocation(line: 176, column: 10, scope: !208, inlinedAt: !3117)
!3122 = !DILocation(line: 178, column: 9, scope: !3054, inlinedAt: !3117)
!3123 = !DILocation(line: 178, column: 7, scope: !208, inlinedAt: !3117)
!3124 = !DILocation(line: 180, column: 13, scope: !3057, inlinedAt: !3117)
!3125 = !DILocation(line: 180, column: 11, scope: !3058, inlinedAt: !3117)
!3126 = !DILocation(line: 191, column: 11, scope: !3067, inlinedAt: !3117)
!3127 = !DILocation(line: 191, column: 11, scope: !3058, inlinedAt: !3117)
!3128 = !DILocation(line: 206, column: 7, scope: !208, inlinedAt: !3117)
!3129 = !DILocation(line: 51, column: 17, scope: !3011, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 207, column: 10, scope: !208, inlinedAt: !3117)
!3131 = !DILocation(line: 51, column: 27, scope: !3011, inlinedAt: !3130)
!3132 = !DILocation(line: 53, column: 10, scope: !3020, inlinedAt: !3130)
!3133 = !DILocation(line: 192, column: 9, scope: !3067, inlinedAt: !3117)
!3134 = !DILocation(line: 201, column: 11, scope: !3077, inlinedAt: !3117)
!3135 = !DILocation(line: 200, column: 11, scope: !3078, inlinedAt: !3117)
!3136 = !DILocation(line: 202, column: 9, scope: !3077, inlinedAt: !3117)
!3137 = !DILocation(line: 203, column: 14, scope: !3078, inlinedAt: !3117)
!3138 = !DILocation(line: 203, column: 18, scope: !3078, inlinedAt: !3117)
!3139 = !DILocation(line: 203, column: 9, scope: !3078, inlinedAt: !3117)
!3140 = !DILocation(line: 53, column: 8, scope: !3020, inlinedAt: !3130)
!3141 = !DILocation(line: 57, column: 7, scope: !3024, inlinedAt: !3130)
!3142 = !DILocation(line: 58, column: 7, scope: !3024, inlinedAt: !3130)
!3143 = !DILocation(line: 61, column: 7, scope: !3011, inlinedAt: !3130)
!3144 = !DILocation(line: 62, column: 8, scope: !3028, inlinedAt: !3130)
!3145 = !DILocation(line: 62, column: 13, scope: !3028, inlinedAt: !3130)
!3146 = !DILocation(line: 62, column: 10, scope: !3028, inlinedAt: !3130)
!3147 = !DILocation(line: 63, column: 5, scope: !3028, inlinedAt: !3130)
!3148 = !DILocation(line: 0, scope: !3011, inlinedAt: !3130)
!3149 = !DILocation(line: 76, column: 3, scope: !3108)
!3150 = distinct !DISubprogram(name: "xzalloc", scope: !2972, file: !2972, line: 84, type: !2973, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3151)
!3151 = !{!3152}
!3152 = !DILocalVariable(name: "s", arg: 1, scope: !3150, file: !2972, line: 84, type: !141)
!3153 = !DILocation(line: 84, column: 17, scope: !3150)
!3154 = !DILocation(line: 39, column: 17, scope: !2971, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 86, column: 18, scope: !3150)
!3156 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3155)
!3157 = !DILocation(line: 41, column: 9, scope: !2971, inlinedAt: !3155)
!3158 = !DILocation(line: 42, column: 8, scope: !2982, inlinedAt: !3155)
!3159 = !DILocation(line: 42, column: 15, scope: !2982, inlinedAt: !3155)
!3160 = !DILocation(line: 42, column: 10, scope: !2982, inlinedAt: !3155)
!3161 = !DILocation(line: 43, column: 5, scope: !2982, inlinedAt: !3155)
!3162 = !DILocation(line: 86, column: 10, scope: !3150)
!3163 = !DILocation(line: 86, column: 3, scope: !3150)
!3164 = distinct !DISubprogram(name: "xcalloc", scope: !2972, file: !2972, line: 93, type: !2958, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DILocalVariable(name: "n", arg: 1, scope: !3164, file: !2972, line: 93, type: !141)
!3167 = !DILocalVariable(name: "s", arg: 2, scope: !3164, file: !2972, line: 93, type: !141)
!3168 = !DILocalVariable(name: "p", scope: !3164, file: !2972, line: 95, type: !9)
!3169 = !DILocation(line: 93, column: 17, scope: !3164)
!3170 = !DILocation(line: 93, column: 27, scope: !3164)
!3171 = !DILocation(line: 100, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3164, file: !2972, line: 100, column: 7)
!3173 = !DILocation(line: 101, column: 7, scope: !3172)
!3174 = !DILocation(line: 101, column: 18, scope: !3172)
!3175 = !DILocation(line: 95, column: 9, scope: !3164)
!3176 = !DILocation(line: 101, column: 16, scope: !3172)
!3177 = !DILocation(line: 100, column: 7, scope: !3164)
!3178 = !DILocation(line: 102, column: 5, scope: !3172)
!3179 = !DILocation(line: 103, column: 3, scope: !3164)
!3180 = distinct !DISubprogram(name: "xmemdup", scope: !2972, file: !2972, line: 111, type: !3181, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3185)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!9, !3183, !141}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3185 = !{!3186, !3187}
!3186 = !DILocalVariable(name: "p", arg: 1, scope: !3180, file: !2972, line: 111, type: !3183)
!3187 = !DILocalVariable(name: "s", arg: 2, scope: !3180, file: !2972, line: 111, type: !141)
!3188 = !DILocation(line: 111, column: 22, scope: !3180)
!3189 = !DILocation(line: 111, column: 32, scope: !3180)
!3190 = !DILocation(line: 39, column: 17, scope: !2971, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 113, column: 18, scope: !3180)
!3192 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3191)
!3193 = !DILocation(line: 41, column: 9, scope: !2971, inlinedAt: !3191)
!3194 = !DILocation(line: 42, column: 8, scope: !2982, inlinedAt: !3191)
!3195 = !DILocation(line: 42, column: 15, scope: !2982, inlinedAt: !3191)
!3196 = !DILocation(line: 42, column: 10, scope: !2982, inlinedAt: !3191)
!3197 = !DILocation(line: 43, column: 5, scope: !2982, inlinedAt: !3191)
!3198 = !DILocation(line: 113, column: 10, scope: !3180)
!3199 = !DILocation(line: 113, column: 3, scope: !3180)
!3200 = distinct !DISubprogram(name: "xstrdup", scope: !2972, file: !2972, line: 119, type: !2256, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3201)
!3201 = !{!3202}
!3202 = !DILocalVariable(name: "string", arg: 1, scope: !3200, file: !2972, line: 119, type: !6)
!3203 = !DILocation(line: 119, column: 22, scope: !3200)
!3204 = !DILocation(line: 121, column: 27, scope: !3200)
!3205 = !DILocation(line: 121, column: 43, scope: !3200)
!3206 = !DILocation(line: 111, column: 22, scope: !3180, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 121, column: 10, scope: !3200)
!3208 = !DILocation(line: 111, column: 32, scope: !3180, inlinedAt: !3207)
!3209 = !DILocation(line: 39, column: 17, scope: !2971, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 113, column: 18, scope: !3180, inlinedAt: !3207)
!3211 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3210)
!3212 = !DILocation(line: 41, column: 9, scope: !2971, inlinedAt: !3210)
!3213 = !DILocation(line: 42, column: 8, scope: !2982, inlinedAt: !3210)
!3214 = !DILocation(line: 42, column: 15, scope: !2982, inlinedAt: !3210)
!3215 = !DILocation(line: 42, column: 10, scope: !2982, inlinedAt: !3210)
!3216 = !DILocation(line: 43, column: 5, scope: !2982, inlinedAt: !3210)
!3217 = !DILocation(line: 113, column: 10, scope: !3180, inlinedAt: !3207)
!3218 = !DILocation(line: 121, column: 3, scope: !3200)
!3219 = distinct !DISubprogram(name: "xalloc_die", scope: !3220, file: !3220, line: 32, type: !895, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !220, retainedNodes: !4)
!3220 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3221 = !DILocation(line: 34, column: 10, scope: !3219)
!3222 = !DILocation(line: 34, column: 33, scope: !3219)
!3223 = !DILocation(line: 34, column: 3, scope: !3219)
!3224 = !DILocation(line: 40, column: 3, scope: !3219)
!3225 = distinct !DISubprogram(name: "xnanosleep", scope: !3226, file: !3226, line: 38, type: !3227, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !3229)
!3226 = !DIFile(filename: "lib/xnanosleep.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!18, !739}
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "seconds", arg: 1, scope: !3225, file: !3226, line: 38, type: !739)
!3231 = !DILocalVariable(name: "ts_sleep", scope: !3225, file: !3226, line: 40, type: !3232)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3233, line: 9, size: 128, elements: !3234)
!3233 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3234 = !{!3235, !3236}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3232, file: !3233, line: 11, baseType: !250, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3232, file: !3233, line: 12, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !251, line: 194, baseType: !252)
!3238 = !DILocation(line: 38, column: 20, scope: !3225)
!3239 = !DILocation(line: 40, column: 3, scope: !3225)
!3240 = !DILocation(line: 40, column: 30, scope: !3225)
!3241 = !DILocation(line: 50, column: 7, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !3226, line: 43, column: 5)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3226, line: 42, column: 3)
!3244 = distinct !DILexicalBlock(scope: !3225, file: !3226, line: 42, column: 3)
!3245 = !DILocation(line: 50, column: 13, scope: !3242)
!3246 = !DILocation(line: 40, column: 19, scope: !3225)
!3247 = !DILocation(line: 51, column: 11, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3242, file: !3226, line: 51, column: 11)
!3249 = !DILocation(line: 51, column: 39, scope: !3248)
!3250 = !DILocation(line: 51, column: 11, scope: !3242)
!3251 = !DILocation(line: 53, column: 11, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3242, file: !3226, line: 53, column: 11)
!3253 = !DILocation(line: 53, column: 26, scope: !3252)
!3254 = distinct !{!3254, !3255, !3256}
!3255 = !DILocation(line: 42, column: 3, scope: !3244)
!3256 = !DILocation(line: 55, column: 5, scope: !3244)
!3257 = !DILocation(line: 0, scope: !3252)
!3258 = !DILocation(line: 58, column: 1, scope: !3225)
!3259 = distinct !DISubprogram(name: "xstrtod", scope: !3260, file: !3260, line: 44, type: !3261, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !224, retainedNodes: !3265)
!3260 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!69, !6, !3263, !807, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272}
!3266 = !DILocalVariable(name: "str", arg: 1, scope: !3259, file: !3260, line: 44, type: !6)
!3267 = !DILocalVariable(name: "ptr", arg: 2, scope: !3259, file: !3260, line: 44, type: !3263)
!3268 = !DILocalVariable(name: "result", arg: 3, scope: !3259, file: !3260, line: 44, type: !807)
!3269 = !DILocalVariable(name: "convert", arg: 4, scope: !3259, file: !3260, line: 45, type: !3264)
!3270 = !DILocalVariable(name: "val", scope: !3259, file: !3260, line: 47, type: !739)
!3271 = !DILocalVariable(name: "terminator", scope: !3259, file: !3260, line: 48, type: !34)
!3272 = !DILocalVariable(name: "ok", scope: !3259, file: !3260, line: 49, type: !69)
!3273 = !DILocation(line: 44, column: 22, scope: !3259)
!3274 = !DILocation(line: 44, column: 40, scope: !3259)
!3275 = !DILocation(line: 44, column: 53, scope: !3259)
!3276 = !DILocation(line: 45, column: 19, scope: !3259)
!3277 = !DILocation(line: 48, column: 3, scope: !3259)
!3278 = !DILocation(line: 49, column: 8, scope: !3259)
!3279 = !DILocation(line: 51, column: 3, scope: !3259)
!3280 = !DILocation(line: 51, column: 9, scope: !3259)
!3281 = !DILocation(line: 48, column: 9, scope: !3259)
!3282 = !DILocation(line: 52, column: 9, scope: !3259)
!3283 = !DILocation(line: 47, column: 10, scope: !3259)
!3284 = !DILocation(line: 55, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 55, column: 7)
!3286 = !DILocation(line: 55, column: 18, scope: !3285)
!3287 = !DILocation(line: 55, column: 25, scope: !3285)
!3288 = !DILocation(line: 55, column: 33, scope: !3285)
!3289 = !DILocation(line: 55, column: 41, scope: !3285)
!3290 = !DILocation(line: 55, column: 44, scope: !3285)
!3291 = !DILocation(line: 55, column: 56, scope: !3285)
!3292 = !DILocation(line: 55, column: 7, scope: !3259)
!3293 = !DILocation(line: 62, column: 15, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3260, line: 62, column: 11)
!3295 = distinct !DILexicalBlock(scope: !3285, file: !3260, line: 58, column: 5)
!3296 = !DILocation(line: 62, column: 20, scope: !3294)
!3297 = !DILocation(line: 62, column: 23, scope: !3294)
!3298 = !DILocation(line: 62, column: 29, scope: !3294)
!3299 = !DILocation(line: 62, column: 11, scope: !3295)
!3300 = !DILocation(line: 66, column: 11, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 66, column: 7)
!3302 = !DILocation(line: 66, column: 7, scope: !3259)
!3303 = !DILocation(line: 67, column: 10, scope: !3301)
!3304 = !DILocation(line: 67, column: 5, scope: !3301)
!3305 = !DILocation(line: 69, column: 11, scope: !3259)
!3306 = !DILocation(line: 71, column: 1, scope: !3259)
!3307 = !DILocation(line: 70, column: 3, scope: !3259)
!3308 = distinct !DISubprogram(name: "rpl_calloc", scope: !3309, file: !3309, line: 42, type: !2958, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3310)
!3309 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3308, file: !3309, line: 42, type: !141)
!3312 = !DILocalVariable(name: "s", arg: 2, scope: !3308, file: !3309, line: 42, type: !141)
!3313 = !DILocalVariable(name: "result", scope: !3308, file: !3309, line: 44, type: !9)
!3314 = !DILocalVariable(name: "bytes", scope: !3315, file: !3309, line: 56, type: !141)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !3309, line: 53, column: 5)
!3316 = distinct !DILexicalBlock(scope: !3308, file: !3309, line: 47, column: 7)
!3317 = !DILocation(line: 42, column: 20, scope: !3308)
!3318 = !DILocation(line: 42, column: 30, scope: !3308)
!3319 = !DILocation(line: 47, column: 9, scope: !3316)
!3320 = !DILocation(line: 47, column: 19, scope: !3316)
!3321 = !DILocation(line: 47, column: 14, scope: !3316)
!3322 = !DILocation(line: 56, column: 24, scope: !3315)
!3323 = !DILocation(line: 56, column: 14, scope: !3315)
!3324 = !DILocation(line: 57, column: 17, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3315, file: !3309, line: 57, column: 11)
!3326 = !DILocation(line: 57, column: 21, scope: !3325)
!3327 = !DILocation(line: 57, column: 11, scope: !3315)
!3328 = !DILocation(line: 59, column: 11, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3325, file: !3309, line: 58, column: 9)
!3330 = !DILocation(line: 59, column: 17, scope: !3329)
!3331 = !DILocation(line: 65, column: 12, scope: !3308)
!3332 = !DILocation(line: 44, column: 9, scope: !3308)
!3333 = !DILocation(line: 72, column: 3, scope: !3308)
!3334 = !DILocation(line: 0, scope: !3329)
!3335 = !DILocation(line: 73, column: 1, scope: !3308)
!3336 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3337, file: !3337, line: 385, type: !3338, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3352)
!3337 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!141, !3340, !6, !141, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1213, line: 6, baseType: !3343)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1215, line: 21, baseType: !3344)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 13, size: 64, elements: !3345)
!3345 = !{!3346, !3347}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3344, file: !1215, line: 15, baseType: !18, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3344, file: !1215, line: 20, baseType: !3348, size: 32, offset: 32)
!3348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3344, file: !1215, line: 16, size: 32, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3348, file: !1215, line: 18, baseType: !107, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3348, file: !1215, line: 19, baseType: !1224, size: 32)
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359}
!3353 = !DILocalVariable(name: "pwc", arg: 1, scope: !3336, file: !3337, line: 385, type: !3340)
!3354 = !DILocalVariable(name: "s", arg: 2, scope: !3336, file: !3337, line: 385, type: !6)
!3355 = !DILocalVariable(name: "n", arg: 3, scope: !3336, file: !3337, line: 385, type: !141)
!3356 = !DILocalVariable(name: "ps", arg: 4, scope: !3336, file: !3337, line: 385, type: !3341)
!3357 = !DILocalVariable(name: "ret", scope: !3336, file: !3337, line: 387, type: !141)
!3358 = !DILocalVariable(name: "wc", scope: !3336, file: !3337, line: 388, type: !1229)
!3359 = !DILocalVariable(name: "uc", scope: !3360, file: !3337, line: 449, type: !1073)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !3337, line: 448, column: 5)
!3361 = distinct !DILexicalBlock(scope: !3336, file: !3337, line: 447, column: 7)
!3362 = !DILocation(line: 385, column: 23, scope: !3336)
!3363 = !DILocation(line: 385, column: 40, scope: !3336)
!3364 = !DILocation(line: 385, column: 50, scope: !3336)
!3365 = !DILocation(line: 385, column: 64, scope: !3336)
!3366 = !DILocation(line: 388, column: 3, scope: !3336)
!3367 = !DILocation(line: 404, column: 9, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3336, file: !3337, line: 404, column: 7)
!3369 = !DILocation(line: 404, column: 7, scope: !3336)
!3370 = !DILocation(line: 439, column: 9, scope: !3336)
!3371 = !DILocation(line: 387, column: 10, scope: !3336)
!3372 = !DILocation(line: 447, column: 19, scope: !3361)
!3373 = !DILocation(line: 447, column: 31, scope: !3361)
!3374 = !DILocation(line: 447, column: 26, scope: !3361)
!3375 = !DILocation(line: 447, column: 41, scope: !3361)
!3376 = !DILocation(line: 447, column: 7, scope: !3336)
!3377 = !DILocation(line: 449, column: 26, scope: !3360)
!3378 = !DILocation(line: 449, column: 21, scope: !3360)
!3379 = !DILocation(line: 450, column: 14, scope: !3360)
!3380 = !DILocation(line: 450, column: 12, scope: !3360)
!3381 = !DILocation(line: 0, scope: !3360)
!3382 = !DILocation(line: 456, column: 1, scope: !3336)
!3383 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !235, file: !235, line: 46, type: !3384, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !231, retainedNodes: !3393)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!18, !3386, !3392}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3388)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3233, line: 9, size: 128, elements: !3389)
!3389 = !{!3390, !3391}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3388, file: !3233, line: 11, baseType: !250, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3388, file: !3233, line: 12, baseType: !3237, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3393 = !{!3394, !3395, !3396, !3399, !3400, !3401}
!3394 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !3383, file: !235, line: 46, type: !3386)
!3395 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !3383, file: !235, line: 47, type: !3392)
!3396 = !DILocalVariable(name: "limit", scope: !3397, file: !235, line: 65, type: !3398)
!3397 = distinct !DILexicalBlock(scope: !3383, file: !235, line: 62, column: 3)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!3399 = !DILocalVariable(name: "seconds", scope: !3397, file: !235, line: 66, type: !248)
!3400 = !DILocalVariable(name: "intermediate", scope: !3397, file: !235, line: 67, type: !3388)
!3401 = !DILocalVariable(name: "result", scope: !3402, file: !235, line: 72, type: !18)
!3402 = distinct !DILexicalBlock(scope: !3397, file: !235, line: 71, column: 7)
!3403 = !DILocation(line: 46, column: 35, scope: !3383)
!3404 = !DILocation(line: 47, column: 29, scope: !3383)
!3405 = !DILocation(line: 56, column: 24, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3383, file: !235, line: 56, column: 7)
!3407 = !{!3408, !2095, i64 8}
!3408 = !{!"timespec", !2095, i64 0, !2095, i64 8}
!3409 = !DILocation(line: 56, column: 36, scope: !3406)
!3410 = !DILocation(line: 58, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3406, file: !235, line: 57, column: 5)
!3412 = !DILocation(line: 58, column: 13, scope: !3411)
!3413 = !DILocation(line: 59, column: 7, scope: !3411)
!3414 = !DILocation(line: 65, column: 18, scope: !3397)
!3415 = !DILocation(line: 66, column: 39, scope: !3397)
!3416 = !{!3408, !2095, i64 0}
!3417 = !DILocation(line: 66, column: 12, scope: !3397)
!3418 = !DILocation(line: 67, column: 5, scope: !3397)
!3419 = !DILocation(line: 68, column: 18, scope: !3397)
!3420 = !DILocation(line: 70, column: 5, scope: !3397)
!3421 = !DILocation(line: 0, scope: !3402)
!3422 = !DILocation(line: 70, column: 18, scope: !3397)
!3423 = !DILocation(line: 73, column: 29, scope: !3402)
!3424 = !DILocation(line: 67, column: 21, scope: !3397)
!3425 = !DILocation(line: 74, column: 18, scope: !3402)
!3426 = !DILocation(line: 72, column: 13, scope: !3402)
!3427 = !DILocation(line: 75, column: 17, scope: !3402)
!3428 = !DILocation(line: 76, column: 13, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3402, file: !235, line: 76, column: 13)
!3430 = !DILocation(line: 76, column: 13, scope: !3402)
!3431 = !DILocation(line: 78, column: 17, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !235, line: 78, column: 17)
!3433 = distinct !DILexicalBlock(scope: !3429, file: !235, line: 77, column: 11)
!3434 = !DILocation(line: 78, column: 17, scope: !3433)
!3435 = !DILocation(line: 79, column: 32, scope: !3432)
!3436 = !DILocation(line: 79, column: 39, scope: !3432)
!3437 = !DILocation(line: 79, column: 15, scope: !3432)
!3438 = !DILocation(line: 84, column: 25, scope: !3397)
!3439 = !DILocation(line: 85, column: 12, scope: !3397)
!3440 = !DILocation(line: 85, column: 5, scope: !3397)
!3441 = !DILocation(line: 0, scope: !3397)
!3442 = !DILocation(line: 86, column: 3, scope: !3383)
!3443 = !DILocation(line: 0, scope: !3433)
!3444 = !DILocation(line: 87, column: 1, scope: !3383)
!3445 = distinct !DISubprogram(name: "close_stream", scope: !3446, file: !3446, line: 56, type: !3447, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3483)
!3446 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!18, !3449}
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2771, line: 7, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2773, line: 49, size: 1728, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3451, file: !2773, line: 51, baseType: !18, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3451, file: !2773, line: 54, baseType: !34, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3451, file: !2773, line: 55, baseType: !34, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3451, file: !2773, line: 56, baseType: !34, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3451, file: !2773, line: 57, baseType: !34, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3451, file: !2773, line: 58, baseType: !34, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3451, file: !2773, line: 59, baseType: !34, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3451, file: !2773, line: 60, baseType: !34, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3451, file: !2773, line: 61, baseType: !34, size: 64, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3451, file: !2773, line: 64, baseType: !34, size: 64, offset: 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3451, file: !2773, line: 65, baseType: !34, size: 64, offset: 640)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3451, file: !2773, line: 66, baseType: !34, size: 64, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3451, file: !2773, line: 68, baseType: !2788, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3451, file: !2773, line: 70, baseType: !3467, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3451, file: !2773, line: 72, baseType: !18, size: 32, offset: 896)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3451, file: !2773, line: 73, baseType: !18, size: 32, offset: 928)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3451, file: !2773, line: 74, baseType: !2795, size: 64, offset: 960)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3451, file: !2773, line: 77, baseType: !51, size: 16, offset: 1024)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3451, file: !2773, line: 78, baseType: !2798, size: 8, offset: 1040)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3451, file: !2773, line: 79, baseType: !2800, size: 8, offset: 1048)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3451, file: !2773, line: 81, baseType: !2802, size: 64, offset: 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3451, file: !2773, line: 89, baseType: !2805, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3451, file: !2773, line: 91, baseType: !2807, size: 64, offset: 1216)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3451, file: !2773, line: 92, baseType: !2810, size: 64, offset: 1280)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3451, file: !2773, line: 93, baseType: !3467, size: 64, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3451, file: !2773, line: 94, baseType: !9, size: 64, offset: 1408)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3451, file: !2773, line: 95, baseType: !141, size: 64, offset: 1472)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3451, file: !2773, line: 96, baseType: !18, size: 32, offset: 1536)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3451, file: !2773, line: 98, baseType: !2817, size: 160, offset: 1568)
!3483 = !{!3484, !3485, !3487, !3488}
!3484 = !DILocalVariable(name: "stream", arg: 1, scope: !3445, file: !3446, line: 56, type: !3449)
!3485 = !DILocalVariable(name: "some_pending", scope: !3445, file: !3446, line: 58, type: !3486)
!3486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!3487 = !DILocalVariable(name: "prev_fail", scope: !3445, file: !3446, line: 59, type: !3486)
!3488 = !DILocalVariable(name: "fclose_fail", scope: !3445, file: !3446, line: 60, type: !3486)
!3489 = !DILocation(line: 56, column: 21, scope: !3445)
!3490 = !DILocation(line: 58, column: 30, scope: !3445)
!3491 = !DILocalVariable(name: "__stream", arg: 1, scope: !3492, file: !3493, line: 135, type: !3449)
!3492 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3493, file: !3493, line: 135, type: !3447, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3494)
!3493 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3494 = !{!3491}
!3495 = !DILocation(line: 135, column: 1, scope: !3492, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 59, column: 27, scope: !3445)
!3497 = !DILocation(line: 137, column: 10, scope: !3492, inlinedAt: !3496)
!3498 = !{!3499, !773, i64 0}
!3499 = !{!"_IO_FILE", !773, i64 0, !690, i64 8, !690, i64 16, !690, i64 24, !690, i64 32, !690, i64 40, !690, i64 48, !690, i64 56, !690, i64 64, !690, i64 72, !690, i64 80, !690, i64 88, !690, i64 96, !690, i64 104, !773, i64 112, !773, i64 116, !2095, i64 120, !1469, i64 128, !691, i64 130, !691, i64 131, !690, i64 136, !2095, i64 144, !690, i64 152, !690, i64 160, !690, i64 168, !690, i64 176, !2095, i64 184, !773, i64 192, !691, i64 196}
!3500 = !DILocation(line: 59, column: 43, scope: !3445)
!3501 = !DILocation(line: 60, column: 29, scope: !3445)
!3502 = !DILocation(line: 60, column: 45, scope: !3445)
!3503 = !DILocation(line: 70, column: 17, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3445, file: !3446, line: 70, column: 7)
!3505 = !DILocation(line: 58, column: 50, scope: !3445)
!3506 = !DILocation(line: 70, column: 33, scope: !3504)
!3507 = !DILocation(line: 70, column: 53, scope: !3504)
!3508 = !DILocation(line: 70, column: 59, scope: !3504)
!3509 = !DILocation(line: 70, column: 7, scope: !3445)
!3510 = !DILocation(line: 72, column: 11, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3504, file: !3446, line: 71, column: 5)
!3512 = !DILocation(line: 73, column: 9, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3511, file: !3446, line: 72, column: 11)
!3514 = !DILocation(line: 73, column: 15, scope: !3513)
!3515 = !DILocation(line: 0, scope: !3445)
!3516 = !DILocation(line: 78, column: 1, scope: !3445)
!3517 = distinct !DISubprogram(name: "dtotimespec", scope: !3518, file: !3518, line: 30, type: !3519, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !240, retainedNodes: !3525)
!3518 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!3521, !739}
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3233, line: 9, size: 128, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3521, file: !3233, line: 11, baseType: !250, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3521, file: !3233, line: 12, baseType: !3237, size: 64, offset: 64)
!3525 = !{!3526, !3527, !3531, !3532}
!3526 = !DILocalVariable(name: "sec", arg: 1, scope: !3517, file: !3518, line: 30, type: !739)
!3527 = !DILocalVariable(name: "s", scope: !3528, file: !3518, line: 38, type: !248)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3518, line: 37, column: 5)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !3518, line: 34, column: 12)
!3530 = distinct !DILexicalBlock(scope: !3517, file: !3518, line: 32, column: 7)
!3531 = !DILocalVariable(name: "frac", scope: !3528, file: !3518, line: 39, type: !739)
!3532 = !DILocalVariable(name: "ns", scope: !3528, file: !3518, line: 40, type: !252)
!3533 = !DILocation(line: 30, column: 21, scope: !3517)
!3534 = !DILocation(line: 32, column: 32, scope: !3530)
!3535 = !DILocation(line: 32, column: 7, scope: !3517)
!3536 = !DILocation(line: 34, column: 19, scope: !3529)
!3537 = !DILocation(line: 34, column: 12, scope: !3530)
!3538 = !DILocation(line: 38, column: 18, scope: !3528)
!3539 = !DILocation(line: 38, column: 14, scope: !3528)
!3540 = !DILocation(line: 39, column: 50, scope: !3528)
!3541 = !DILocation(line: 39, column: 48, scope: !3528)
!3542 = !DILocation(line: 39, column: 41, scope: !3528)
!3543 = !DILocation(line: 39, column: 14, scope: !3528)
!3544 = !DILocation(line: 40, column: 17, scope: !3528)
!3545 = !DILocation(line: 40, column: 12, scope: !3528)
!3546 = !DILocation(line: 41, column: 13, scope: !3528)
!3547 = !DILocation(line: 41, column: 16, scope: !3528)
!3548 = !DILocation(line: 41, column: 10, scope: !3528)
!3549 = !DILocation(line: 42, column: 15, scope: !3528)
!3550 = !DILocation(line: 42, column: 9, scope: !3528)
!3551 = !DILocation(line: 43, column: 10, scope: !3528)
!3552 = !DILocation(line: 45, column: 14, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3528, file: !3518, line: 45, column: 11)
!3554 = !DILocation(line: 48, column: 14, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3553, file: !3518, line: 46, column: 9)
!3556 = !DILocation(line: 45, column: 11, scope: !3528)
!3557 = !DILocation(line: 0, scope: !3530)
!3558 = !DILocation(line: 53, column: 1, scope: !3517)
!3559 = distinct !DISubprogram(name: "hard_locale", scope: !3560, file: !3560, line: 38, type: !3561, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !3563)
!3560 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!69, !18}
!3563 = !{!3564, !3565, !3566}
!3564 = !DILocalVariable(name: "category", arg: 1, scope: !3559, file: !3560, line: 38, type: !18)
!3565 = !DILocalVariable(name: "hard", scope: !3559, file: !3560, line: 40, type: !69)
!3566 = !DILocalVariable(name: "p", scope: !3559, file: !3560, line: 41, type: !6)
!3567 = !DILocation(line: 38, column: 18, scope: !3559)
!3568 = !DILocation(line: 40, column: 8, scope: !3559)
!3569 = !DILocation(line: 41, column: 19, scope: !3559)
!3570 = !DILocation(line: 41, column: 15, scope: !3559)
!3571 = !DILocation(line: 43, column: 7, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3559, file: !3560, line: 43, column: 7)
!3573 = !DILocation(line: 43, column: 7, scope: !3559)
!3574 = !DILocation(line: 47, column: 15, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3560, line: 47, column: 15)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !3560, line: 46, column: 9)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !3560, line: 45, column: 11)
!3578 = distinct !DILexicalBlock(scope: !3572, file: !3560, line: 44, column: 5)
!3579 = !DILocation(line: 47, column: 31, scope: !3575)
!3580 = !DILocation(line: 47, column: 36, scope: !3575)
!3581 = !DILocation(line: 47, column: 39, scope: !3575)
!3582 = !DILocation(line: 47, column: 59, scope: !3575)
!3583 = !DILocation(line: 47, column: 15, scope: !3576)
!3584 = !DILocation(line: 48, column: 13, scope: !3575)
!3585 = !DILocation(line: 71, column: 3, scope: !3559)
!3586 = distinct !DISubprogram(name: "locale_charset", scope: !3587, file: !3587, line: 687, type: !3588, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !255, retainedNodes: !3590)
!3587 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!6}
!3590 = !{!3591}
!3591 = !DILocalVariable(name: "codeset", scope: !3586, file: !3587, line: 689, type: !6)
!3592 = !DILocation(line: 696, column: 13, scope: !3586)
!3593 = !DILocation(line: 689, column: 15, scope: !3586)
!3594 = !DILocation(line: 754, column: 15, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3586, file: !3587, line: 754, column: 7)
!3596 = !DILocation(line: 754, column: 7, scope: !3586)
!3597 = !DILocation(line: 907, column: 13, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3587, line: 907, column: 13)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !3587, line: 897, column: 7)
!3600 = distinct !DILexicalBlock(scope: !3586, file: !3587, line: 856, column: 3)
!3601 = !DILocation(line: 907, column: 24, scope: !3598)
!3602 = !DILocation(line: 907, column: 13, scope: !3599)
!3603 = !DILocation(line: 995, column: 3, scope: !3586)
!3604 = distinct !DISubprogram(name: "rpl_fclose", scope: !3605, file: !3605, line: 58, type: !3606, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !644, retainedNodes: !3642)
!3605 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!18, !3608}
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2771, line: 7, baseType: !3610)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2773, line: 49, size: 1728, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3610, file: !2773, line: 51, baseType: !18, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3610, file: !2773, line: 54, baseType: !34, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3610, file: !2773, line: 55, baseType: !34, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3610, file: !2773, line: 56, baseType: !34, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3610, file: !2773, line: 57, baseType: !34, size: 64, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3610, file: !2773, line: 58, baseType: !34, size: 64, offset: 320)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3610, file: !2773, line: 59, baseType: !34, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3610, file: !2773, line: 60, baseType: !34, size: 64, offset: 448)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3610, file: !2773, line: 61, baseType: !34, size: 64, offset: 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3610, file: !2773, line: 64, baseType: !34, size: 64, offset: 576)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3610, file: !2773, line: 65, baseType: !34, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3610, file: !2773, line: 66, baseType: !34, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3610, file: !2773, line: 68, baseType: !2788, size: 64, offset: 768)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3610, file: !2773, line: 70, baseType: !3626, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3610, file: !2773, line: 72, baseType: !18, size: 32, offset: 896)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3610, file: !2773, line: 73, baseType: !18, size: 32, offset: 928)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3610, file: !2773, line: 74, baseType: !2795, size: 64, offset: 960)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3610, file: !2773, line: 77, baseType: !51, size: 16, offset: 1024)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3610, file: !2773, line: 78, baseType: !2798, size: 8, offset: 1040)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3610, file: !2773, line: 79, baseType: !2800, size: 8, offset: 1048)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3610, file: !2773, line: 81, baseType: !2802, size: 64, offset: 1088)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3610, file: !2773, line: 89, baseType: !2805, size: 64, offset: 1152)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3610, file: !2773, line: 91, baseType: !2807, size: 64, offset: 1216)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3610, file: !2773, line: 92, baseType: !2810, size: 64, offset: 1280)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3610, file: !2773, line: 93, baseType: !3626, size: 64, offset: 1344)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3610, file: !2773, line: 94, baseType: !9, size: 64, offset: 1408)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3610, file: !2773, line: 95, baseType: !141, size: 64, offset: 1472)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3610, file: !2773, line: 96, baseType: !18, size: 32, offset: 1536)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3610, file: !2773, line: 98, baseType: !2817, size: 160, offset: 1568)
!3642 = !{!3643, !3644, !3645, !3646}
!3643 = !DILocalVariable(name: "fp", arg: 1, scope: !3604, file: !3605, line: 58, type: !3608)
!3644 = !DILocalVariable(name: "saved_errno", scope: !3604, file: !3605, line: 60, type: !18)
!3645 = !DILocalVariable(name: "fd", scope: !3604, file: !3605, line: 61, type: !18)
!3646 = !DILocalVariable(name: "result", scope: !3604, file: !3605, line: 62, type: !18)
!3647 = !DILocation(line: 58, column: 19, scope: !3604)
!3648 = !DILocation(line: 60, column: 7, scope: !3604)
!3649 = !DILocation(line: 62, column: 7, scope: !3604)
!3650 = !DILocation(line: 65, column: 8, scope: !3604)
!3651 = !DILocation(line: 61, column: 7, scope: !3604)
!3652 = !DILocation(line: 66, column: 10, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3604, file: !3605, line: 66, column: 7)
!3654 = !DILocation(line: 66, column: 7, scope: !3604)
!3655 = !DILocation(line: 67, column: 12, scope: !3653)
!3656 = !DILocation(line: 67, column: 5, scope: !3653)
!3657 = !DILocation(line: 72, column: 9, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3604, file: !3605, line: 72, column: 7)
!3659 = !DILocation(line: 72, column: 23, scope: !3658)
!3660 = !DILocation(line: 72, column: 33, scope: !3658)
!3661 = !DILocation(line: 72, column: 26, scope: !3658)
!3662 = !DILocation(line: 72, column: 59, scope: !3658)
!3663 = !DILocation(line: 73, column: 7, scope: !3658)
!3664 = !DILocation(line: 73, column: 10, scope: !3658)
!3665 = !DILocation(line: 72, column: 7, scope: !3604)
!3666 = !DILocation(line: 100, column: 12, scope: !3604)
!3667 = !DILocation(line: 105, column: 7, scope: !3604)
!3668 = !DILocation(line: 74, column: 19, scope: !3658)
!3669 = !DILocation(line: 105, column: 19, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3604, file: !3605, line: 105, column: 7)
!3671 = !DILocation(line: 107, column: 13, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3670, file: !3605, line: 106, column: 5)
!3673 = !DILocation(line: 109, column: 5, scope: !3672)
!3674 = !DILocation(line: 0, scope: !3604)
!3675 = !DILocation(line: 112, column: 1, scope: !3604)
!3676 = distinct !DISubprogram(name: "rpl_fflush", scope: !3677, file: !3677, line: 129, type: !3678, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !646, retainedNodes: !3714)
!3677 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!18, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2771, line: 7, baseType: !3682)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2773, line: 49, size: 1728, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3682, file: !2773, line: 51, baseType: !18, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3682, file: !2773, line: 54, baseType: !34, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3682, file: !2773, line: 55, baseType: !34, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3682, file: !2773, line: 56, baseType: !34, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3682, file: !2773, line: 57, baseType: !34, size: 64, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3682, file: !2773, line: 58, baseType: !34, size: 64, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3682, file: !2773, line: 59, baseType: !34, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3682, file: !2773, line: 60, baseType: !34, size: 64, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3682, file: !2773, line: 61, baseType: !34, size: 64, offset: 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3682, file: !2773, line: 64, baseType: !34, size: 64, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3682, file: !2773, line: 65, baseType: !34, size: 64, offset: 640)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3682, file: !2773, line: 66, baseType: !34, size: 64, offset: 704)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3682, file: !2773, line: 68, baseType: !2788, size: 64, offset: 768)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3682, file: !2773, line: 70, baseType: !3698, size: 64, offset: 832)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3682, file: !2773, line: 72, baseType: !18, size: 32, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3682, file: !2773, line: 73, baseType: !18, size: 32, offset: 928)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3682, file: !2773, line: 74, baseType: !2795, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3682, file: !2773, line: 77, baseType: !51, size: 16, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3682, file: !2773, line: 78, baseType: !2798, size: 8, offset: 1040)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3682, file: !2773, line: 79, baseType: !2800, size: 8, offset: 1048)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3682, file: !2773, line: 81, baseType: !2802, size: 64, offset: 1088)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3682, file: !2773, line: 89, baseType: !2805, size: 64, offset: 1152)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3682, file: !2773, line: 91, baseType: !2807, size: 64, offset: 1216)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3682, file: !2773, line: 92, baseType: !2810, size: 64, offset: 1280)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3682, file: !2773, line: 93, baseType: !3698, size: 64, offset: 1344)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3682, file: !2773, line: 94, baseType: !9, size: 64, offset: 1408)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3682, file: !2773, line: 95, baseType: !141, size: 64, offset: 1472)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3682, file: !2773, line: 96, baseType: !18, size: 32, offset: 1536)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3682, file: !2773, line: 98, baseType: !2817, size: 160, offset: 1568)
!3714 = !{!3715}
!3715 = !DILocalVariable(name: "stream", arg: 1, scope: !3676, file: !3677, line: 129, type: !3680)
!3716 = !DILocation(line: 129, column: 19, scope: !3676)
!3717 = !DILocation(line: 150, column: 14, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3676, file: !3677, line: 150, column: 7)
!3719 = !DILocation(line: 150, column: 22, scope: !3718)
!3720 = !DILocation(line: 150, column: 27, scope: !3718)
!3721 = !DILocation(line: 150, column: 7, scope: !3676)
!3722 = !DILocation(line: 151, column: 12, scope: !3718)
!3723 = !DILocation(line: 151, column: 5, scope: !3718)
!3724 = !DILocalVariable(name: "fp", arg: 1, scope: !3725, file: !3677, line: 41, type: !3680)
!3725 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3677, file: !3677, line: 41, type: !3726, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !646, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3680}
!3728 = !{!3724}
!3729 = !DILocation(line: 41, column: 48, scope: !3725, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 156, column: 3, scope: !3676)
!3731 = !DILocation(line: 43, column: 11, scope: !3732, inlinedAt: !3730)
!3732 = distinct !DILexicalBlock(scope: !3725, file: !3677, line: 43, column: 7)
!3733 = !DILocation(line: 43, column: 18, scope: !3732, inlinedAt: !3730)
!3734 = !DILocation(line: 43, column: 7, scope: !3725, inlinedAt: !3730)
!3735 = !DILocation(line: 45, column: 5, scope: !3732, inlinedAt: !3730)
!3736 = !DILocation(line: 158, column: 10, scope: !3676)
!3737 = !DILocation(line: 158, column: 3, scope: !3676)
!3738 = !DILocation(line: 0, scope: !3676)
!3739 = !DILocation(line: 232, column: 1, scope: !3676)
!3740 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3741, file: !3741, line: 28, type: !3742, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !648, retainedNodes: !3779)
!3741 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!18, !3744, !3778, !18}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2771, line: 7, baseType: !3746)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2773, line: 49, size: 1728, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3746, file: !2773, line: 51, baseType: !18, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3746, file: !2773, line: 54, baseType: !34, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3746, file: !2773, line: 55, baseType: !34, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3746, file: !2773, line: 56, baseType: !34, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3746, file: !2773, line: 57, baseType: !34, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3746, file: !2773, line: 58, baseType: !34, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3746, file: !2773, line: 59, baseType: !34, size: 64, offset: 384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3746, file: !2773, line: 60, baseType: !34, size: 64, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3746, file: !2773, line: 61, baseType: !34, size: 64, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3746, file: !2773, line: 64, baseType: !34, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3746, file: !2773, line: 65, baseType: !34, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3746, file: !2773, line: 66, baseType: !34, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3746, file: !2773, line: 68, baseType: !2788, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3746, file: !2773, line: 70, baseType: !3762, size: 64, offset: 832)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3746, file: !2773, line: 72, baseType: !18, size: 32, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3746, file: !2773, line: 73, baseType: !18, size: 32, offset: 928)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3746, file: !2773, line: 74, baseType: !2795, size: 64, offset: 960)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3746, file: !2773, line: 77, baseType: !51, size: 16, offset: 1024)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3746, file: !2773, line: 78, baseType: !2798, size: 8, offset: 1040)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3746, file: !2773, line: 79, baseType: !2800, size: 8, offset: 1048)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3746, file: !2773, line: 81, baseType: !2802, size: 64, offset: 1088)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3746, file: !2773, line: 89, baseType: !2805, size: 64, offset: 1152)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3746, file: !2773, line: 91, baseType: !2807, size: 64, offset: 1216)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3746, file: !2773, line: 92, baseType: !2810, size: 64, offset: 1280)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3746, file: !2773, line: 93, baseType: !3762, size: 64, offset: 1344)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3746, file: !2773, line: 94, baseType: !9, size: 64, offset: 1408)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3746, file: !2773, line: 95, baseType: !141, size: 64, offset: 1472)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3746, file: !2773, line: 96, baseType: !18, size: 32, offset: 1536)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3746, file: !2773, line: 98, baseType: !2817, size: 160, offset: 1568)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !949, line: 63, baseType: !2795)
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DILocalVariable(name: "fp", arg: 1, scope: !3740, file: !3741, line: 28, type: !3744)
!3781 = !DILocalVariable(name: "offset", arg: 2, scope: !3740, file: !3741, line: 28, type: !3778)
!3782 = !DILocalVariable(name: "whence", arg: 3, scope: !3740, file: !3741, line: 28, type: !18)
!3783 = !DILocalVariable(name: "pos", scope: !3784, file: !3741, line: 117, type: !3778)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !3741, line: 113, column: 5)
!3785 = distinct !DILexicalBlock(scope: !3740, file: !3741, line: 52, column: 7)
!3786 = !DILocation(line: 28, column: 15, scope: !3740)
!3787 = !DILocation(line: 28, column: 25, scope: !3740)
!3788 = !DILocation(line: 28, column: 37, scope: !3740)
!3789 = !DILocation(line: 52, column: 11, scope: !3785)
!3790 = !{!3499, !690, i64 16}
!3791 = !DILocation(line: 52, column: 31, scope: !3785)
!3792 = !{!3499, !690, i64 8}
!3793 = !DILocation(line: 52, column: 24, scope: !3785)
!3794 = !DILocation(line: 53, column: 7, scope: !3785)
!3795 = !DILocation(line: 53, column: 14, scope: !3785)
!3796 = !{!3499, !690, i64 40}
!3797 = !DILocation(line: 53, column: 35, scope: !3785)
!3798 = !{!3499, !690, i64 32}
!3799 = !DILocation(line: 53, column: 28, scope: !3785)
!3800 = !DILocation(line: 54, column: 7, scope: !3785)
!3801 = !DILocation(line: 54, column: 14, scope: !3785)
!3802 = !{!3499, !690, i64 72}
!3803 = !DILocation(line: 54, column: 28, scope: !3785)
!3804 = !DILocation(line: 52, column: 7, scope: !3740)
!3805 = !DILocation(line: 117, column: 26, scope: !3784)
!3806 = !DILocation(line: 117, column: 19, scope: !3784)
!3807 = !DILocation(line: 117, column: 13, scope: !3784)
!3808 = !DILocation(line: 118, column: 15, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3784, file: !3741, line: 118, column: 11)
!3810 = !DILocation(line: 118, column: 11, scope: !3784)
!3811 = !DILocation(line: 129, column: 11, scope: !3784)
!3812 = !DILocation(line: 129, column: 18, scope: !3784)
!3813 = !DILocation(line: 130, column: 11, scope: !3784)
!3814 = !DILocation(line: 130, column: 19, scope: !3784)
!3815 = !{!3499, !2095, i64 144}
!3816 = !DILocation(line: 161, column: 7, scope: !3784)
!3817 = !DILocation(line: 163, column: 10, scope: !3740)
!3818 = !DILocation(line: 163, column: 3, scope: !3740)
!3819 = !DILocation(line: 0, scope: !3740)
!3820 = !DILocation(line: 164, column: 1, scope: !3740)
