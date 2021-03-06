; ModuleID = 'coreutils-8.30/src/printenv.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [167 x i8] c"Usage: %s [OPTION]... [VARIABLE]...\0APrint the values of the specified environment VARIABLE(s).\0AIf no VARIABLE is specified, print name and value pairs for them all.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"  -0, --null     end each output line with NUL, not newline\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"printenv\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@environ = external local_unnamed_addr global i8**, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !29
@.str.33 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !35
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !40
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !44
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !51
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !58
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !103
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !110
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !122
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !129
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !136
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !124
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !138
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.70 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.71 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.72 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.73 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.74 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.75 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.76 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.77 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.78 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.79 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.80 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.83 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.84 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.85 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.86 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.87 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.88 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !144
@.str.1.99 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !590 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !595, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 %0, metadata !594, metadata !DIExpression()), !dbg !618
  %3 = icmp eq i32 %0, 0, !dbg !619
  br i1 %3, label %9, label %4, !dbg !620

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !621, !tbaa !623
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !621
  %7 = load i8*, i8** @program_name, align 8, !dbg !621, !tbaa !623
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !621
  br label %59, !dbg !621

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !627
  %11 = load i8*, i8** @program_name, align 8, !dbg !627, !tbaa !623
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !627
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !628
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !623
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !628
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !629
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !623
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !629
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !630
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !623
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !630
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !631
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !631
  %24 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !632
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %24) #10, !dbg !632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %24, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !614
  %25 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !633
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !603, metadata !DIExpression()) #10, !dbg !634
  br label %26, !dbg !635

; <label>:26:                                     ; preds = %31, %9
  %27 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %28 = phi %struct.infomap* [ %32, %31 ], [ %25, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !603, metadata !DIExpression()) #10, !dbg !634
  %29 = tail call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %27) #14, !dbg !635
  %30 = icmp eq i32 %29, 0, !dbg !635
  br i1 %30, label %36, label %31, !dbg !636

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 1, !dbg !637
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !603, metadata !DIExpression()) #10, !dbg !634
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 0, !dbg !638
  %34 = load i8*, i8** %33, align 8, !dbg !638, !tbaa !639
  %35 = icmp eq i8* %34, null, !dbg !641
  br i1 %35, label %36, label %26, !dbg !642, !llvm.loop !643

; <label>:36:                                     ; preds = %31, %26
  %37 = phi %struct.infomap* [ %32, %31 ], [ %28, %26 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !603, metadata !DIExpression()) #10, !dbg !634
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !603, metadata !DIExpression()) #10, !dbg !634
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 1, !dbg !646
  %39 = load i8*, i8** %38, align 8, !dbg !646, !tbaa !648
  %40 = icmp eq i8* %39, null, !dbg !649
  %41 = select i1 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %39, !dbg !650
  call void @llvm.dbg.value(metadata i8* %41, metadata !602, metadata !DIExpression()) #10, !dbg !651
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !652
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !652
  %44 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !653
  call void @llvm.dbg.value(metadata i8* %44, metadata !610, metadata !DIExpression()) #10, !dbg !654
  %45 = icmp eq i8* %44, null, !dbg !655
  br i1 %45, label %52, label %46, !dbg !657

; <label>:46:                                     ; preds = %36
  %47 = tail call i32 @strncmp(i8* nonnull %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !658
  %48 = icmp eq i32 %47, 0, !dbg !658
  br i1 %48, label %52, label %49, !dbg !659

; <label>:49:                                     ; preds = %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !660
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !660
  br label %52, !dbg !662

; <label>:52:                                     ; preds = %36, %46, %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !663
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !663
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !664
  %56 = icmp eq i8* %41, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), !dbg !664
  %57 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !664
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* %41, i8* %57) #10, !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %24) #10, !dbg !665
  br label %59

; <label>:59:                                     ; preds = %52, %4
  tail call void @exit(i32 %0) #15, !dbg !666
  unreachable, !dbg !666
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !672, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i8** %1, metadata !673, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i8 0, metadata !680, metadata !DIExpression()), !dbg !690
  %3 = load i8*, i8** %1, align 8, !dbg !691, !tbaa !623
  tail call void @set_program_name(i8* %3) #10, !dbg !692
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !693
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !694
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !695
  call void @llvm.dbg.value(metadata i32 2, metadata !696, metadata !DIExpression()), !dbg !699
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !701, !tbaa !703
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !705
  br label %8, !dbg !706

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %8 ]
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !707
  call void @llvm.dbg.value(metadata i32 %10, metadata !679, metadata !DIExpression()), !dbg !708
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 48, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !706, !llvm.loop !709

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !711
  unreachable, !dbg !711

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !623
  %14 = load i8*, i8** @Version, align 8, !dbg !714, !tbaa !623
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* null) #10, !dbg !714
  tail call void @exit(i32 0) #15, !dbg !714
  unreachable, !dbg !714

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 2) #16, !dbg !715
  unreachable, !dbg !715

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !716, !tbaa !703
  %18 = icmp slt i32 %17, %0, !dbg !717
  br i1 %18, label %19, label %21, !dbg !718

; <label>:19:                                     ; preds = %16
  %20 = sext i32 %17 to i64, !dbg !719
  br label %32, !dbg !719

; <label>:21:                                     ; preds = %16
  %22 = load i8**, i8*** @environ, align 8, !dbg !721, !tbaa !623
  call void @llvm.dbg.value(metadata i8** %22, metadata !674, metadata !DIExpression()), !dbg !724
  %23 = load i8*, i8** %22, align 8, !dbg !725, !tbaa !623
  %24 = icmp eq i8* %23, null, !dbg !727
  br i1 %24, label %96, label %25, !dbg !728

; <label>:25:                                     ; preds = %21, %25
  %26 = phi i8* [ %30, %25 ], [ %23, %21 ]
  %27 = phi i8** [ %29, %25 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i8** %27, metadata !674, metadata !DIExpression()), !dbg !724
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %26, i32 %9) #10, !dbg !729
  %29 = getelementptr inbounds i8*, i8** %27, i64 1, !dbg !730
  call void @llvm.dbg.value(metadata i8** %29, metadata !674, metadata !DIExpression()), !dbg !724
  %30 = load i8*, i8** %29, align 8, !dbg !725, !tbaa !623
  %31 = icmp eq i8* %30, null, !dbg !727
  br i1 %31, label %96, label %25, !dbg !728, !llvm.loop !731

; <label>:32:                                     ; preds = %86, %19
  %33 = phi i64 [ %20, %19 ], [ %88, %86 ]
  %34 = phi i32 [ 0, %19 ], [ %87, %86 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !681, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i64 %33, metadata !677, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8 0, metadata !684, metadata !DIExpression()), !dbg !735
  %35 = getelementptr inbounds i8*, i8** %1, i64 %33, !dbg !719
  %36 = load i8*, i8** %35, align 8, !dbg !719, !tbaa !623
  %37 = tail call i8* @strchr(i8* %36, i32 61) #14, !dbg !736
  %38 = icmp eq i8* %37, null, !dbg !736
  br i1 %38, label %39, label %86, !dbg !737

; <label>:39:                                     ; preds = %32
  %40 = load i8**, i8*** @environ, align 8, !dbg !738, !tbaa !623
  call void @llvm.dbg.value(metadata i8** %40, metadata !674, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 0, metadata !684, metadata !DIExpression()), !dbg !735
  %41 = load i8*, i8** %40, align 8, !dbg !740, !tbaa !623
  %42 = icmp eq i8* %41, null, !dbg !742
  br i1 %42, label %81, label %43, !dbg !742

; <label>:43:                                     ; preds = %39, %79
  %44 = phi i8* [ %80, %79 ], [ %36, %39 ], !dbg !743
  %45 = phi i8* [ %77, %79 ], [ %41, %39 ]
  %46 = phi i8 [ %75, %79 ], [ 0, %39 ]
  %47 = phi i8** [ %76, %79 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i8 %46, metadata !684, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i8** %47, metadata !674, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8* %45, metadata !675, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %44, metadata !676, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %45, metadata !675, metadata !DIExpression()), !dbg !745
  %48 = load i8, i8* %45, align 1, !dbg !747, !tbaa !748
  %49 = icmp eq i8 %48, 0, !dbg !749
  br i1 %49, label %74, label %50, !dbg !750

; <label>:50:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %44, metadata !676, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %45, metadata !675, metadata !DIExpression()), !dbg !745
  %51 = load i8, i8* %44, align 1, !dbg !751, !tbaa !748
  %52 = icmp eq i8 %51, 0, !dbg !752
  br i1 %52, label %74, label %53, !dbg !753

; <label>:53:                                     ; preds = %50, %71
  %54 = phi i8 [ %72, %71 ], [ %51, %50 ]
  %55 = phi i8* [ %58, %71 ], [ %45, %50 ]
  %56 = phi i8* [ %59, %71 ], [ %44, %50 ]
  %57 = phi i8 [ %62, %71 ], [ %48, %50 ]
  call void @llvm.dbg.value(metadata i8* %55, metadata !675, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %56, metadata !676, metadata !DIExpression()), !dbg !746
  %58 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !754
  %59 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !755
  %60 = icmp eq i8 %57, %54, !dbg !756
  br i1 %60, label %61, label %74, !dbg !757

; <label>:61:                                     ; preds = %53
  %62 = load i8, i8* %58, align 1, !dbg !758, !tbaa !748
  switch i8 %62, label %71 [
    i8 61, label %63
    i8 0, label %74
  ], !dbg !761

; <label>:63:                                     ; preds = %61
  %64 = load i8, i8* %59, align 1, !dbg !762, !tbaa !748
  %65 = icmp eq i8 %64, 0, !dbg !763
  br i1 %65, label %66, label %69, !dbg !764

; <label>:66:                                     ; preds = %63
  call void @llvm.dbg.value(metadata i8* %55, metadata !675, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %55, metadata !675, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* %55, metadata !675, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* undef, metadata !675, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* undef, metadata !675, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8* undef, metadata !675, metadata !DIExpression()), !dbg !745
  %67 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !765
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %67, i32 %9) #10, !dbg !765
  call void @llvm.dbg.value(metadata i8 1, metadata !684, metadata !DIExpression()), !dbg !735
  br label %74, !dbg !767

; <label>:69:                                     ; preds = %63
  %70 = icmp eq i8 %62, 0, !dbg !749
  br i1 %70, label %74, label %71, !dbg !750

; <label>:71:                                     ; preds = %69, %61
  call void @llvm.dbg.value(metadata i8* %59, metadata !676, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %58, metadata !675, metadata !DIExpression()), !dbg !745
  %72 = load i8, i8* %59, align 1, !dbg !751, !tbaa !748
  %73 = icmp eq i8 %72, 0, !dbg !752
  br i1 %73, label %74, label %53, !dbg !753, !llvm.loop !768

; <label>:74:                                     ; preds = %61, %71, %69, %53, %50, %43, %66
  %75 = phi i8 [ 1, %66 ], [ %46, %43 ], [ %46, %50 ], [ %46, %53 ], [ %46, %69 ], [ %46, %71 ], [ %46, %61 ], !dbg !770
  %76 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !771
  call void @llvm.dbg.value(metadata i8 %75, metadata !684, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i8** %76, metadata !674, metadata !DIExpression()), !dbg !724
  %77 = load i8*, i8** %76, align 8, !dbg !740, !tbaa !623
  %78 = icmp eq i8* %77, null, !dbg !742
  br i1 %78, label %81, label %79, !dbg !742, !llvm.loop !772

; <label>:79:                                     ; preds = %74
  %80 = load i8*, i8** %35, align 8, !dbg !743, !tbaa !623
  br label %43, !dbg !742

; <label>:81:                                     ; preds = %74, %39
  %82 = phi i8 [ 0, %39 ], [ %75, %74 ], !dbg !774
  call void @llvm.dbg.value(metadata i8 %82, metadata !684, metadata !DIExpression()), !dbg !735
  %83 = and i8 %82, 1, !dbg !775
  %84 = zext i8 %83 to i32, !dbg !775
  %85 = add nsw i32 %34, %84, !dbg !776
  call void @llvm.dbg.value(metadata i32 %85, metadata !681, metadata !DIExpression()), !dbg !733
  br label %86, !dbg !777

; <label>:86:                                     ; preds = %32, %81
  %87 = phi i32 [ %85, %81 ], [ %34, %32 ], !dbg !770
  %88 = add nsw i64 %33, 1, !dbg !778
  call void @llvm.dbg.value(metadata i32 %87, metadata !681, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 undef, metadata !677, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !734
  %89 = trunc i64 %88 to i32, !dbg !779
  %90 = icmp eq i32 %89, %0, !dbg !779
  br i1 %90, label %91, label %32, !dbg !780, !llvm.loop !781

; <label>:91:                                     ; preds = %86
  call void @llvm.dbg.value(metadata i32 %87, metadata !681, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 %87, metadata !681, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 %87, metadata !681, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 %87, metadata !681, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 %87, metadata !681, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i32 %87, metadata !681, metadata !DIExpression()), !dbg !733
  %92 = load i32, i32* @optind, align 4, !dbg !783, !tbaa !703
  %93 = sub nsw i32 %0, %92, !dbg !784
  %94 = icmp ne i32 %87, %93, !dbg !785
  %95 = zext i1 %94 to i32
  br label %96

; <label>:96:                                     ; preds = %25, %21, %91
  %97 = phi i32 [ %95, %91 ], [ 0, %21 ], [ 0, %25 ]
  ret i32 %97, !dbg !786
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !787 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !789, metadata !DIExpression()), !dbg !790
  store i8* %0, i8** @file_name, align 8, !dbg !791, !tbaa !623
  ret void, !dbg !792
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !793 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !797, metadata !DIExpression()), !dbg !798
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !799, !tbaa !800
  ret void, !dbg !802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !803 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !810, !tbaa !623
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !811
  %3 = icmp eq i32 %2, 0, !dbg !812
  br i1 %3, label %22, label %4, !dbg !813

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !814, !tbaa !800, !range !815
  %6 = icmp eq i8 %5, 0, !dbg !814
  br i1 %6, label %11, label %7, !dbg !816

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !817
  %9 = load i32, i32* %8, align 4, !dbg !817, !tbaa !703
  %10 = icmp eq i32 %9, 32, !dbg !818
  br i1 %10, label %22, label %11, !dbg !819

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !820
  call void @llvm.dbg.value(metadata i8* %12, metadata !807, metadata !DIExpression()), !dbg !821
  %13 = load i8*, i8** @file_name, align 8, !dbg !822, !tbaa !623
  %14 = icmp eq i8* %13, null, !dbg !822
  %15 = tail call i32* @__errno_location() #17, !dbg !824
  %16 = load i32, i32* %15, align 4, !dbg !824, !tbaa !703
  br i1 %14, label %19, label %17, !dbg !825

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !826
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !827
  br label %20, !dbg !827

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %12) #10, !dbg !828
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !829, !tbaa !703
  tail call void @_exit(i32 %21) #15, !dbg !830
  unreachable, !dbg !830

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !831, !tbaa !623
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !833
  %25 = icmp eq i32 %24, 0, !dbg !834
  br i1 %25, label %28, label %26, !dbg !835

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !836, !tbaa !703
  tail call void @_exit(i32 %27) #15, !dbg !837
  unreachable, !dbg !837

; <label>:28:                                     ; preds = %22
  ret void, !dbg !838
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !839 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !841, metadata !DIExpression()), !dbg !844
  %2 = icmp eq i8* %0, null, !dbg !845
  br i1 %2, label %3, label %6, !dbg !847

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !848, !tbaa !623
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !850
  tail call void @abort() #15, !dbg !851
  unreachable, !dbg !851

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !852
  call void @llvm.dbg.value(metadata i8* %7, metadata !842, metadata !DIExpression()), !dbg !853
  %8 = icmp eq i8* %7, null, !dbg !854
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !855
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !856
  call void @llvm.dbg.value(metadata i8* %10, metadata !843, metadata !DIExpression()), !dbg !857
  %11 = ptrtoint i8* %10 to i64, !dbg !858
  %12 = ptrtoint i8* %0 to i64, !dbg !858
  %13 = sub i64 %11, %12, !dbg !858
  %14 = icmp sgt i64 %13, 6, !dbg !860
  br i1 %14, label %15, label %24, !dbg !861

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !862
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #14, !dbg !863
  %18 = icmp eq i32 %17, 0, !dbg !864
  br i1 %18, label %19, label %24, !dbg !865

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !841, metadata !DIExpression()), !dbg !844
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #14, !dbg !866
  %21 = icmp eq i32 %20, 0, !dbg !869
  br i1 %21, label %22, label %24, !dbg !870

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !871
  call void @llvm.dbg.value(metadata i8* %23, metadata !841, metadata !DIExpression()), !dbg !844
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !873, !tbaa !623
  br label %24, !dbg !874

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !841, metadata !DIExpression()), !dbg !844
  store i8* %25, i8** @program_name, align 8, !dbg !875, !tbaa !623
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !876, !tbaa !623
  ret void, !dbg !877
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !878 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !883, metadata !DIExpression()), !dbg !886
  %2 = tail call i32* @__errno_location() #17, !dbg !887
  %3 = load i32, i32* %2, align 4, !dbg !887, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %3, metadata !884, metadata !DIExpression()), !dbg !888
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !889
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !889
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !889
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !890
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !890
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !885, metadata !DIExpression()), !dbg !891
  store i32 %3, i32* %2, align 4, !dbg !892, !tbaa !703
  ret %struct.quoting_options* %8, !dbg !893
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !894 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !900, metadata !DIExpression()), !dbg !901
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !902
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !902
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !903
  %5 = load i32, i32* %4, align 8, !dbg !903, !tbaa !904
  ret i32 %5, !dbg !906
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !907 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !911, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i32 %1, metadata !912, metadata !DIExpression()), !dbg !914
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !915
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !915
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !916
  store i32 %1, i32* %5, align 8, !dbg !917, !tbaa !904
  ret void, !dbg !918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !919 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !923, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i8 %1, metadata !924, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i32 %2, metadata !925, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8 %1, metadata !926, metadata !DIExpression()), !dbg !935
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !936
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !936
  %6 = lshr i8 %1, 5, !dbg !937
  %7 = zext i8 %6 to i64, !dbg !937
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !938
  call void @llvm.dbg.value(metadata i32* %8, metadata !928, metadata !DIExpression()), !dbg !939
  %9 = and i8 %1, 31, !dbg !940
  %10 = zext i8 %9 to i32, !dbg !940
  call void @llvm.dbg.value(metadata i32 %10, metadata !930, metadata !DIExpression()), !dbg !941
  %11 = load i32, i32* %8, align 4, !dbg !942, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !943
  %13 = and i32 %12, 1, !dbg !944
  call void @llvm.dbg.value(metadata i32 %13, metadata !931, metadata !DIExpression()), !dbg !945
  %14 = and i32 %2, 1, !dbg !946
  %15 = xor i32 %13, %14, !dbg !947
  %16 = shl i32 %15, %10, !dbg !948
  %17 = xor i32 %16, %11, !dbg !949
  store i32 %17, i32* %8, align 4, !dbg !949, !tbaa !703
  ret i32 %13, !dbg !950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !951 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !955, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %1, metadata !956, metadata !DIExpression()), !dbg !959
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !960
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !955, metadata !DIExpression()), !dbg !958
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !963
  %6 = load i32, i32* %5, align 4, !dbg !963, !tbaa !964
  call void @llvm.dbg.value(metadata i32 %6, metadata !957, metadata !DIExpression()), !dbg !965
  store i32 %1, i32* %5, align 4, !dbg !966, !tbaa !964
  ret i32 %6, !dbg !967
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !968 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i8* %1, metadata !973, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i8* %2, metadata !974, metadata !DIExpression()), !dbg !977
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !978
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()), !dbg !975
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !981
  store i32 10, i32* %6, align 8, !dbg !982, !tbaa !904
  %7 = icmp ne i8* %1, null, !dbg !983
  %8 = icmp ne i8* %2, null, !dbg !985
  %9 = and i1 %7, %8, !dbg !986
  br i1 %9, label %11, label %10, !dbg !986

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !987
  unreachable, !dbg !987

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !988
  store i8* %1, i8** %12, align 8, !dbg !989, !tbaa !990
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !991
  store i8* %2, i8** %13, align 8, !dbg !992, !tbaa !993
  ret void, !dbg !994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !995 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !999, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 %1, metadata !1000, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8* %2, metadata !1001, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i64 %3, metadata !1002, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1003, metadata !DIExpression()), !dbg !1011
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1012
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1012
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1004, metadata !DIExpression()), !dbg !1013
  %8 = tail call i32* @__errno_location() #17, !dbg !1014
  %9 = load i32, i32* %8, align 4, !dbg !1014, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %9, metadata !1005, metadata !DIExpression()), !dbg !1015
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1016
  %11 = load i32, i32* %10, align 8, !dbg !1016, !tbaa !904
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1017
  %13 = load i32, i32* %12, align 4, !dbg !1017, !tbaa !964
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1018
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1019
  %16 = load i8*, i8** %15, align 8, !dbg !1019, !tbaa !990
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1020
  %18 = load i8*, i8** %17, align 8, !dbg !1020, !tbaa !993
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %19, metadata !1006, metadata !DIExpression()), !dbg !1022
  store i32 %9, i32* %8, align 4, !dbg !1023, !tbaa !703
  ret i64 %19, !dbg !1024
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1025 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1031, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %1, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %2, metadata !1033, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %3, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %4, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %5, metadata !1036, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i32* %6, metadata !1037, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %7, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %8, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 0, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* null, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 0, metadata !1045, metadata !DIExpression()), !dbg !1106
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1107
  %14 = icmp eq i64 %13, 1, !dbg !1108
  %15 = lshr i32 %5, 1, !dbg !1109
  %16 = trunc i32 %15 to i8, !dbg !1109
  %17 = and i8 %16, 1, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %17, metadata !1047, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 0, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1050, metadata !DIExpression()), !dbg !1112
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1113

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1103
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1104
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1105
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1106
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1114
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1110
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1111
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1112
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %39, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %38, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %37, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %36, metadata !1047, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %35, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %34, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %33, metadata !1044, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8* %32, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %31, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %30, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %29, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %28, metadata !1035, metadata !DIExpression()), !dbg !1097
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
  ], !dbg !1116

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %36, metadata !1047, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i32 5, metadata !1035, metadata !DIExpression()), !dbg !1097
  br label %93, !dbg !1117

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1047, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i32 5, metadata !1035, metadata !DIExpression()), !dbg !1097
  %43 = and i8 %36, 1, !dbg !1118
  %44 = icmp eq i8 %43, 0, !dbg !1118
  br i1 %44, label %45, label %93, !dbg !1117

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1120
  br i1 %46, label %93, label %47, !dbg !1123

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1120, !tbaa !748
  br label %93, !dbg !1120

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %28), !dbg !1124
  call void @llvm.dbg.value(metadata i8* %49, metadata !1038, metadata !DIExpression()), !dbg !1100
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %28), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %50, metadata !1039, metadata !DIExpression()), !dbg !1101
  br label %51, !dbg !1129

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %52, metadata !1038, metadata !DIExpression()), !dbg !1100
  %54 = and i8 %36, 1, !dbg !1130
  %55 = icmp eq i8 %54, 0, !dbg !1130
  br i1 %55, label %56, label %71, !dbg !1132

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1102
  %57 = load i8, i8* %52, align 1, !dbg !1133, !tbaa !748
  %58 = icmp eq i8 %57, 0, !dbg !1136
  br i1 %58, label %71, label %59, !dbg !1136

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %62, metadata !1041, metadata !DIExpression()), !dbg !1102
  %63 = icmp ult i64 %62, %40, !dbg !1137
  br i1 %63, label %64, label %66, !dbg !1140

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1137
  store i8 %60, i8* %65, align 1, !dbg !1137, !tbaa !748
  br label %66, !dbg !1137

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1140
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %68, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %67, metadata !1041, metadata !DIExpression()), !dbg !1102
  %69 = load i8, i8* %68, align 1, !dbg !1133, !tbaa !748
  %70 = icmp eq i8 %69, 0, !dbg !1136
  br i1 %70, label %71, label %59, !dbg !1136, !llvm.loop !1142

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1102
  call void @llvm.dbg.value(metadata i64 %72, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %53, metadata !1043, metadata !DIExpression()), !dbg !1104
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %73, metadata !1044, metadata !DIExpression()), !dbg !1105
  br label %93, !dbg !1145

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1045, metadata !DIExpression()), !dbg !1106
  br label %75, !dbg !1146

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8 %76, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1109
  br label %77, !dbg !1147

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1106
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8 %79, metadata !1047, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %78, metadata !1045, metadata !DIExpression()), !dbg !1106
  %80 = and i8 %79, 1, !dbg !1148
  %81 = icmp eq i8 %80, 0, !dbg !1148
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1150
  br label %83, !dbg !1150

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1151
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8 %85, metadata !1047, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %84, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1097
  %86 = and i8 %85, 1, !dbg !1152
  %87 = icmp eq i8 %86, 0, !dbg !1152
  br i1 %87, label %88, label %93, !dbg !1154

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1155
  br i1 %89, label %93, label %90, !dbg !1158

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1155, !tbaa !748
  br label %93, !dbg !1155

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1047, metadata !DIExpression()), !dbg !1109
  br label %93, !dbg !1159

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1160
  unreachable, !dbg !1160

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1102
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], !dbg !1114
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1114
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1114
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1161
  call void @llvm.dbg.value(metadata i8 %101, metadata !1047, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %99, metadata !1044, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %97, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 0, metadata !1040, metadata !DIExpression()), !dbg !1162
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
  br label %121, !dbg !1163

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1164
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1102
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1103
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1110
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1111
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1112
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %125, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %122, metadata !1040, metadata !DIExpression()), !dbg !1162
  %130 = icmp eq i64 %125, -1, !dbg !1165
  br i1 %130, label %131, label %135, !dbg !1166

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1167
  %133 = load i8, i8* %132, align 1, !dbg !1167, !tbaa !748
  %134 = icmp eq i8 %133, 0, !dbg !1168
  br i1 %134, label %617, label %137, !dbg !1169

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1170
  br i1 %136, label %617, label %137, !dbg !1169

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8 0, metadata !1057, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()), !dbg !1173
  br i1 %107, label %138, label %153, !dbg !1174

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1176
  %140 = and i1 %108, %130, !dbg !1177
  br i1 %140, label %141, label %143, !dbg !1177

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %142, metadata !1034, metadata !DIExpression()), !dbg !1096
  br label %143, !dbg !1179

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1034, metadata !DIExpression()), !dbg !1096
  %145 = icmp ugt i64 %139, %144, !dbg !1180
  br i1 %145, label %153, label %146, !dbg !1181

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1182
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1183
  %149 = icmp ne i32 %148, 0, !dbg !1184
  %150 = or i1 %149, %110, !dbg !1185
  %151 = xor i1 %149, true, !dbg !1185
  %152 = zext i1 %151 to i8, !dbg !1185
  br i1 %150, label %153, label %661, !dbg !1185

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1186
  call void @llvm.dbg.value(metadata i8 %155, metadata !1056, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %154, metadata !1034, metadata !DIExpression()), !dbg !1096
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1187
  %157 = load i8, i8* %156, align 1, !dbg !1187, !tbaa !748
  call void @llvm.dbg.value(metadata i8 %157, metadata !1051, metadata !DIExpression()), !dbg !1188
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
  ], !dbg !1189

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1190

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1191

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1057, metadata !DIExpression()), !dbg !1172
  %161 = and i8 %126, 1, !dbg !1195
  %162 = icmp eq i8 %161, 0, !dbg !1195
  %163 = and i1 %114, %162, !dbg !1195
  br i1 %163, label %164, label %180, !dbg !1195

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1197
  br i1 %165, label %166, label %168, !dbg !1201

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1197
  store i8 39, i8* %167, align 1, !dbg !1197, !tbaa !748
  br label %168, !dbg !1197

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %169, metadata !1041, metadata !DIExpression()), !dbg !1102
  %170 = icmp ult i64 %169, %129, !dbg !1202
  br i1 %170, label %171, label %173, !dbg !1205

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1202
  store i8 36, i8* %172, align 1, !dbg !1202, !tbaa !748
  br label %173, !dbg !1202

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %174, metadata !1041, metadata !DIExpression()), !dbg !1102
  %175 = icmp ult i64 %174, %129, !dbg !1206
  br i1 %175, label %176, label %178, !dbg !1209

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1206
  store i8 39, i8* %177, align 1, !dbg !1206, !tbaa !748
  br label %178, !dbg !1206

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %179, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1110
  br label %180, !dbg !1210

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1161
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1161
  call void @llvm.dbg.value(metadata i8 %182, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %181, metadata !1041, metadata !DIExpression()), !dbg !1102
  %183 = icmp ult i64 %181, %129, !dbg !1211
  br i1 %183, label %184, label %186, !dbg !1214

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1211
  store i8 92, i8* %185, align 1, !dbg !1211, !tbaa !748
  br label %186, !dbg !1211

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %187, metadata !1041, metadata !DIExpression()), !dbg !1102
  br i1 %104, label %188, label %478, !dbg !1215

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1217
  %190 = icmp ult i64 %189, %154, !dbg !1218
  br i1 %190, label %191, label %467, !dbg !1219

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1220
  %193 = load i8, i8* %192, align 1, !dbg !1220, !tbaa !748
  %194 = add i8 %193, -48, !dbg !1221
  %195 = icmp ult i8 %194, 10, !dbg !1221
  br i1 %195, label %196, label %467, !dbg !1221

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1222
  br i1 %197, label %198, label %200, !dbg !1226

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1222
  store i8 48, i8* %199, align 1, !dbg !1222, !tbaa !748
  br label %200, !dbg !1222

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %201, metadata !1041, metadata !DIExpression()), !dbg !1102
  %202 = icmp ult i64 %201, %129, !dbg !1227
  br i1 %202, label %203, label %205, !dbg !1230

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1227
  store i8 48, i8* %204, align 1, !dbg !1227, !tbaa !748
  br label %205, !dbg !1227

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %206, metadata !1041, metadata !DIExpression()), !dbg !1102
  br label %467, !dbg !1231

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1232

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1233

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1234

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1236

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1238
  %213 = icmp ult i64 %212, %154, !dbg !1239
  br i1 %213, label %214, label %467, !dbg !1240

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1241
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1242
  %217 = load i8, i8* %216, align 1, !dbg !1242, !tbaa !748
  %218 = icmp eq i8 %217, 63, !dbg !1243
  br i1 %218, label %219, label %467, !dbg !1244

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1245
  %221 = load i8, i8* %220, align 1, !dbg !1245, !tbaa !748
  %222 = sext i8 %221 to i32, !dbg !1245
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
  ], !dbg !1246

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1247

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1051, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %212, metadata !1040, metadata !DIExpression()), !dbg !1162
  %225 = icmp ult i64 %123, %129, !dbg !1249
  br i1 %225, label %226, label %228, !dbg !1252

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1249
  store i8 63, i8* %227, align 1, !dbg !1249, !tbaa !748
  br label %228, !dbg !1249

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %229, metadata !1041, metadata !DIExpression()), !dbg !1102
  %230 = icmp ult i64 %229, %129, !dbg !1253
  br i1 %230, label %231, label %233, !dbg !1256

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1253
  store i8 34, i8* %232, align 1, !dbg !1253, !tbaa !748
  br label %233, !dbg !1253

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %234, metadata !1041, metadata !DIExpression()), !dbg !1102
  %235 = icmp ult i64 %234, %129, !dbg !1257
  br i1 %235, label %236, label %238, !dbg !1260

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1257
  store i8 34, i8* %237, align 1, !dbg !1257, !tbaa !748
  br label %238, !dbg !1257

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %239, metadata !1041, metadata !DIExpression()), !dbg !1102
  %240 = icmp ult i64 %239, %129, !dbg !1261
  br i1 %240, label %241, label %243, !dbg !1264

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1261
  store i8 63, i8* %242, align 1, !dbg !1261, !tbaa !748
  br label %243, !dbg !1261

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %244, metadata !1041, metadata !DIExpression()), !dbg !1102
  br label %467, !dbg !1265

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1055, metadata !DIExpression()), !dbg !1266
  br label %255, !dbg !1267

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1055, metadata !DIExpression()), !dbg !1266
  br label %255, !dbg !1268

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1055, metadata !DIExpression()), !dbg !1266
  br label %253, !dbg !1269

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1055, metadata !DIExpression()), !dbg !1266
  br label %253, !dbg !1270

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1055, metadata !DIExpression()), !dbg !1266
  br label %255, !dbg !1271

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1055, metadata !DIExpression()), !dbg !1266
  br i1 %114, label %251, label %252, !dbg !1272

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1273

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1276

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1278
  call void @llvm.dbg.value(metadata i8 %254, metadata !1055, metadata !DIExpression()), !dbg !1266
  br i1 %113, label %255, label %661, !dbg !1279

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1278
  call void @llvm.dbg.value(metadata i8 %256, metadata !1055, metadata !DIExpression()), !dbg !1266
  br i1 %103, label %524, label %478, !dbg !1281

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1282
  br i1 %258, label %259, label %264, !dbg !1284

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1285, !tbaa !748
  %261 = icmp ne i8 %260, 0, !dbg !1286
  %262 = icmp ne i64 %122, 0, !dbg !1287
  %263 = or i1 %262, %261, !dbg !1289
  br i1 %263, label %467, label %270, !dbg !1289

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1290
  %266 = icmp ne i64 %122, 0, !dbg !1287
  %267 = or i1 %266, %265, !dbg !1284
  br i1 %267, label %467, label %270, !dbg !1284

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1287
  br i1 %269, label %270, label %467, !dbg !1291

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1173
  br label %271, !dbg !1292

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1278
  call void @llvm.dbg.value(metadata i8 %272, metadata !1058, metadata !DIExpression()), !dbg !1173
  br i1 %113, label %467, label %661, !dbg !1293

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1173
  br i1 %114, label %274, label %467, !dbg !1295

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1296

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1299
  %277 = icmp ne i64 %124, 0, !dbg !1301
  %278 = or i1 %277, %276, !dbg !1302
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1302
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %280, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %279, metadata !1042, metadata !DIExpression()), !dbg !1103
  %281 = icmp ult i64 %123, %280, !dbg !1303
  br i1 %281, label %282, label %284, !dbg !1306

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1303
  store i8 39, i8* %283, align 1, !dbg !1303, !tbaa !748
  br label %284, !dbg !1303

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %285, metadata !1041, metadata !DIExpression()), !dbg !1102
  %286 = icmp ult i64 %285, %280, !dbg !1307
  br i1 %286, label %287, label %289, !dbg !1310

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1307
  store i8 92, i8* %288, align 1, !dbg !1307, !tbaa !748
  br label %289, !dbg !1307

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %290, metadata !1041, metadata !DIExpression()), !dbg !1102
  %291 = icmp ult i64 %290, %280, !dbg !1311
  br i1 %291, label %292, label %294, !dbg !1314

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1311
  store i8 39, i8* %293, align 1, !dbg !1311, !tbaa !748
  br label %294, !dbg !1311

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %295, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1110
  br label %467, !dbg !1315

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1316

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1059, metadata !DIExpression()), !dbg !1317
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1318
  %299 = load i16*, i16** %298, align 8, !dbg !1318, !tbaa !623
  %300 = zext i8 %157 to i64, !dbg !1318
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1318
  %302 = load i16, i16* %301, align 2, !dbg !1318, !tbaa !1320
  %303 = lshr i16 %302, 14, !dbg !1322
  %304 = trunc i16 %303 to i8, !dbg !1322
  %305 = and i8 %304, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i8 %305, metadata !1062, metadata !DIExpression()), !dbg !1323
  br label %359, !dbg !1324

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1325
  store i64 0, i64* %10, align 8, !dbg !1326
  call void @llvm.dbg.value(metadata i64 0, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 1, metadata !1062, metadata !DIExpression()), !dbg !1323
  %307 = icmp eq i64 %154, -1, !dbg !1327
  br i1 %307, label %308, label %310, !dbg !1329

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %309, metadata !1034, metadata !DIExpression()), !dbg !1096
  br label %310, !dbg !1331

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1332
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  br label %312, !dbg !1333

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1334
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1335
  call void @llvm.dbg.value(metadata i8 %314, metadata !1062, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1336
  %315 = add i64 %313, %122, !dbg !1337
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1338
  %317 = sub i64 %311, %315, !dbg !1339
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1063, metadata !DIExpression(DW_OP_deref)), !dbg !1340
  call void @llvm.dbg.value(metadata i32* %12, metadata !1079, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %318, metadata !1082, metadata !DIExpression()), !dbg !1343
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1344

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  %320 = icmp ugt i64 %311, %315, !dbg !1345
  br i1 %320, label %321, label %344, !dbg !1347

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1059, metadata !DIExpression()), !dbg !1317
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1348
  %325 = load i8, i8* %324, align 1, !dbg !1348, !tbaa !748
  %326 = icmp eq i8 %325, 0, !dbg !1347
  br i1 %326, label %344, label %327, !dbg !1349

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %328, metadata !1059, metadata !DIExpression()), !dbg !1317
  %329 = add i64 %328, %122, !dbg !1351
  %330 = icmp ult i64 %329, %311, !dbg !1345
  br i1 %330, label %321, label %344, !dbg !1347, !llvm.loop !1352

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1353
  %333 = and i1 %116, %332, !dbg !1356
  call void @llvm.dbg.value(metadata i64 1, metadata !1083, metadata !DIExpression()), !dbg !1357
  br i1 %333, label %334, label %347, !dbg !1356

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1083, metadata !DIExpression()), !dbg !1357
  %336 = add i64 %335, %315, !dbg !1358
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1359
  %338 = load i8, i8* %337, align 1, !dbg !1359, !tbaa !748
  %339 = sext i8 %338 to i32, !dbg !1359
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1360

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %341, metadata !1083, metadata !DIExpression()), !dbg !1357
  %342 = icmp ult i64 %341, %318, !dbg !1353
  br i1 %342, label %334, label %347, !dbg !1362, !llvm.loop !1363

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %314, metadata !1062, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %314, metadata !1062, metadata !DIExpression()), !dbg !1323
  br label %344, !dbg !1365

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1062, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %352, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1365
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1366, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %348, metadata !1079, metadata !DIExpression()), !dbg !1341
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1368
  %350 = icmp eq i32 %349, 0, !dbg !1368
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1369
  call void @llvm.dbg.value(metadata i8 %351, metadata !1062, metadata !DIExpression()), !dbg !1323
  %352 = add i64 %318, %313, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %352, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %351, metadata !1062, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %352, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1365
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1063, metadata !DIExpression(DW_OP_deref)), !dbg !1340
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1371
  %354 = icmp eq i32 %353, 0, !dbg !1372
  br i1 %354, label %312, label %355, !dbg !1373, !llvm.loop !1374

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1376
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %351, metadata !1062, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %352, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1365
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1376
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1377
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1378
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1378
  call void @llvm.dbg.value(metadata i8 %362, metadata !1062, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %361, metadata !1059, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %360, metadata !1034, metadata !DIExpression()), !dbg !1096
  %363 = and i8 %362, 1, !dbg !1379
  %364 = icmp ne i8 %363, 0, !dbg !1379
  call void @llvm.dbg.value(metadata i8 %363, metadata !1058, metadata !DIExpression()), !dbg !1173
  %365 = icmp ult i64 %361, 2, !dbg !1380
  %366 = or i1 %364, %115, !dbg !1381
  %367 = and i1 %365, %366, !dbg !1382
  br i1 %367, label %467, label %368, !dbg !1382

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %369, metadata !1090, metadata !DIExpression()), !dbg !1384
  br label %370, !dbg !1385

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1386
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1390
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1110
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1386
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1392
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1172
  call void @llvm.dbg.value(metadata i8 %376, metadata !1057, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %375, metadata !1056, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %374, metadata !1051, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %373, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %372, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %371, metadata !1040, metadata !DIExpression()), !dbg !1162
  br i1 %366, label %423, label %377, !dbg !1396

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1397

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1057, metadata !DIExpression()), !dbg !1172
  %379 = and i8 %373, 1, !dbg !1400
  %380 = icmp eq i8 %379, 0, !dbg !1400
  %381 = and i1 %114, %380, !dbg !1400
  br i1 %381, label %382, label %398, !dbg !1400

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1402
  br i1 %383, label %384, label %386, !dbg !1406

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1402
  store i8 39, i8* %385, align 1, !dbg !1402, !tbaa !748
  br label %386, !dbg !1402

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %387, metadata !1041, metadata !DIExpression()), !dbg !1102
  %388 = icmp ult i64 %387, %129, !dbg !1407
  br i1 %388, label %389, label %391, !dbg !1410

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1407
  store i8 36, i8* %390, align 1, !dbg !1407, !tbaa !748
  br label %391, !dbg !1407

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %392, metadata !1041, metadata !DIExpression()), !dbg !1102
  %393 = icmp ult i64 %392, %129, !dbg !1411
  br i1 %393, label %394, label %396, !dbg !1414

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1411
  store i8 39, i8* %395, align 1, !dbg !1411, !tbaa !748
  br label %396, !dbg !1411

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %397, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1110
  br label %398, !dbg !1415

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1161
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1161
  call void @llvm.dbg.value(metadata i8 %400, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %399, metadata !1041, metadata !DIExpression()), !dbg !1102
  %401 = icmp ult i64 %399, %129, !dbg !1416
  br i1 %401, label %402, label %404, !dbg !1419

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1416
  store i8 92, i8* %403, align 1, !dbg !1416, !tbaa !748
  br label %404, !dbg !1416

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %405, metadata !1041, metadata !DIExpression()), !dbg !1102
  %406 = icmp ult i64 %405, %129, !dbg !1420
  br i1 %406, label %407, label %411, !dbg !1423

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1420
  %409 = or i8 %408, 48, !dbg !1420
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1420
  store i8 %409, i8* %410, align 1, !dbg !1420, !tbaa !748
  br label %411, !dbg !1420

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %412, metadata !1041, metadata !DIExpression()), !dbg !1102
  %413 = icmp ult i64 %412, %129, !dbg !1424
  br i1 %413, label %414, label %419, !dbg !1427

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1424
  %416 = and i8 %415, 7, !dbg !1424
  %417 = or i8 %416, 48, !dbg !1424
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1424
  store i8 %417, i8* %418, align 1, !dbg !1424, !tbaa !748
  br label %419, !dbg !1424

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %420, metadata !1041, metadata !DIExpression()), !dbg !1102
  %421 = and i8 %374, 7, !dbg !1428
  %422 = or i8 %421, 48, !dbg !1429
  call void @llvm.dbg.value(metadata i8 %422, metadata !1051, metadata !DIExpression()), !dbg !1188
  br label %432, !dbg !1430

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1431
  %425 = icmp eq i8 %424, 0, !dbg !1431
  br i1 %425, label %432, label %426, !dbg !1432

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1433
  br i1 %427, label %428, label %430, !dbg !1436

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1433
  store i8 92, i8* %429, align 1, !dbg !1433, !tbaa !748
  br label %430, !dbg !1433

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %431, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1171
  br label %432, !dbg !1437

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1438
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1110
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1439
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1440
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1442
  call void @llvm.dbg.value(metadata i8 %437, metadata !1057, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %436, metadata !1056, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %435, metadata !1051, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %434, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %433, metadata !1041, metadata !DIExpression()), !dbg !1102
  %438 = add i64 %371, 1, !dbg !1443
  %439 = icmp ugt i64 %369, %438, !dbg !1445
  br i1 %439, label %440, label %562, !dbg !1446

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1447
  %442 = icmp ne i8 %441, 0, !dbg !1447
  %443 = and i8 %437, 1, !dbg !1447
  %444 = icmp eq i8 %443, 0, !dbg !1447
  %445 = and i1 %442, %444, !dbg !1447
  br i1 %445, label %446, label %457, !dbg !1447

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1450
  br i1 %447, label %448, label %450, !dbg !1454

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1450
  store i8 39, i8* %449, align 1, !dbg !1450, !tbaa !748
  br label %450, !dbg !1450

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %451, metadata !1041, metadata !DIExpression()), !dbg !1102
  %452 = icmp ult i64 %451, %129, !dbg !1455
  br i1 %452, label %453, label %455, !dbg !1458

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1455
  store i8 39, i8* %454, align 1, !dbg !1455, !tbaa !748
  br label %455, !dbg !1455

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %456, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1110
  br label %457, !dbg !1459

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1460
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1161
  call void @llvm.dbg.value(metadata i8 %459, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %458, metadata !1041, metadata !DIExpression()), !dbg !1102
  %460 = icmp ult i64 %458, %129, !dbg !1461
  br i1 %460, label %461, label %463, !dbg !1463

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1461
  store i8 %435, i8* %462, align 1, !dbg !1461, !tbaa !748
  br label %463, !dbg !1461

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %464, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %438, metadata !1040, metadata !DIExpression()), !dbg !1162
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1464
  %466 = load i8, i8* %465, align 1, !dbg !1464, !tbaa !748
  call void @llvm.dbg.value(metadata i8 %466, metadata !1051, metadata !DIExpression()), !dbg !1188
  br label %370, !dbg !1465, !llvm.loop !1466

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1469
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1161
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1103
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1470
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1161
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1161
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1186
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1186
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1186
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %476, metadata !1058, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %475, metadata !1057, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %155, metadata !1056, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8 %474, metadata !1051, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %473, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %472, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %471, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %470, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %469, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %468, metadata !1040, metadata !DIExpression()), !dbg !1162
  br i1 %105, label %489, label %478, !dbg !1471

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
  br i1 %112, label %490, label %512, !dbg !1473

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1474

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
  %501 = lshr i8 %494, 5, !dbg !1475
  %502 = zext i8 %501 to i64, !dbg !1475
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1476
  %504 = load i32, i32* %503, align 4, !dbg !1476, !tbaa !703
  %505 = and i8 %494, 31, !dbg !1477
  %506 = zext i8 %505 to i32, !dbg !1477
  %507 = shl i32 1, %506, !dbg !1478
  %508 = and i32 %504, %507, !dbg !1478
  %509 = icmp eq i32 %508, 0, !dbg !1478
  %510 = icmp eq i8 %155, 0, !dbg !1479
  %511 = and i1 %510, %509, !dbg !1480
  br i1 %511, label %562, label %524, !dbg !1480

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
  %523 = icmp eq i8 %155, 0, !dbg !1479
  br i1 %523, label %562, label %524, !dbg !1481

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1482
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1161
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1103
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1470
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1110
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1111
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1483
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1186
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %532, metadata !1058, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %531, metadata !1051, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %530, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %529, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %528, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %527, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %526, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %525, metadata !1040, metadata !DIExpression()), !dbg !1162
  br i1 %110, label %534, label %661, !dbg !1486

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1057, metadata !DIExpression()), !dbg !1172
  %535 = and i8 %529, 1, !dbg !1488
  %536 = icmp eq i8 %535, 0, !dbg !1488
  %537 = and i1 %114, %536, !dbg !1488
  br i1 %537, label %538, label %554, !dbg !1488

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1490
  br i1 %539, label %540, label %542, !dbg !1494

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1490
  store i8 39, i8* %541, align 1, !dbg !1490, !tbaa !748
  br label %542, !dbg !1490

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %543, metadata !1041, metadata !DIExpression()), !dbg !1102
  %544 = icmp ult i64 %543, %533, !dbg !1495
  br i1 %544, label %545, label %547, !dbg !1498

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1495
  store i8 36, i8* %546, align 1, !dbg !1495, !tbaa !748
  br label %547, !dbg !1495

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %548, metadata !1041, metadata !DIExpression()), !dbg !1102
  %549 = icmp ult i64 %548, %533, !dbg !1499
  br i1 %549, label %550, label %552, !dbg !1502

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1499
  store i8 39, i8* %551, align 1, !dbg !1499, !tbaa !748
  br label %552, !dbg !1499

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %553, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1110
  br label %554, !dbg !1503

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1460
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1161
  call void @llvm.dbg.value(metadata i8 %556, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %555, metadata !1041, metadata !DIExpression()), !dbg !1102
  %557 = icmp ult i64 %555, %533, !dbg !1504
  br i1 %557, label %558, label %560, !dbg !1507

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1504
  store i8 92, i8* %559, align 1, !dbg !1504, !tbaa !748
  br label %560, !dbg !1504

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %561, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %572, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %571, metadata !1058, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %570, metadata !1057, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %569, metadata !1051, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %568, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %567, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %566, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %565, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %564, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %563, metadata !1040, metadata !DIExpression()), !dbg !1162
  br label %589, !dbg !1508

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1482
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1161
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1103
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1470
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1110
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1111
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1511
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1186
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1186
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %571, metadata !1058, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %570, metadata !1057, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %569, metadata !1051, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %568, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %567, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %566, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %565, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %564, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %563, metadata !1040, metadata !DIExpression()), !dbg !1162
  %573 = and i8 %567, 1, !dbg !1508
  %574 = icmp ne i8 %573, 0, !dbg !1508
  %575 = and i8 %570, 1, !dbg !1508
  %576 = icmp eq i8 %575, 0, !dbg !1508
  %577 = and i1 %574, %576, !dbg !1508
  br i1 %577, label %578, label %589, !dbg !1508

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1512
  br i1 %579, label %580, label %582, !dbg !1516

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1512
  store i8 39, i8* %581, align 1, !dbg !1512, !tbaa !748
  br label %582, !dbg !1512

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %583, metadata !1041, metadata !DIExpression()), !dbg !1102
  %584 = icmp ult i64 %583, %572, !dbg !1517
  br i1 %584, label %585, label %587, !dbg !1520

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1517
  store i8 39, i8* %586, align 1, !dbg !1517, !tbaa !748
  br label %587, !dbg !1517

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %588, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1110
  br label %589, !dbg !1521

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1460
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1161
  call void @llvm.dbg.value(metadata i8 %598, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %597, metadata !1041, metadata !DIExpression()), !dbg !1102
  %599 = icmp ult i64 %597, %590, !dbg !1522
  br i1 %599, label %600, label %602, !dbg !1525

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1522
  store i8 %592, i8* %601, align 1, !dbg !1522, !tbaa !748
  br label %602, !dbg !1522

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %603, metadata !1041, metadata !DIExpression()), !dbg !1102
  %604 = and i8 %591, 1, !dbg !1526
  %605 = icmp eq i8 %604, 0, !dbg !1526
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1528
  call void @llvm.dbg.value(metadata i8 %606, metadata !1050, metadata !DIExpression()), !dbg !1112
  br label %607, !dbg !1529

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1482
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1161
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1103
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1470
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1110
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1161
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1112
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %614, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %613, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %612, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %611, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %610, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %609, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %608, metadata !1040, metadata !DIExpression()), !dbg !1162
  %616 = add i64 %608, 1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %616, metadata !1040, metadata !DIExpression()), !dbg !1162
  br label %121, !dbg !1531, !llvm.loop !1532

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %125, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %125, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  %619 = icmp eq i64 %123, 0, !dbg !1534
  %620 = and i1 %114, %619, !dbg !1536
  %621 = xor i1 %620, true, !dbg !1536
  %622 = or i1 %110, %621, !dbg !1536
  br i1 %622, label %623, label %661, !dbg !1536

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1537
  %625 = xor i1 %624, true, !dbg !1537
  %626 = and i8 %127, 1, !dbg !1539
  %627 = icmp eq i8 %626, 0, !dbg !1539
  %628 = or i1 %627, %625, !dbg !1537
  br i1 %628, label %638, label %629, !dbg !1537

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1540
  %631 = icmp eq i8 %630, 0, !dbg !1540
  br i1 %631, label %634, label %632, !dbg !1543

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %125, metadata !1034, metadata !DIExpression()), !dbg !1096
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1544
  br label %671, !dbg !1545

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1546
  %636 = icmp ne i64 %124, 0, !dbg !1548
  %637 = and i1 %636, %635, !dbg !1549
  br i1 %637, label %27, label %638, !dbg !1549

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1094
  %639 = icmp ne i8* %98, null, !dbg !1550
  %640 = and i1 %639, %110, !dbg !1552
  br i1 %640, label %641, label %656, !dbg !1552

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1102
  %642 = load i8, i8* %98, align 1, !dbg !1553, !tbaa !748
  %643 = icmp eq i8 %642, 0, !dbg !1556
  br i1 %643, label %656, label %644, !dbg !1556

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %647, metadata !1041, metadata !DIExpression()), !dbg !1102
  %648 = icmp ult i64 %647, %129, !dbg !1557
  br i1 %648, label %649, label %651, !dbg !1560

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1557
  store i8 %645, i8* %650, align 1, !dbg !1557, !tbaa !748
  br label %651, !dbg !1557

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1560
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %653, metadata !1043, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %652, metadata !1041, metadata !DIExpression()), !dbg !1102
  %654 = load i8, i8* %653, align 1, !dbg !1553, !tbaa !748
  %655 = icmp eq i8 %654, 0, !dbg !1556
  br i1 %655, label %656, label %644, !dbg !1556, !llvm.loop !1562

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1102
  call void @llvm.dbg.value(metadata i64 %657, metadata !1041, metadata !DIExpression()), !dbg !1102
  %658 = icmp ult i64 %657, %129, !dbg !1564
  br i1 %658, label %659, label %671, !dbg !1566

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1567
  store i8 0, i8* %660, align 1, !dbg !1568, !tbaa !748
  br label %671, !dbg !1567

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1032, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %663, metadata !1034, metadata !DIExpression()), !dbg !1096
  %665 = icmp ne i32 %662, 2, !dbg !1569
  %666 = icmp eq i8 %102, 0, !dbg !1571
  %667 = or i1 %665, %666, !dbg !1572
  call void @llvm.dbg.value(metadata i32 4, metadata !1035, metadata !DIExpression()), !dbg !1097
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %668, metadata !1035, metadata !DIExpression()), !dbg !1097
  %669 = and i32 %5, -3, !dbg !1573
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1574
  br label %671, !dbg !1575

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1576
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1577 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1581, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 %1, metadata !1582, metadata !DIExpression()), !dbg !1586
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %3, metadata !1583, metadata !DIExpression()), !dbg !1588
  %4 = icmp eq i8* %3, %0, !dbg !1589
  br i1 %4, label %5, label %71, !dbg !1591

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %6, metadata !1584, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %6, metadata !1594, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8* null, metadata !1600, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8 85, metadata !1601, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 84, metadata !1602, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 70, metadata !1603, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 45, metadata !1604, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i8 56, metadata !1605, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1622
  %7 = load i8, i8* %6, align 1, !dbg !1623, !tbaa !748
  %8 = and i8 %7, -33, !dbg !1623
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1623

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1625, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8* null, metadata !1630, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8 84, metadata !1631, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 70, metadata !1632, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 45, metadata !1633, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8 56, metadata !1634, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1636, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1651
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1652
  %11 = load i8, i8* %10, align 1, !dbg !1652, !tbaa !748
  %12 = and i8 %11, -33, !dbg !1652
  %13 = icmp eq i8 %12, 84, !dbg !1652
  br i1 %13, label %14, label %68, !dbg !1652

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1654, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8* null, metadata !1659, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 70, metadata !1660, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 45, metadata !1661, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8 56, metadata !1662, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1664, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1678
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1679
  %16 = load i8, i8* %15, align 1, !dbg !1679, !tbaa !748
  %17 = and i8 %16, -33, !dbg !1679
  %18 = icmp eq i8 %17, 70, !dbg !1679
  br i1 %18, label %19, label %68, !dbg !1679

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1681, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* null, metadata !1686, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 45, metadata !1687, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 56, metadata !1688, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1689, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 0, metadata !1690, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1691, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 0, metadata !1692, metadata !DIExpression()), !dbg !1703
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1704
  %21 = load i8, i8* %20, align 1, !dbg !1704, !tbaa !748
  %22 = icmp eq i8 %21, 45, !dbg !1704
  br i1 %22, label %23, label %68, !dbg !1706

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1707, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8* null, metadata !1712, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i8 56, metadata !1713, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1727
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1728
  %25 = load i8, i8* %24, align 1, !dbg !1728, !tbaa !748
  %26 = icmp eq i8 %25, 56, !dbg !1728
  br i1 %26, label %27, label %68, !dbg !1730

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1731, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8* null, metadata !1736, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1739, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1749
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1750
  %29 = load i8, i8* %28, align 1, !dbg !1750, !tbaa !748
  %30 = icmp eq i8 %29, 0, !dbg !1750
  br i1 %30, label %31, label %68, !dbg !1752

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1753, !tbaa !748
  %33 = icmp eq i8 %32, 96, !dbg !1754
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !1753
  br label %71, !dbg !1755

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1625, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8* null, metadata !1630, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 66, metadata !1631, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 49, metadata !1632, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 56, metadata !1633, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 48, metadata !1634, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 51, metadata !1635, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 48, metadata !1636, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1768
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1769
  %37 = load i8, i8* %36, align 1, !dbg !1769, !tbaa !748
  %38 = and i8 %37, -33, !dbg !1769
  %39 = icmp eq i8 %38, 66, !dbg !1769
  br i1 %39, label %40, label %68, !dbg !1769

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1654, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8* null, metadata !1659, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 49, metadata !1660, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 56, metadata !1661, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 48, metadata !1662, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 51, metadata !1663, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8 48, metadata !1664, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1779
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1780
  %42 = load i8, i8* %41, align 1, !dbg !1780, !tbaa !748
  %43 = icmp eq i8 %42, 49, !dbg !1780
  br i1 %43, label %44, label %68, !dbg !1781

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1681, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* null, metadata !1686, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 56, metadata !1687, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 48, metadata !1688, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 51, metadata !1689, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 48, metadata !1690, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 0, metadata !1691, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, metadata !1692, metadata !DIExpression()), !dbg !1790
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1791
  %46 = load i8, i8* %45, align 1, !dbg !1791, !tbaa !748
  %47 = icmp eq i8 %46, 56, !dbg !1791
  br i1 %47, label %48, label %68, !dbg !1792

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1707, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8* null, metadata !1712, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 48, metadata !1713, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 51, metadata !1714, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 48, metadata !1715, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1800
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1801
  %50 = load i8, i8* %49, align 1, !dbg !1801, !tbaa !748
  %51 = icmp eq i8 %50, 48, !dbg !1801
  br i1 %51, label %52, label %68, !dbg !1802

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1731, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* null, metadata !1736, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 51, metadata !1737, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 48, metadata !1738, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 0, metadata !1739, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1809
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1810
  %54 = load i8, i8* %53, align 1, !dbg !1810, !tbaa !748
  %55 = icmp eq i8 %54, 51, !dbg !1810
  br i1 %55, label %56, label %68, !dbg !1811

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1812, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* null, metadata !1817, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 48, metadata !1818, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1828
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1829
  %58 = load i8, i8* %57, align 1, !dbg !1829, !tbaa !748
  %59 = icmp eq i8 %58, 48, !dbg !1829
  br i1 %59, label %60, label %68, !dbg !1831

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1832, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* null, metadata !1837, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1846
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1847
  %62 = load i8, i8* %61, align 1, !dbg !1847, !tbaa !748
  %63 = icmp eq i8 %62, 0, !dbg !1847
  br i1 %63, label %64, label %68, !dbg !1849

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1850, !tbaa !748
  %66 = icmp eq i8 %65, 96, !dbg !1851
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !1850
  br label %71, !dbg !1852

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1853
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !1854
  br label %71, !dbg !1855

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1856
  ret i8* %72, !dbg !1857
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1862, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %1, metadata !1863, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1864, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %0, metadata !1868, metadata !DIExpression()) #10, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %1, metadata !1873, metadata !DIExpression()) #10, !dbg !1883
  call void @llvm.dbg.value(metadata i64* null, metadata !1874, metadata !DIExpression()) #10, !dbg !1884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1875, metadata !DIExpression()) #10, !dbg !1885
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1886
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1876, metadata !DIExpression()) #10, !dbg !1887
  %6 = tail call i32* @__errno_location() #17, !dbg !1888
  %7 = load i32, i32* %6, align 4, !dbg !1888, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %7, metadata !1877, metadata !DIExpression()) #10, !dbg !1889
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1890
  %9 = load i32, i32* %8, align 4, !dbg !1890, !tbaa !964
  %10 = or i32 %9, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %10, metadata !1878, metadata !DIExpression()) #10, !dbg !1892
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1893
  %12 = load i32, i32* %11, align 8, !dbg !1893, !tbaa !904
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1894
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1895
  %15 = load i8*, i8** %14, align 8, !dbg !1895, !tbaa !990
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1896
  %17 = load i8*, i8** %16, align 8, !dbg !1896, !tbaa !993
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1897
  %19 = add i64 %18, 1, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %19, metadata !1879, metadata !DIExpression()) #10, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %19, metadata !1900, metadata !DIExpression()) #10, !dbg !1905
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1907
  call void @llvm.dbg.value(metadata i8* %20, metadata !1880, metadata !DIExpression()) #10, !dbg !1908
  %21 = load i32, i32* %11, align 8, !dbg !1909, !tbaa !904
  %22 = load i8*, i8** %14, align 8, !dbg !1910, !tbaa !990
  %23 = load i8*, i8** %16, align 8, !dbg !1911, !tbaa !993
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1912
  store i32 %7, i32* %6, align 4, !dbg !1913, !tbaa !703
  ret i8* %20, !dbg !1914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1869 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1868, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %1, metadata !1873, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64* %2, metadata !1874, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1875, metadata !DIExpression()), !dbg !1918
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1919
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1919
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1876, metadata !DIExpression()), !dbg !1920
  %7 = tail call i32* @__errno_location() #17, !dbg !1921
  %8 = load i32, i32* %7, align 4, !dbg !1921, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %8, metadata !1877, metadata !DIExpression()), !dbg !1922
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1923
  %10 = load i32, i32* %9, align 4, !dbg !1923, !tbaa !964
  %11 = icmp ne i64* %2, null, !dbg !1924
  %12 = xor i1 %11, true, !dbg !1924
  %13 = zext i1 %12 to i32, !dbg !1924
  %14 = or i32 %10, %13, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %14, metadata !1878, metadata !DIExpression()), !dbg !1926
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1927
  %16 = load i32, i32* %15, align 8, !dbg !1927, !tbaa !904
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1928
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1929
  %19 = load i8*, i8** %18, align 8, !dbg !1929, !tbaa !990
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1930
  %21 = load i8*, i8** %20, align 8, !dbg !1930, !tbaa !993
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1931
  %23 = add i64 %22, 1, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %23, metadata !1879, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %23, metadata !1900, metadata !DIExpression()) #10, !dbg !1934
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1936
  call void @llvm.dbg.value(metadata i8* %24, metadata !1880, metadata !DIExpression()), !dbg !1937
  %25 = load i32, i32* %15, align 8, !dbg !1938, !tbaa !904
  %26 = load i8*, i8** %18, align 8, !dbg !1939, !tbaa !990
  %27 = load i8*, i8** %20, align 8, !dbg !1940, !tbaa !993
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1941
  store i32 %8, i32* %7, align 4, !dbg !1942, !tbaa !703
  br i1 %11, label %29, label %30, !dbg !1943

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1944, !tbaa !1946
  br label %30, !dbg !1948

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !1950 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1954, !tbaa !623
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1952, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 1, metadata !1953, metadata !DIExpression()), !dbg !1956
  %2 = load i32, i32* @nslots, align 4, !dbg !1957, !tbaa !703
  %3 = icmp sgt i32 %2, 1, !dbg !1960
  br i1 %3, label %4, label %12, !dbg !1961

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1953, metadata !DIExpression()), !dbg !1956
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1962
  %7 = load i8*, i8** %6, align 8, !dbg !1962, !tbaa !1963
  tail call void @free(i8* %7) #10, !dbg !1965
  %8 = add nuw nsw i64 %5, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i32 undef, metadata !1953, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1956
  %9 = load i32, i32* @nslots, align 4, !dbg !1957, !tbaa !703
  %10 = sext i32 %9 to i64, !dbg !1960
  %11 = icmp slt i64 %8, %10, !dbg !1960
  br i1 %11, label %4, label %12, !dbg !1961, !llvm.loop !1967

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1969
  %14 = load i8*, i8** %13, align 8, !dbg !1969, !tbaa !1963
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1971
  br i1 %15, label %17, label %16, !dbg !1972

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !1973
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1975, !tbaa !1976
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1977, !tbaa !1963
  br label %17, !dbg !1978

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1979
  br i1 %18, label %21, label %19, !dbg !1981

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1982
  tail call void @free(i8* %20) #10, !dbg !1984
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1985, !tbaa !623
  br label %21, !dbg !1986

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1987, !tbaa !703
  ret void, !dbg !1988
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !1989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1993, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %1, metadata !1994, metadata !DIExpression()), !dbg !1996
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1997
  ret i8* %3, !dbg !1998
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !1999 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2003, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8* %1, metadata !2004, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %2, metadata !2005, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2006, metadata !DIExpression()), !dbg !2021
  %5 = tail call i32* @__errno_location() #17, !dbg !2022
  %6 = load i32, i32* %5, align 4, !dbg !2022, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %6, metadata !2007, metadata !DIExpression()), !dbg !2023
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2024, !tbaa !623
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2008, metadata !DIExpression()), !dbg !2025
  %8 = icmp slt i32 %0, 0, !dbg !2026
  br i1 %8, label %9, label %10, !dbg !2028

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2029
  unreachable, !dbg !2029

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2030, !tbaa !703
  %12 = icmp sgt i32 %11, %0, !dbg !2031
  br i1 %12, label %34, label %13, !dbg !2032

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2033
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2012, metadata !DIExpression()), !dbg !2034
  %15 = icmp eq i32 %0, 2147483647, !dbg !2035
  br i1 %15, label %16, label %17, !dbg !2037

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2038
  unreachable, !dbg !2038

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2039
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2039
  %20 = add nsw i32 %0, 1, !dbg !2040
  %21 = sext i32 %20 to i64, !dbg !2041
  %22 = shl nsw i64 %21, 4, !dbg !2042
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2043
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2043
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2008, metadata !DIExpression()), !dbg !2025
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2044, !tbaa !623
  br i1 %14, label %25, label %26, !dbg !2045

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2046, !tbaa.struct !2048
  br label %26, !dbg !2049

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2050, !tbaa !703
  %28 = sext i32 %27 to i64, !dbg !2051
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2051
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2052
  %31 = sub nsw i32 %20, %27, !dbg !2053
  %32 = sext i32 %31 to i64, !dbg !2054
  %33 = shl nsw i64 %32, 4, !dbg !2055
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2052
  store i32 %20, i32* @nslots, align 4, !dbg !2056, !tbaa !703
  br label %34, !dbg !2057

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2058
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2008, metadata !DIExpression()), !dbg !2025
  %36 = sext i32 %0 to i64, !dbg !2059
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2060
  %38 = load i64, i64* %37, align 8, !dbg !2060, !tbaa !1976
  call void @llvm.dbg.value(metadata i64 %38, metadata !2013, metadata !DIExpression()), !dbg !2061
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2062
  %40 = load i8*, i8** %39, align 8, !dbg !2062, !tbaa !1963
  call void @llvm.dbg.value(metadata i8* %40, metadata !2015, metadata !DIExpression()), !dbg !2063
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2064
  %42 = load i32, i32* %41, align 4, !dbg !2064, !tbaa !964
  %43 = or i32 %42, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %43, metadata !2016, metadata !DIExpression()), !dbg !2066
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2067
  %45 = load i32, i32* %44, align 8, !dbg !2067, !tbaa !904
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2068
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2069
  %48 = load i8*, i8** %47, align 8, !dbg !2069, !tbaa !990
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2070
  %50 = load i8*, i8** %49, align 8, !dbg !2070, !tbaa !993
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %51, metadata !2017, metadata !DIExpression()), !dbg !2072
  %52 = icmp ugt i64 %38, %51, !dbg !2073
  br i1 %52, label %63, label %53, !dbg !2075

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %54, metadata !2013, metadata !DIExpression()), !dbg !2061
  store i64 %54, i64* %37, align 8, !dbg !2078, !tbaa !1976
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2079
  br i1 %55, label %57, label %56, !dbg !2081

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2082
  br label %57, !dbg !2082

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1900, metadata !DIExpression()) #10, !dbg !2083
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %58, metadata !2015, metadata !DIExpression()), !dbg !2063
  store i8* %58, i8** %39, align 8, !dbg !2086, !tbaa !1963
  %59 = load i32, i32* %44, align 8, !dbg !2087, !tbaa !904
  %60 = load i8*, i8** %47, align 8, !dbg !2088, !tbaa !990
  %61 = load i8*, i8** %49, align 8, !dbg !2089, !tbaa !993
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2090
  br label %63, !dbg !2091

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2092
  call void @llvm.dbg.value(metadata i8* %64, metadata !2015, metadata !DIExpression()), !dbg !2063
  store i32 %6, i32* %5, align 4, !dbg !2093, !tbaa !703
  ret i8* %64, !dbg !2094
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2095 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2099, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %1, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %2, metadata !2101, metadata !DIExpression()), !dbg !2104
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2105
  ret i8* %4, !dbg !2106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()) #10, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %0, metadata !1994, metadata !DIExpression()) #10, !dbg !2115
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2116
  ret i8* %2, !dbg !2117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %1, metadata !2123, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 0, metadata !2099, metadata !DIExpression()) #10, !dbg !2126
  call void @llvm.dbg.value(metadata i8* %0, metadata !2100, metadata !DIExpression()) #10, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %1, metadata !2101, metadata !DIExpression()) #10, !dbg !2129
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2130
  ret i8* %3, !dbg !2131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2132 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2136, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i32 %1, metadata !2137, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8* %2, metadata !2138, metadata !DIExpression()), !dbg !2142
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2143
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2139, metadata !DIExpression(DW_OP_deref)), !dbg !2144
  call void @llvm.dbg.value(metadata i32 %1, metadata !2145, metadata !DIExpression()) #10, !dbg !2151
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2153, !alias.scope !2154
  %6 = icmp eq i32 %1, 10, !dbg !2157
  br i1 %6, label %7, label %8, !dbg !2159

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2160, !noalias !2154
  unreachable, !dbg !2160

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2161
  store i32 %1, i32* %9, align 8, !dbg !2162, !tbaa !904, !alias.scope !2154
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2139, metadata !DIExpression(DW_OP_deref)), !dbg !2144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2150, metadata !DIExpression(DW_OP_deref)), !dbg !2153
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2163
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2164
  ret i8* %10, !dbg !2165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2166 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2170, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i32 %1, metadata !2171, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %2, metadata !2172, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %3, metadata !2173, metadata !DIExpression()), !dbg !2178
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2179
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2179
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2174, metadata !DIExpression(DW_OP_deref)), !dbg !2180
  call void @llvm.dbg.value(metadata i32 %1, metadata !2145, metadata !DIExpression()) #10, !dbg !2181
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2183, !alias.scope !2184
  %7 = icmp eq i32 %1, 10, !dbg !2187
  br i1 %7, label %8, label %9, !dbg !2188

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2189, !noalias !2184
  unreachable, !dbg !2189

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2190
  store i32 %1, i32* %10, align 8, !dbg !2191, !tbaa !904, !alias.scope !2184
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2174, metadata !DIExpression(DW_OP_deref)), !dbg !2180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2150, metadata !DIExpression(DW_OP_deref)), !dbg !2183
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2192
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2193
  ret i8* %11, !dbg !2194
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2195 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2199, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8* %1, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 0, metadata !2136, metadata !DIExpression()) #10, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %0, metadata !2137, metadata !DIExpression()) #10, !dbg !2205
  call void @llvm.dbg.value(metadata i8* %1, metadata !2138, metadata !DIExpression()) #10, !dbg !2206
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2207
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2139, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %0, metadata !2145, metadata !DIExpression()) #10, !dbg !2209
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2211, !alias.scope !2212
  %5 = icmp eq i32 %0, 10, !dbg !2215
  br i1 %5, label %6, label %7, !dbg !2216

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2217, !noalias !2212
  unreachable, !dbg !2217

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2218
  store i32 %0, i32* %8, align 8, !dbg !2219, !tbaa !904, !alias.scope !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2139, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2211
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2220
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2221
  ret i8* %9, !dbg !2222
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2223 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2227, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %1, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %2, metadata !2229, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i32 0, metadata !2170, metadata !DIExpression()) #10, !dbg !2233
  call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()) #10, !dbg !2235
  call void @llvm.dbg.value(metadata i8* %1, metadata !2172, metadata !DIExpression()) #10, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %2, metadata !2173, metadata !DIExpression()) #10, !dbg !2237
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2174, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %0, metadata !2145, metadata !DIExpression()) #10, !dbg !2240
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2242, !alias.scope !2243
  %6 = icmp eq i32 %0, 10, !dbg !2246
  br i1 %6, label %7, label %8, !dbg !2247

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2248, !noalias !2243
  unreachable, !dbg !2248

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2249
  store i32 %0, i32* %9, align 8, !dbg !2250, !tbaa !904, !alias.scope !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2174, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2150, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2242
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2251
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2252
  ret i8* %10, !dbg !2253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2254 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2258, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %1, metadata !2259, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 %2, metadata !2260, metadata !DIExpression()), !dbg !2264
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2265
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2266, !tbaa.struct !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2261, metadata !DIExpression(DW_OP_deref)), !dbg !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !923, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8 %2, metadata !924, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 1, metadata !925, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 %2, metadata !926, metadata !DIExpression()), !dbg !2273
  %6 = lshr i8 %2, 5, !dbg !2274
  %7 = zext i8 %6 to i64, !dbg !2274
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2275
  call void @llvm.dbg.value(metadata i32* %8, metadata !928, metadata !DIExpression()), !dbg !2276
  %9 = and i8 %2, 31, !dbg !2277
  %10 = zext i8 %9 to i32, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %10, metadata !930, metadata !DIExpression()), !dbg !2278
  %11 = load i32, i32* %8, align 4, !dbg !2279, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !2280
  %13 = and i32 %12, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i32 %13, metadata !931, metadata !DIExpression()), !dbg !2282
  %14 = xor i32 %13, 1, !dbg !2283
  %15 = shl i32 %14, %10, !dbg !2284
  %16 = xor i32 %15, %11, !dbg !2285
  store i32 %16, i32* %8, align 4, !dbg !2285, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2261, metadata !DIExpression(DW_OP_deref)), !dbg !2268
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2286
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2287
  ret i8* %17, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2289 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %1, metadata !2294, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* %0, metadata !2258, metadata !DIExpression()) #10, !dbg !2297
  call void @llvm.dbg.value(metadata i64 -1, metadata !2259, metadata !DIExpression()) #10, !dbg !2299
  call void @llvm.dbg.value(metadata i8 %1, metadata !2260, metadata !DIExpression()) #10, !dbg !2300
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2302, !tbaa.struct !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2261, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2303
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !923, metadata !DIExpression()) #10, !dbg !2304
  call void @llvm.dbg.value(metadata i8 %1, metadata !924, metadata !DIExpression()) #10, !dbg !2306
  call void @llvm.dbg.value(metadata i32 1, metadata !925, metadata !DIExpression()) #10, !dbg !2307
  call void @llvm.dbg.value(metadata i8 %1, metadata !926, metadata !DIExpression()) #10, !dbg !2308
  %5 = lshr i8 %1, 5, !dbg !2309
  %6 = zext i8 %5 to i64, !dbg !2309
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2310
  call void @llvm.dbg.value(metadata i32* %7, metadata !928, metadata !DIExpression()) #10, !dbg !2311
  %8 = and i8 %1, 31, !dbg !2312
  %9 = zext i8 %8 to i32, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %9, metadata !930, metadata !DIExpression()) #10, !dbg !2313
  %10 = load i32, i32* %7, align 4, !dbg !2314, !tbaa !703
  %11 = lshr i32 %10, %9, !dbg !2315
  %12 = and i32 %11, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i32 %12, metadata !931, metadata !DIExpression()) #10, !dbg !2317
  %13 = xor i32 %12, 1, !dbg !2318
  %14 = shl i32 %13, %9, !dbg !2319
  %15 = xor i32 %14, %10, !dbg !2320
  store i32 %15, i32* %7, align 4, !dbg !2320, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2261, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2303
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2321
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2322
  ret i8* %16, !dbg !2323
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2324 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2326, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8* %0, metadata !2293, metadata !DIExpression()) #10, !dbg !2328
  call void @llvm.dbg.value(metadata i8 58, metadata !2294, metadata !DIExpression()) #10, !dbg !2330
  call void @llvm.dbg.value(metadata i8* %0, metadata !2258, metadata !DIExpression()) #10, !dbg !2331
  call void @llvm.dbg.value(metadata i64 -1, metadata !2259, metadata !DIExpression()) #10, !dbg !2333
  call void @llvm.dbg.value(metadata i8 58, metadata !2260, metadata !DIExpression()) #10, !dbg !2334
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2335
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2336, !tbaa.struct !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2261, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2337
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !923, metadata !DIExpression()) #10, !dbg !2338
  call void @llvm.dbg.value(metadata i8 58, metadata !924, metadata !DIExpression()) #10, !dbg !2340
  call void @llvm.dbg.value(metadata i32 1, metadata !925, metadata !DIExpression()) #10, !dbg !2341
  call void @llvm.dbg.value(metadata i8 58, metadata !926, metadata !DIExpression()) #10, !dbg !2342
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32* %4, metadata !928, metadata !DIExpression()) #10, !dbg !2344
  call void @llvm.dbg.value(metadata i32 26, metadata !930, metadata !DIExpression()) #10, !dbg !2345
  %5 = load i32, i32* %4, align 4, !dbg !2346, !tbaa !703
  %6 = or i32 %5, 67108864, !dbg !2347
  store i32 %6, i32* %4, align 4, !dbg !2347, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2261, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2337
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2349
  ret i8* %7, !dbg !2350
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2351 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2353, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %1, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %0, metadata !2258, metadata !DIExpression()) #10, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %1, metadata !2259, metadata !DIExpression()) #10, !dbg !2359
  call void @llvm.dbg.value(metadata i8 58, metadata !2260, metadata !DIExpression()) #10, !dbg !2360
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2362, !tbaa.struct !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2261, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2363
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !923, metadata !DIExpression()) #10, !dbg !2364
  call void @llvm.dbg.value(metadata i8 58, metadata !924, metadata !DIExpression()) #10, !dbg !2366
  call void @llvm.dbg.value(metadata i32 1, metadata !925, metadata !DIExpression()) #10, !dbg !2367
  call void @llvm.dbg.value(metadata i8 58, metadata !926, metadata !DIExpression()) #10, !dbg !2368
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2369
  call void @llvm.dbg.value(metadata i32* %5, metadata !928, metadata !DIExpression()) #10, !dbg !2370
  call void @llvm.dbg.value(metadata i32 26, metadata !930, metadata !DIExpression()) #10, !dbg !2371
  %6 = load i32, i32* %5, align 4, !dbg !2372, !tbaa !703
  %7 = or i32 %6, 67108864, !dbg !2373
  store i32 %7, i32* %5, align 4, !dbg !2373, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2261, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2363
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2374
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2375
  ret i8* %8, !dbg !2376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2377 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2150, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %1, metadata !2380, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %2, metadata !2381, metadata !DIExpression()), !dbg !2387
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2388
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2389
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %1, metadata !2145, metadata !DIExpression()) #10, !dbg !2390
  call void @llvm.dbg.value(metadata i32 0, metadata !2150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2383
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2383, !alias.scope !2391
  %8 = icmp eq i32 %1, 10, !dbg !2394
  br i1 %8, label %9, label %10, !dbg !2395

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2396, !noalias !2391
  unreachable, !dbg !2396

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2383
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2389
  store i32 %1, i32* %11, align 8, !dbg !2389
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2389
  %13 = bitcast i32* %12 to i8*, !dbg !2389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2389
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2382, metadata !DIExpression(DW_OP_deref)), !dbg !2397
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !923, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 58, metadata !924, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 1, metadata !925, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 58, metadata !926, metadata !DIExpression()), !dbg !2402
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2403
  call void @llvm.dbg.value(metadata i32* %14, metadata !928, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 26, metadata !930, metadata !DIExpression()), !dbg !2405
  %15 = load i32, i32* %14, align 4, !dbg !2406, !tbaa !703
  %16 = or i32 %15, 67108864, !dbg !2407
  store i32 %16, i32* %14, align 4, !dbg !2407, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2382, metadata !DIExpression(DW_OP_deref)), !dbg !2397
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2408
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2409
  ret i8* %17, !dbg !2410
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2411 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2415, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %1, metadata !2416, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* %2, metadata !2417, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* %3, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()) #10, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()) #10, !dbg !2435
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()) #10, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %3, metadata !2430, metadata !DIExpression()) #10, !dbg !2437
  call void @llvm.dbg.value(metadata i64 -1, metadata !2431, metadata !DIExpression()) #10, !dbg !2438
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2439
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2440, !tbaa.struct !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()) #10, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %1, metadata !973, metadata !DIExpression()) #10, !dbg !2444
  call void @llvm.dbg.value(metadata i8* %2, metadata !974, metadata !DIExpression()) #10, !dbg !2445
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()) #10, !dbg !2442
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2446
  store i32 10, i32* %7, align 8, !dbg !2447, !tbaa !904
  %8 = icmp ne i8* %1, null, !dbg !2448
  %9 = icmp ne i8* %2, null, !dbg !2449
  %10 = and i1 %8, %9, !dbg !2450
  br i1 %10, label %12, label %11, !dbg !2450

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2451
  unreachable, !dbg !2451

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2452
  store i8* %1, i8** %13, align 8, !dbg !2453, !tbaa !990
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2454
  store i8* %2, i8** %14, align 8, !dbg !2455, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2441
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2456
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2457
  ret i8* %15, !dbg !2458
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2424 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %3, metadata !2430, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %4, metadata !2431, metadata !DIExpression()), !dbg !2463
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2464
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2464
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2465, !tbaa.struct !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2432, metadata !DIExpression(DW_OP_deref)), !dbg !2466
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !972, metadata !DIExpression()) #10, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %1, metadata !973, metadata !DIExpression()) #10, !dbg !2469
  call void @llvm.dbg.value(metadata i8* %2, metadata !974, metadata !DIExpression()) #10, !dbg !2470
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !972, metadata !DIExpression()) #10, !dbg !2467
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2471
  store i32 10, i32* %8, align 8, !dbg !2472, !tbaa !904
  %9 = icmp ne i8* %1, null, !dbg !2473
  %10 = icmp ne i8* %2, null, !dbg !2474
  %11 = and i1 %9, %10, !dbg !2475
  br i1 %11, label %13, label %12, !dbg !2475

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2476
  unreachable, !dbg !2476

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2477
  store i8* %1, i8** %14, align 8, !dbg !2478, !tbaa !990
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2479
  store i8* %2, i8** %15, align 8, !dbg !2480, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2432, metadata !DIExpression(DW_OP_deref)), !dbg !2466
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2481
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2482
  ret i8* %16, !dbg !2483
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2484 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2488, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8* %1, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %2, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 0, metadata !2415, metadata !DIExpression()) #10, !dbg !2494
  call void @llvm.dbg.value(metadata i8* %0, metadata !2416, metadata !DIExpression()) #10, !dbg !2496
  call void @llvm.dbg.value(metadata i8* %1, metadata !2417, metadata !DIExpression()) #10, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %2, metadata !2418, metadata !DIExpression()) #10, !dbg !2498
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()) #10, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()) #10, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()) #10, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()) #10, !dbg !2503
  call void @llvm.dbg.value(metadata i64 -1, metadata !2431, metadata !DIExpression()) #10, !dbg !2504
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2505
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2505
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2506, !tbaa.struct !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2507
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !972, metadata !DIExpression()) #10, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %0, metadata !973, metadata !DIExpression()) #10, !dbg !2510
  call void @llvm.dbg.value(metadata i8* %1, metadata !974, metadata !DIExpression()) #10, !dbg !2511
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !972, metadata !DIExpression()) #10, !dbg !2508
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2512
  store i32 10, i32* %6, align 8, !dbg !2513, !tbaa !904
  %7 = icmp ne i8* %0, null, !dbg !2514
  %8 = icmp ne i8* %1, null, !dbg !2515
  %9 = and i1 %7, %8, !dbg !2516
  br i1 %9, label %11, label %10, !dbg !2516

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2517
  unreachable, !dbg !2517

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2518
  store i8* %0, i8** %12, align 8, !dbg !2519, !tbaa !990
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2520
  store i8* %1, i8** %13, align 8, !dbg !2521, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2507
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2523
  ret i8* %14, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2525 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2529, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %1, metadata !2530, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %2, metadata !2531, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %3, metadata !2532, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()) #10, !dbg !2537
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()) #10, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()) #10, !dbg !2540
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()) #10, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %3, metadata !2431, metadata !DIExpression()) #10, !dbg !2542
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2543
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2544, !tbaa.struct !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()) #10, !dbg !2546
  call void @llvm.dbg.value(metadata i8* %0, metadata !973, metadata !DIExpression()) #10, !dbg !2548
  call void @llvm.dbg.value(metadata i8* %1, metadata !974, metadata !DIExpression()) #10, !dbg !2549
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()) #10, !dbg !2546
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2550
  store i32 10, i32* %7, align 8, !dbg !2551, !tbaa !904
  %8 = icmp ne i8* %0, null, !dbg !2552
  %9 = icmp ne i8* %1, null, !dbg !2553
  %10 = and i1 %8, %9, !dbg !2554
  br i1 %10, label %12, label %11, !dbg !2554

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2555
  unreachable, !dbg !2555

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2556
  store i8* %0, i8** %13, align 8, !dbg !2557, !tbaa !990
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2558
  store i8* %1, i8** %14, align 8, !dbg !2559, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2545
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2561
  ret i8* %15, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2563 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %2, metadata !2569, metadata !DIExpression()), !dbg !2572
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2573
  ret i8* %4, !dbg !2574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2575 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %1, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 0, metadata !2567, metadata !DIExpression()) #10, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !2568, metadata !DIExpression()) #10, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()) #10, !dbg !2586
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2587
  ret i8* %3, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8* %1, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %0, metadata !2567, metadata !DIExpression()) #10, !dbg !2597
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()) #10, !dbg !2599
  call void @llvm.dbg.value(metadata i64 -1, metadata !2569, metadata !DIExpression()) #10, !dbg !2600
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2601
  ret i8* %3, !dbg !2602
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2603 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2593, metadata !DIExpression()) #10, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()) #10, !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2567, metadata !DIExpression()) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %0, metadata !2568, metadata !DIExpression()) #10, !dbg !2614
  call void @llvm.dbg.value(metadata i64 -1, metadata !2569, metadata !DIExpression()) #10, !dbg !2615
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2616
  ret i8* %2, !dbg !2617
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2618 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2678, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8* %1, metadata !2679, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %2, metadata !2680, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8* %3, metadata !2681, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8** %4, metadata !2682, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %5, metadata !2683, metadata !DIExpression()), !dbg !2689
  %7 = icmp eq i8* %1, null, !dbg !2690
  br i1 %7, label %10, label %8, !dbg !2692

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2693
  br label %12, !dbg !2693

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.68, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2694
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i32 5) #10, !dbg !2695
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2695
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.70, i64 0, i64 0), i32 5) #10, !dbg !2696
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2696
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
  ], !dbg !2697

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2698
  unreachable, !dbg !2698

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.71, i64 0, i64 0), i32 5) #10, !dbg !2700
  %20 = load i8*, i8** %4, align 8, !dbg !2700, !tbaa !623
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2700
  br label %146, !dbg !2701

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.72, i64 0, i64 0), i32 5) #10, !dbg !2702
  %24 = load i8*, i8** %4, align 8, !dbg !2702, !tbaa !623
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2702
  %26 = load i8*, i8** %25, align 8, !dbg !2702, !tbaa !623
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2702
  br label %146, !dbg !2703

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.73, i64 0, i64 0), i32 5) #10, !dbg !2704
  %30 = load i8*, i8** %4, align 8, !dbg !2704, !tbaa !623
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2704
  %32 = load i8*, i8** %31, align 8, !dbg !2704, !tbaa !623
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2704
  %34 = load i8*, i8** %33, align 8, !dbg !2704, !tbaa !623
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2704
  br label %146, !dbg !2705

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.74, i64 0, i64 0), i32 5) #10, !dbg !2706
  %38 = load i8*, i8** %4, align 8, !dbg !2706, !tbaa !623
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2706
  %40 = load i8*, i8** %39, align 8, !dbg !2706, !tbaa !623
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2706
  %42 = load i8*, i8** %41, align 8, !dbg !2706, !tbaa !623
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2706
  %44 = load i8*, i8** %43, align 8, !dbg !2706, !tbaa !623
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2706
  br label %146, !dbg !2707

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.75, i64 0, i64 0), i32 5) #10, !dbg !2708
  %48 = load i8*, i8** %4, align 8, !dbg !2708, !tbaa !623
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2708
  %50 = load i8*, i8** %49, align 8, !dbg !2708, !tbaa !623
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2708
  %52 = load i8*, i8** %51, align 8, !dbg !2708, !tbaa !623
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2708
  %54 = load i8*, i8** %53, align 8, !dbg !2708, !tbaa !623
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2708
  %56 = load i8*, i8** %55, align 8, !dbg !2708, !tbaa !623
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2708
  br label %146, !dbg !2709

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.76, i64 0, i64 0), i32 5) #10, !dbg !2710
  %60 = load i8*, i8** %4, align 8, !dbg !2710, !tbaa !623
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2710
  %62 = load i8*, i8** %61, align 8, !dbg !2710, !tbaa !623
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2710
  %64 = load i8*, i8** %63, align 8, !dbg !2710, !tbaa !623
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2710
  %66 = load i8*, i8** %65, align 8, !dbg !2710, !tbaa !623
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2710
  %68 = load i8*, i8** %67, align 8, !dbg !2710, !tbaa !623
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2710
  %70 = load i8*, i8** %69, align 8, !dbg !2710, !tbaa !623
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2710
  br label %146, !dbg !2711

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.77, i64 0, i64 0), i32 5) #10, !dbg !2712
  %74 = load i8*, i8** %4, align 8, !dbg !2712, !tbaa !623
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2712
  %76 = load i8*, i8** %75, align 8, !dbg !2712, !tbaa !623
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2712
  %78 = load i8*, i8** %77, align 8, !dbg !2712, !tbaa !623
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2712
  %80 = load i8*, i8** %79, align 8, !dbg !2712, !tbaa !623
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2712
  %82 = load i8*, i8** %81, align 8, !dbg !2712, !tbaa !623
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2712
  %84 = load i8*, i8** %83, align 8, !dbg !2712, !tbaa !623
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2712
  %86 = load i8*, i8** %85, align 8, !dbg !2712, !tbaa !623
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2712
  br label %146, !dbg !2713

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.78, i64 0, i64 0), i32 5) #10, !dbg !2714
  %90 = load i8*, i8** %4, align 8, !dbg !2714, !tbaa !623
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2714
  %92 = load i8*, i8** %91, align 8, !dbg !2714, !tbaa !623
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2714
  %94 = load i8*, i8** %93, align 8, !dbg !2714, !tbaa !623
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2714
  %96 = load i8*, i8** %95, align 8, !dbg !2714, !tbaa !623
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2714
  %98 = load i8*, i8** %97, align 8, !dbg !2714, !tbaa !623
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2714
  %100 = load i8*, i8** %99, align 8, !dbg !2714, !tbaa !623
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2714
  %102 = load i8*, i8** %101, align 8, !dbg !2714, !tbaa !623
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2714
  %104 = load i8*, i8** %103, align 8, !dbg !2714, !tbaa !623
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2714
  br label %146, !dbg !2715

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.79, i64 0, i64 0), i32 5) #10, !dbg !2716
  %108 = load i8*, i8** %4, align 8, !dbg !2716, !tbaa !623
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2716
  %110 = load i8*, i8** %109, align 8, !dbg !2716, !tbaa !623
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2716
  %112 = load i8*, i8** %111, align 8, !dbg !2716, !tbaa !623
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2716
  %114 = load i8*, i8** %113, align 8, !dbg !2716, !tbaa !623
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2716
  %116 = load i8*, i8** %115, align 8, !dbg !2716, !tbaa !623
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2716
  %118 = load i8*, i8** %117, align 8, !dbg !2716, !tbaa !623
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2716
  %120 = load i8*, i8** %119, align 8, !dbg !2716, !tbaa !623
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2716
  %122 = load i8*, i8** %121, align 8, !dbg !2716, !tbaa !623
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2716
  %124 = load i8*, i8** %123, align 8, !dbg !2716, !tbaa !623
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2716
  br label %146, !dbg !2717

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.80, i64 0, i64 0), i32 5) #10, !dbg !2718
  %128 = load i8*, i8** %4, align 8, !dbg !2718, !tbaa !623
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2718
  %130 = load i8*, i8** %129, align 8, !dbg !2718, !tbaa !623
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2718
  %132 = load i8*, i8** %131, align 8, !dbg !2718, !tbaa !623
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2718
  %134 = load i8*, i8** %133, align 8, !dbg !2718, !tbaa !623
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2718
  %136 = load i8*, i8** %135, align 8, !dbg !2718, !tbaa !623
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2718
  %138 = load i8*, i8** %137, align 8, !dbg !2718, !tbaa !623
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2718
  %140 = load i8*, i8** %139, align 8, !dbg !2718, !tbaa !623
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2718
  %142 = load i8*, i8** %141, align 8, !dbg !2718, !tbaa !623
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2718
  %144 = load i8*, i8** %143, align 8, !dbg !2718, !tbaa !623
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2718
  br label %146, !dbg !2719

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2720
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2721 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2725, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %1, metadata !2726, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %2, metadata !2727, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %3, metadata !2728, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8** %4, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 0, metadata !2730, metadata !DIExpression()), !dbg !2736
  br label %6, !dbg !2737

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2739
  call void @llvm.dbg.value(metadata i64 %7, metadata !2730, metadata !DIExpression()), !dbg !2736
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2741
  %9 = load i8*, i8** %8, align 8, !dbg !2741, !tbaa !623
  %10 = icmp eq i8* %9, null, !dbg !2742
  %11 = add i64 %7, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %11, metadata !2730, metadata !DIExpression()), !dbg !2736
  br i1 %10, label %12, label %6, !dbg !2742, !llvm.loop !2744

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2730, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2730, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2730, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2730, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2730, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2730, metadata !DIExpression()), !dbg !2736
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2746
  ret void, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2748 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2759, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %1, metadata !2760, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8* %2, metadata !2761, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %3, metadata !2762, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2763, metadata !DIExpression()), !dbg !2771
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2772
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2772
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2765, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 0, metadata !2764, metadata !DIExpression()), !dbg !2774
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2764, metadata !DIExpression()), !dbg !2774
  %11 = load i32, i32* %8, align 8, !dbg !2775
  %12 = icmp ult i32 %11, 41, !dbg !2775
  br i1 %12, label %13, label %18, !dbg !2775

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2775
  %15 = sext i32 %11 to i64, !dbg !2775
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2775
  %17 = add i32 %11, 8, !dbg !2775
  store i32 %17, i32* %8, align 8, !dbg !2775
  br label %21, !dbg !2775

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2775
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2775
  store i8* %20, i8** %10, align 8, !dbg !2775
  br label %21, !dbg !2775

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2775
  %25 = load i8*, i8** %24, align 8, !dbg !2775
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2778
  store i8* %25, i8** %26, align 16, !dbg !2779, !tbaa !623
  %27 = icmp eq i8* %25, null, !dbg !2780
  br i1 %27, label %30, label %28, !dbg !2781

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 1, metadata !2764, metadata !DIExpression()), !dbg !2774
  %29 = icmp ult i32 %22, 41, !dbg !2775
  br i1 %29, label %35, label %32, !dbg !2775

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2782
  call void @llvm.dbg.value(metadata i64 %31, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 %31, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2783
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2784
  ret void, !dbg !2784

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2775
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2775
  store i8* %34, i8** %10, align 8, !dbg !2775
  br label %40, !dbg !2775

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2775
  %37 = sext i32 %22 to i64, !dbg !2775
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2775
  %39 = add i32 %22, 8, !dbg !2775
  store i32 %39, i32* %8, align 8, !dbg !2775
  br label %40, !dbg !2775

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2775
  %44 = load i8*, i8** %43, align 8, !dbg !2775
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2778
  store i8* %44, i8** %45, align 8, !dbg !2779, !tbaa !623
  %46 = icmp eq i8* %44, null, !dbg !2780
  br i1 %46, label %30, label %47, !dbg !2781

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 2, metadata !2764, metadata !DIExpression()), !dbg !2774
  %48 = icmp ult i32 %41, 41, !dbg !2775
  br i1 %48, label %52, label %49, !dbg !2775

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2775
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2775
  store i8* %51, i8** %10, align 8, !dbg !2775
  br label %57, !dbg !2775

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2775
  %54 = sext i32 %41 to i64, !dbg !2775
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2775
  %56 = add i32 %41, 8, !dbg !2775
  store i32 %56, i32* %8, align 8, !dbg !2775
  br label %57, !dbg !2775

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2775
  %61 = load i8*, i8** %60, align 8, !dbg !2775
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2778
  store i8* %61, i8** %62, align 16, !dbg !2779, !tbaa !623
  %63 = icmp eq i8* %61, null, !dbg !2780
  br i1 %63, label %30, label %64, !dbg !2781

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 3, metadata !2764, metadata !DIExpression()), !dbg !2774
  %65 = icmp ult i32 %58, 41, !dbg !2775
  br i1 %65, label %69, label %66, !dbg !2775

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2775
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2775
  store i8* %68, i8** %10, align 8, !dbg !2775
  br label %74, !dbg !2775

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2775
  %71 = sext i32 %58 to i64, !dbg !2775
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2775
  %73 = add i32 %58, 8, !dbg !2775
  store i32 %73, i32* %8, align 8, !dbg !2775
  br label %74, !dbg !2775

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2775
  %78 = load i8*, i8** %77, align 8, !dbg !2775
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2778
  store i8* %78, i8** %79, align 8, !dbg !2779, !tbaa !623
  %80 = icmp eq i8* %78, null, !dbg !2780
  br i1 %80, label %30, label %81, !dbg !2781

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 4, metadata !2764, metadata !DIExpression()), !dbg !2774
  %82 = icmp ult i32 %75, 41, !dbg !2775
  br i1 %82, label %86, label %83, !dbg !2775

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2775
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2775
  store i8* %85, i8** %10, align 8, !dbg !2775
  br label %91, !dbg !2775

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2775
  %88 = sext i32 %75 to i64, !dbg !2775
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2775
  %90 = add i32 %75, 8, !dbg !2775
  store i32 %90, i32* %8, align 8, !dbg !2775
  br label %91, !dbg !2775

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2775
  %95 = load i8*, i8** %94, align 8, !dbg !2775
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2778
  store i8* %95, i8** %96, align 16, !dbg !2779, !tbaa !623
  %97 = icmp eq i8* %95, null, !dbg !2780
  br i1 %97, label %30, label %98, !dbg !2781

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 5, metadata !2764, metadata !DIExpression()), !dbg !2774
  %99 = icmp ult i32 %92, 41, !dbg !2775
  br i1 %99, label %103, label %100, !dbg !2775

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2775
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2775
  store i8* %102, i8** %10, align 8, !dbg !2775
  br label %108, !dbg !2775

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2775
  %105 = sext i32 %92 to i64, !dbg !2775
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2775
  %107 = add i32 %92, 8, !dbg !2775
  store i32 %107, i32* %8, align 8, !dbg !2775
  br label %108, !dbg !2775

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2775
  %111 = load i8*, i8** %110, align 8, !dbg !2775
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2778
  store i8* %111, i8** %112, align 8, !dbg !2779, !tbaa !623
  %113 = icmp eq i8* %111, null, !dbg !2780
  br i1 %113, label %30, label %114, !dbg !2781

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 6, metadata !2764, metadata !DIExpression()), !dbg !2774
  %115 = load i8*, i8** %10, align 8, !dbg !2775
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2775
  store i8* %116, i8** %10, align 8, !dbg !2775
  %117 = bitcast i8* %115 to i8**, !dbg !2775
  %118 = load i8*, i8** %117, align 8, !dbg !2775
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2778
  store i8* %118, i8** %119, align 16, !dbg !2779, !tbaa !623
  %120 = icmp eq i8* %118, null, !dbg !2780
  br i1 %120, label %30, label %121, !dbg !2781

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 7, metadata !2764, metadata !DIExpression()), !dbg !2774
  %122 = load i8*, i8** %10, align 8, !dbg !2775
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2775
  store i8* %123, i8** %10, align 8, !dbg !2775
  %124 = bitcast i8* %122 to i8**, !dbg !2775
  %125 = load i8*, i8** %124, align 8, !dbg !2775
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2778
  store i8* %125, i8** %126, align 8, !dbg !2779, !tbaa !623
  %127 = icmp eq i8* %125, null, !dbg !2780
  br i1 %127, label %30, label %128, !dbg !2781

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 8, metadata !2764, metadata !DIExpression()), !dbg !2774
  %129 = load i8*, i8** %10, align 8, !dbg !2775
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2775
  store i8* %130, i8** %10, align 8, !dbg !2775
  %131 = bitcast i8* %129 to i8**, !dbg !2775
  %132 = load i8*, i8** %131, align 8, !dbg !2775
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2778
  store i8* %132, i8** %133, align 16, !dbg !2779, !tbaa !623
  %134 = icmp eq i8* %132, null, !dbg !2780
  br i1 %134, label %30, label %135, !dbg !2781

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2764, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 9, metadata !2764, metadata !DIExpression()), !dbg !2774
  %136 = load i8*, i8** %10, align 8, !dbg !2775
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2775
  store i8* %137, i8** %10, align 8, !dbg !2775
  %138 = bitcast i8* %136 to i8**, !dbg !2775
  %139 = load i8*, i8** %138, align 8, !dbg !2775
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2778
  store i8* %139, i8** %140, align 8, !dbg !2779, !tbaa !623
  %141 = icmp eq i8* %139, null, !dbg !2780
  %142 = select i1 %141, i64 9, i64 10, !dbg !2781
  br label %30, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2785 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2789, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8* %1, metadata !2790, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %2, metadata !2791, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %3, metadata !2792, metadata !DIExpression()), !dbg !2803
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2804
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2793, metadata !DIExpression()), !dbg !2805
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2806
  call void @llvm.va_start(i8* nonnull %6), !dbg !2806
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2807
  call void @llvm.va_end(i8* nonnull %6), !dbg !2808
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2809
  ret void, !dbg !2809
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2810 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.83, i64 0, i64 0), i32 5) #10, !dbg !2811
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.84, i64 0, i64 0)) #10, !dbg !2811
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.85, i64 0, i64 0), i32 5) #10, !dbg !2812
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.86, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.87, i64 0, i64 0)) #10, !dbg !2812
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.88, i64 0, i64 0), i32 5) #10, !dbg !2813
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2813, !tbaa !623
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2813
  ret void, !dbg !2814
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2815 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %1, metadata !2820, metadata !DIExpression()), !dbg !2822
  %3 = udiv i64 9223372036854775807, %1, !dbg !2823
  %4 = icmp ult i64 %3, %0, !dbg !2823
  br i1 %4, label %5, label %6, !dbg !2825

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2826
  unreachable, !dbg !2826

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %7, metadata !2828, metadata !DIExpression()) #10, !dbg !2835
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %8, metadata !2834, metadata !DIExpression()) #10, !dbg !2838
  %9 = icmp eq i8* %8, null, !dbg !2839
  %10 = icmp ne i64 %7, 0, !dbg !2841
  %11 = and i1 %10, %9, !dbg !2842
  br i1 %11, label %12, label %13, !dbg !2842

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2843
  unreachable, !dbg !2843

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2844
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2829 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2828, metadata !DIExpression()), !dbg !2845
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2846
  call void @llvm.dbg.value(metadata i8* %2, metadata !2834, metadata !DIExpression()), !dbg !2847
  %3 = icmp eq i8* %2, null, !dbg !2848
  %4 = icmp ne i64 %0, 0, !dbg !2849
  %5 = and i1 %4, %3, !dbg !2850
  br i1 %5, label %6, label %7, !dbg !2850

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2851
  unreachable, !dbg !2851

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2852
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2853 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %1, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %2, metadata !2859, metadata !DIExpression()), !dbg !2862
  %4 = udiv i64 9223372036854775807, %2, !dbg !2863
  %5 = icmp ult i64 %4, %1, !dbg !2863
  br i1 %5, label %6, label %7, !dbg !2865

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2866
  unreachable, !dbg !2866

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2867
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()) #10, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %8, metadata !2873, metadata !DIExpression()) #10, !dbg !2876
  %9 = icmp eq i64 %8, 0, !dbg !2877
  %10 = icmp ne i8* %0, null, !dbg !2879
  %11 = and i1 %10, %9, !dbg !2880
  br i1 %11, label %12, label %13, !dbg !2880

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2881
  br label %19, !dbg !2883

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %14, metadata !2868, metadata !DIExpression()) #10, !dbg !2874
  %15 = icmp eq i8* %14, null, !dbg !2885
  %16 = icmp ne i64 %8, 0, !dbg !2887
  %17 = and i1 %16, %15, !dbg !2888
  br i1 %17, label %18, label %19, !dbg !2888

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2889
  unreachable, !dbg !2889

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2890
  ret i8* %20, !dbg !2891
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2869 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %1, metadata !2873, metadata !DIExpression()), !dbg !2893
  %3 = icmp eq i64 %1, 0, !dbg !2894
  %4 = icmp ne i8* %0, null, !dbg !2895
  %5 = and i1 %4, %3, !dbg !2896
  br i1 %5, label %6, label %7, !dbg !2896

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2897
  br label %13, !dbg !2898

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %8, metadata !2868, metadata !DIExpression()), !dbg !2892
  %9 = icmp eq i8* %8, null, !dbg !2900
  %10 = icmp ne i64 %1, 0, !dbg !2901
  %11 = and i1 %10, %9, !dbg !2902
  br i1 %11, label %12, label %13, !dbg !2902

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2903
  unreachable, !dbg !2903

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2904
  ret i8* %14, !dbg !2905
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64* %1, metadata !172, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 %2, metadata !173, metadata !DIExpression()), !dbg !2908
  %4 = load i64, i64* %1, align 8, !dbg !2909, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 %4, metadata !174, metadata !DIExpression()), !dbg !2910
  %5 = icmp eq i8* %0, null, !dbg !2911
  br i1 %5, label %6, label %20, !dbg !2913

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2914
  br i1 %7, label %8, label %13, !dbg !2917

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %9, metadata !174, metadata !DIExpression()), !dbg !2910
  %10 = icmp ugt i64 %2, 128, !dbg !2920
  %11 = zext i1 %10 to i64, !dbg !2920
  %12 = add nuw nsw i64 %9, %11, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %12, metadata !174, metadata !DIExpression()), !dbg !2910
  br label %13, !dbg !2922

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2923
  call void @llvm.dbg.value(metadata i64 %14, metadata !174, metadata !DIExpression()), !dbg !2910
  %15 = udiv i64 9223372036854775807, %2, !dbg !2924
  %16 = icmp ult i64 %15, %14, !dbg !2924
  br i1 %16, label %19, label %17, !dbg !2926

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !174, metadata !DIExpression()), !dbg !2910
  store i64 %14, i64* %1, align 8, !dbg !2927, !tbaa !1946
  %18 = mul i64 %14, %2, !dbg !2928
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()) #10, !dbg !2929
  call void @llvm.dbg.value(metadata i64 %28, metadata !2873, metadata !DIExpression()) #10, !dbg !2931
  br label %31, !dbg !2932

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2933
  unreachable, !dbg !2933

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2934
  %22 = icmp ugt i64 %21, %4, !dbg !2937
  br i1 %22, label %24, label %23, !dbg !2938

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !2939
  unreachable, !dbg !2939

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2940
  %26 = add i64 %4, 1, !dbg !2941
  %27 = add i64 %26, %25, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %27, metadata !174, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %27, metadata !174, metadata !DIExpression()), !dbg !2910
  store i64 %27, i64* %1, align 8, !dbg !2927, !tbaa !1946
  %28 = mul i64 %27, %2, !dbg !2928
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()) #10, !dbg !2929
  call void @llvm.dbg.value(metadata i64 %28, metadata !2873, metadata !DIExpression()) #10, !dbg !2931
  %29 = icmp eq i64 %28, 0, !dbg !2943
  br i1 %29, label %30, label %31, !dbg !2932

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !2944
  br label %38, !dbg !2945

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %33, metadata !2868, metadata !DIExpression()) #10, !dbg !2929
  %34 = icmp eq i8* %33, null, !dbg !2947
  %35 = icmp ne i64 %32, 0, !dbg !2948
  %36 = and i1 %35, %34, !dbg !2949
  br i1 %36, label %37, label %38, !dbg !2949

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !2950
  unreachable, !dbg !2950

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2951
  ret i8* %39, !dbg !2952
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2953 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %0, metadata !2828, metadata !DIExpression()) #10, !dbg !2957
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2959
  call void @llvm.dbg.value(metadata i8* %2, metadata !2834, metadata !DIExpression()) #10, !dbg !2960
  %3 = icmp eq i8* %2, null, !dbg !2961
  %4 = icmp ne i64 %0, 0, !dbg !2962
  %5 = and i1 %4, %3, !dbg !2963
  br i1 %5, label %6, label %7, !dbg !2963

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2964
  unreachable, !dbg !2964

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !2966 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64* %1, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()) #10, !dbg !2974
  call void @llvm.dbg.value(metadata i64* %1, metadata !172, metadata !DIExpression()) #10, !dbg !2976
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()) #10, !dbg !2977
  %3 = load i64, i64* %1, align 8, !dbg !2978, !tbaa !1946
  call void @llvm.dbg.value(metadata i64 %3, metadata !174, metadata !DIExpression()) #10, !dbg !2979
  %4 = icmp eq i8* %0, null, !dbg !2980
  br i1 %4, label %5, label %12, !dbg !2981

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2982
  br i1 %6, label %9, label %7, !dbg !2983

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !174, metadata !DIExpression()) #10, !dbg !2979
  %8 = icmp slt i64 %3, 0, !dbg !2984
  br i1 %8, label %11, label %9, !dbg !2985

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !174, metadata !DIExpression()) #10, !dbg !2979
  store i64 %10, i64* %1, align 8, !dbg !2986, !tbaa !1946
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()) #10, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %18, metadata !2873, metadata !DIExpression()) #10, !dbg !2989
  br label %21, !dbg !2990

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2991
  unreachable, !dbg !2991

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2992
  br i1 %13, label %15, label %14, !dbg !2993

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !2994
  unreachable, !dbg !2994

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2995
  %17 = add i64 %3, 1, !dbg !2996
  %18 = add i64 %17, %16, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %18, metadata !174, metadata !DIExpression()) #10, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %18, metadata !174, metadata !DIExpression()) #10, !dbg !2979
  store i64 %18, i64* %1, align 8, !dbg !2986, !tbaa !1946
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()) #10, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %18, metadata !2873, metadata !DIExpression()) #10, !dbg !2989
  %19 = icmp eq i64 %18, 0, !dbg !2998
  br i1 %19, label %20, label %21, !dbg !2990

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !2999
  br label %28, !dbg !3000

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %23, metadata !2868, metadata !DIExpression()) #10, !dbg !2987
  %24 = icmp eq i8* %23, null, !dbg !3002
  %25 = icmp ne i64 %22, 0, !dbg !3003
  %26 = and i1 %25, %24, !dbg !3004
  br i1 %26, label %27, label %28, !dbg !3004

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3005
  unreachable, !dbg !3005

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3006
  ret i8* %29, !dbg !3007
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3008 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %0, metadata !2828, metadata !DIExpression()) #10, !dbg !3012
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %2, metadata !2834, metadata !DIExpression()) #10, !dbg !3015
  %3 = icmp eq i8* %2, null, !dbg !3016
  %4 = icmp ne i64 %0, 0, !dbg !3017
  %5 = and i1 %4, %3, !dbg !3018
  br i1 %5, label %6, label %7, !dbg !3018

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3019
  unreachable, !dbg !3019

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3020
  ret i8* %2, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3022 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3025, metadata !DIExpression()), !dbg !3028
  %3 = udiv i64 9223372036854775807, %1, !dbg !3029
  %4 = icmp ult i64 %3, %0, !dbg !3029
  br i1 %4, label %8, label %5, !dbg !3031

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %6, metadata !3026, metadata !DIExpression()), !dbg !3033
  %7 = icmp eq i8* %6, null, !dbg !3034
  br i1 %7, label %8, label %9, !dbg !3035

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3036
  unreachable, !dbg !3036

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3037
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %1, metadata !3045, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %1, metadata !2828, metadata !DIExpression()) #10, !dbg !3048
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %3, metadata !2834, metadata !DIExpression()) #10, !dbg !3051
  %4 = icmp eq i8* %3, null, !dbg !3052
  %5 = icmp ne i64 %1, 0, !dbg !3053
  %6 = and i1 %5, %4, !dbg !3054
  br i1 %6, label %7, label %8, !dbg !3054

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3055
  unreachable, !dbg !3055

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3056
  ret i8* %3, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3058 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3060, metadata !DIExpression()), !dbg !3061
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3062
  %3 = add i64 %2, 1, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()) #10, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %3, metadata !3045, metadata !DIExpression()) #10, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %3, metadata !2828, metadata !DIExpression()) #10, !dbg !3067
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %4, metadata !2834, metadata !DIExpression()) #10, !dbg !3070
  %5 = icmp eq i8* %4, null, !dbg !3071
  %6 = icmp ne i64 %3, 0, !dbg !3072
  %7 = and i1 %6, %5, !dbg !3073
  br i1 %7, label %8, label %9, !dbg !3073

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3074
  unreachable, !dbg !3074

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3075
  ret i8* %4, !dbg !3076
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3077 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3079, !tbaa !703
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.99, i64 0, i64 0), i32 5) #10, !dbg !3080
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0), i8* %2) #10, !dbg !3081
  tail call void @abort() #15, !dbg !3082
  unreachable, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3083 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3086, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()), !dbg !3093
  %3 = icmp eq i64 %0, 0, !dbg !3094
  %4 = icmp eq i64 %1, 0, !dbg !3095
  %5 = or i1 %3, %4, !dbg !3096
  br i1 %5, label %12, label %6, !dbg !3096

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %7, metadata !3089, metadata !DIExpression()), !dbg !3098
  %8 = udiv i64 %7, %1, !dbg !3099
  %9 = icmp eq i64 %8, %0, !dbg !3101
  br i1 %9, label %12, label %10, !dbg !3102

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3103
  store i32 12, i32* %11, align 4, !dbg !3105, !tbaa !703
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3086, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %13, metadata !3087, metadata !DIExpression()), !dbg !3093
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %15, metadata !3088, metadata !DIExpression()), !dbg !3107
  br label %16, !dbg !3108

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3109
  ret i8* %17, !dbg !3110
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3111 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3128, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i8* %1, metadata !3129, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %2, metadata !3130, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3131, metadata !DIExpression()), !dbg !3140
  %6 = bitcast i32* %5 to i8*, !dbg !3141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3141
  %7 = icmp eq i32* %0, null, !dbg !3142
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3144
  call void @llvm.dbg.value(metadata i32* %8, metadata !3128, metadata !DIExpression()), !dbg !3137
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %9, metadata !3132, metadata !DIExpression()), !dbg !3146
  %10 = icmp ugt i64 %9, -3, !dbg !3147
  %11 = icmp ne i64 %2, 0, !dbg !3148
  %12 = and i1 %11, %10, !dbg !3149
  br i1 %12, label %13, label %18, !dbg !3149

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3150
  br i1 %14, label %18, label %15, !dbg !3151

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3152, !tbaa !748
  call void @llvm.dbg.value(metadata i8 %16, metadata !3134, metadata !DIExpression()), !dbg !3153
  %17 = zext i8 %16 to i32, !dbg !3154
  store i32 %17, i32* %8, align 4, !dbg !3155, !tbaa !703
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3157
  ret i64 %19, !dbg !3157
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3158 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3197, metadata !DIExpression()), !dbg !3202
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3203
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3204, metadata !DIExpression()), !dbg !3208
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3210
  %4 = load i32, i32* %3, align 8, !dbg !3210, !tbaa !3211
  %5 = and i32 %4, 32, !dbg !3210
  %6 = icmp eq i32 %5, 0, !dbg !3213
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3214
  %8 = icmp ne i32 %7, 0, !dbg !3215
  br i1 %6, label %9, label %19, !dbg !3216

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3218
  %11 = xor i1 %8, true, !dbg !3219
  %12 = or i1 %10, %11, !dbg !3219
  %13 = sext i1 %8 to i32, !dbg !3219
  br i1 %12, label %22, label %14, !dbg !3219

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3220
  %16 = load i32, i32* %15, align 4, !dbg !3220, !tbaa !703
  %17 = icmp ne i32 %16, 9, !dbg !3221
  %18 = sext i1 %17 to i32, !dbg !3222
  br label %22, !dbg !3222

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3223

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3225
  store i32 0, i32* %21, align 4, !dbg !3227, !tbaa !703
  br label %22, !dbg !3225

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3228
  ret i32 %23, !dbg !3229
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3230 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3235, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 1, metadata !3236, metadata !DIExpression()), !dbg !3239
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %2, metadata !3237, metadata !DIExpression()), !dbg !3241
  %3 = icmp eq i8* %2, null, !dbg !3242
  br i1 %3, label %11, label %4, !dbg !3244

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #14, !dbg !3245
  %6 = icmp eq i32 %5, 0, !dbg !3250
  br i1 %6, label %10, label %7, !dbg !3251

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i64 0, i64 0)) #14, !dbg !3252
  %9 = icmp eq i32 %8, 0, !dbg !3253
  br i1 %9, label %10, label %11, !dbg !3254

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3236, metadata !DIExpression()), !dbg !3239
  br label %11, !dbg !3255

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3256
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3257 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %1, metadata !3262, metadata !DIExpression()), !dbg !3264
  %2 = icmp eq i8* %1, null, !dbg !3265
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), i8* %1, !dbg !3267
  call void @llvm.dbg.value(metadata i8* %3, metadata !3262, metadata !DIExpression()), !dbg !3264
  %4 = load i8, i8* %3, align 1, !dbg !3268, !tbaa !748
  %5 = icmp eq i8 %4, 0, !dbg !3272
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i64 0, i64 0), i8* %3, !dbg !3273
  call void @llvm.dbg.value(metadata i8* %6, metadata !3262, metadata !DIExpression()), !dbg !3264
  ret i8* %6, !dbg !3274
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3275 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3314, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 0, metadata !3315, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32 0, metadata !3317, metadata !DIExpression()), !dbg !3320
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3321
  call void @llvm.dbg.value(metadata i32 %2, metadata !3316, metadata !DIExpression()), !dbg !3322
  %3 = icmp slt i32 %2, 0, !dbg !3323
  br i1 %3, label %4, label %6, !dbg !3325

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3326
  br label %24, !dbg !3327

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3328
  %8 = icmp eq i32 %7, 0, !dbg !3328
  br i1 %8, label %13, label %9, !dbg !3330

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3331
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3332
  %12 = icmp eq i64 %11, -1, !dbg !3333
  br i1 %12, label %16, label %13, !dbg !3334

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3335
  %15 = icmp eq i32 %14, 0, !dbg !3335
  br i1 %15, label %16, label %18, !dbg !3336

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3315, metadata !DIExpression()), !dbg !3319
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %21, metadata !3317, metadata !DIExpression()), !dbg !3320
  br label %24, !dbg !3338

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3339
  %20 = load i32, i32* %19, align 4, !dbg !3339, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %20, metadata !3315, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32 %20, metadata !3315, metadata !DIExpression()), !dbg !3319
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %21, metadata !3317, metadata !DIExpression()), !dbg !3320
  %22 = icmp eq i32 %20, 0, !dbg !3340
  br i1 %22, label %24, label %23, !dbg !3338

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3342, !tbaa !703
  call void @llvm.dbg.value(metadata i32 -1, metadata !3317, metadata !DIExpression()), !dbg !3320
  br label %24, !dbg !3344

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3345
  ret i32 %25, !dbg !3346
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3347 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3386, metadata !DIExpression()), !dbg !3387
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3388
  br i1 %2, label %6, label %3, !dbg !3390

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3391
  %5 = icmp eq i32 %4, 0, !dbg !3391
  br i1 %5, label %6, label %8, !dbg !3392

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3393
  br label %17, !dbg !3394

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3395, metadata !DIExpression()) #10, !dbg !3400
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3402
  %10 = load i32, i32* %9, align 8, !dbg !3402, !tbaa !3211
  %11 = and i32 %10, 256, !dbg !3404
  %12 = icmp eq i32 %11, 0, !dbg !3404
  br i1 %12, label %15, label %13, !dbg !3405

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3406
  br label %15, !dbg !3406

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3407
  br label %17, !dbg !3408

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3409
  ret i32 %18, !dbg !3410
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3411 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3451, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3452, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i32 %2, metadata !3453, metadata !DIExpression()), !dbg !3459
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3460
  %5 = load i8*, i8** %4, align 8, !dbg !3460, !tbaa !3461
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3462
  %7 = load i8*, i8** %6, align 8, !dbg !3462, !tbaa !3463
  %8 = icmp eq i8* %5, %7, !dbg !3464
  br i1 %8, label %9, label %28, !dbg !3465

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3466
  %11 = load i8*, i8** %10, align 8, !dbg !3466, !tbaa !3467
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3468
  %13 = load i8*, i8** %12, align 8, !dbg !3468, !tbaa !3469
  %14 = icmp eq i8* %11, %13, !dbg !3470
  br i1 %14, label %15, label %28, !dbg !3471

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3472
  %17 = load i8*, i8** %16, align 8, !dbg !3472, !tbaa !3473
  %18 = icmp eq i8* %17, null, !dbg !3474
  br i1 %18, label %19, label %28, !dbg !3475

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3476
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %21, metadata !3454, metadata !DIExpression()), !dbg !3478
  %22 = icmp eq i64 %21, -1, !dbg !3479
  br i1 %22, label %30, label %23, !dbg !3481

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3482
  %25 = load i32, i32* %24, align 8, !dbg !3483, !tbaa !3211
  %26 = and i32 %25, -17, !dbg !3483
  store i32 %26, i32* %24, align 8, !dbg !3483, !tbaa !3211
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3484
  store i64 %21, i64* %27, align 8, !dbg !3485, !tbaa !3486
  br label %30, !dbg !3487

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3488
  br label %30, !dbg !3489

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3490
  ret i32 %31, !dbg !3491
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
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !31, !37, !46, !53, !60, !153, !146, !161, !178, !180, !182, !185, !187, !189, !578, !580, !582}
!llvm.ident = !{!584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584}
!llvm.module.flags = !{!585, !586, !587, !588, !589}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !9, globals: !13)
!3 = !DIFile(filename: "src/printenv.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 38, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2, isUnsigned: true)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, elements: !27)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !17, line: 50, size: 256, elements: !18)
!17 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!18 = !{!19, !22, !24, !26}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !17, line: 52, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !16, file: !17, line: 55, baseType: !23, size: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !16, file: !17, line: 56, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !16, file: !17, line: 57, baseType: !23, size: 32, offset: 192)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "Version", scope: !31, file: !32, line: 2, type: !20, isLocal: false, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, globals: !34)
!32 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!33 = !{}
!34 = !{!29}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "file_name", scope: !37, file: !42, line: 46, type: !20, isLocal: true, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, globals: !39)
!38 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!39 = !{!35, !40}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !37, file: !42, line: 56, type: !43, isLocal: true, isDefinition: true)
!42 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!43 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "exit_failure", scope: !46, file: !49, line: 24, type: !50, isLocal: false, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, globals: !48)
!47 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!48 = !{!44}
!49 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "program_name", scope: !53, file: !57, line: 33, type: !20, isLocal: false, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !55, globals: !56)
!54 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!55 = !{!12, !10}
!56 = !{!51}
!57 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !60, file: !105, line: 85, type: !140, isLocal: false, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !97, globals: !102)
!61 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!62 = !{!63, !77, !82}
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !64, line: 32, baseType: !6, size: 32, elements: !65)
!64 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!66 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!70 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!71 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!72 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!73 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!74 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!75 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!76 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !64, line: 242, baseType: !6, size: 32, elements: !78)
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 46, baseType: !6, size: 32, elements: !84)
!83 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!85 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!94 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!97 = !{!23, !98, !99, !10}
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !{!58, !103, !110, !122, !124, !129, !136, !138}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !60, file: !105, line: 101, type: !106, isLocal: false, isDefinition: true)
!105 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 320, elements: !108)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!108 = !{!109}
!109 = !DISubrange(count: 10)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !60, file: !105, line: 1052, type: !112, isLocal: false, isDefinition: true)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !105, line: 65, size: 448, elements: !113)
!113 = !{!114, !115, !116, !120, !121}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !112, file: !105, line: 68, baseType: !63, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !105, line: 71, baseType: !23, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !112, file: !105, line: 75, baseType: !117, size: 256, offset: 64)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !112, file: !105, line: 78, baseType: !20, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !112, file: !105, line: 81, baseType: !20, size: 64, offset: 384)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !60, file: !105, line: 116, type: !112, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "slot0", scope: !60, file: !105, line: 842, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 256)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slotvec", scope: !60, file: !105, line: 845, type: !131, isLocal: true, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !105, line: 834, size: 128, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !132, file: !105, line: 836, baseType: !99, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !132, file: !105, line: 837, baseType: !10, size: 64, offset: 64)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "nslots", scope: !60, file: !105, line: 843, type: !23, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "slotvec0", scope: !60, file: !105, line: 844, type: !132, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 704, elements: !142)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!142 = !{!143}
!143 = !DISubrange(count: 11)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !146, file: !149, line: 26, type: !150, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, globals: !148)
!147 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!148 = !{!144}
!149 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 376, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 47)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !155, retainedTypes: !160)
!154 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!155 = !{!156}
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 41, baseType: !6, size: 32, elements: !158)
!157 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!158 = !{!159}
!159 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!160 = !{!12}
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !177)
!162 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!163 = !{!164}
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !166, file: !165, line: 186, baseType: !6, size: 32, elements: !175)
!165 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!166 = distinct !DISubprogram(name: "x2nrealloc", scope: !165, file: !165, line: 174, type: !167, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !170)
!167 = !DISubroutineType(types: !168)
!168 = !{!12, !12, !169, !99}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!170 = !{!171, !172, !173, !174}
!171 = !DILocalVariable(name: "p", arg: 1, scope: !166, file: !165, line: 174, type: !12)
!172 = !DILocalVariable(name: "pn", arg: 2, scope: !166, file: !165, line: 174, type: !169)
!173 = !DILocalVariable(name: "s", arg: 3, scope: !166, file: !165, line: 174, type: !99)
!174 = !DILocalVariable(name: "n", scope: !166, file: !165, line: 176, type: !99)
!175 = !{!176}
!176 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!177 = !{!99, !10, !12}
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33)
!179 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !160)
!181 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !184)
!183 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!184 = !{!99}
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33)
!186 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33)
!188 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !191, retainedTypes: !160)
!190 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!191 = !{!192}
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 41, baseType: !6, size: 32, elements: !194)
!193 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!195 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!196 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!197 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!198 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!199 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!200 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!201 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!202 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!203 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!204 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!205 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!206 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!207 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!208 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!210 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!216 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!217 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!222 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!228 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!229 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!233 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!234 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!235 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!236 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!237 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!238 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!239 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!240 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!241 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!242 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!243 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!244 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!303 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!307 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!313 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!314 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!390 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!463 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!464 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!465 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!466 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!467 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!468 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!469 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!470 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!471 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!472 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!473 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!474 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!475 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!476 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!477 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!479 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!480 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!482 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!483 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!484 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!510 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!511 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!512 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!513 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!514 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!519 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!520 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!521 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!522 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33)
!579 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !160)
!581 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !160)
!583 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!584 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!585 = !{i32 2, !"Dwarf Version", i32 4}
!586 = !{i32 2, !"Debug Info Version", i32 3}
!587 = !{i32 1, !"wchar_size", i32 4}
!588 = !{i32 7, !"PIC Level", i32 2}
!589 = !{i32 7, !"PIE Level", i32 2}
!590 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !591, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !23}
!593 = !{!594}
!594 = !DILocalVariable(name: "status", arg: 1, scope: !590, file: !3, line: 56, type: !23)
!595 = !DILocalVariable(name: "infomap", scope: !596, file: !597, line: 632, type: !611)
!596 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !597, file: !597, line: 630, type: !598, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !600)
!597 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!598 = !DISubroutineType(types: !599)
!599 = !{null, !20}
!600 = !{!601, !595, !602, !603, !610}
!601 = !DILocalVariable(name: "program", arg: 1, scope: !596, file: !597, line: 630, type: !20)
!602 = !DILocalVariable(name: "node", scope: !596, file: !597, line: 642, type: !20)
!603 = !DILocalVariable(name: "map_prog", scope: !596, file: !597, line: 643, type: !604)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !596, file: !597, line: 632, size: 128, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !606, file: !597, line: 632, baseType: !20, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !606, file: !597, line: 632, baseType: !20, size: 64, offset: 64)
!610 = !DILocalVariable(name: "lc_messages", scope: !596, file: !597, line: 655, type: !20)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 896, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 7)
!614 = !DILocation(line: 632, column: 67, scope: !596, inlinedAt: !615)
!615 = distinct !DILocation(line: 75, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 61, column: 5)
!617 = distinct !DILexicalBlock(scope: !590, file: !3, line: 58, column: 7)
!618 = !DILocation(line: 56, column: 12, scope: !590)
!619 = !DILocation(line: 58, column: 14, scope: !617)
!620 = !DILocation(line: 58, column: 7, scope: !590)
!621 = !DILocation(line: 59, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !3, line: 59, column: 5)
!623 = !{!624, !624, i64 0}
!624 = !{!"any pointer", !625, i64 0}
!625 = !{!"omnipotent char", !626, i64 0}
!626 = !{!"Simple C/C++ TBAA"}
!627 = !DILocation(line: 62, column: 7, scope: !616)
!628 = !DILocation(line: 69, column: 7, scope: !616)
!629 = !DILocation(line: 72, column: 7, scope: !616)
!630 = !DILocation(line: 73, column: 7, scope: !616)
!631 = !DILocation(line: 74, column: 7, scope: !616)
!632 = !DILocation(line: 632, column: 3, scope: !596, inlinedAt: !615)
!633 = !DILocation(line: 643, column: 36, scope: !596, inlinedAt: !615)
!634 = !DILocation(line: 643, column: 25, scope: !596, inlinedAt: !615)
!635 = !DILocation(line: 645, column: 33, scope: !596, inlinedAt: !615)
!636 = !DILocation(line: 645, column: 3, scope: !596, inlinedAt: !615)
!637 = !DILocation(line: 646, column: 13, scope: !596, inlinedAt: !615)
!638 = !DILocation(line: 645, column: 20, scope: !596, inlinedAt: !615)
!639 = !{!640, !624, i64 0}
!640 = !{!"infomap", !624, i64 0, !624, i64 8}
!641 = !DILocation(line: 645, column: 10, scope: !596, inlinedAt: !615)
!642 = !DILocation(line: 645, column: 28, scope: !596, inlinedAt: !615)
!643 = distinct !{!643, !644, !645}
!644 = !DILocation(line: 645, column: 3, scope: !596)
!645 = !DILocation(line: 646, column: 13, scope: !596)
!646 = !DILocation(line: 648, column: 17, scope: !647, inlinedAt: !615)
!647 = distinct !DILexicalBlock(scope: !596, file: !597, line: 648, column: 7)
!648 = !{!640, !624, i64 8}
!649 = !DILocation(line: 648, column: 7, scope: !647, inlinedAt: !615)
!650 = !DILocation(line: 648, column: 7, scope: !596, inlinedAt: !615)
!651 = !DILocation(line: 642, column: 15, scope: !596, inlinedAt: !615)
!652 = !DILocation(line: 651, column: 3, scope: !596, inlinedAt: !615)
!653 = !DILocation(line: 655, column: 29, scope: !596, inlinedAt: !615)
!654 = !DILocation(line: 655, column: 15, scope: !596, inlinedAt: !615)
!655 = !DILocation(line: 656, column: 7, scope: !656, inlinedAt: !615)
!656 = distinct !DILexicalBlock(scope: !596, file: !597, line: 656, column: 7)
!657 = !DILocation(line: 656, column: 19, scope: !656, inlinedAt: !615)
!658 = !DILocation(line: 656, column: 22, scope: !656, inlinedAt: !615)
!659 = !DILocation(line: 656, column: 7, scope: !596, inlinedAt: !615)
!660 = !DILocation(line: 662, column: 7, scope: !661, inlinedAt: !615)
!661 = distinct !DILexicalBlock(scope: !656, file: !597, line: 657, column: 5)
!662 = !DILocation(line: 664, column: 5, scope: !661, inlinedAt: !615)
!663 = !DILocation(line: 665, column: 3, scope: !596, inlinedAt: !615)
!664 = !DILocation(line: 667, column: 3, scope: !596, inlinedAt: !615)
!665 = !DILocation(line: 669, column: 1, scope: !596, inlinedAt: !615)
!666 = !DILocation(line: 77, column: 3, scope: !590)
!667 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !668, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !671)
!668 = !DISubroutineType(types: !669)
!669 = !{!23, !23, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !684}
!672 = !DILocalVariable(name: "argc", arg: 1, scope: !667, file: !3, line: 81, type: !23)
!673 = !DILocalVariable(name: "argv", arg: 2, scope: !667, file: !3, line: 81, type: !670)
!674 = !DILocalVariable(name: "env", scope: !667, file: !3, line: 83, type: !670)
!675 = !DILocalVariable(name: "ep", scope: !667, file: !3, line: 84, type: !10)
!676 = !DILocalVariable(name: "ap", scope: !667, file: !3, line: 84, type: !10)
!677 = !DILocalVariable(name: "i", scope: !667, file: !3, line: 85, type: !23)
!678 = !DILocalVariable(name: "ok", scope: !667, file: !3, line: 86, type: !43)
!679 = !DILocalVariable(name: "optc", scope: !667, file: !3, line: 87, type: !23)
!680 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !667, file: !3, line: 88, type: !43)
!681 = !DILocalVariable(name: "matches", scope: !682, file: !3, line: 121, type: !23)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 120, column: 5)
!683 = distinct !DILexicalBlock(scope: !667, file: !3, line: 113, column: 7)
!684 = !DILocalVariable(name: "matched", scope: !685, file: !3, line: 125, type: !43)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 124, column: 9)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 123, column: 7)
!687 = distinct !DILexicalBlock(scope: !682, file: !3, line: 123, column: 7)
!688 = !DILocation(line: 81, column: 11, scope: !667)
!689 = !DILocation(line: 81, column: 24, scope: !667)
!690 = !DILocation(line: 88, column: 8, scope: !667)
!691 = !DILocation(line: 91, column: 21, scope: !667)
!692 = !DILocation(line: 91, column: 3, scope: !667)
!693 = !DILocation(line: 92, column: 3, scope: !667)
!694 = !DILocation(line: 93, column: 3, scope: !667)
!695 = !DILocation(line: 94, column: 3, scope: !667)
!696 = !DILocalVariable(name: "status", arg: 1, scope: !697, file: !597, line: 99, type: !23)
!697 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !597, file: !597, line: 99, type: !591, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !698)
!698 = !{!696}
!699 = !DILocation(line: 99, column: 30, scope: !697, inlinedAt: !700)
!700 = distinct !DILocation(line: 96, column: 3, scope: !667)
!701 = !DILocation(line: 102, column: 18, scope: !702, inlinedAt: !700)
!702 = distinct !DILexicalBlock(scope: !697, file: !597, line: 101, column: 7)
!703 = !{!704, !704, i64 0}
!704 = !{!"int", !625, i64 0}
!705 = !DILocation(line: 97, column: 3, scope: !667)
!706 = !DILocation(line: 99, column: 3, scope: !667)
!707 = !DILocation(line: 99, column: 18, scope: !667)
!708 = !DILocation(line: 87, column: 7, scope: !667)
!709 = distinct !{!709, !706, !710}
!710 = !DILocation(line: 111, column: 5, scope: !667)
!711 = !DILocation(line: 106, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 102, column: 9)
!713 = distinct !DILexicalBlock(scope: !667, file: !3, line: 100, column: 5)
!714 = !DILocation(line: 107, column: 9, scope: !712)
!715 = !DILocation(line: 109, column: 11, scope: !712)
!716 = !DILocation(line: 113, column: 7, scope: !683)
!717 = !DILocation(line: 113, column: 14, scope: !683)
!718 = !DILocation(line: 113, column: 7, scope: !667)
!719 = !DILocation(line: 128, column: 23, scope: !720)
!720 = distinct !DILexicalBlock(scope: !685, file: !3, line: 128, column: 15)
!721 = !DILocation(line: 115, column: 18, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 115, column: 7)
!723 = distinct !DILexicalBlock(scope: !683, file: !3, line: 114, column: 5)
!724 = !DILocation(line: 83, column: 10, scope: !667)
!725 = !DILocation(line: 115, column: 27, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !3, line: 115, column: 7)
!727 = !DILocation(line: 115, column: 32, scope: !726)
!728 = !DILocation(line: 115, column: 7, scope: !722)
!729 = !DILocation(line: 116, column: 9, scope: !726)
!730 = !DILocation(line: 115, column: 41, scope: !726)
!731 = distinct !{!731, !728, !732}
!732 = !DILocation(line: 116, column: 9, scope: !722)
!733 = !DILocation(line: 121, column: 11, scope: !682)
!734 = !DILocation(line: 85, column: 7, scope: !667)
!735 = !DILocation(line: 125, column: 16, scope: !685)
!736 = !DILocation(line: 128, column: 15, scope: !720)
!737 = !DILocation(line: 128, column: 15, scope: !685)
!738 = !DILocation(line: 131, column: 22, scope: !739)
!739 = distinct !DILexicalBlock(scope: !685, file: !3, line: 131, column: 11)
!740 = !DILocation(line: 131, column: 31, scope: !741)
!741 = distinct !DILexicalBlock(scope: !739, file: !3, line: 131, column: 11)
!742 = !DILocation(line: 131, column: 11, scope: !739)
!743 = !DILocation(line: 134, column: 20, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !3, line: 132, column: 13)
!745 = !DILocation(line: 84, column: 9, scope: !667)
!746 = !DILocation(line: 84, column: 14, scope: !667)
!747 = !DILocation(line: 135, column: 22, scope: !744)
!748 = !{!625, !625, i64 0}
!749 = !DILocation(line: 135, column: 26, scope: !744)
!750 = !DILocation(line: 135, column: 34, scope: !744)
!751 = !DILocation(line: 135, column: 37, scope: !744)
!752 = !DILocation(line: 135, column: 41, scope: !744)
!753 = !DILocation(line: 135, column: 49, scope: !744)
!754 = !DILocation(line: 135, column: 55, scope: !744)
!755 = !DILocation(line: 135, column: 64, scope: !744)
!756 = !DILocation(line: 135, column: 58, scope: !744)
!757 = !DILocation(line: 135, column: 15, scope: !744)
!758 = !DILocation(line: 137, column: 23, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 137, column: 23)
!760 = distinct !DILexicalBlock(scope: !744, file: !3, line: 136, column: 17)
!761 = !DILocation(line: 137, column: 34, scope: !759)
!762 = !DILocation(line: 137, column: 37, scope: !759)
!763 = !DILocation(line: 137, column: 41, scope: !759)
!764 = !DILocation(line: 137, column: 23, scope: !760)
!765 = !DILocation(line: 139, column: 23, scope: !766)
!766 = distinct !DILexicalBlock(scope: !759, file: !3, line: 138, column: 21)
!767 = !DILocation(line: 142, column: 23, scope: !766)
!768 = distinct !{!768, !757, !769}
!769 = !DILocation(line: 144, column: 17, scope: !744)
!770 = !DILocation(line: 0, scope: !685)
!771 = !DILocation(line: 131, column: 37, scope: !741)
!772 = distinct !{!772, !742, !773}
!773 = !DILocation(line: 145, column: 13, scope: !739)
!774 = !DILocation(line: 0, scope: !766)
!775 = !DILocation(line: 147, column: 22, scope: !685)
!776 = !DILocation(line: 147, column: 19, scope: !685)
!777 = !DILocation(line: 148, column: 9, scope: !686)
!778 = !DILocation(line: 123, column: 34, scope: !686)
!779 = !DILocation(line: 123, column: 26, scope: !686)
!780 = !DILocation(line: 123, column: 7, scope: !687)
!781 = distinct !{!781, !780, !782}
!782 = !DILocation(line: 148, column: 9, scope: !687)
!783 = !DILocation(line: 150, column: 31, scope: !682)
!784 = !DILocation(line: 150, column: 29, scope: !682)
!785 = !DILocation(line: 150, column: 21, scope: !682)
!786 = !DILocation(line: 154, column: 1, scope: !667)
!787 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !42, file: !42, line: 51, type: !598, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !788)
!788 = !{!789}
!789 = !DILocalVariable(name: "file", arg: 1, scope: !787, file: !42, line: 51, type: !20)
!790 = !DILocation(line: 51, column: 41, scope: !787)
!791 = !DILocation(line: 53, column: 13, scope: !787)
!792 = !DILocation(line: 54, column: 1, scope: !787)
!793 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !42, file: !42, line: 88, type: !794, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !43}
!796 = !{!797}
!797 = !DILocalVariable(name: "ignore", arg: 1, scope: !793, file: !42, line: 88, type: !43)
!798 = !DILocation(line: 88, column: 37, scope: !793)
!799 = !DILocation(line: 90, column: 16, scope: !793)
!800 = !{!801, !801, i64 0}
!801 = !{!"_Bool", !625, i64 0}
!802 = !DILocation(line: 91, column: 1, scope: !793)
!803 = distinct !DISubprogram(name: "close_stdout", scope: !42, file: !42, line: 117, type: !804, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{null}
!806 = !{!807}
!807 = !DILocalVariable(name: "write_error", scope: !808, file: !42, line: 122, type: !20)
!808 = distinct !DILexicalBlock(scope: !809, file: !42, line: 121, column: 5)
!809 = distinct !DILexicalBlock(scope: !803, file: !42, line: 119, column: 7)
!810 = !DILocation(line: 119, column: 21, scope: !809)
!811 = !DILocation(line: 119, column: 7, scope: !809)
!812 = !DILocation(line: 119, column: 29, scope: !809)
!813 = !DILocation(line: 120, column: 7, scope: !809)
!814 = !DILocation(line: 120, column: 12, scope: !809)
!815 = !{i8 0, i8 2}
!816 = !DILocation(line: 120, column: 25, scope: !809)
!817 = !DILocation(line: 120, column: 28, scope: !809)
!818 = !DILocation(line: 120, column: 34, scope: !809)
!819 = !DILocation(line: 119, column: 7, scope: !803)
!820 = !DILocation(line: 122, column: 33, scope: !808)
!821 = !DILocation(line: 122, column: 19, scope: !808)
!822 = !DILocation(line: 123, column: 11, scope: !823)
!823 = distinct !DILexicalBlock(scope: !808, file: !42, line: 123, column: 11)
!824 = !DILocation(line: 0, scope: !823)
!825 = !DILocation(line: 123, column: 11, scope: !808)
!826 = !DILocation(line: 124, column: 36, scope: !823)
!827 = !DILocation(line: 124, column: 9, scope: !823)
!828 = !DILocation(line: 127, column: 9, scope: !823)
!829 = !DILocation(line: 129, column: 14, scope: !808)
!830 = !DILocation(line: 129, column: 7, scope: !808)
!831 = !DILocation(line: 134, column: 42, scope: !832)
!832 = distinct !DILexicalBlock(scope: !803, file: !42, line: 134, column: 7)
!833 = !DILocation(line: 134, column: 28, scope: !832)
!834 = !DILocation(line: 134, column: 50, scope: !832)
!835 = !DILocation(line: 134, column: 7, scope: !803)
!836 = !DILocation(line: 135, column: 12, scope: !832)
!837 = !DILocation(line: 135, column: 5, scope: !832)
!838 = !DILocation(line: 136, column: 1, scope: !803)
!839 = distinct !DISubprogram(name: "set_program_name", scope: !57, file: !57, line: 39, type: !598, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !53, retainedNodes: !840)
!840 = !{!841, !842, !843}
!841 = !DILocalVariable(name: "argv0", arg: 1, scope: !839, file: !57, line: 39, type: !20)
!842 = !DILocalVariable(name: "slash", scope: !839, file: !57, line: 46, type: !20)
!843 = !DILocalVariable(name: "base", scope: !839, file: !57, line: 47, type: !20)
!844 = !DILocation(line: 39, column: 31, scope: !839)
!845 = !DILocation(line: 51, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !839, file: !57, line: 51, column: 7)
!847 = !DILocation(line: 51, column: 7, scope: !839)
!848 = !DILocation(line: 55, column: 14, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !57, line: 52, column: 5)
!850 = !DILocation(line: 54, column: 7, scope: !849)
!851 = !DILocation(line: 56, column: 7, scope: !849)
!852 = !DILocation(line: 59, column: 11, scope: !839)
!853 = !DILocation(line: 46, column: 15, scope: !839)
!854 = !DILocation(line: 60, column: 17, scope: !839)
!855 = !DILocation(line: 60, column: 33, scope: !839)
!856 = !DILocation(line: 60, column: 11, scope: !839)
!857 = !DILocation(line: 47, column: 15, scope: !839)
!858 = !DILocation(line: 61, column: 12, scope: !859)
!859 = distinct !DILexicalBlock(scope: !839, file: !57, line: 61, column: 7)
!860 = !DILocation(line: 61, column: 20, scope: !859)
!861 = !DILocation(line: 61, column: 25, scope: !859)
!862 = !DILocation(line: 61, column: 42, scope: !859)
!863 = !DILocation(line: 61, column: 28, scope: !859)
!864 = !DILocation(line: 61, column: 61, scope: !859)
!865 = !DILocation(line: 61, column: 7, scope: !839)
!866 = !DILocation(line: 64, column: 11, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !57, line: 64, column: 11)
!868 = distinct !DILexicalBlock(scope: !859, file: !57, line: 62, column: 5)
!869 = !DILocation(line: 64, column: 36, scope: !867)
!870 = !DILocation(line: 64, column: 11, scope: !868)
!871 = !DILocation(line: 66, column: 24, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !57, line: 65, column: 9)
!873 = !DILocation(line: 70, column: 41, scope: !872)
!874 = !DILocation(line: 72, column: 9, scope: !872)
!875 = !DILocation(line: 84, column: 16, scope: !839)
!876 = !DILocation(line: 90, column: 27, scope: !839)
!877 = !DILocation(line: 92, column: 1, scope: !839)
!878 = distinct !DISubprogram(name: "clone_quoting_options", scope: !105, file: !105, line: 122, type: !879, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !882)
!879 = !DISubroutineType(types: !880)
!880 = !{!881, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!882 = !{!883, !884, !885}
!883 = !DILocalVariable(name: "o", arg: 1, scope: !878, file: !105, line: 122, type: !881)
!884 = !DILocalVariable(name: "e", scope: !878, file: !105, line: 124, type: !23)
!885 = !DILocalVariable(name: "p", scope: !878, file: !105, line: 125, type: !881)
!886 = !DILocation(line: 122, column: 48, scope: !878)
!887 = !DILocation(line: 124, column: 11, scope: !878)
!888 = !DILocation(line: 124, column: 7, scope: !878)
!889 = !DILocation(line: 125, column: 40, scope: !878)
!890 = !DILocation(line: 125, column: 31, scope: !878)
!891 = !DILocation(line: 125, column: 27, scope: !878)
!892 = !DILocation(line: 127, column: 9, scope: !878)
!893 = !DILocation(line: 128, column: 3, scope: !878)
!894 = distinct !DISubprogram(name: "get_quoting_style", scope: !105, file: !105, line: 133, type: !895, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !899)
!895 = !DISubroutineType(types: !896)
!896 = !{!63, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!899 = !{!900}
!900 = !DILocalVariable(name: "o", arg: 1, scope: !894, file: !105, line: 133, type: !897)
!901 = !DILocation(line: 133, column: 50, scope: !894)
!902 = !DILocation(line: 135, column: 11, scope: !894)
!903 = !DILocation(line: 135, column: 46, scope: !894)
!904 = !{!905, !625, i64 0}
!905 = !{!"quoting_options", !625, i64 0, !704, i64 4, !625, i64 8, !624, i64 40, !624, i64 48}
!906 = !DILocation(line: 135, column: 3, scope: !894)
!907 = distinct !DISubprogram(name: "set_quoting_style", scope: !105, file: !105, line: 141, type: !908, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !881, !63}
!910 = !{!911, !912}
!911 = !DILocalVariable(name: "o", arg: 1, scope: !907, file: !105, line: 141, type: !881)
!912 = !DILocalVariable(name: "s", arg: 2, scope: !907, file: !105, line: 141, type: !63)
!913 = !DILocation(line: 141, column: 44, scope: !907)
!914 = !DILocation(line: 141, column: 66, scope: !907)
!915 = !DILocation(line: 143, column: 4, scope: !907)
!916 = !DILocation(line: 143, column: 39, scope: !907)
!917 = !DILocation(line: 143, column: 45, scope: !907)
!918 = !DILocation(line: 144, column: 1, scope: !907)
!919 = distinct !DISubprogram(name: "set_char_quoting", scope: !105, file: !105, line: 152, type: !920, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{!23, !881, !11, !23}
!922 = !{!923, !924, !925, !926, !928, !930, !931}
!923 = !DILocalVariable(name: "o", arg: 1, scope: !919, file: !105, line: 152, type: !881)
!924 = !DILocalVariable(name: "c", arg: 2, scope: !919, file: !105, line: 152, type: !11)
!925 = !DILocalVariable(name: "i", arg: 3, scope: !919, file: !105, line: 152, type: !23)
!926 = !DILocalVariable(name: "uc", scope: !919, file: !105, line: 154, type: !927)
!927 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!928 = !DILocalVariable(name: "p", scope: !919, file: !105, line: 155, type: !929)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!930 = !DILocalVariable(name: "shift", scope: !919, file: !105, line: 157, type: !23)
!931 = !DILocalVariable(name: "r", scope: !919, file: !105, line: 158, type: !23)
!932 = !DILocation(line: 152, column: 43, scope: !919)
!933 = !DILocation(line: 152, column: 51, scope: !919)
!934 = !DILocation(line: 152, column: 58, scope: !919)
!935 = !DILocation(line: 154, column: 17, scope: !919)
!936 = !DILocation(line: 156, column: 6, scope: !919)
!937 = !DILocation(line: 156, column: 62, scope: !919)
!938 = !DILocation(line: 156, column: 57, scope: !919)
!939 = !DILocation(line: 155, column: 17, scope: !919)
!940 = !DILocation(line: 157, column: 15, scope: !919)
!941 = !DILocation(line: 157, column: 7, scope: !919)
!942 = !DILocation(line: 158, column: 12, scope: !919)
!943 = !DILocation(line: 158, column: 15, scope: !919)
!944 = !DILocation(line: 158, column: 25, scope: !919)
!945 = !DILocation(line: 158, column: 7, scope: !919)
!946 = !DILocation(line: 159, column: 13, scope: !919)
!947 = !DILocation(line: 159, column: 18, scope: !919)
!948 = !DILocation(line: 159, column: 23, scope: !919)
!949 = !DILocation(line: 159, column: 6, scope: !919)
!950 = !DILocation(line: 160, column: 3, scope: !919)
!951 = distinct !DISubprogram(name: "set_quoting_flags", scope: !105, file: !105, line: 168, type: !952, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !954)
!952 = !DISubroutineType(types: !953)
!953 = !{!23, !881, !23}
!954 = !{!955, !956, !957}
!955 = !DILocalVariable(name: "o", arg: 1, scope: !951, file: !105, line: 168, type: !881)
!956 = !DILocalVariable(name: "i", arg: 2, scope: !951, file: !105, line: 168, type: !23)
!957 = !DILocalVariable(name: "r", scope: !951, file: !105, line: 170, type: !23)
!958 = !DILocation(line: 168, column: 44, scope: !951)
!959 = !DILocation(line: 168, column: 51, scope: !951)
!960 = !DILocation(line: 171, column: 8, scope: !961)
!961 = distinct !DILexicalBlock(scope: !951, file: !105, line: 171, column: 7)
!962 = !DILocation(line: 171, column: 7, scope: !951)
!963 = !DILocation(line: 173, column: 10, scope: !951)
!964 = !{!905, !704, i64 4}
!965 = !DILocation(line: 170, column: 7, scope: !951)
!966 = !DILocation(line: 174, column: 12, scope: !951)
!967 = !DILocation(line: 175, column: 3, scope: !951)
!968 = distinct !DISubprogram(name: "set_custom_quoting", scope: !105, file: !105, line: 179, type: !969, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !971)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !881, !20, !20}
!971 = !{!972, !973, !974}
!972 = !DILocalVariable(name: "o", arg: 1, scope: !968, file: !105, line: 179, type: !881)
!973 = !DILocalVariable(name: "left_quote", arg: 2, scope: !968, file: !105, line: 180, type: !20)
!974 = !DILocalVariable(name: "right_quote", arg: 3, scope: !968, file: !105, line: 180, type: !20)
!975 = !DILocation(line: 179, column: 45, scope: !968)
!976 = !DILocation(line: 180, column: 33, scope: !968)
!977 = !DILocation(line: 180, column: 57, scope: !968)
!978 = !DILocation(line: 182, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !968, file: !105, line: 182, column: 7)
!980 = !DILocation(line: 182, column: 7, scope: !968)
!981 = !DILocation(line: 184, column: 6, scope: !968)
!982 = !DILocation(line: 184, column: 12, scope: !968)
!983 = !DILocation(line: 185, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !968, file: !105, line: 185, column: 7)
!985 = !DILocation(line: 185, column: 23, scope: !984)
!986 = !DILocation(line: 185, column: 19, scope: !984)
!987 = !DILocation(line: 186, column: 5, scope: !984)
!988 = !DILocation(line: 187, column: 6, scope: !968)
!989 = !DILocation(line: 187, column: 17, scope: !968)
!990 = !{!905, !624, i64 40}
!991 = !DILocation(line: 188, column: 6, scope: !968)
!992 = !DILocation(line: 188, column: 18, scope: !968)
!993 = !{!905, !624, i64 48}
!994 = !DILocation(line: 189, column: 1, scope: !968)
!995 = distinct !DISubprogram(name: "quotearg_buffer", scope: !105, file: !105, line: 784, type: !996, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!99, !10, !99, !20, !99, !897}
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!999 = !DILocalVariable(name: "buffer", arg: 1, scope: !995, file: !105, line: 784, type: !10)
!1000 = !DILocalVariable(name: "buffersize", arg: 2, scope: !995, file: !105, line: 784, type: !99)
!1001 = !DILocalVariable(name: "arg", arg: 3, scope: !995, file: !105, line: 785, type: !20)
!1002 = !DILocalVariable(name: "argsize", arg: 4, scope: !995, file: !105, line: 785, type: !99)
!1003 = !DILocalVariable(name: "o", arg: 5, scope: !995, file: !105, line: 786, type: !897)
!1004 = !DILocalVariable(name: "p", scope: !995, file: !105, line: 788, type: !897)
!1005 = !DILocalVariable(name: "e", scope: !995, file: !105, line: 789, type: !23)
!1006 = !DILocalVariable(name: "r", scope: !995, file: !105, line: 790, type: !99)
!1007 = !DILocation(line: 784, column: 24, scope: !995)
!1008 = !DILocation(line: 784, column: 39, scope: !995)
!1009 = !DILocation(line: 785, column: 30, scope: !995)
!1010 = !DILocation(line: 785, column: 42, scope: !995)
!1011 = !DILocation(line: 786, column: 48, scope: !995)
!1012 = !DILocation(line: 788, column: 37, scope: !995)
!1013 = !DILocation(line: 788, column: 33, scope: !995)
!1014 = !DILocation(line: 789, column: 11, scope: !995)
!1015 = !DILocation(line: 789, column: 7, scope: !995)
!1016 = !DILocation(line: 791, column: 43, scope: !995)
!1017 = !DILocation(line: 791, column: 53, scope: !995)
!1018 = !DILocation(line: 791, column: 60, scope: !995)
!1019 = !DILocation(line: 792, column: 43, scope: !995)
!1020 = !DILocation(line: 792, column: 58, scope: !995)
!1021 = !DILocation(line: 790, column: 14, scope: !995)
!1022 = !DILocation(line: 790, column: 10, scope: !995)
!1023 = !DILocation(line: 793, column: 9, scope: !995)
!1024 = !DILocation(line: 794, column: 3, scope: !995)
!1025 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !105, file: !105, line: 256, type: !1026, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1030)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!99, !10, !99, !20, !99, !63, !23, !1028, !20, !20}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1055, !1056, !1057, !1058, !1059, !1062, !1063, !1079, !1082, !1083, !1090}
!1031 = !DILocalVariable(name: "buffer", arg: 1, scope: !1025, file: !105, line: 256, type: !10)
!1032 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1025, file: !105, line: 256, type: !99)
!1033 = !DILocalVariable(name: "arg", arg: 3, scope: !1025, file: !105, line: 257, type: !20)
!1034 = !DILocalVariable(name: "argsize", arg: 4, scope: !1025, file: !105, line: 257, type: !99)
!1035 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1025, file: !105, line: 258, type: !63)
!1036 = !DILocalVariable(name: "flags", arg: 6, scope: !1025, file: !105, line: 258, type: !23)
!1037 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1025, file: !105, line: 259, type: !1028)
!1038 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1025, file: !105, line: 260, type: !20)
!1039 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1025, file: !105, line: 261, type: !20)
!1040 = !DILocalVariable(name: "i", scope: !1025, file: !105, line: 263, type: !99)
!1041 = !DILocalVariable(name: "len", scope: !1025, file: !105, line: 264, type: !99)
!1042 = !DILocalVariable(name: "orig_buffersize", scope: !1025, file: !105, line: 265, type: !99)
!1043 = !DILocalVariable(name: "quote_string", scope: !1025, file: !105, line: 266, type: !20)
!1044 = !DILocalVariable(name: "quote_string_len", scope: !1025, file: !105, line: 267, type: !99)
!1045 = !DILocalVariable(name: "backslash_escapes", scope: !1025, file: !105, line: 268, type: !43)
!1046 = !DILocalVariable(name: "unibyte_locale", scope: !1025, file: !105, line: 269, type: !43)
!1047 = !DILocalVariable(name: "elide_outer_quotes", scope: !1025, file: !105, line: 270, type: !43)
!1048 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1025, file: !105, line: 271, type: !43)
!1049 = !DILocalVariable(name: "encountered_single_quote", scope: !1025, file: !105, line: 272, type: !43)
!1050 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1025, file: !105, line: 273, type: !43)
!1051 = !DILocalVariable(name: "c", scope: !1052, file: !105, line: 402, type: !927)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !105, line: 401, column: 5)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !105, line: 400, column: 3)
!1054 = distinct !DILexicalBlock(scope: !1025, file: !105, line: 400, column: 3)
!1055 = !DILocalVariable(name: "esc", scope: !1052, file: !105, line: 403, type: !927)
!1056 = !DILocalVariable(name: "is_right_quote", scope: !1052, file: !105, line: 404, type: !43)
!1057 = !DILocalVariable(name: "escaping", scope: !1052, file: !105, line: 405, type: !43)
!1058 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1052, file: !105, line: 406, type: !43)
!1059 = !DILocalVariable(name: "m", scope: !1060, file: !105, line: 610, type: !99)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 608, column: 11)
!1061 = distinct !DILexicalBlock(scope: !1052, file: !105, line: 426, column: 9)
!1062 = !DILocalVariable(name: "printable", scope: !1060, file: !105, line: 612, type: !43)
!1063 = !DILocalVariable(name: "mbstate", scope: !1064, file: !105, line: 621, type: !1066)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !105, line: 620, column: 15)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !105, line: 614, column: 17)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1067, line: 6, baseType: !1068)
!1067 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1069, line: 21, baseType: !1070)
!1069 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1069, line: 13, size: 64, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1070, file: !1069, line: 15, baseType: !23, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1070, file: !1069, line: 20, baseType: !1074, size: 32, offset: 32)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !1069, line: 16, size: 32, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1074, file: !1069, line: 18, baseType: !6, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1074, file: !1069, line: 19, baseType: !1078, size: 32)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !27)
!1079 = !DILocalVariable(name: "w", scope: !1080, file: !105, line: 631, type: !1081)
!1080 = distinct !DILexicalBlock(scope: !1064, file: !105, line: 630, column: 19)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !100, line: 90, baseType: !23)
!1082 = !DILocalVariable(name: "bytes", scope: !1080, file: !105, line: 632, type: !99)
!1083 = !DILocalVariable(name: "j", scope: !1084, file: !105, line: 657, type: !99)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !105, line: 656, column: 27)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !105, line: 654, column: 29)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !105, line: 649, column: 23)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !105, line: 641, column: 30)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !105, line: 636, column: 30)
!1089 = distinct !DILexicalBlock(scope: !1080, file: !105, line: 634, column: 25)
!1090 = !DILocalVariable(name: "ilim", scope: !1091, file: !105, line: 684, type: !99)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !105, line: 681, column: 15)
!1092 = distinct !DILexicalBlock(scope: !1060, file: !105, line: 680, column: 17)
!1093 = !DILocation(line: 256, column: 33, scope: !1025)
!1094 = !DILocation(line: 256, column: 48, scope: !1025)
!1095 = !DILocation(line: 257, column: 39, scope: !1025)
!1096 = !DILocation(line: 257, column: 51, scope: !1025)
!1097 = !DILocation(line: 258, column: 46, scope: !1025)
!1098 = !DILocation(line: 258, column: 65, scope: !1025)
!1099 = !DILocation(line: 259, column: 47, scope: !1025)
!1100 = !DILocation(line: 260, column: 39, scope: !1025)
!1101 = !DILocation(line: 261, column: 39, scope: !1025)
!1102 = !DILocation(line: 264, column: 10, scope: !1025)
!1103 = !DILocation(line: 265, column: 10, scope: !1025)
!1104 = !DILocation(line: 266, column: 15, scope: !1025)
!1105 = !DILocation(line: 267, column: 10, scope: !1025)
!1106 = !DILocation(line: 268, column: 8, scope: !1025)
!1107 = !DILocation(line: 269, column: 25, scope: !1025)
!1108 = !DILocation(line: 269, column: 36, scope: !1025)
!1109 = !DILocation(line: 270, column: 8, scope: !1025)
!1110 = !DILocation(line: 271, column: 8, scope: !1025)
!1111 = !DILocation(line: 272, column: 8, scope: !1025)
!1112 = !DILocation(line: 273, column: 8, scope: !1025)
!1113 = !DILocation(line: 273, column: 3, scope: !1025)
!1114 = !DILocation(line: 0, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1025, file: !105, line: 317, column: 5)
!1116 = !DILocation(line: 316, column: 3, scope: !1025)
!1117 = !DILocation(line: 323, column: 11, scope: !1115)
!1118 = !DILocation(line: 323, column: 12, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !105, line: 323, column: 11)
!1120 = !DILocation(line: 324, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !105, line: 324, column: 9)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !105, line: 324, column: 9)
!1123 = !DILocation(line: 324, column: 9, scope: !1122)
!1124 = !DILocation(line: 362, column: 26, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !105, line: 340, column: 11)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !105, line: 339, column: 13)
!1127 = distinct !DILexicalBlock(scope: !1115, file: !105, line: 338, column: 7)
!1128 = !DILocation(line: 363, column: 27, scope: !1125)
!1129 = !DILocation(line: 364, column: 11, scope: !1125)
!1130 = !DILocation(line: 365, column: 14, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !105, line: 365, column: 13)
!1132 = !DILocation(line: 365, column: 13, scope: !1127)
!1133 = !DILocation(line: 366, column: 43, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !105, line: 366, column: 11)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !105, line: 366, column: 11)
!1136 = !DILocation(line: 366, column: 11, scope: !1135)
!1137 = !DILocation(line: 367, column: 13, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !105, line: 367, column: 13)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !105, line: 367, column: 13)
!1140 = !DILocation(line: 367, column: 13, scope: !1139)
!1141 = !DILocation(line: 366, column: 70, scope: !1134)
!1142 = distinct !{!1142, !1136, !1143}
!1143 = !DILocation(line: 367, column: 13, scope: !1135)
!1144 = !DILocation(line: 370, column: 28, scope: !1127)
!1145 = !DILocation(line: 372, column: 7, scope: !1115)
!1146 = !DILocation(line: 376, column: 7, scope: !1115)
!1147 = !DILocation(line: 379, column: 7, scope: !1115)
!1148 = !DILocation(line: 381, column: 12, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1115, file: !105, line: 381, column: 11)
!1150 = !DILocation(line: 381, column: 11, scope: !1115)
!1151 = !DILocation(line: 0, scope: !1149)
!1152 = !DILocation(line: 386, column: 12, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1115, file: !105, line: 386, column: 11)
!1154 = !DILocation(line: 386, column: 11, scope: !1115)
!1155 = !DILocation(line: 387, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !105, line: 387, column: 9)
!1157 = distinct !DILexicalBlock(scope: !1153, file: !105, line: 387, column: 9)
!1158 = !DILocation(line: 387, column: 9, scope: !1157)
!1159 = !DILocation(line: 394, column: 7, scope: !1115)
!1160 = !DILocation(line: 397, column: 7, scope: !1115)
!1161 = !DILocation(line: 0, scope: !1025)
!1162 = !DILocation(line: 263, column: 10, scope: !1025)
!1163 = !DILocation(line: 400, column: 8, scope: !1054)
!1164 = !DILocation(line: 0, scope: !1053)
!1165 = !DILocation(line: 400, column: 27, scope: !1053)
!1166 = !DILocation(line: 400, column: 19, scope: !1053)
!1167 = !DILocation(line: 400, column: 41, scope: !1053)
!1168 = !DILocation(line: 400, column: 48, scope: !1053)
!1169 = !DILocation(line: 400, column: 3, scope: !1054)
!1170 = !DILocation(line: 400, column: 60, scope: !1053)
!1171 = !DILocation(line: 404, column: 12, scope: !1052)
!1172 = !DILocation(line: 405, column: 12, scope: !1052)
!1173 = !DILocation(line: 406, column: 12, scope: !1052)
!1174 = !DILocation(line: 409, column: 11, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1052, file: !105, line: 408, column: 11)
!1176 = !DILocation(line: 411, column: 17, scope: !1175)
!1177 = !DILocation(line: 412, column: 39, scope: !1175)
!1178 = !DILocation(line: 416, column: 32, scope: !1175)
!1179 = !DILocation(line: 412, column: 19, scope: !1175)
!1180 = !DILocation(line: 412, column: 15, scope: !1175)
!1181 = !DILocation(line: 417, column: 11, scope: !1175)
!1182 = !DILocation(line: 417, column: 26, scope: !1175)
!1183 = !DILocation(line: 417, column: 14, scope: !1175)
!1184 = !DILocation(line: 417, column: 63, scope: !1175)
!1185 = !DILocation(line: 408, column: 11, scope: !1052)
!1186 = !DILocation(line: 0, scope: !1052)
!1187 = !DILocation(line: 424, column: 11, scope: !1052)
!1188 = !DILocation(line: 402, column: 21, scope: !1052)
!1189 = !DILocation(line: 425, column: 7, scope: !1052)
!1190 = !DILocation(line: 428, column: 15, scope: !1061)
!1191 = !DILocation(line: 430, column: 15, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !105, line: 430, column: 15)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !105, line: 429, column: 13)
!1194 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 428, column: 15)
!1195 = !DILocation(line: 430, column: 15, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !105, line: 430, column: 15)
!1197 = !DILocation(line: 430, column: 15, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !105, line: 430, column: 15)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !105, line: 430, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !105, line: 430, column: 15)
!1201 = !DILocation(line: 430, column: 15, scope: !1199)
!1202 = !DILocation(line: 430, column: 15, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !105, line: 430, column: 15)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !105, line: 430, column: 15)
!1205 = !DILocation(line: 430, column: 15, scope: !1204)
!1206 = !DILocation(line: 430, column: 15, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !105, line: 430, column: 15)
!1208 = distinct !DILexicalBlock(scope: !1200, file: !105, line: 430, column: 15)
!1209 = !DILocation(line: 430, column: 15, scope: !1208)
!1210 = !DILocation(line: 430, column: 15, scope: !1200)
!1211 = !DILocation(line: 430, column: 15, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !105, line: 430, column: 15)
!1213 = distinct !DILexicalBlock(scope: !1192, file: !105, line: 430, column: 15)
!1214 = !DILocation(line: 430, column: 15, scope: !1213)
!1215 = !DILocation(line: 438, column: 19, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1193, file: !105, line: 437, column: 19)
!1217 = !DILocation(line: 438, column: 24, scope: !1216)
!1218 = !DILocation(line: 438, column: 28, scope: !1216)
!1219 = !DILocation(line: 438, column: 38, scope: !1216)
!1220 = !DILocation(line: 438, column: 48, scope: !1216)
!1221 = !DILocation(line: 438, column: 59, scope: !1216)
!1222 = !DILocation(line: 440, column: 19, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !105, line: 440, column: 19)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !105, line: 440, column: 19)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !105, line: 439, column: 17)
!1226 = !DILocation(line: 440, column: 19, scope: !1224)
!1227 = !DILocation(line: 441, column: 19, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !105, line: 441, column: 19)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !105, line: 441, column: 19)
!1230 = !DILocation(line: 441, column: 19, scope: !1229)
!1231 = !DILocation(line: 442, column: 17, scope: !1225)
!1232 = !DILocation(line: 449, column: 20, scope: !1194)
!1233 = !DILocation(line: 454, column: 11, scope: !1061)
!1234 = !DILocation(line: 457, column: 19, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 455, column: 13)
!1236 = !DILocation(line: 463, column: 19, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1235, file: !105, line: 462, column: 19)
!1238 = !DILocation(line: 463, column: 24, scope: !1237)
!1239 = !DILocation(line: 463, column: 28, scope: !1237)
!1240 = !DILocation(line: 463, column: 38, scope: !1237)
!1241 = !DILocation(line: 463, column: 47, scope: !1237)
!1242 = !DILocation(line: 463, column: 41, scope: !1237)
!1243 = !DILocation(line: 463, column: 52, scope: !1237)
!1244 = !DILocation(line: 462, column: 19, scope: !1235)
!1245 = !DILocation(line: 464, column: 25, scope: !1237)
!1246 = !DILocation(line: 464, column: 17, scope: !1237)
!1247 = !DILocation(line: 471, column: 25, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1237, file: !105, line: 465, column: 19)
!1249 = !DILocation(line: 475, column: 21, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !105, line: 475, column: 21)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !105, line: 475, column: 21)
!1252 = !DILocation(line: 475, column: 21, scope: !1251)
!1253 = !DILocation(line: 476, column: 21, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !105, line: 476, column: 21)
!1255 = distinct !DILexicalBlock(scope: !1248, file: !105, line: 476, column: 21)
!1256 = !DILocation(line: 476, column: 21, scope: !1255)
!1257 = !DILocation(line: 477, column: 21, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !105, line: 477, column: 21)
!1259 = distinct !DILexicalBlock(scope: !1248, file: !105, line: 477, column: 21)
!1260 = !DILocation(line: 477, column: 21, scope: !1259)
!1261 = !DILocation(line: 478, column: 21, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !105, line: 478, column: 21)
!1263 = distinct !DILexicalBlock(scope: !1248, file: !105, line: 478, column: 21)
!1264 = !DILocation(line: 478, column: 21, scope: !1263)
!1265 = !DILocation(line: 479, column: 21, scope: !1248)
!1266 = !DILocation(line: 403, column: 21, scope: !1052)
!1267 = !DILocation(line: 492, column: 31, scope: !1061)
!1268 = !DILocation(line: 493, column: 31, scope: !1061)
!1269 = !DILocation(line: 495, column: 31, scope: !1061)
!1270 = !DILocation(line: 496, column: 31, scope: !1061)
!1271 = !DILocation(line: 497, column: 31, scope: !1061)
!1272 = !DILocation(line: 500, column: 15, scope: !1061)
!1273 = !DILocation(line: 502, column: 19, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !105, line: 501, column: 13)
!1275 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 500, column: 15)
!1276 = !DILocation(line: 509, column: 33, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 509, column: 15)
!1278 = !DILocation(line: 0, scope: !1061)
!1279 = !DILocation(line: 514, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 513, column: 15)
!1281 = !DILocation(line: 518, column: 15, scope: !1061)
!1282 = !DILocation(line: 526, column: 26, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 526, column: 15)
!1284 = !DILocation(line: 526, column: 15, scope: !1061)
!1285 = !DILocation(line: 526, column: 40, scope: !1283)
!1286 = !DILocation(line: 526, column: 47, scope: !1283)
!1287 = !DILocation(line: 530, column: 17, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 530, column: 15)
!1289 = !DILocation(line: 526, column: 18, scope: !1283)
!1290 = !DILocation(line: 526, column: 65, scope: !1283)
!1291 = !DILocation(line: 530, column: 15, scope: !1061)
!1292 = !DILocation(line: 535, column: 11, scope: !1061)
!1293 = !DILocation(line: 549, column: 15, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 548, column: 15)
!1295 = !DILocation(line: 556, column: 15, scope: !1061)
!1296 = !DILocation(line: 558, column: 19, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !105, line: 557, column: 13)
!1298 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 556, column: 15)
!1299 = !DILocation(line: 561, column: 19, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !105, line: 561, column: 19)
!1301 = !DILocation(line: 561, column: 35, scope: !1300)
!1302 = !DILocation(line: 561, column: 30, scope: !1300)
!1303 = !DILocation(line: 570, column: 15, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !105, line: 570, column: 15)
!1305 = distinct !DILexicalBlock(scope: !1297, file: !105, line: 570, column: 15)
!1306 = !DILocation(line: 570, column: 15, scope: !1305)
!1307 = !DILocation(line: 571, column: 15, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !105, line: 571, column: 15)
!1309 = distinct !DILexicalBlock(scope: !1297, file: !105, line: 571, column: 15)
!1310 = !DILocation(line: 571, column: 15, scope: !1309)
!1311 = !DILocation(line: 572, column: 15, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !105, line: 572, column: 15)
!1313 = distinct !DILexicalBlock(scope: !1297, file: !105, line: 572, column: 15)
!1314 = !DILocation(line: 572, column: 15, scope: !1313)
!1315 = !DILocation(line: 574, column: 13, scope: !1297)
!1316 = !DILocation(line: 614, column: 17, scope: !1060)
!1317 = !DILocation(line: 610, column: 20, scope: !1060)
!1318 = !DILocation(line: 617, column: 29, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1065, file: !105, line: 615, column: 15)
!1320 = !{!1321, !1321, i64 0}
!1321 = !{!"short", !625, i64 0}
!1322 = !DILocation(line: 617, column: 27, scope: !1319)
!1323 = !DILocation(line: 612, column: 18, scope: !1060)
!1324 = !DILocation(line: 618, column: 15, scope: !1319)
!1325 = !DILocation(line: 621, column: 17, scope: !1064)
!1326 = !DILocation(line: 622, column: 17, scope: !1064)
!1327 = !DILocation(line: 626, column: 29, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1064, file: !105, line: 626, column: 21)
!1329 = !DILocation(line: 626, column: 21, scope: !1064)
!1330 = !DILocation(line: 627, column: 29, scope: !1328)
!1331 = !DILocation(line: 627, column: 19, scope: !1328)
!1332 = !DILocation(line: 0, scope: !1175)
!1333 = !DILocation(line: 629, column: 17, scope: !1064)
!1334 = !DILocation(line: 624, column: 19, scope: !1064)
!1335 = !DILocation(line: 625, column: 27, scope: !1064)
!1336 = !DILocation(line: 631, column: 21, scope: !1080)
!1337 = !DILocation(line: 632, column: 56, scope: !1080)
!1338 = !DILocation(line: 632, column: 50, scope: !1080)
!1339 = !DILocation(line: 633, column: 53, scope: !1080)
!1340 = !DILocation(line: 621, column: 27, scope: !1064)
!1341 = !DILocation(line: 631, column: 29, scope: !1080)
!1342 = !DILocation(line: 632, column: 36, scope: !1080)
!1343 = !DILocation(line: 632, column: 28, scope: !1080)
!1344 = !DILocation(line: 634, column: 25, scope: !1080)
!1345 = !DILocation(line: 644, column: 38, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1087, file: !105, line: 642, column: 23)
!1347 = !DILocation(line: 644, column: 48, scope: !1346)
!1348 = !DILocation(line: 644, column: 51, scope: !1346)
!1349 = !DILocation(line: 644, column: 25, scope: !1346)
!1350 = !DILocation(line: 645, column: 28, scope: !1346)
!1351 = !DILocation(line: 644, column: 34, scope: !1346)
!1352 = distinct !{!1352, !1349, !1350}
!1353 = !DILocation(line: 658, column: 43, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !105, line: 658, column: 29)
!1355 = distinct !DILexicalBlock(scope: !1084, file: !105, line: 658, column: 29)
!1356 = !DILocation(line: 655, column: 29, scope: !1085)
!1357 = !DILocation(line: 657, column: 36, scope: !1084)
!1358 = !DILocation(line: 659, column: 49, scope: !1354)
!1359 = !DILocation(line: 659, column: 39, scope: !1354)
!1360 = !DILocation(line: 659, column: 31, scope: !1354)
!1361 = !DILocation(line: 658, column: 53, scope: !1354)
!1362 = !DILocation(line: 658, column: 29, scope: !1355)
!1363 = distinct !{!1363, !1362, !1364}
!1364 = !DILocation(line: 667, column: 33, scope: !1355)
!1365 = !DILocation(line: 674, column: 19, scope: !1064)
!1366 = !DILocation(line: 670, column: 41, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1086, file: !105, line: 670, column: 29)
!1368 = !DILocation(line: 670, column: 31, scope: !1367)
!1369 = !DILocation(line: 670, column: 29, scope: !1086)
!1370 = !DILocation(line: 672, column: 27, scope: !1086)
!1371 = !DILocation(line: 675, column: 26, scope: !1064)
!1372 = !DILocation(line: 675, column: 24, scope: !1064)
!1373 = !DILocation(line: 674, column: 19, scope: !1080)
!1374 = distinct !{!1374, !1333, !1375}
!1375 = !DILocation(line: 675, column: 44, scope: !1064)
!1376 = !DILocation(line: 676, column: 15, scope: !1065)
!1377 = !DILocation(line: 0, scope: !1328)
!1378 = !DILocation(line: 0, scope: !1064)
!1379 = !DILocation(line: 678, column: 40, scope: !1060)
!1380 = !DILocation(line: 680, column: 19, scope: !1092)
!1381 = !DILocation(line: 680, column: 45, scope: !1092)
!1382 = !DILocation(line: 680, column: 23, scope: !1092)
!1383 = !DILocation(line: 684, column: 33, scope: !1091)
!1384 = !DILocation(line: 684, column: 24, scope: !1091)
!1385 = !DILocation(line: 686, column: 17, scope: !1091)
!1386 = !DILocation(line: 0, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !105, line: 687, column: 19)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !105, line: 686, column: 17)
!1389 = distinct !DILexicalBlock(scope: !1091, file: !105, line: 686, column: 17)
!1390 = !DILocation(line: 0, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !105, line: 703, column: 21)
!1392 = !DILocation(line: 0, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !105, line: 696, column: 23)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !105, line: 695, column: 30)
!1395 = distinct !DILexicalBlock(scope: !1387, file: !105, line: 688, column: 25)
!1396 = !DILocation(line: 688, column: 43, scope: !1395)
!1397 = !DILocation(line: 690, column: 25, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !105, line: 690, column: 25)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !105, line: 689, column: 23)
!1400 = !DILocation(line: 690, column: 25, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !105, line: 690, column: 25)
!1402 = !DILocation(line: 690, column: 25, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !105, line: 690, column: 25)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !105, line: 690, column: 25)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !105, line: 690, column: 25)
!1406 = !DILocation(line: 690, column: 25, scope: !1404)
!1407 = !DILocation(line: 690, column: 25, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !105, line: 690, column: 25)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !105, line: 690, column: 25)
!1410 = !DILocation(line: 690, column: 25, scope: !1409)
!1411 = !DILocation(line: 690, column: 25, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !105, line: 690, column: 25)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !105, line: 690, column: 25)
!1414 = !DILocation(line: 690, column: 25, scope: !1413)
!1415 = !DILocation(line: 690, column: 25, scope: !1405)
!1416 = !DILocation(line: 690, column: 25, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !105, line: 690, column: 25)
!1418 = distinct !DILexicalBlock(scope: !1398, file: !105, line: 690, column: 25)
!1419 = !DILocation(line: 690, column: 25, scope: !1418)
!1420 = !DILocation(line: 691, column: 25, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !105, line: 691, column: 25)
!1422 = distinct !DILexicalBlock(scope: !1399, file: !105, line: 691, column: 25)
!1423 = !DILocation(line: 691, column: 25, scope: !1422)
!1424 = !DILocation(line: 692, column: 25, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !105, line: 692, column: 25)
!1426 = distinct !DILexicalBlock(scope: !1399, file: !105, line: 692, column: 25)
!1427 = !DILocation(line: 692, column: 25, scope: !1426)
!1428 = !DILocation(line: 693, column: 38, scope: !1399)
!1429 = !DILocation(line: 693, column: 33, scope: !1399)
!1430 = !DILocation(line: 694, column: 23, scope: !1399)
!1431 = !DILocation(line: 695, column: 30, scope: !1394)
!1432 = !DILocation(line: 695, column: 30, scope: !1395)
!1433 = !DILocation(line: 697, column: 25, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !105, line: 697, column: 25)
!1435 = distinct !DILexicalBlock(scope: !1393, file: !105, line: 697, column: 25)
!1436 = !DILocation(line: 697, column: 25, scope: !1435)
!1437 = !DILocation(line: 699, column: 23, scope: !1393)
!1438 = !DILocation(line: 0, scope: !1426)
!1439 = !DILocation(line: 0, scope: !1399)
!1440 = !DILocation(line: 0, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1175, file: !105, line: 418, column: 9)
!1442 = !DILocation(line: 0, scope: !1398)
!1443 = !DILocation(line: 700, column: 35, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1387, file: !105, line: 700, column: 25)
!1445 = !DILocation(line: 700, column: 30, scope: !1444)
!1446 = !DILocation(line: 700, column: 25, scope: !1387)
!1447 = !DILocation(line: 702, column: 21, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !105, line: 702, column: 21)
!1449 = distinct !DILexicalBlock(scope: !1387, file: !105, line: 702, column: 21)
!1450 = !DILocation(line: 702, column: 21, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !105, line: 702, column: 21)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !105, line: 702, column: 21)
!1453 = distinct !DILexicalBlock(scope: !1448, file: !105, line: 702, column: 21)
!1454 = !DILocation(line: 702, column: 21, scope: !1452)
!1455 = !DILocation(line: 702, column: 21, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !105, line: 702, column: 21)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !105, line: 702, column: 21)
!1458 = !DILocation(line: 702, column: 21, scope: !1457)
!1459 = !DILocation(line: 702, column: 21, scope: !1453)
!1460 = !DILocation(line: 0, scope: !1435)
!1461 = !DILocation(line: 703, column: 21, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1391, file: !105, line: 703, column: 21)
!1463 = !DILocation(line: 703, column: 21, scope: !1391)
!1464 = !DILocation(line: 704, column: 25, scope: !1387)
!1465 = !DILocation(line: 686, column: 17, scope: !1388)
!1466 = distinct !{!1466, !1467, !1468}
!1467 = !DILocation(line: 686, column: 17, scope: !1389)
!1468 = !DILocation(line: 705, column: 19, scope: !1389)
!1469 = !DILocation(line: 0, scope: !1054)
!1470 = !DILocation(line: 416, column: 30, scope: !1175)
!1471 = !DILocation(line: 712, column: 34, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1052, file: !105, line: 712, column: 11)
!1473 = !DILocation(line: 714, column: 14, scope: !1472)
!1474 = !DILocation(line: 715, column: 14, scope: !1472)
!1475 = !DILocation(line: 715, column: 35, scope: !1472)
!1476 = !DILocation(line: 715, column: 17, scope: !1472)
!1477 = !DILocation(line: 715, column: 47, scope: !1472)
!1478 = !DILocation(line: 715, column: 65, scope: !1472)
!1479 = !DILocation(line: 716, column: 15, scope: !1472)
!1480 = !DILocation(line: 716, column: 11, scope: !1472)
!1481 = !DILocation(line: 712, column: 11, scope: !1052)
!1482 = !DILocation(line: 400, column: 10, scope: !1054)
!1483 = !DILocation(line: 0, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !105, line: 519, column: 13)
!1485 = distinct !DILexicalBlock(scope: !1061, file: !105, line: 518, column: 15)
!1486 = !DILocation(line: 720, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1052, file: !105, line: 720, column: 7)
!1488 = !DILocation(line: 720, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1487, file: !105, line: 720, column: 7)
!1490 = !DILocation(line: 720, column: 7, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !105, line: 720, column: 7)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !105, line: 720, column: 7)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !105, line: 720, column: 7)
!1494 = !DILocation(line: 720, column: 7, scope: !1492)
!1495 = !DILocation(line: 720, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !105, line: 720, column: 7)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !105, line: 720, column: 7)
!1498 = !DILocation(line: 720, column: 7, scope: !1497)
!1499 = !DILocation(line: 720, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !105, line: 720, column: 7)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !105, line: 720, column: 7)
!1502 = !DILocation(line: 720, column: 7, scope: !1501)
!1503 = !DILocation(line: 720, column: 7, scope: !1493)
!1504 = !DILocation(line: 720, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !105, line: 720, column: 7)
!1506 = distinct !DILexicalBlock(scope: !1487, file: !105, line: 720, column: 7)
!1507 = !DILocation(line: 720, column: 7, scope: !1506)
!1508 = !DILocation(line: 723, column: 7, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !105, line: 723, column: 7)
!1510 = distinct !DILexicalBlock(scope: !1052, file: !105, line: 723, column: 7)
!1511 = !DILocation(line: 424, column: 9, scope: !1052)
!1512 = !DILocation(line: 723, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !105, line: 723, column: 7)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !105, line: 723, column: 7)
!1515 = distinct !DILexicalBlock(scope: !1509, file: !105, line: 723, column: 7)
!1516 = !DILocation(line: 723, column: 7, scope: !1514)
!1517 = !DILocation(line: 723, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !105, line: 723, column: 7)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !105, line: 723, column: 7)
!1520 = !DILocation(line: 723, column: 7, scope: !1519)
!1521 = !DILocation(line: 723, column: 7, scope: !1515)
!1522 = !DILocation(line: 724, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !105, line: 724, column: 7)
!1524 = distinct !DILexicalBlock(scope: !1052, file: !105, line: 724, column: 7)
!1525 = !DILocation(line: 724, column: 7, scope: !1524)
!1526 = !DILocation(line: 726, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1052, file: !105, line: 726, column: 11)
!1528 = !DILocation(line: 726, column: 11, scope: !1052)
!1529 = !DILocation(line: 728, column: 5, scope: !1053)
!1530 = !DILocation(line: 400, column: 75, scope: !1053)
!1531 = !DILocation(line: 400, column: 3, scope: !1053)
!1532 = distinct !{!1532, !1169, !1533}
!1533 = !DILocation(line: 728, column: 5, scope: !1054)
!1534 = !DILocation(line: 730, column: 11, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1025, file: !105, line: 730, column: 7)
!1536 = !DILocation(line: 730, column: 16, scope: !1535)
!1537 = !DILocation(line: 738, column: 51, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1025, file: !105, line: 738, column: 7)
!1539 = !DILocation(line: 739, column: 10, scope: !1538)
!1540 = !DILocation(line: 741, column: 11, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !105, line: 741, column: 11)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !105, line: 740, column: 5)
!1543 = !DILocation(line: 741, column: 11, scope: !1542)
!1544 = !DILocation(line: 742, column: 16, scope: !1541)
!1545 = !DILocation(line: 742, column: 9, scope: !1541)
!1546 = !DILocation(line: 746, column: 18, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !105, line: 746, column: 16)
!1548 = !DILocation(line: 746, column: 32, scope: !1547)
!1549 = !DILocation(line: 746, column: 29, scope: !1547)
!1550 = !DILocation(line: 755, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1025, file: !105, line: 755, column: 7)
!1552 = !DILocation(line: 755, column: 20, scope: !1551)
!1553 = !DILocation(line: 756, column: 12, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !105, line: 756, column: 5)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !105, line: 756, column: 5)
!1556 = !DILocation(line: 756, column: 5, scope: !1555)
!1557 = !DILocation(line: 757, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !105, line: 757, column: 7)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !105, line: 757, column: 7)
!1560 = !DILocation(line: 757, column: 7, scope: !1559)
!1561 = !DILocation(line: 756, column: 39, scope: !1554)
!1562 = distinct !{!1562, !1556, !1563}
!1563 = !DILocation(line: 757, column: 7, scope: !1555)
!1564 = !DILocation(line: 759, column: 11, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1025, file: !105, line: 759, column: 7)
!1566 = !DILocation(line: 759, column: 7, scope: !1025)
!1567 = !DILocation(line: 760, column: 5, scope: !1565)
!1568 = !DILocation(line: 760, column: 17, scope: !1565)
!1569 = !DILocation(line: 766, column: 21, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1025, file: !105, line: 766, column: 7)
!1571 = !DILocation(line: 766, column: 54, scope: !1570)
!1572 = !DILocation(line: 766, column: 51, scope: !1570)
!1573 = !DILocation(line: 770, column: 42, scope: !1025)
!1574 = !DILocation(line: 768, column: 10, scope: !1025)
!1575 = !DILocation(line: 768, column: 3, scope: !1025)
!1576 = !DILocation(line: 772, column: 1, scope: !1025)
!1577 = distinct !DISubprogram(name: "gettext_quote", scope: !105, file: !105, line: 207, type: !1578, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!20, !20, !63}
!1580 = !{!1581, !1582, !1583, !1584}
!1581 = !DILocalVariable(name: "msgid", arg: 1, scope: !1577, file: !105, line: 207, type: !20)
!1582 = !DILocalVariable(name: "s", arg: 2, scope: !1577, file: !105, line: 207, type: !63)
!1583 = !DILocalVariable(name: "translation", scope: !1577, file: !105, line: 209, type: !20)
!1584 = !DILocalVariable(name: "locale_code", scope: !1577, file: !105, line: 210, type: !20)
!1585 = !DILocation(line: 207, column: 28, scope: !1577)
!1586 = !DILocation(line: 207, column: 54, scope: !1577)
!1587 = !DILocation(line: 209, column: 29, scope: !1577)
!1588 = !DILocation(line: 209, column: 15, scope: !1577)
!1589 = !DILocation(line: 212, column: 19, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1577, file: !105, line: 212, column: 7)
!1591 = !DILocation(line: 212, column: 7, scope: !1577)
!1592 = !DILocation(line: 233, column: 17, scope: !1577)
!1593 = !DILocation(line: 210, column: 15, scope: !1577)
!1594 = !DILocalVariable(name: "s1", arg: 1, scope: !1595, file: !1596, line: 160, type: !20)
!1595 = distinct !DISubprogram(name: "strcaseeq0", scope: !1596, file: !1596, line: 160, type: !1597, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1599)
!1596 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!23, !20, !20, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!1599 = !{!1594, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609}
!1600 = !DILocalVariable(name: "s2", arg: 2, scope: !1595, file: !1596, line: 160, type: !20)
!1601 = !DILocalVariable(name: "s20", arg: 3, scope: !1595, file: !1596, line: 160, type: !11)
!1602 = !DILocalVariable(name: "s21", arg: 4, scope: !1595, file: !1596, line: 160, type: !11)
!1603 = !DILocalVariable(name: "s22", arg: 5, scope: !1595, file: !1596, line: 160, type: !11)
!1604 = !DILocalVariable(name: "s23", arg: 6, scope: !1595, file: !1596, line: 160, type: !11)
!1605 = !DILocalVariable(name: "s24", arg: 7, scope: !1595, file: !1596, line: 160, type: !11)
!1606 = !DILocalVariable(name: "s25", arg: 8, scope: !1595, file: !1596, line: 160, type: !11)
!1607 = !DILocalVariable(name: "s26", arg: 9, scope: !1595, file: !1596, line: 160, type: !11)
!1608 = !DILocalVariable(name: "s27", arg: 10, scope: !1595, file: !1596, line: 160, type: !11)
!1609 = !DILocalVariable(name: "s28", arg: 11, scope: !1595, file: !1596, line: 160, type: !11)
!1610 = !DILocation(line: 160, column: 25, scope: !1595, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 234, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1577, file: !105, line: 234, column: 7)
!1613 = !DILocation(line: 160, column: 41, scope: !1595, inlinedAt: !1611)
!1614 = !DILocation(line: 160, column: 50, scope: !1595, inlinedAt: !1611)
!1615 = !DILocation(line: 160, column: 60, scope: !1595, inlinedAt: !1611)
!1616 = !DILocation(line: 160, column: 70, scope: !1595, inlinedAt: !1611)
!1617 = !DILocation(line: 160, column: 80, scope: !1595, inlinedAt: !1611)
!1618 = !DILocation(line: 160, column: 90, scope: !1595, inlinedAt: !1611)
!1619 = !DILocation(line: 160, column: 100, scope: !1595, inlinedAt: !1611)
!1620 = !DILocation(line: 160, column: 110, scope: !1595, inlinedAt: !1611)
!1621 = !DILocation(line: 160, column: 120, scope: !1595, inlinedAt: !1611)
!1622 = !DILocation(line: 160, column: 130, scope: !1595, inlinedAt: !1611)
!1623 = !DILocation(line: 162, column: 7, scope: !1624, inlinedAt: !1611)
!1624 = distinct !DILexicalBlock(scope: !1595, file: !1596, line: 162, column: 7)
!1625 = !DILocalVariable(name: "s1", arg: 1, scope: !1626, file: !1596, line: 146, type: !20)
!1626 = distinct !DISubprogram(name: "strcaseeq1", scope: !1596, file: !1596, line: 146, type: !1627, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!23, !20, !20, !11, !11, !11, !11, !11, !11, !11, !11}
!1629 = !{!1625, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638}
!1630 = !DILocalVariable(name: "s2", arg: 2, scope: !1626, file: !1596, line: 146, type: !20)
!1631 = !DILocalVariable(name: "s21", arg: 3, scope: !1626, file: !1596, line: 146, type: !11)
!1632 = !DILocalVariable(name: "s22", arg: 4, scope: !1626, file: !1596, line: 146, type: !11)
!1633 = !DILocalVariable(name: "s23", arg: 5, scope: !1626, file: !1596, line: 146, type: !11)
!1634 = !DILocalVariable(name: "s24", arg: 6, scope: !1626, file: !1596, line: 146, type: !11)
!1635 = !DILocalVariable(name: "s25", arg: 7, scope: !1626, file: !1596, line: 146, type: !11)
!1636 = !DILocalVariable(name: "s26", arg: 8, scope: !1626, file: !1596, line: 146, type: !11)
!1637 = !DILocalVariable(name: "s27", arg: 9, scope: !1626, file: !1596, line: 146, type: !11)
!1638 = !DILocalVariable(name: "s28", arg: 10, scope: !1626, file: !1596, line: 146, type: !11)
!1639 = !DILocation(line: 146, column: 25, scope: !1626, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 167, column: 16, scope: !1641, inlinedAt: !1611)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !1596, line: 164, column: 11)
!1642 = distinct !DILexicalBlock(scope: !1624, file: !1596, line: 163, column: 5)
!1643 = !DILocation(line: 146, column: 41, scope: !1626, inlinedAt: !1640)
!1644 = !DILocation(line: 146, column: 50, scope: !1626, inlinedAt: !1640)
!1645 = !DILocation(line: 146, column: 60, scope: !1626, inlinedAt: !1640)
!1646 = !DILocation(line: 146, column: 70, scope: !1626, inlinedAt: !1640)
!1647 = !DILocation(line: 146, column: 80, scope: !1626, inlinedAt: !1640)
!1648 = !DILocation(line: 146, column: 90, scope: !1626, inlinedAt: !1640)
!1649 = !DILocation(line: 146, column: 100, scope: !1626, inlinedAt: !1640)
!1650 = !DILocation(line: 146, column: 110, scope: !1626, inlinedAt: !1640)
!1651 = !DILocation(line: 146, column: 120, scope: !1626, inlinedAt: !1640)
!1652 = !DILocation(line: 148, column: 7, scope: !1653, inlinedAt: !1640)
!1653 = distinct !DILexicalBlock(scope: !1626, file: !1596, line: 148, column: 7)
!1654 = !DILocalVariable(name: "s1", arg: 1, scope: !1655, file: !1596, line: 132, type: !20)
!1655 = distinct !DISubprogram(name: "strcaseeq2", scope: !1596, file: !1596, line: 132, type: !1656, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1658)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!23, !20, !20, !11, !11, !11, !11, !11, !11, !11}
!1658 = !{!1654, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1659 = !DILocalVariable(name: "s2", arg: 2, scope: !1655, file: !1596, line: 132, type: !20)
!1660 = !DILocalVariable(name: "s22", arg: 3, scope: !1655, file: !1596, line: 132, type: !11)
!1661 = !DILocalVariable(name: "s23", arg: 4, scope: !1655, file: !1596, line: 132, type: !11)
!1662 = !DILocalVariable(name: "s24", arg: 5, scope: !1655, file: !1596, line: 132, type: !11)
!1663 = !DILocalVariable(name: "s25", arg: 6, scope: !1655, file: !1596, line: 132, type: !11)
!1664 = !DILocalVariable(name: "s26", arg: 7, scope: !1655, file: !1596, line: 132, type: !11)
!1665 = !DILocalVariable(name: "s27", arg: 8, scope: !1655, file: !1596, line: 132, type: !11)
!1666 = !DILocalVariable(name: "s28", arg: 9, scope: !1655, file: !1596, line: 132, type: !11)
!1667 = !DILocation(line: 132, column: 25, scope: !1655, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 153, column: 16, scope: !1669, inlinedAt: !1640)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !1596, line: 150, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1653, file: !1596, line: 149, column: 5)
!1671 = !DILocation(line: 132, column: 41, scope: !1655, inlinedAt: !1668)
!1672 = !DILocation(line: 132, column: 50, scope: !1655, inlinedAt: !1668)
!1673 = !DILocation(line: 132, column: 60, scope: !1655, inlinedAt: !1668)
!1674 = !DILocation(line: 132, column: 70, scope: !1655, inlinedAt: !1668)
!1675 = !DILocation(line: 132, column: 80, scope: !1655, inlinedAt: !1668)
!1676 = !DILocation(line: 132, column: 90, scope: !1655, inlinedAt: !1668)
!1677 = !DILocation(line: 132, column: 100, scope: !1655, inlinedAt: !1668)
!1678 = !DILocation(line: 132, column: 110, scope: !1655, inlinedAt: !1668)
!1679 = !DILocation(line: 134, column: 7, scope: !1680, inlinedAt: !1668)
!1680 = distinct !DILexicalBlock(scope: !1655, file: !1596, line: 134, column: 7)
!1681 = !DILocalVariable(name: "s1", arg: 1, scope: !1682, file: !1596, line: 118, type: !20)
!1682 = distinct !DISubprogram(name: "strcaseeq3", scope: !1596, file: !1596, line: 118, type: !1683, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!23, !20, !20, !11, !11, !11, !11, !11, !11}
!1685 = !{!1681, !1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1686 = !DILocalVariable(name: "s2", arg: 2, scope: !1682, file: !1596, line: 118, type: !20)
!1687 = !DILocalVariable(name: "s23", arg: 3, scope: !1682, file: !1596, line: 118, type: !11)
!1688 = !DILocalVariable(name: "s24", arg: 4, scope: !1682, file: !1596, line: 118, type: !11)
!1689 = !DILocalVariable(name: "s25", arg: 5, scope: !1682, file: !1596, line: 118, type: !11)
!1690 = !DILocalVariable(name: "s26", arg: 6, scope: !1682, file: !1596, line: 118, type: !11)
!1691 = !DILocalVariable(name: "s27", arg: 7, scope: !1682, file: !1596, line: 118, type: !11)
!1692 = !DILocalVariable(name: "s28", arg: 8, scope: !1682, file: !1596, line: 118, type: !11)
!1693 = !DILocation(line: 118, column: 25, scope: !1682, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 139, column: 16, scope: !1695, inlinedAt: !1668)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !1596, line: 136, column: 11)
!1696 = distinct !DILexicalBlock(scope: !1680, file: !1596, line: 135, column: 5)
!1697 = !DILocation(line: 118, column: 41, scope: !1682, inlinedAt: !1694)
!1698 = !DILocation(line: 118, column: 50, scope: !1682, inlinedAt: !1694)
!1699 = !DILocation(line: 118, column: 60, scope: !1682, inlinedAt: !1694)
!1700 = !DILocation(line: 118, column: 70, scope: !1682, inlinedAt: !1694)
!1701 = !DILocation(line: 118, column: 80, scope: !1682, inlinedAt: !1694)
!1702 = !DILocation(line: 118, column: 90, scope: !1682, inlinedAt: !1694)
!1703 = !DILocation(line: 118, column: 100, scope: !1682, inlinedAt: !1694)
!1704 = !DILocation(line: 120, column: 7, scope: !1705, inlinedAt: !1694)
!1705 = distinct !DILexicalBlock(scope: !1682, file: !1596, line: 120, column: 7)
!1706 = !DILocation(line: 120, column: 7, scope: !1682, inlinedAt: !1694)
!1707 = !DILocalVariable(name: "s1", arg: 1, scope: !1708, file: !1596, line: 104, type: !20)
!1708 = distinct !DISubprogram(name: "strcaseeq4", scope: !1596, file: !1596, line: 104, type: !1709, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1711)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!23, !20, !20, !11, !11, !11, !11, !11}
!1711 = !{!1707, !1712, !1713, !1714, !1715, !1716, !1717}
!1712 = !DILocalVariable(name: "s2", arg: 2, scope: !1708, file: !1596, line: 104, type: !20)
!1713 = !DILocalVariable(name: "s24", arg: 3, scope: !1708, file: !1596, line: 104, type: !11)
!1714 = !DILocalVariable(name: "s25", arg: 4, scope: !1708, file: !1596, line: 104, type: !11)
!1715 = !DILocalVariable(name: "s26", arg: 5, scope: !1708, file: !1596, line: 104, type: !11)
!1716 = !DILocalVariable(name: "s27", arg: 6, scope: !1708, file: !1596, line: 104, type: !11)
!1717 = !DILocalVariable(name: "s28", arg: 7, scope: !1708, file: !1596, line: 104, type: !11)
!1718 = !DILocation(line: 104, column: 25, scope: !1708, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 125, column: 16, scope: !1720, inlinedAt: !1694)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !1596, line: 122, column: 11)
!1721 = distinct !DILexicalBlock(scope: !1705, file: !1596, line: 121, column: 5)
!1722 = !DILocation(line: 104, column: 41, scope: !1708, inlinedAt: !1719)
!1723 = !DILocation(line: 104, column: 50, scope: !1708, inlinedAt: !1719)
!1724 = !DILocation(line: 104, column: 60, scope: !1708, inlinedAt: !1719)
!1725 = !DILocation(line: 104, column: 70, scope: !1708, inlinedAt: !1719)
!1726 = !DILocation(line: 104, column: 80, scope: !1708, inlinedAt: !1719)
!1727 = !DILocation(line: 104, column: 90, scope: !1708, inlinedAt: !1719)
!1728 = !DILocation(line: 106, column: 7, scope: !1729, inlinedAt: !1719)
!1729 = distinct !DILexicalBlock(scope: !1708, file: !1596, line: 106, column: 7)
!1730 = !DILocation(line: 106, column: 7, scope: !1708, inlinedAt: !1719)
!1731 = !DILocalVariable(name: "s1", arg: 1, scope: !1732, file: !1596, line: 90, type: !20)
!1732 = distinct !DISubprogram(name: "strcaseeq5", scope: !1596, file: !1596, line: 90, type: !1733, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!23, !20, !20, !11, !11, !11, !11}
!1735 = !{!1731, !1736, !1737, !1738, !1739, !1740}
!1736 = !DILocalVariable(name: "s2", arg: 2, scope: !1732, file: !1596, line: 90, type: !20)
!1737 = !DILocalVariable(name: "s25", arg: 3, scope: !1732, file: !1596, line: 90, type: !11)
!1738 = !DILocalVariable(name: "s26", arg: 4, scope: !1732, file: !1596, line: 90, type: !11)
!1739 = !DILocalVariable(name: "s27", arg: 5, scope: !1732, file: !1596, line: 90, type: !11)
!1740 = !DILocalVariable(name: "s28", arg: 6, scope: !1732, file: !1596, line: 90, type: !11)
!1741 = !DILocation(line: 90, column: 25, scope: !1732, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 111, column: 16, scope: !1743, inlinedAt: !1719)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !1596, line: 108, column: 11)
!1744 = distinct !DILexicalBlock(scope: !1729, file: !1596, line: 107, column: 5)
!1745 = !DILocation(line: 90, column: 41, scope: !1732, inlinedAt: !1742)
!1746 = !DILocation(line: 90, column: 50, scope: !1732, inlinedAt: !1742)
!1747 = !DILocation(line: 90, column: 60, scope: !1732, inlinedAt: !1742)
!1748 = !DILocation(line: 90, column: 70, scope: !1732, inlinedAt: !1742)
!1749 = !DILocation(line: 90, column: 80, scope: !1732, inlinedAt: !1742)
!1750 = !DILocation(line: 92, column: 7, scope: !1751, inlinedAt: !1742)
!1751 = distinct !DILexicalBlock(scope: !1732, file: !1596, line: 92, column: 7)
!1752 = !DILocation(line: 92, column: 7, scope: !1732, inlinedAt: !1742)
!1753 = !DILocation(line: 235, column: 12, scope: !1612)
!1754 = !DILocation(line: 235, column: 21, scope: !1612)
!1755 = !DILocation(line: 235, column: 5, scope: !1612)
!1756 = !DILocation(line: 146, column: 25, scope: !1626, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 167, column: 16, scope: !1641, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 236, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1577, file: !105, line: 236, column: 7)
!1760 = !DILocation(line: 146, column: 41, scope: !1626, inlinedAt: !1757)
!1761 = !DILocation(line: 146, column: 50, scope: !1626, inlinedAt: !1757)
!1762 = !DILocation(line: 146, column: 60, scope: !1626, inlinedAt: !1757)
!1763 = !DILocation(line: 146, column: 70, scope: !1626, inlinedAt: !1757)
!1764 = !DILocation(line: 146, column: 80, scope: !1626, inlinedAt: !1757)
!1765 = !DILocation(line: 146, column: 90, scope: !1626, inlinedAt: !1757)
!1766 = !DILocation(line: 146, column: 100, scope: !1626, inlinedAt: !1757)
!1767 = !DILocation(line: 146, column: 110, scope: !1626, inlinedAt: !1757)
!1768 = !DILocation(line: 146, column: 120, scope: !1626, inlinedAt: !1757)
!1769 = !DILocation(line: 148, column: 7, scope: !1653, inlinedAt: !1757)
!1770 = !DILocation(line: 132, column: 25, scope: !1655, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 153, column: 16, scope: !1669, inlinedAt: !1757)
!1772 = !DILocation(line: 132, column: 41, scope: !1655, inlinedAt: !1771)
!1773 = !DILocation(line: 132, column: 50, scope: !1655, inlinedAt: !1771)
!1774 = !DILocation(line: 132, column: 60, scope: !1655, inlinedAt: !1771)
!1775 = !DILocation(line: 132, column: 70, scope: !1655, inlinedAt: !1771)
!1776 = !DILocation(line: 132, column: 80, scope: !1655, inlinedAt: !1771)
!1777 = !DILocation(line: 132, column: 90, scope: !1655, inlinedAt: !1771)
!1778 = !DILocation(line: 132, column: 100, scope: !1655, inlinedAt: !1771)
!1779 = !DILocation(line: 132, column: 110, scope: !1655, inlinedAt: !1771)
!1780 = !DILocation(line: 134, column: 7, scope: !1680, inlinedAt: !1771)
!1781 = !DILocation(line: 134, column: 7, scope: !1655, inlinedAt: !1771)
!1782 = !DILocation(line: 118, column: 25, scope: !1682, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 139, column: 16, scope: !1695, inlinedAt: !1771)
!1784 = !DILocation(line: 118, column: 41, scope: !1682, inlinedAt: !1783)
!1785 = !DILocation(line: 118, column: 50, scope: !1682, inlinedAt: !1783)
!1786 = !DILocation(line: 118, column: 60, scope: !1682, inlinedAt: !1783)
!1787 = !DILocation(line: 118, column: 70, scope: !1682, inlinedAt: !1783)
!1788 = !DILocation(line: 118, column: 80, scope: !1682, inlinedAt: !1783)
!1789 = !DILocation(line: 118, column: 90, scope: !1682, inlinedAt: !1783)
!1790 = !DILocation(line: 118, column: 100, scope: !1682, inlinedAt: !1783)
!1791 = !DILocation(line: 120, column: 7, scope: !1705, inlinedAt: !1783)
!1792 = !DILocation(line: 120, column: 7, scope: !1682, inlinedAt: !1783)
!1793 = !DILocation(line: 104, column: 25, scope: !1708, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 125, column: 16, scope: !1720, inlinedAt: !1783)
!1795 = !DILocation(line: 104, column: 41, scope: !1708, inlinedAt: !1794)
!1796 = !DILocation(line: 104, column: 50, scope: !1708, inlinedAt: !1794)
!1797 = !DILocation(line: 104, column: 60, scope: !1708, inlinedAt: !1794)
!1798 = !DILocation(line: 104, column: 70, scope: !1708, inlinedAt: !1794)
!1799 = !DILocation(line: 104, column: 80, scope: !1708, inlinedAt: !1794)
!1800 = !DILocation(line: 104, column: 90, scope: !1708, inlinedAt: !1794)
!1801 = !DILocation(line: 106, column: 7, scope: !1729, inlinedAt: !1794)
!1802 = !DILocation(line: 106, column: 7, scope: !1708, inlinedAt: !1794)
!1803 = !DILocation(line: 90, column: 25, scope: !1732, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 111, column: 16, scope: !1743, inlinedAt: !1794)
!1805 = !DILocation(line: 90, column: 41, scope: !1732, inlinedAt: !1804)
!1806 = !DILocation(line: 90, column: 50, scope: !1732, inlinedAt: !1804)
!1807 = !DILocation(line: 90, column: 60, scope: !1732, inlinedAt: !1804)
!1808 = !DILocation(line: 90, column: 70, scope: !1732, inlinedAt: !1804)
!1809 = !DILocation(line: 90, column: 80, scope: !1732, inlinedAt: !1804)
!1810 = !DILocation(line: 92, column: 7, scope: !1751, inlinedAt: !1804)
!1811 = !DILocation(line: 92, column: 7, scope: !1732, inlinedAt: !1804)
!1812 = !DILocalVariable(name: "s1", arg: 1, scope: !1813, file: !1596, line: 76, type: !20)
!1813 = distinct !DISubprogram(name: "strcaseeq6", scope: !1596, file: !1596, line: 76, type: !1814, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!23, !20, !20, !11, !11, !11}
!1816 = !{!1812, !1817, !1818, !1819, !1820}
!1817 = !DILocalVariable(name: "s2", arg: 2, scope: !1813, file: !1596, line: 76, type: !20)
!1818 = !DILocalVariable(name: "s26", arg: 3, scope: !1813, file: !1596, line: 76, type: !11)
!1819 = !DILocalVariable(name: "s27", arg: 4, scope: !1813, file: !1596, line: 76, type: !11)
!1820 = !DILocalVariable(name: "s28", arg: 5, scope: !1813, file: !1596, line: 76, type: !11)
!1821 = !DILocation(line: 76, column: 25, scope: !1813, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 97, column: 16, scope: !1823, inlinedAt: !1804)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !1596, line: 94, column: 11)
!1824 = distinct !DILexicalBlock(scope: !1751, file: !1596, line: 93, column: 5)
!1825 = !DILocation(line: 76, column: 41, scope: !1813, inlinedAt: !1822)
!1826 = !DILocation(line: 76, column: 50, scope: !1813, inlinedAt: !1822)
!1827 = !DILocation(line: 76, column: 60, scope: !1813, inlinedAt: !1822)
!1828 = !DILocation(line: 76, column: 70, scope: !1813, inlinedAt: !1822)
!1829 = !DILocation(line: 78, column: 7, scope: !1830, inlinedAt: !1822)
!1830 = distinct !DILexicalBlock(scope: !1813, file: !1596, line: 78, column: 7)
!1831 = !DILocation(line: 78, column: 7, scope: !1813, inlinedAt: !1822)
!1832 = !DILocalVariable(name: "s1", arg: 1, scope: !1833, file: !1596, line: 62, type: !20)
!1833 = distinct !DISubprogram(name: "strcaseeq7", scope: !1596, file: !1596, line: 62, type: !1834, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!23, !20, !20, !11, !11}
!1836 = !{!1832, !1837, !1838, !1839}
!1837 = !DILocalVariable(name: "s2", arg: 2, scope: !1833, file: !1596, line: 62, type: !20)
!1838 = !DILocalVariable(name: "s27", arg: 3, scope: !1833, file: !1596, line: 62, type: !11)
!1839 = !DILocalVariable(name: "s28", arg: 4, scope: !1833, file: !1596, line: 62, type: !11)
!1840 = !DILocation(line: 62, column: 25, scope: !1833, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 83, column: 16, scope: !1842, inlinedAt: !1822)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !1596, line: 80, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1830, file: !1596, line: 79, column: 5)
!1844 = !DILocation(line: 62, column: 41, scope: !1833, inlinedAt: !1841)
!1845 = !DILocation(line: 62, column: 50, scope: !1833, inlinedAt: !1841)
!1846 = !DILocation(line: 62, column: 60, scope: !1833, inlinedAt: !1841)
!1847 = !DILocation(line: 64, column: 7, scope: !1848, inlinedAt: !1841)
!1848 = distinct !DILexicalBlock(scope: !1833, file: !1596, line: 64, column: 7)
!1849 = !DILocation(line: 236, column: 7, scope: !1577)
!1850 = !DILocation(line: 237, column: 12, scope: !1759)
!1851 = !DILocation(line: 237, column: 21, scope: !1759)
!1852 = !DILocation(line: 237, column: 5, scope: !1759)
!1853 = !DILocation(line: 239, column: 13, scope: !1577)
!1854 = !DILocation(line: 239, column: 11, scope: !1577)
!1855 = !DILocation(line: 239, column: 3, scope: !1577)
!1856 = !DILocation(line: 0, scope: !1577)
!1857 = !DILocation(line: 240, column: 1, scope: !1577)
!1858 = distinct !DISubprogram(name: "quotearg_alloc", scope: !105, file: !105, line: 799, type: !1859, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!10, !20, !99, !897}
!1861 = !{!1862, !1863, !1864}
!1862 = !DILocalVariable(name: "arg", arg: 1, scope: !1858, file: !105, line: 799, type: !20)
!1863 = !DILocalVariable(name: "argsize", arg: 2, scope: !1858, file: !105, line: 799, type: !99)
!1864 = !DILocalVariable(name: "o", arg: 3, scope: !1858, file: !105, line: 800, type: !897)
!1865 = !DILocation(line: 799, column: 29, scope: !1858)
!1866 = !DILocation(line: 799, column: 41, scope: !1858)
!1867 = !DILocation(line: 800, column: 47, scope: !1858)
!1868 = !DILocalVariable(name: "arg", arg: 1, scope: !1869, file: !105, line: 812, type: !20)
!1869 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !105, file: !105, line: 812, type: !1870, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1872)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!10, !20, !99, !169, !897}
!1872 = !{!1868, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880}
!1873 = !DILocalVariable(name: "argsize", arg: 2, scope: !1869, file: !105, line: 812, type: !99)
!1874 = !DILocalVariable(name: "size", arg: 3, scope: !1869, file: !105, line: 812, type: !169)
!1875 = !DILocalVariable(name: "o", arg: 4, scope: !1869, file: !105, line: 813, type: !897)
!1876 = !DILocalVariable(name: "p", scope: !1869, file: !105, line: 815, type: !897)
!1877 = !DILocalVariable(name: "e", scope: !1869, file: !105, line: 816, type: !23)
!1878 = !DILocalVariable(name: "flags", scope: !1869, file: !105, line: 818, type: !23)
!1879 = !DILocalVariable(name: "bufsize", scope: !1869, file: !105, line: 819, type: !99)
!1880 = !DILocalVariable(name: "buf", scope: !1869, file: !105, line: 823, type: !10)
!1881 = !DILocation(line: 812, column: 33, scope: !1869, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 802, column: 10, scope: !1858)
!1883 = !DILocation(line: 812, column: 45, scope: !1869, inlinedAt: !1882)
!1884 = !DILocation(line: 812, column: 62, scope: !1869, inlinedAt: !1882)
!1885 = !DILocation(line: 813, column: 51, scope: !1869, inlinedAt: !1882)
!1886 = !DILocation(line: 815, column: 37, scope: !1869, inlinedAt: !1882)
!1887 = !DILocation(line: 815, column: 33, scope: !1869, inlinedAt: !1882)
!1888 = !DILocation(line: 816, column: 11, scope: !1869, inlinedAt: !1882)
!1889 = !DILocation(line: 816, column: 7, scope: !1869, inlinedAt: !1882)
!1890 = !DILocation(line: 818, column: 18, scope: !1869, inlinedAt: !1882)
!1891 = !DILocation(line: 818, column: 24, scope: !1869, inlinedAt: !1882)
!1892 = !DILocation(line: 818, column: 7, scope: !1869, inlinedAt: !1882)
!1893 = !DILocation(line: 819, column: 69, scope: !1869, inlinedAt: !1882)
!1894 = !DILocation(line: 820, column: 53, scope: !1869, inlinedAt: !1882)
!1895 = !DILocation(line: 821, column: 49, scope: !1869, inlinedAt: !1882)
!1896 = !DILocation(line: 822, column: 49, scope: !1869, inlinedAt: !1882)
!1897 = !DILocation(line: 819, column: 20, scope: !1869, inlinedAt: !1882)
!1898 = !DILocation(line: 822, column: 62, scope: !1869, inlinedAt: !1882)
!1899 = !DILocation(line: 819, column: 10, scope: !1869, inlinedAt: !1882)
!1900 = !DILocalVariable(name: "n", arg: 1, scope: !1901, file: !165, line: 216, type: !99)
!1901 = distinct !DISubprogram(name: "xcharalloc", scope: !165, file: !165, line: 216, type: !1902, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!10, !99}
!1904 = !{!1900}
!1905 = !DILocation(line: 216, column: 20, scope: !1901, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 823, column: 15, scope: !1869, inlinedAt: !1882)
!1907 = !DILocation(line: 218, column: 10, scope: !1901, inlinedAt: !1906)
!1908 = !DILocation(line: 823, column: 9, scope: !1869, inlinedAt: !1882)
!1909 = !DILocation(line: 824, column: 60, scope: !1869, inlinedAt: !1882)
!1910 = !DILocation(line: 826, column: 32, scope: !1869, inlinedAt: !1882)
!1911 = !DILocation(line: 826, column: 47, scope: !1869, inlinedAt: !1882)
!1912 = !DILocation(line: 824, column: 3, scope: !1869, inlinedAt: !1882)
!1913 = !DILocation(line: 827, column: 9, scope: !1869, inlinedAt: !1882)
!1914 = !DILocation(line: 802, column: 3, scope: !1858)
!1915 = !DILocation(line: 812, column: 33, scope: !1869)
!1916 = !DILocation(line: 812, column: 45, scope: !1869)
!1917 = !DILocation(line: 812, column: 62, scope: !1869)
!1918 = !DILocation(line: 813, column: 51, scope: !1869)
!1919 = !DILocation(line: 815, column: 37, scope: !1869)
!1920 = !DILocation(line: 815, column: 33, scope: !1869)
!1921 = !DILocation(line: 816, column: 11, scope: !1869)
!1922 = !DILocation(line: 816, column: 7, scope: !1869)
!1923 = !DILocation(line: 818, column: 18, scope: !1869)
!1924 = !DILocation(line: 818, column: 27, scope: !1869)
!1925 = !DILocation(line: 818, column: 24, scope: !1869)
!1926 = !DILocation(line: 818, column: 7, scope: !1869)
!1927 = !DILocation(line: 819, column: 69, scope: !1869)
!1928 = !DILocation(line: 820, column: 53, scope: !1869)
!1929 = !DILocation(line: 821, column: 49, scope: !1869)
!1930 = !DILocation(line: 822, column: 49, scope: !1869)
!1931 = !DILocation(line: 819, column: 20, scope: !1869)
!1932 = !DILocation(line: 822, column: 62, scope: !1869)
!1933 = !DILocation(line: 819, column: 10, scope: !1869)
!1934 = !DILocation(line: 216, column: 20, scope: !1901, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 823, column: 15, scope: !1869)
!1936 = !DILocation(line: 218, column: 10, scope: !1901, inlinedAt: !1935)
!1937 = !DILocation(line: 823, column: 9, scope: !1869)
!1938 = !DILocation(line: 824, column: 60, scope: !1869)
!1939 = !DILocation(line: 826, column: 32, scope: !1869)
!1940 = !DILocation(line: 826, column: 47, scope: !1869)
!1941 = !DILocation(line: 824, column: 3, scope: !1869)
!1942 = !DILocation(line: 827, column: 9, scope: !1869)
!1943 = !DILocation(line: 828, column: 7, scope: !1869)
!1944 = !DILocation(line: 829, column: 11, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1869, file: !105, line: 828, column: 7)
!1946 = !{!1947, !1947, i64 0}
!1947 = !{!"long", !625, i64 0}
!1948 = !DILocation(line: 829, column: 5, scope: !1945)
!1949 = !DILocation(line: 830, column: 3, scope: !1869)
!1950 = distinct !DISubprogram(name: "quotearg_free", scope: !105, file: !105, line: 848, type: !804, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1951)
!1951 = !{!1952, !1953}
!1952 = !DILocalVariable(name: "sv", scope: !1950, file: !105, line: 850, type: !131)
!1953 = !DILocalVariable(name: "i", scope: !1950, file: !105, line: 851, type: !23)
!1954 = !DILocation(line: 850, column: 24, scope: !1950)
!1955 = !DILocation(line: 850, column: 19, scope: !1950)
!1956 = !DILocation(line: 851, column: 7, scope: !1950)
!1957 = !DILocation(line: 852, column: 19, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !105, line: 852, column: 3)
!1959 = distinct !DILexicalBlock(scope: !1950, file: !105, line: 852, column: 3)
!1960 = !DILocation(line: 852, column: 17, scope: !1958)
!1961 = !DILocation(line: 852, column: 3, scope: !1959)
!1962 = !DILocation(line: 853, column: 17, scope: !1958)
!1963 = !{!1964, !624, i64 8}
!1964 = !{!"slotvec", !1947, i64 0, !624, i64 8}
!1965 = !DILocation(line: 853, column: 5, scope: !1958)
!1966 = !DILocation(line: 852, column: 28, scope: !1958)
!1967 = distinct !{!1967, !1961, !1968}
!1968 = !DILocation(line: 853, column: 20, scope: !1959)
!1969 = !DILocation(line: 854, column: 13, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1950, file: !105, line: 854, column: 7)
!1971 = !DILocation(line: 854, column: 17, scope: !1970)
!1972 = !DILocation(line: 854, column: 7, scope: !1950)
!1973 = !DILocation(line: 856, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !105, line: 855, column: 5)
!1975 = !DILocation(line: 857, column: 21, scope: !1974)
!1976 = !{!1964, !1947, i64 0}
!1977 = !DILocation(line: 858, column: 20, scope: !1974)
!1978 = !DILocation(line: 859, column: 5, scope: !1974)
!1979 = !DILocation(line: 860, column: 10, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1950, file: !105, line: 860, column: 7)
!1981 = !DILocation(line: 860, column: 7, scope: !1950)
!1982 = !DILocation(line: 862, column: 13, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !105, line: 861, column: 5)
!1984 = !DILocation(line: 862, column: 7, scope: !1983)
!1985 = !DILocation(line: 863, column: 15, scope: !1983)
!1986 = !DILocation(line: 864, column: 5, scope: !1983)
!1987 = !DILocation(line: 865, column: 10, scope: !1950)
!1988 = !DILocation(line: 866, column: 1, scope: !1950)
!1989 = distinct !DISubprogram(name: "quotearg_n", scope: !105, file: !105, line: 931, type: !1990, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!10, !23, !20}
!1992 = !{!1993, !1994}
!1993 = !DILocalVariable(name: "n", arg: 1, scope: !1989, file: !105, line: 931, type: !23)
!1994 = !DILocalVariable(name: "arg", arg: 2, scope: !1989, file: !105, line: 931, type: !20)
!1995 = !DILocation(line: 931, column: 17, scope: !1989)
!1996 = !DILocation(line: 931, column: 32, scope: !1989)
!1997 = !DILocation(line: 933, column: 10, scope: !1989)
!1998 = !DILocation(line: 933, column: 3, scope: !1989)
!1999 = distinct !DISubprogram(name: "quotearg_n_options", scope: !105, file: !105, line: 877, type: !2000, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!10, !23, !20, !99, !897}
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009, !2012, !2013, !2015, !2016, !2017}
!2003 = !DILocalVariable(name: "n", arg: 1, scope: !1999, file: !105, line: 877, type: !23)
!2004 = !DILocalVariable(name: "arg", arg: 2, scope: !1999, file: !105, line: 877, type: !20)
!2005 = !DILocalVariable(name: "argsize", arg: 3, scope: !1999, file: !105, line: 877, type: !99)
!2006 = !DILocalVariable(name: "options", arg: 4, scope: !1999, file: !105, line: 878, type: !897)
!2007 = !DILocalVariable(name: "e", scope: !1999, file: !105, line: 880, type: !23)
!2008 = !DILocalVariable(name: "sv", scope: !1999, file: !105, line: 882, type: !131)
!2009 = !DILocalVariable(name: "preallocated", scope: !2010, file: !105, line: 889, type: !43)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !105, line: 888, column: 5)
!2011 = distinct !DILexicalBlock(scope: !1999, file: !105, line: 887, column: 7)
!2012 = !DILocalVariable(name: "nmax", scope: !2010, file: !105, line: 890, type: !23)
!2013 = !DILocalVariable(name: "size", scope: !2014, file: !105, line: 903, type: !99)
!2014 = distinct !DILexicalBlock(scope: !1999, file: !105, line: 902, column: 3)
!2015 = !DILocalVariable(name: "val", scope: !2014, file: !105, line: 904, type: !10)
!2016 = !DILocalVariable(name: "flags", scope: !2014, file: !105, line: 906, type: !23)
!2017 = !DILocalVariable(name: "qsize", scope: !2014, file: !105, line: 907, type: !99)
!2018 = !DILocation(line: 877, column: 25, scope: !1999)
!2019 = !DILocation(line: 877, column: 40, scope: !1999)
!2020 = !DILocation(line: 877, column: 52, scope: !1999)
!2021 = !DILocation(line: 878, column: 51, scope: !1999)
!2022 = !DILocation(line: 880, column: 11, scope: !1999)
!2023 = !DILocation(line: 880, column: 7, scope: !1999)
!2024 = !DILocation(line: 882, column: 24, scope: !1999)
!2025 = !DILocation(line: 882, column: 19, scope: !1999)
!2026 = !DILocation(line: 884, column: 9, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1999, file: !105, line: 884, column: 7)
!2028 = !DILocation(line: 884, column: 7, scope: !1999)
!2029 = !DILocation(line: 885, column: 5, scope: !2027)
!2030 = !DILocation(line: 887, column: 7, scope: !2011)
!2031 = !DILocation(line: 887, column: 14, scope: !2011)
!2032 = !DILocation(line: 887, column: 7, scope: !1999)
!2033 = !DILocation(line: 889, column: 31, scope: !2010)
!2034 = !DILocation(line: 890, column: 11, scope: !2010)
!2035 = !DILocation(line: 892, column: 16, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2010, file: !105, line: 892, column: 11)
!2037 = !DILocation(line: 892, column: 11, scope: !2010)
!2038 = !DILocation(line: 893, column: 9, scope: !2036)
!2039 = !DILocation(line: 895, column: 32, scope: !2010)
!2040 = !DILocation(line: 895, column: 61, scope: !2010)
!2041 = !DILocation(line: 895, column: 58, scope: !2010)
!2042 = !DILocation(line: 895, column: 66, scope: !2010)
!2043 = !DILocation(line: 895, column: 22, scope: !2010)
!2044 = !DILocation(line: 895, column: 15, scope: !2010)
!2045 = !DILocation(line: 896, column: 11, scope: !2010)
!2046 = !DILocation(line: 897, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2010, file: !105, line: 896, column: 11)
!2048 = !{i64 0, i64 8, !1946, i64 8, i64 8, !623}
!2049 = !DILocation(line: 897, column: 9, scope: !2047)
!2050 = !DILocation(line: 898, column: 20, scope: !2010)
!2051 = !DILocation(line: 898, column: 18, scope: !2010)
!2052 = !DILocation(line: 898, column: 7, scope: !2010)
!2053 = !DILocation(line: 898, column: 38, scope: !2010)
!2054 = !DILocation(line: 898, column: 31, scope: !2010)
!2055 = !DILocation(line: 898, column: 48, scope: !2010)
!2056 = !DILocation(line: 899, column: 14, scope: !2010)
!2057 = !DILocation(line: 900, column: 5, scope: !2010)
!2058 = !DILocation(line: 0, scope: !1999)
!2059 = !DILocation(line: 903, column: 19, scope: !2014)
!2060 = !DILocation(line: 903, column: 25, scope: !2014)
!2061 = !DILocation(line: 903, column: 12, scope: !2014)
!2062 = !DILocation(line: 904, column: 23, scope: !2014)
!2063 = !DILocation(line: 904, column: 11, scope: !2014)
!2064 = !DILocation(line: 906, column: 26, scope: !2014)
!2065 = !DILocation(line: 906, column: 32, scope: !2014)
!2066 = !DILocation(line: 906, column: 9, scope: !2014)
!2067 = !DILocation(line: 908, column: 55, scope: !2014)
!2068 = !DILocation(line: 909, column: 46, scope: !2014)
!2069 = !DILocation(line: 910, column: 55, scope: !2014)
!2070 = !DILocation(line: 911, column: 55, scope: !2014)
!2071 = !DILocation(line: 907, column: 20, scope: !2014)
!2072 = !DILocation(line: 907, column: 12, scope: !2014)
!2073 = !DILocation(line: 913, column: 14, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2014, file: !105, line: 913, column: 9)
!2075 = !DILocation(line: 913, column: 9, scope: !2014)
!2076 = !DILocation(line: 915, column: 35, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2074, file: !105, line: 914, column: 7)
!2078 = !DILocation(line: 915, column: 20, scope: !2077)
!2079 = !DILocation(line: 916, column: 17, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !105, line: 916, column: 13)
!2081 = !DILocation(line: 916, column: 13, scope: !2077)
!2082 = !DILocation(line: 917, column: 11, scope: !2080)
!2083 = !DILocation(line: 216, column: 20, scope: !1901, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 918, column: 27, scope: !2077)
!2085 = !DILocation(line: 218, column: 10, scope: !1901, inlinedAt: !2084)
!2086 = !DILocation(line: 918, column: 19, scope: !2077)
!2087 = !DILocation(line: 919, column: 69, scope: !2077)
!2088 = !DILocation(line: 921, column: 44, scope: !2077)
!2089 = !DILocation(line: 922, column: 44, scope: !2077)
!2090 = !DILocation(line: 919, column: 9, scope: !2077)
!2091 = !DILocation(line: 923, column: 7, scope: !2077)
!2092 = !DILocation(line: 0, scope: !2014)
!2093 = !DILocation(line: 925, column: 11, scope: !2014)
!2094 = !DILocation(line: 926, column: 5, scope: !2014)
!2095 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !105, file: !105, line: 937, type: !2096, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!10, !23, !20, !99}
!2098 = !{!2099, !2100, !2101}
!2099 = !DILocalVariable(name: "n", arg: 1, scope: !2095, file: !105, line: 937, type: !23)
!2100 = !DILocalVariable(name: "arg", arg: 2, scope: !2095, file: !105, line: 937, type: !20)
!2101 = !DILocalVariable(name: "argsize", arg: 3, scope: !2095, file: !105, line: 937, type: !99)
!2102 = !DILocation(line: 937, column: 21, scope: !2095)
!2103 = !DILocation(line: 937, column: 36, scope: !2095)
!2104 = !DILocation(line: 937, column: 48, scope: !2095)
!2105 = !DILocation(line: 939, column: 10, scope: !2095)
!2106 = !DILocation(line: 939, column: 3, scope: !2095)
!2107 = distinct !DISubprogram(name: "quotearg", scope: !105, file: !105, line: 943, type: !2108, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!10, !20}
!2110 = !{!2111}
!2111 = !DILocalVariable(name: "arg", arg: 1, scope: !2107, file: !105, line: 943, type: !20)
!2112 = !DILocation(line: 943, column: 23, scope: !2107)
!2113 = !DILocation(line: 931, column: 17, scope: !1989, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 945, column: 10, scope: !2107)
!2115 = !DILocation(line: 931, column: 32, scope: !1989, inlinedAt: !2114)
!2116 = !DILocation(line: 933, column: 10, scope: !1989, inlinedAt: !2114)
!2117 = !DILocation(line: 945, column: 3, scope: !2107)
!2118 = distinct !DISubprogram(name: "quotearg_mem", scope: !105, file: !105, line: 949, type: !2119, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!10, !20, !99}
!2121 = !{!2122, !2123}
!2122 = !DILocalVariable(name: "arg", arg: 1, scope: !2118, file: !105, line: 949, type: !20)
!2123 = !DILocalVariable(name: "argsize", arg: 2, scope: !2118, file: !105, line: 949, type: !99)
!2124 = !DILocation(line: 949, column: 27, scope: !2118)
!2125 = !DILocation(line: 949, column: 39, scope: !2118)
!2126 = !DILocation(line: 937, column: 21, scope: !2095, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 951, column: 10, scope: !2118)
!2128 = !DILocation(line: 937, column: 36, scope: !2095, inlinedAt: !2127)
!2129 = !DILocation(line: 937, column: 48, scope: !2095, inlinedAt: !2127)
!2130 = !DILocation(line: 939, column: 10, scope: !2095, inlinedAt: !2127)
!2131 = !DILocation(line: 951, column: 3, scope: !2118)
!2132 = distinct !DISubprogram(name: "quotearg_n_style", scope: !105, file: !105, line: 955, type: !2133, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!10, !23, !63, !20}
!2135 = !{!2136, !2137, !2138, !2139}
!2136 = !DILocalVariable(name: "n", arg: 1, scope: !2132, file: !105, line: 955, type: !23)
!2137 = !DILocalVariable(name: "s", arg: 2, scope: !2132, file: !105, line: 955, type: !63)
!2138 = !DILocalVariable(name: "arg", arg: 3, scope: !2132, file: !105, line: 955, type: !20)
!2139 = !DILocalVariable(name: "o", scope: !2132, file: !105, line: 957, type: !898)
!2140 = !DILocation(line: 955, column: 23, scope: !2132)
!2141 = !DILocation(line: 955, column: 45, scope: !2132)
!2142 = !DILocation(line: 955, column: 60, scope: !2132)
!2143 = !DILocation(line: 957, column: 3, scope: !2132)
!2144 = !DILocation(line: 957, column: 32, scope: !2132)
!2145 = !DILocalVariable(name: "style", arg: 1, scope: !2146, file: !105, line: 193, type: !63)
!2146 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !105, file: !105, line: 193, type: !2147, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!112, !63}
!2149 = !{!2145, !2150}
!2150 = !DILocalVariable(name: "o", scope: !2146, file: !105, line: 195, type: !112)
!2151 = !DILocation(line: 193, column: 48, scope: !2146, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 957, column: 36, scope: !2132)
!2153 = !DILocation(line: 195, column: 26, scope: !2146, inlinedAt: !2152)
!2154 = !{!2155}
!2155 = distinct !{!2155, !2156, !"quoting_options_from_style: argument 0"}
!2156 = distinct !{!2156, !"quoting_options_from_style"}
!2157 = !DILocation(line: 196, column: 13, scope: !2158, inlinedAt: !2152)
!2158 = distinct !DILexicalBlock(scope: !2146, file: !105, line: 196, column: 7)
!2159 = !DILocation(line: 196, column: 7, scope: !2146, inlinedAt: !2152)
!2160 = !DILocation(line: 197, column: 5, scope: !2158, inlinedAt: !2152)
!2161 = !DILocation(line: 198, column: 5, scope: !2146, inlinedAt: !2152)
!2162 = !DILocation(line: 198, column: 11, scope: !2146, inlinedAt: !2152)
!2163 = !DILocation(line: 958, column: 10, scope: !2132)
!2164 = !DILocation(line: 959, column: 1, scope: !2132)
!2165 = !DILocation(line: 958, column: 3, scope: !2132)
!2166 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !105, file: !105, line: 962, type: !2167, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!10, !23, !63, !20, !99}
!2169 = !{!2170, !2171, !2172, !2173, !2174}
!2170 = !DILocalVariable(name: "n", arg: 1, scope: !2166, file: !105, line: 962, type: !23)
!2171 = !DILocalVariable(name: "s", arg: 2, scope: !2166, file: !105, line: 962, type: !63)
!2172 = !DILocalVariable(name: "arg", arg: 3, scope: !2166, file: !105, line: 963, type: !20)
!2173 = !DILocalVariable(name: "argsize", arg: 4, scope: !2166, file: !105, line: 963, type: !99)
!2174 = !DILocalVariable(name: "o", scope: !2166, file: !105, line: 965, type: !898)
!2175 = !DILocation(line: 962, column: 27, scope: !2166)
!2176 = !DILocation(line: 962, column: 49, scope: !2166)
!2177 = !DILocation(line: 963, column: 35, scope: !2166)
!2178 = !DILocation(line: 963, column: 47, scope: !2166)
!2179 = !DILocation(line: 965, column: 3, scope: !2166)
!2180 = !DILocation(line: 965, column: 32, scope: !2166)
!2181 = !DILocation(line: 193, column: 48, scope: !2146, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 965, column: 36, scope: !2166)
!2183 = !DILocation(line: 195, column: 26, scope: !2146, inlinedAt: !2182)
!2184 = !{!2185}
!2185 = distinct !{!2185, !2186, !"quoting_options_from_style: argument 0"}
!2186 = distinct !{!2186, !"quoting_options_from_style"}
!2187 = !DILocation(line: 196, column: 13, scope: !2158, inlinedAt: !2182)
!2188 = !DILocation(line: 196, column: 7, scope: !2146, inlinedAt: !2182)
!2189 = !DILocation(line: 197, column: 5, scope: !2158, inlinedAt: !2182)
!2190 = !DILocation(line: 198, column: 5, scope: !2146, inlinedAt: !2182)
!2191 = !DILocation(line: 198, column: 11, scope: !2146, inlinedAt: !2182)
!2192 = !DILocation(line: 966, column: 10, scope: !2166)
!2193 = !DILocation(line: 967, column: 1, scope: !2166)
!2194 = !DILocation(line: 966, column: 3, scope: !2166)
!2195 = distinct !DISubprogram(name: "quotearg_style", scope: !105, file: !105, line: 970, type: !2196, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!10, !63, !20}
!2198 = !{!2199, !2200}
!2199 = !DILocalVariable(name: "s", arg: 1, scope: !2195, file: !105, line: 970, type: !63)
!2200 = !DILocalVariable(name: "arg", arg: 2, scope: !2195, file: !105, line: 970, type: !20)
!2201 = !DILocation(line: 970, column: 36, scope: !2195)
!2202 = !DILocation(line: 970, column: 51, scope: !2195)
!2203 = !DILocation(line: 955, column: 23, scope: !2132, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 972, column: 10, scope: !2195)
!2205 = !DILocation(line: 955, column: 45, scope: !2132, inlinedAt: !2204)
!2206 = !DILocation(line: 955, column: 60, scope: !2132, inlinedAt: !2204)
!2207 = !DILocation(line: 957, column: 3, scope: !2132, inlinedAt: !2204)
!2208 = !DILocation(line: 957, column: 32, scope: !2132, inlinedAt: !2204)
!2209 = !DILocation(line: 193, column: 48, scope: !2146, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 957, column: 36, scope: !2132, inlinedAt: !2204)
!2211 = !DILocation(line: 195, column: 26, scope: !2146, inlinedAt: !2210)
!2212 = !{!2213}
!2213 = distinct !{!2213, !2214, !"quoting_options_from_style: argument 0"}
!2214 = distinct !{!2214, !"quoting_options_from_style"}
!2215 = !DILocation(line: 196, column: 13, scope: !2158, inlinedAt: !2210)
!2216 = !DILocation(line: 196, column: 7, scope: !2146, inlinedAt: !2210)
!2217 = !DILocation(line: 197, column: 5, scope: !2158, inlinedAt: !2210)
!2218 = !DILocation(line: 198, column: 5, scope: !2146, inlinedAt: !2210)
!2219 = !DILocation(line: 198, column: 11, scope: !2146, inlinedAt: !2210)
!2220 = !DILocation(line: 958, column: 10, scope: !2132, inlinedAt: !2204)
!2221 = !DILocation(line: 959, column: 1, scope: !2132, inlinedAt: !2204)
!2222 = !DILocation(line: 972, column: 3, scope: !2195)
!2223 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !105, file: !105, line: 976, type: !2224, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!10, !63, !20, !99}
!2226 = !{!2227, !2228, !2229}
!2227 = !DILocalVariable(name: "s", arg: 1, scope: !2223, file: !105, line: 976, type: !63)
!2228 = !DILocalVariable(name: "arg", arg: 2, scope: !2223, file: !105, line: 976, type: !20)
!2229 = !DILocalVariable(name: "argsize", arg: 3, scope: !2223, file: !105, line: 976, type: !99)
!2230 = !DILocation(line: 976, column: 40, scope: !2223)
!2231 = !DILocation(line: 976, column: 55, scope: !2223)
!2232 = !DILocation(line: 976, column: 67, scope: !2223)
!2233 = !DILocation(line: 962, column: 27, scope: !2166, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 978, column: 10, scope: !2223)
!2235 = !DILocation(line: 962, column: 49, scope: !2166, inlinedAt: !2234)
!2236 = !DILocation(line: 963, column: 35, scope: !2166, inlinedAt: !2234)
!2237 = !DILocation(line: 963, column: 47, scope: !2166, inlinedAt: !2234)
!2238 = !DILocation(line: 965, column: 3, scope: !2166, inlinedAt: !2234)
!2239 = !DILocation(line: 965, column: 32, scope: !2166, inlinedAt: !2234)
!2240 = !DILocation(line: 193, column: 48, scope: !2146, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 965, column: 36, scope: !2166, inlinedAt: !2234)
!2242 = !DILocation(line: 195, column: 26, scope: !2146, inlinedAt: !2241)
!2243 = !{!2244}
!2244 = distinct !{!2244, !2245, !"quoting_options_from_style: argument 0"}
!2245 = distinct !{!2245, !"quoting_options_from_style"}
!2246 = !DILocation(line: 196, column: 13, scope: !2158, inlinedAt: !2241)
!2247 = !DILocation(line: 196, column: 7, scope: !2146, inlinedAt: !2241)
!2248 = !DILocation(line: 197, column: 5, scope: !2158, inlinedAt: !2241)
!2249 = !DILocation(line: 198, column: 5, scope: !2146, inlinedAt: !2241)
!2250 = !DILocation(line: 198, column: 11, scope: !2146, inlinedAt: !2241)
!2251 = !DILocation(line: 966, column: 10, scope: !2166, inlinedAt: !2234)
!2252 = !DILocation(line: 967, column: 1, scope: !2166, inlinedAt: !2234)
!2253 = !DILocation(line: 978, column: 3, scope: !2223)
!2254 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !105, file: !105, line: 982, type: !2255, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!10, !20, !99, !11}
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "arg", arg: 1, scope: !2254, file: !105, line: 982, type: !20)
!2259 = !DILocalVariable(name: "argsize", arg: 2, scope: !2254, file: !105, line: 982, type: !99)
!2260 = !DILocalVariable(name: "ch", arg: 3, scope: !2254, file: !105, line: 982, type: !11)
!2261 = !DILocalVariable(name: "options", scope: !2254, file: !105, line: 984, type: !112)
!2262 = !DILocation(line: 982, column: 32, scope: !2254)
!2263 = !DILocation(line: 982, column: 44, scope: !2254)
!2264 = !DILocation(line: 982, column: 58, scope: !2254)
!2265 = !DILocation(line: 984, column: 3, scope: !2254)
!2266 = !DILocation(line: 985, column: 13, scope: !2254)
!2267 = !{i64 0, i64 4, !748, i64 4, i64 4, !703, i64 8, i64 32, !748, i64 40, i64 8, !623, i64 48, i64 8, !623}
!2268 = !DILocation(line: 984, column: 26, scope: !2254)
!2269 = !DILocation(line: 152, column: 43, scope: !919, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 986, column: 3, scope: !2254)
!2271 = !DILocation(line: 152, column: 51, scope: !919, inlinedAt: !2270)
!2272 = !DILocation(line: 152, column: 58, scope: !919, inlinedAt: !2270)
!2273 = !DILocation(line: 154, column: 17, scope: !919, inlinedAt: !2270)
!2274 = !DILocation(line: 156, column: 62, scope: !919, inlinedAt: !2270)
!2275 = !DILocation(line: 156, column: 57, scope: !919, inlinedAt: !2270)
!2276 = !DILocation(line: 155, column: 17, scope: !919, inlinedAt: !2270)
!2277 = !DILocation(line: 157, column: 15, scope: !919, inlinedAt: !2270)
!2278 = !DILocation(line: 157, column: 7, scope: !919, inlinedAt: !2270)
!2279 = !DILocation(line: 158, column: 12, scope: !919, inlinedAt: !2270)
!2280 = !DILocation(line: 158, column: 15, scope: !919, inlinedAt: !2270)
!2281 = !DILocation(line: 158, column: 25, scope: !919, inlinedAt: !2270)
!2282 = !DILocation(line: 158, column: 7, scope: !919, inlinedAt: !2270)
!2283 = !DILocation(line: 159, column: 18, scope: !919, inlinedAt: !2270)
!2284 = !DILocation(line: 159, column: 23, scope: !919, inlinedAt: !2270)
!2285 = !DILocation(line: 159, column: 6, scope: !919, inlinedAt: !2270)
!2286 = !DILocation(line: 987, column: 10, scope: !2254)
!2287 = !DILocation(line: 988, column: 1, scope: !2254)
!2288 = !DILocation(line: 987, column: 3, scope: !2254)
!2289 = distinct !DISubprogram(name: "quotearg_char", scope: !105, file: !105, line: 991, type: !2290, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!10, !20, !11}
!2292 = !{!2293, !2294}
!2293 = !DILocalVariable(name: "arg", arg: 1, scope: !2289, file: !105, line: 991, type: !20)
!2294 = !DILocalVariable(name: "ch", arg: 2, scope: !2289, file: !105, line: 991, type: !11)
!2295 = !DILocation(line: 991, column: 28, scope: !2289)
!2296 = !DILocation(line: 991, column: 38, scope: !2289)
!2297 = !DILocation(line: 982, column: 32, scope: !2254, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 993, column: 10, scope: !2289)
!2299 = !DILocation(line: 982, column: 44, scope: !2254, inlinedAt: !2298)
!2300 = !DILocation(line: 982, column: 58, scope: !2254, inlinedAt: !2298)
!2301 = !DILocation(line: 984, column: 3, scope: !2254, inlinedAt: !2298)
!2302 = !DILocation(line: 985, column: 13, scope: !2254, inlinedAt: !2298)
!2303 = !DILocation(line: 984, column: 26, scope: !2254, inlinedAt: !2298)
!2304 = !DILocation(line: 152, column: 43, scope: !919, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 986, column: 3, scope: !2254, inlinedAt: !2298)
!2306 = !DILocation(line: 152, column: 51, scope: !919, inlinedAt: !2305)
!2307 = !DILocation(line: 152, column: 58, scope: !919, inlinedAt: !2305)
!2308 = !DILocation(line: 154, column: 17, scope: !919, inlinedAt: !2305)
!2309 = !DILocation(line: 156, column: 62, scope: !919, inlinedAt: !2305)
!2310 = !DILocation(line: 156, column: 57, scope: !919, inlinedAt: !2305)
!2311 = !DILocation(line: 155, column: 17, scope: !919, inlinedAt: !2305)
!2312 = !DILocation(line: 157, column: 15, scope: !919, inlinedAt: !2305)
!2313 = !DILocation(line: 157, column: 7, scope: !919, inlinedAt: !2305)
!2314 = !DILocation(line: 158, column: 12, scope: !919, inlinedAt: !2305)
!2315 = !DILocation(line: 158, column: 15, scope: !919, inlinedAt: !2305)
!2316 = !DILocation(line: 158, column: 25, scope: !919, inlinedAt: !2305)
!2317 = !DILocation(line: 158, column: 7, scope: !919, inlinedAt: !2305)
!2318 = !DILocation(line: 159, column: 18, scope: !919, inlinedAt: !2305)
!2319 = !DILocation(line: 159, column: 23, scope: !919, inlinedAt: !2305)
!2320 = !DILocation(line: 159, column: 6, scope: !919, inlinedAt: !2305)
!2321 = !DILocation(line: 987, column: 10, scope: !2254, inlinedAt: !2298)
!2322 = !DILocation(line: 988, column: 1, scope: !2254, inlinedAt: !2298)
!2323 = !DILocation(line: 993, column: 3, scope: !2289)
!2324 = distinct !DISubprogram(name: "quotearg_colon", scope: !105, file: !105, line: 997, type: !2108, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2325)
!2325 = !{!2326}
!2326 = !DILocalVariable(name: "arg", arg: 1, scope: !2324, file: !105, line: 997, type: !20)
!2327 = !DILocation(line: 997, column: 29, scope: !2324)
!2328 = !DILocation(line: 991, column: 28, scope: !2289, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 999, column: 10, scope: !2324)
!2330 = !DILocation(line: 991, column: 38, scope: !2289, inlinedAt: !2329)
!2331 = !DILocation(line: 982, column: 32, scope: !2254, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 993, column: 10, scope: !2289, inlinedAt: !2329)
!2333 = !DILocation(line: 982, column: 44, scope: !2254, inlinedAt: !2332)
!2334 = !DILocation(line: 982, column: 58, scope: !2254, inlinedAt: !2332)
!2335 = !DILocation(line: 984, column: 3, scope: !2254, inlinedAt: !2332)
!2336 = !DILocation(line: 985, column: 13, scope: !2254, inlinedAt: !2332)
!2337 = !DILocation(line: 984, column: 26, scope: !2254, inlinedAt: !2332)
!2338 = !DILocation(line: 152, column: 43, scope: !919, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 986, column: 3, scope: !2254, inlinedAt: !2332)
!2340 = !DILocation(line: 152, column: 51, scope: !919, inlinedAt: !2339)
!2341 = !DILocation(line: 152, column: 58, scope: !919, inlinedAt: !2339)
!2342 = !DILocation(line: 154, column: 17, scope: !919, inlinedAt: !2339)
!2343 = !DILocation(line: 156, column: 57, scope: !919, inlinedAt: !2339)
!2344 = !DILocation(line: 155, column: 17, scope: !919, inlinedAt: !2339)
!2345 = !DILocation(line: 157, column: 7, scope: !919, inlinedAt: !2339)
!2346 = !DILocation(line: 158, column: 12, scope: !919, inlinedAt: !2339)
!2347 = !DILocation(line: 159, column: 6, scope: !919, inlinedAt: !2339)
!2348 = !DILocation(line: 987, column: 10, scope: !2254, inlinedAt: !2332)
!2349 = !DILocation(line: 988, column: 1, scope: !2254, inlinedAt: !2332)
!2350 = !DILocation(line: 999, column: 3, scope: !2324)
!2351 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !105, file: !105, line: 1003, type: !2119, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2352)
!2352 = !{!2353, !2354}
!2353 = !DILocalVariable(name: "arg", arg: 1, scope: !2351, file: !105, line: 1003, type: !20)
!2354 = !DILocalVariable(name: "argsize", arg: 2, scope: !2351, file: !105, line: 1003, type: !99)
!2355 = !DILocation(line: 1003, column: 33, scope: !2351)
!2356 = !DILocation(line: 1003, column: 45, scope: !2351)
!2357 = !DILocation(line: 982, column: 32, scope: !2254, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 1005, column: 10, scope: !2351)
!2359 = !DILocation(line: 982, column: 44, scope: !2254, inlinedAt: !2358)
!2360 = !DILocation(line: 982, column: 58, scope: !2254, inlinedAt: !2358)
!2361 = !DILocation(line: 984, column: 3, scope: !2254, inlinedAt: !2358)
!2362 = !DILocation(line: 985, column: 13, scope: !2254, inlinedAt: !2358)
!2363 = !DILocation(line: 984, column: 26, scope: !2254, inlinedAt: !2358)
!2364 = !DILocation(line: 152, column: 43, scope: !919, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 986, column: 3, scope: !2254, inlinedAt: !2358)
!2366 = !DILocation(line: 152, column: 51, scope: !919, inlinedAt: !2365)
!2367 = !DILocation(line: 152, column: 58, scope: !919, inlinedAt: !2365)
!2368 = !DILocation(line: 154, column: 17, scope: !919, inlinedAt: !2365)
!2369 = !DILocation(line: 156, column: 57, scope: !919, inlinedAt: !2365)
!2370 = !DILocation(line: 155, column: 17, scope: !919, inlinedAt: !2365)
!2371 = !DILocation(line: 157, column: 7, scope: !919, inlinedAt: !2365)
!2372 = !DILocation(line: 158, column: 12, scope: !919, inlinedAt: !2365)
!2373 = !DILocation(line: 159, column: 6, scope: !919, inlinedAt: !2365)
!2374 = !DILocation(line: 987, column: 10, scope: !2254, inlinedAt: !2358)
!2375 = !DILocation(line: 988, column: 1, scope: !2254, inlinedAt: !2358)
!2376 = !DILocation(line: 1005, column: 3, scope: !2351)
!2377 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !105, file: !105, line: 1009, type: !2133, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2378)
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DILocalVariable(name: "n", arg: 1, scope: !2377, file: !105, line: 1009, type: !23)
!2380 = !DILocalVariable(name: "s", arg: 2, scope: !2377, file: !105, line: 1009, type: !63)
!2381 = !DILocalVariable(name: "arg", arg: 3, scope: !2377, file: !105, line: 1009, type: !20)
!2382 = !DILocalVariable(name: "options", scope: !2377, file: !105, line: 1011, type: !112)
!2383 = !DILocation(line: 195, column: 26, scope: !2146, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 1012, column: 13, scope: !2377)
!2385 = !DILocation(line: 1009, column: 29, scope: !2377)
!2386 = !DILocation(line: 1009, column: 51, scope: !2377)
!2387 = !DILocation(line: 1009, column: 66, scope: !2377)
!2388 = !DILocation(line: 1011, column: 3, scope: !2377)
!2389 = !DILocation(line: 1012, column: 13, scope: !2377)
!2390 = !DILocation(line: 193, column: 48, scope: !2146, inlinedAt: !2384)
!2391 = !{!2392}
!2392 = distinct !{!2392, !2393, !"quoting_options_from_style: argument 0"}
!2393 = distinct !{!2393, !"quoting_options_from_style"}
!2394 = !DILocation(line: 196, column: 13, scope: !2158, inlinedAt: !2384)
!2395 = !DILocation(line: 196, column: 7, scope: !2146, inlinedAt: !2384)
!2396 = !DILocation(line: 197, column: 5, scope: !2158, inlinedAt: !2384)
!2397 = !DILocation(line: 1011, column: 26, scope: !2377)
!2398 = !DILocation(line: 152, column: 43, scope: !919, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 1013, column: 3, scope: !2377)
!2400 = !DILocation(line: 152, column: 51, scope: !919, inlinedAt: !2399)
!2401 = !DILocation(line: 152, column: 58, scope: !919, inlinedAt: !2399)
!2402 = !DILocation(line: 154, column: 17, scope: !919, inlinedAt: !2399)
!2403 = !DILocation(line: 156, column: 57, scope: !919, inlinedAt: !2399)
!2404 = !DILocation(line: 155, column: 17, scope: !919, inlinedAt: !2399)
!2405 = !DILocation(line: 157, column: 7, scope: !919, inlinedAt: !2399)
!2406 = !DILocation(line: 158, column: 12, scope: !919, inlinedAt: !2399)
!2407 = !DILocation(line: 159, column: 6, scope: !919, inlinedAt: !2399)
!2408 = !DILocation(line: 1014, column: 10, scope: !2377)
!2409 = !DILocation(line: 1015, column: 1, scope: !2377)
!2410 = !DILocation(line: 1014, column: 3, scope: !2377)
!2411 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !105, file: !105, line: 1018, type: !2412, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!10, !23, !20, !20, !20}
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DILocalVariable(name: "n", arg: 1, scope: !2411, file: !105, line: 1018, type: !23)
!2416 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2411, file: !105, line: 1018, type: !20)
!2417 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2411, file: !105, line: 1019, type: !20)
!2418 = !DILocalVariable(name: "arg", arg: 4, scope: !2411, file: !105, line: 1019, type: !20)
!2419 = !DILocation(line: 1018, column: 24, scope: !2411)
!2420 = !DILocation(line: 1018, column: 39, scope: !2411)
!2421 = !DILocation(line: 1019, column: 32, scope: !2411)
!2422 = !DILocation(line: 1019, column: 57, scope: !2411)
!2423 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !105, line: 1026, type: !23)
!2424 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !105, file: !105, line: 1026, type: !2425, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!10, !23, !20, !20, !20, !99}
!2427 = !{!2423, !2428, !2429, !2430, !2431, !2432}
!2428 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2424, file: !105, line: 1026, type: !20)
!2429 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2424, file: !105, line: 1027, type: !20)
!2430 = !DILocalVariable(name: "arg", arg: 4, scope: !2424, file: !105, line: 1028, type: !20)
!2431 = !DILocalVariable(name: "argsize", arg: 5, scope: !2424, file: !105, line: 1028, type: !99)
!2432 = !DILocalVariable(name: "o", scope: !2424, file: !105, line: 1030, type: !112)
!2433 = !DILocation(line: 1026, column: 28, scope: !2424, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 1021, column: 10, scope: !2411)
!2435 = !DILocation(line: 1026, column: 43, scope: !2424, inlinedAt: !2434)
!2436 = !DILocation(line: 1027, column: 36, scope: !2424, inlinedAt: !2434)
!2437 = !DILocation(line: 1028, column: 36, scope: !2424, inlinedAt: !2434)
!2438 = !DILocation(line: 1028, column: 48, scope: !2424, inlinedAt: !2434)
!2439 = !DILocation(line: 1030, column: 3, scope: !2424, inlinedAt: !2434)
!2440 = !DILocation(line: 1030, column: 30, scope: !2424, inlinedAt: !2434)
!2441 = !DILocation(line: 1030, column: 26, scope: !2424, inlinedAt: !2434)
!2442 = !DILocation(line: 179, column: 45, scope: !968, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 1031, column: 3, scope: !2424, inlinedAt: !2434)
!2444 = !DILocation(line: 180, column: 33, scope: !968, inlinedAt: !2443)
!2445 = !DILocation(line: 180, column: 57, scope: !968, inlinedAt: !2443)
!2446 = !DILocation(line: 184, column: 6, scope: !968, inlinedAt: !2443)
!2447 = !DILocation(line: 184, column: 12, scope: !968, inlinedAt: !2443)
!2448 = !DILocation(line: 185, column: 8, scope: !984, inlinedAt: !2443)
!2449 = !DILocation(line: 185, column: 23, scope: !984, inlinedAt: !2443)
!2450 = !DILocation(line: 185, column: 19, scope: !984, inlinedAt: !2443)
!2451 = !DILocation(line: 186, column: 5, scope: !984, inlinedAt: !2443)
!2452 = !DILocation(line: 187, column: 6, scope: !968, inlinedAt: !2443)
!2453 = !DILocation(line: 187, column: 17, scope: !968, inlinedAt: !2443)
!2454 = !DILocation(line: 188, column: 6, scope: !968, inlinedAt: !2443)
!2455 = !DILocation(line: 188, column: 18, scope: !968, inlinedAt: !2443)
!2456 = !DILocation(line: 1032, column: 10, scope: !2424, inlinedAt: !2434)
!2457 = !DILocation(line: 1033, column: 1, scope: !2424, inlinedAt: !2434)
!2458 = !DILocation(line: 1021, column: 3, scope: !2411)
!2459 = !DILocation(line: 1026, column: 28, scope: !2424)
!2460 = !DILocation(line: 1026, column: 43, scope: !2424)
!2461 = !DILocation(line: 1027, column: 36, scope: !2424)
!2462 = !DILocation(line: 1028, column: 36, scope: !2424)
!2463 = !DILocation(line: 1028, column: 48, scope: !2424)
!2464 = !DILocation(line: 1030, column: 3, scope: !2424)
!2465 = !DILocation(line: 1030, column: 30, scope: !2424)
!2466 = !DILocation(line: 1030, column: 26, scope: !2424)
!2467 = !DILocation(line: 179, column: 45, scope: !968, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1031, column: 3, scope: !2424)
!2469 = !DILocation(line: 180, column: 33, scope: !968, inlinedAt: !2468)
!2470 = !DILocation(line: 180, column: 57, scope: !968, inlinedAt: !2468)
!2471 = !DILocation(line: 184, column: 6, scope: !968, inlinedAt: !2468)
!2472 = !DILocation(line: 184, column: 12, scope: !968, inlinedAt: !2468)
!2473 = !DILocation(line: 185, column: 8, scope: !984, inlinedAt: !2468)
!2474 = !DILocation(line: 185, column: 23, scope: !984, inlinedAt: !2468)
!2475 = !DILocation(line: 185, column: 19, scope: !984, inlinedAt: !2468)
!2476 = !DILocation(line: 186, column: 5, scope: !984, inlinedAt: !2468)
!2477 = !DILocation(line: 187, column: 6, scope: !968, inlinedAt: !2468)
!2478 = !DILocation(line: 187, column: 17, scope: !968, inlinedAt: !2468)
!2479 = !DILocation(line: 188, column: 6, scope: !968, inlinedAt: !2468)
!2480 = !DILocation(line: 188, column: 18, scope: !968, inlinedAt: !2468)
!2481 = !DILocation(line: 1032, column: 10, scope: !2424)
!2482 = !DILocation(line: 1033, column: 1, scope: !2424)
!2483 = !DILocation(line: 1032, column: 3, scope: !2424)
!2484 = distinct !DISubprogram(name: "quotearg_custom", scope: !105, file: !105, line: 1036, type: !2485, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!10, !20, !20, !20}
!2487 = !{!2488, !2489, !2490}
!2488 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2484, file: !105, line: 1036, type: !20)
!2489 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2484, file: !105, line: 1036, type: !20)
!2490 = !DILocalVariable(name: "arg", arg: 3, scope: !2484, file: !105, line: 1037, type: !20)
!2491 = !DILocation(line: 1036, column: 30, scope: !2484)
!2492 = !DILocation(line: 1036, column: 54, scope: !2484)
!2493 = !DILocation(line: 1037, column: 30, scope: !2484)
!2494 = !DILocation(line: 1018, column: 24, scope: !2411, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 1039, column: 10, scope: !2484)
!2496 = !DILocation(line: 1018, column: 39, scope: !2411, inlinedAt: !2495)
!2497 = !DILocation(line: 1019, column: 32, scope: !2411, inlinedAt: !2495)
!2498 = !DILocation(line: 1019, column: 57, scope: !2411, inlinedAt: !2495)
!2499 = !DILocation(line: 1026, column: 28, scope: !2424, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 1021, column: 10, scope: !2411, inlinedAt: !2495)
!2501 = !DILocation(line: 1026, column: 43, scope: !2424, inlinedAt: !2500)
!2502 = !DILocation(line: 1027, column: 36, scope: !2424, inlinedAt: !2500)
!2503 = !DILocation(line: 1028, column: 36, scope: !2424, inlinedAt: !2500)
!2504 = !DILocation(line: 1028, column: 48, scope: !2424, inlinedAt: !2500)
!2505 = !DILocation(line: 1030, column: 3, scope: !2424, inlinedAt: !2500)
!2506 = !DILocation(line: 1030, column: 30, scope: !2424, inlinedAt: !2500)
!2507 = !DILocation(line: 1030, column: 26, scope: !2424, inlinedAt: !2500)
!2508 = !DILocation(line: 179, column: 45, scope: !968, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 1031, column: 3, scope: !2424, inlinedAt: !2500)
!2510 = !DILocation(line: 180, column: 33, scope: !968, inlinedAt: !2509)
!2511 = !DILocation(line: 180, column: 57, scope: !968, inlinedAt: !2509)
!2512 = !DILocation(line: 184, column: 6, scope: !968, inlinedAt: !2509)
!2513 = !DILocation(line: 184, column: 12, scope: !968, inlinedAt: !2509)
!2514 = !DILocation(line: 185, column: 8, scope: !984, inlinedAt: !2509)
!2515 = !DILocation(line: 185, column: 23, scope: !984, inlinedAt: !2509)
!2516 = !DILocation(line: 185, column: 19, scope: !984, inlinedAt: !2509)
!2517 = !DILocation(line: 186, column: 5, scope: !984, inlinedAt: !2509)
!2518 = !DILocation(line: 187, column: 6, scope: !968, inlinedAt: !2509)
!2519 = !DILocation(line: 187, column: 17, scope: !968, inlinedAt: !2509)
!2520 = !DILocation(line: 188, column: 6, scope: !968, inlinedAt: !2509)
!2521 = !DILocation(line: 188, column: 18, scope: !968, inlinedAt: !2509)
!2522 = !DILocation(line: 1032, column: 10, scope: !2424, inlinedAt: !2500)
!2523 = !DILocation(line: 1033, column: 1, scope: !2424, inlinedAt: !2500)
!2524 = !DILocation(line: 1039, column: 3, scope: !2484)
!2525 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !105, file: !105, line: 1043, type: !2526, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!10, !20, !20, !20, !99}
!2528 = !{!2529, !2530, !2531, !2532}
!2529 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2525, file: !105, line: 1043, type: !20)
!2530 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2525, file: !105, line: 1043, type: !20)
!2531 = !DILocalVariable(name: "arg", arg: 3, scope: !2525, file: !105, line: 1044, type: !20)
!2532 = !DILocalVariable(name: "argsize", arg: 4, scope: !2525, file: !105, line: 1044, type: !99)
!2533 = !DILocation(line: 1043, column: 34, scope: !2525)
!2534 = !DILocation(line: 1043, column: 58, scope: !2525)
!2535 = !DILocation(line: 1044, column: 34, scope: !2525)
!2536 = !DILocation(line: 1044, column: 46, scope: !2525)
!2537 = !DILocation(line: 1026, column: 28, scope: !2424, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 1046, column: 10, scope: !2525)
!2539 = !DILocation(line: 1026, column: 43, scope: !2424, inlinedAt: !2538)
!2540 = !DILocation(line: 1027, column: 36, scope: !2424, inlinedAt: !2538)
!2541 = !DILocation(line: 1028, column: 36, scope: !2424, inlinedAt: !2538)
!2542 = !DILocation(line: 1028, column: 48, scope: !2424, inlinedAt: !2538)
!2543 = !DILocation(line: 1030, column: 3, scope: !2424, inlinedAt: !2538)
!2544 = !DILocation(line: 1030, column: 30, scope: !2424, inlinedAt: !2538)
!2545 = !DILocation(line: 1030, column: 26, scope: !2424, inlinedAt: !2538)
!2546 = !DILocation(line: 179, column: 45, scope: !968, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 1031, column: 3, scope: !2424, inlinedAt: !2538)
!2548 = !DILocation(line: 180, column: 33, scope: !968, inlinedAt: !2547)
!2549 = !DILocation(line: 180, column: 57, scope: !968, inlinedAt: !2547)
!2550 = !DILocation(line: 184, column: 6, scope: !968, inlinedAt: !2547)
!2551 = !DILocation(line: 184, column: 12, scope: !968, inlinedAt: !2547)
!2552 = !DILocation(line: 185, column: 8, scope: !984, inlinedAt: !2547)
!2553 = !DILocation(line: 185, column: 23, scope: !984, inlinedAt: !2547)
!2554 = !DILocation(line: 185, column: 19, scope: !984, inlinedAt: !2547)
!2555 = !DILocation(line: 186, column: 5, scope: !984, inlinedAt: !2547)
!2556 = !DILocation(line: 187, column: 6, scope: !968, inlinedAt: !2547)
!2557 = !DILocation(line: 187, column: 17, scope: !968, inlinedAt: !2547)
!2558 = !DILocation(line: 188, column: 6, scope: !968, inlinedAt: !2547)
!2559 = !DILocation(line: 188, column: 18, scope: !968, inlinedAt: !2547)
!2560 = !DILocation(line: 1032, column: 10, scope: !2424, inlinedAt: !2538)
!2561 = !DILocation(line: 1033, column: 1, scope: !2424, inlinedAt: !2538)
!2562 = !DILocation(line: 1046, column: 3, scope: !2525)
!2563 = distinct !DISubprogram(name: "quote_n_mem", scope: !105, file: !105, line: 1061, type: !2564, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!20, !23, !20, !99}
!2566 = !{!2567, !2568, !2569}
!2567 = !DILocalVariable(name: "n", arg: 1, scope: !2563, file: !105, line: 1061, type: !23)
!2568 = !DILocalVariable(name: "arg", arg: 2, scope: !2563, file: !105, line: 1061, type: !20)
!2569 = !DILocalVariable(name: "argsize", arg: 3, scope: !2563, file: !105, line: 1061, type: !99)
!2570 = !DILocation(line: 1061, column: 18, scope: !2563)
!2571 = !DILocation(line: 1061, column: 33, scope: !2563)
!2572 = !DILocation(line: 1061, column: 45, scope: !2563)
!2573 = !DILocation(line: 1063, column: 10, scope: !2563)
!2574 = !DILocation(line: 1063, column: 3, scope: !2563)
!2575 = distinct !DISubprogram(name: "quote_mem", scope: !105, file: !105, line: 1067, type: !2576, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!20, !20, !99}
!2578 = !{!2579, !2580}
!2579 = !DILocalVariable(name: "arg", arg: 1, scope: !2575, file: !105, line: 1067, type: !20)
!2580 = !DILocalVariable(name: "argsize", arg: 2, scope: !2575, file: !105, line: 1067, type: !99)
!2581 = !DILocation(line: 1067, column: 24, scope: !2575)
!2582 = !DILocation(line: 1067, column: 36, scope: !2575)
!2583 = !DILocation(line: 1061, column: 18, scope: !2563, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1069, column: 10, scope: !2575)
!2585 = !DILocation(line: 1061, column: 33, scope: !2563, inlinedAt: !2584)
!2586 = !DILocation(line: 1061, column: 45, scope: !2563, inlinedAt: !2584)
!2587 = !DILocation(line: 1063, column: 10, scope: !2563, inlinedAt: !2584)
!2588 = !DILocation(line: 1069, column: 3, scope: !2575)
!2589 = distinct !DISubprogram(name: "quote_n", scope: !105, file: !105, line: 1073, type: !2590, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!20, !23, !20}
!2592 = !{!2593, !2594}
!2593 = !DILocalVariable(name: "n", arg: 1, scope: !2589, file: !105, line: 1073, type: !23)
!2594 = !DILocalVariable(name: "arg", arg: 2, scope: !2589, file: !105, line: 1073, type: !20)
!2595 = !DILocation(line: 1073, column: 14, scope: !2589)
!2596 = !DILocation(line: 1073, column: 29, scope: !2589)
!2597 = !DILocation(line: 1061, column: 18, scope: !2563, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 1075, column: 10, scope: !2589)
!2599 = !DILocation(line: 1061, column: 33, scope: !2563, inlinedAt: !2598)
!2600 = !DILocation(line: 1061, column: 45, scope: !2563, inlinedAt: !2598)
!2601 = !DILocation(line: 1063, column: 10, scope: !2563, inlinedAt: !2598)
!2602 = !DILocation(line: 1075, column: 3, scope: !2589)
!2603 = distinct !DISubprogram(name: "quote", scope: !105, file: !105, line: 1079, type: !2604, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!20, !20}
!2606 = !{!2607}
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2603, file: !105, line: 1079, type: !20)
!2608 = !DILocation(line: 1079, column: 20, scope: !2603)
!2609 = !DILocation(line: 1073, column: 14, scope: !2589, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 1081, column: 10, scope: !2603)
!2611 = !DILocation(line: 1073, column: 29, scope: !2589, inlinedAt: !2610)
!2612 = !DILocation(line: 1061, column: 18, scope: !2563, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 1075, column: 10, scope: !2589, inlinedAt: !2610)
!2614 = !DILocation(line: 1061, column: 33, scope: !2563, inlinedAt: !2613)
!2615 = !DILocation(line: 1061, column: 45, scope: !2563, inlinedAt: !2613)
!2616 = !DILocation(line: 1063, column: 10, scope: !2563, inlinedAt: !2613)
!2617 = !DILocation(line: 1081, column: 3, scope: !2603)
!2618 = distinct !DISubprogram(name: "version_etc_arn", scope: !157, file: !157, line: 62, type: !2619, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !153, retainedNodes: !2677)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !2621, !20, !20, !20, !2676, !99}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2623, line: 7, baseType: !2624)
!2623 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2625, line: 49, size: 1728, elements: !2626)
!2625 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2642, !2644, !2645, !2646, !2650, !2651, !2653, !2657, !2660, !2662, !2665, !2668, !2669, !2670, !2671, !2672}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2624, file: !2625, line: 51, baseType: !23, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2624, file: !2625, line: 54, baseType: !10, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2624, file: !2625, line: 55, baseType: !10, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2624, file: !2625, line: 56, baseType: !10, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2624, file: !2625, line: 57, baseType: !10, size: 64, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2624, file: !2625, line: 58, baseType: !10, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2624, file: !2625, line: 59, baseType: !10, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2624, file: !2625, line: 60, baseType: !10, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2624, file: !2625, line: 61, baseType: !10, size: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2624, file: !2625, line: 64, baseType: !10, size: 64, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2624, file: !2625, line: 65, baseType: !10, size: 64, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2624, file: !2625, line: 66, baseType: !10, size: 64, offset: 704)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2624, file: !2625, line: 68, baseType: !2640, size: 64, offset: 768)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2625, line: 36, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2624, file: !2625, line: 70, baseType: !2643, size: 64, offset: 832)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2624, file: !2625, line: 72, baseType: !23, size: 32, offset: 896)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2624, file: !2625, line: 73, baseType: !23, size: 32, offset: 928)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2624, file: !2625, line: 74, baseType: !2647, size: 64, offset: 960)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2648, line: 150, baseType: !2649)
!2648 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2649 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2624, file: !2625, line: 77, baseType: !98, size: 16, offset: 1024)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2624, file: !2625, line: 78, baseType: !2652, size: 8, offset: 1040)
!2652 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2624, file: !2625, line: 79, baseType: !2654, size: 8, offset: 1048)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !2655)
!2655 = !{!2656}
!2656 = !DISubrange(count: 1)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2624, file: !2625, line: 81, baseType: !2658, size: 64, offset: 1088)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2625, line: 43, baseType: null)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2624, file: !2625, line: 89, baseType: !2661, size: 64, offset: 1152)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2648, line: 151, baseType: !2649)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2624, file: !2625, line: 91, baseType: !2663, size: 64, offset: 1216)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2625, line: 37, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2624, file: !2625, line: 92, baseType: !2666, size: 64, offset: 1280)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2625, line: 38, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2624, file: !2625, line: 93, baseType: !2643, size: 64, offset: 1344)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2624, file: !2625, line: 94, baseType: !12, size: 64, offset: 1408)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2624, file: !2625, line: 95, baseType: !99, size: 64, offset: 1472)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2624, file: !2625, line: 96, baseType: !23, size: 32, offset: 1536)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2624, file: !2625, line: 98, baseType: !2673, size: 160, offset: 1568)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !2674)
!2674 = !{!2675}
!2675 = !DISubrange(count: 20)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683}
!2678 = !DILocalVariable(name: "stream", arg: 1, scope: !2618, file: !157, line: 62, type: !2621)
!2679 = !DILocalVariable(name: "command_name", arg: 2, scope: !2618, file: !157, line: 63, type: !20)
!2680 = !DILocalVariable(name: "package", arg: 3, scope: !2618, file: !157, line: 63, type: !20)
!2681 = !DILocalVariable(name: "version", arg: 4, scope: !2618, file: !157, line: 64, type: !20)
!2682 = !DILocalVariable(name: "authors", arg: 5, scope: !2618, file: !157, line: 65, type: !2676)
!2683 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2618, file: !157, line: 65, type: !99)
!2684 = !DILocation(line: 62, column: 24, scope: !2618)
!2685 = !DILocation(line: 63, column: 30, scope: !2618)
!2686 = !DILocation(line: 63, column: 56, scope: !2618)
!2687 = !DILocation(line: 64, column: 30, scope: !2618)
!2688 = !DILocation(line: 65, column: 39, scope: !2618)
!2689 = !DILocation(line: 65, column: 55, scope: !2618)
!2690 = !DILocation(line: 67, column: 7, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2618, file: !157, line: 67, column: 7)
!2692 = !DILocation(line: 67, column: 7, scope: !2618)
!2693 = !DILocation(line: 68, column: 5, scope: !2691)
!2694 = !DILocation(line: 70, column: 5, scope: !2691)
!2695 = !DILocation(line: 84, column: 3, scope: !2618)
!2696 = !DILocation(line: 86, column: 3, scope: !2618)
!2697 = !DILocation(line: 95, column: 3, scope: !2618)
!2698 = !DILocation(line: 99, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2618, file: !157, line: 96, column: 5)
!2700 = !DILocation(line: 102, column: 7, scope: !2699)
!2701 = !DILocation(line: 103, column: 7, scope: !2699)
!2702 = !DILocation(line: 106, column: 7, scope: !2699)
!2703 = !DILocation(line: 107, column: 7, scope: !2699)
!2704 = !DILocation(line: 110, column: 7, scope: !2699)
!2705 = !DILocation(line: 112, column: 7, scope: !2699)
!2706 = !DILocation(line: 117, column: 7, scope: !2699)
!2707 = !DILocation(line: 119, column: 7, scope: !2699)
!2708 = !DILocation(line: 124, column: 7, scope: !2699)
!2709 = !DILocation(line: 126, column: 7, scope: !2699)
!2710 = !DILocation(line: 131, column: 7, scope: !2699)
!2711 = !DILocation(line: 134, column: 7, scope: !2699)
!2712 = !DILocation(line: 139, column: 7, scope: !2699)
!2713 = !DILocation(line: 142, column: 7, scope: !2699)
!2714 = !DILocation(line: 147, column: 7, scope: !2699)
!2715 = !DILocation(line: 151, column: 7, scope: !2699)
!2716 = !DILocation(line: 156, column: 7, scope: !2699)
!2717 = !DILocation(line: 160, column: 7, scope: !2699)
!2718 = !DILocation(line: 167, column: 7, scope: !2699)
!2719 = !DILocation(line: 171, column: 7, scope: !2699)
!2720 = !DILocation(line: 173, column: 1, scope: !2618)
!2721 = distinct !DISubprogram(name: "version_etc_ar", scope: !157, file: !157, line: 180, type: !2722, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !153, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !2621, !20, !20, !20, !2676}
!2724 = !{!2725, !2726, !2727, !2728, !2729, !2730}
!2725 = !DILocalVariable(name: "stream", arg: 1, scope: !2721, file: !157, line: 180, type: !2621)
!2726 = !DILocalVariable(name: "command_name", arg: 2, scope: !2721, file: !157, line: 181, type: !20)
!2727 = !DILocalVariable(name: "package", arg: 3, scope: !2721, file: !157, line: 181, type: !20)
!2728 = !DILocalVariable(name: "version", arg: 4, scope: !2721, file: !157, line: 182, type: !20)
!2729 = !DILocalVariable(name: "authors", arg: 5, scope: !2721, file: !157, line: 182, type: !2676)
!2730 = !DILocalVariable(name: "n_authors", scope: !2721, file: !157, line: 184, type: !99)
!2731 = !DILocation(line: 180, column: 23, scope: !2721)
!2732 = !DILocation(line: 181, column: 29, scope: !2721)
!2733 = !DILocation(line: 181, column: 55, scope: !2721)
!2734 = !DILocation(line: 182, column: 29, scope: !2721)
!2735 = !DILocation(line: 182, column: 59, scope: !2721)
!2736 = !DILocation(line: 184, column: 10, scope: !2721)
!2737 = !DILocation(line: 186, column: 8, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2721, file: !157, line: 186, column: 3)
!2739 = !DILocation(line: 0, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2738, file: !157, line: 186, column: 3)
!2741 = !DILocation(line: 186, column: 23, scope: !2740)
!2742 = !DILocation(line: 186, column: 3, scope: !2738)
!2743 = !DILocation(line: 186, column: 52, scope: !2740)
!2744 = distinct !{!2744, !2742, !2745}
!2745 = !DILocation(line: 187, column: 5, scope: !2738)
!2746 = !DILocation(line: 188, column: 3, scope: !2721)
!2747 = !DILocation(line: 189, column: 1, scope: !2721)
!2748 = distinct !DISubprogram(name: "version_etc_va", scope: !157, file: !157, line: 196, type: !2749, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !153, retainedNodes: !2758)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !2621, !20, !20, !20, !2751}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !154, line: 189, size: 192, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2752, file: !154, line: 189, baseType: !6, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2752, file: !154, line: 189, baseType: !6, size: 32, offset: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2752, file: !154, line: 189, baseType: !12, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2752, file: !154, line: 189, baseType: !12, size: 64, offset: 128)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2759 = !DILocalVariable(name: "stream", arg: 1, scope: !2748, file: !157, line: 196, type: !2621)
!2760 = !DILocalVariable(name: "command_name", arg: 2, scope: !2748, file: !157, line: 197, type: !20)
!2761 = !DILocalVariable(name: "package", arg: 3, scope: !2748, file: !157, line: 197, type: !20)
!2762 = !DILocalVariable(name: "version", arg: 4, scope: !2748, file: !157, line: 198, type: !20)
!2763 = !DILocalVariable(name: "authors", arg: 5, scope: !2748, file: !157, line: 198, type: !2751)
!2764 = !DILocalVariable(name: "n_authors", scope: !2748, file: !157, line: 200, type: !99)
!2765 = !DILocalVariable(name: "authtab", scope: !2748, file: !157, line: 201, type: !2766)
!2766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 640, elements: !108)
!2767 = !DILocation(line: 196, column: 23, scope: !2748)
!2768 = !DILocation(line: 197, column: 29, scope: !2748)
!2769 = !DILocation(line: 197, column: 55, scope: !2748)
!2770 = !DILocation(line: 198, column: 29, scope: !2748)
!2771 = !DILocation(line: 198, column: 46, scope: !2748)
!2772 = !DILocation(line: 201, column: 3, scope: !2748)
!2773 = !DILocation(line: 201, column: 15, scope: !2748)
!2774 = !DILocation(line: 200, column: 10, scope: !2748)
!2775 = !DILocation(line: 205, column: 35, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !157, line: 203, column: 3)
!2777 = distinct !DILexicalBlock(scope: !2748, file: !157, line: 203, column: 3)
!2778 = !DILocation(line: 205, column: 14, scope: !2776)
!2779 = !DILocation(line: 205, column: 33, scope: !2776)
!2780 = !DILocation(line: 205, column: 67, scope: !2776)
!2781 = !DILocation(line: 203, column: 3, scope: !2777)
!2782 = !DILocation(line: 0, scope: !2776)
!2783 = !DILocation(line: 208, column: 3, scope: !2748)
!2784 = !DILocation(line: 210, column: 1, scope: !2748)
!2785 = distinct !DISubprogram(name: "version_etc", scope: !157, file: !157, line: 227, type: !2786, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !153, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{null, !2621, !20, !20, !20, null}
!2788 = !{!2789, !2790, !2791, !2792, !2793}
!2789 = !DILocalVariable(name: "stream", arg: 1, scope: !2785, file: !157, line: 227, type: !2621)
!2790 = !DILocalVariable(name: "command_name", arg: 2, scope: !2785, file: !157, line: 228, type: !20)
!2791 = !DILocalVariable(name: "package", arg: 3, scope: !2785, file: !157, line: 228, type: !20)
!2792 = !DILocalVariable(name: "version", arg: 4, scope: !2785, file: !157, line: 229, type: !20)
!2793 = !DILocalVariable(name: "authors", scope: !2785, file: !157, line: 231, type: !2794)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2795, line: 52, baseType: !2796)
!2795 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2797, line: 48, baseType: !2798)
!2797 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !154, line: 231, baseType: !2799)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2752, size: 192, elements: !2655)
!2800 = !DILocation(line: 227, column: 20, scope: !2785)
!2801 = !DILocation(line: 228, column: 26, scope: !2785)
!2802 = !DILocation(line: 228, column: 52, scope: !2785)
!2803 = !DILocation(line: 229, column: 26, scope: !2785)
!2804 = !DILocation(line: 231, column: 3, scope: !2785)
!2805 = !DILocation(line: 231, column: 11, scope: !2785)
!2806 = !DILocation(line: 233, column: 3, scope: !2785)
!2807 = !DILocation(line: 234, column: 3, scope: !2785)
!2808 = !DILocation(line: 235, column: 3, scope: !2785)
!2809 = !DILocation(line: 236, column: 1, scope: !2785)
!2810 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !157, file: !157, line: 239, type: !804, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !153, retainedNodes: !33)
!2811 = !DILocation(line: 245, column: 3, scope: !2810)
!2812 = !DILocation(line: 251, column: 3, scope: !2810)
!2813 = !DILocation(line: 256, column: 3, scope: !2810)
!2814 = !DILocation(line: 258, column: 1, scope: !2810)
!2815 = distinct !DISubprogram(name: "xnmalloc", scope: !165, file: !165, line: 99, type: !2816, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!12, !99, !99}
!2818 = !{!2819, !2820}
!2819 = !DILocalVariable(name: "n", arg: 1, scope: !2815, file: !165, line: 99, type: !99)
!2820 = !DILocalVariable(name: "s", arg: 2, scope: !2815, file: !165, line: 99, type: !99)
!2821 = !DILocation(line: 99, column: 18, scope: !2815)
!2822 = !DILocation(line: 99, column: 28, scope: !2815)
!2823 = !DILocation(line: 101, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2815, file: !165, line: 101, column: 7)
!2825 = !DILocation(line: 101, column: 7, scope: !2815)
!2826 = !DILocation(line: 102, column: 5, scope: !2824)
!2827 = !DILocation(line: 103, column: 21, scope: !2815)
!2828 = !DILocalVariable(name: "n", arg: 1, scope: !2829, file: !2830, line: 39, type: !99)
!2829 = distinct !DISubprogram(name: "xmalloc", scope: !2830, file: !2830, line: 39, type: !2831, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !2833)
!2830 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!12, !99}
!2833 = !{!2828, !2834}
!2834 = !DILocalVariable(name: "p", scope: !2829, file: !2830, line: 41, type: !12)
!2835 = !DILocation(line: 39, column: 17, scope: !2829, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 103, column: 10, scope: !2815)
!2837 = !DILocation(line: 41, column: 13, scope: !2829, inlinedAt: !2836)
!2838 = !DILocation(line: 41, column: 9, scope: !2829, inlinedAt: !2836)
!2839 = !DILocation(line: 42, column: 8, scope: !2840, inlinedAt: !2836)
!2840 = distinct !DILexicalBlock(scope: !2829, file: !2830, line: 42, column: 7)
!2841 = !DILocation(line: 42, column: 15, scope: !2840, inlinedAt: !2836)
!2842 = !DILocation(line: 42, column: 10, scope: !2840, inlinedAt: !2836)
!2843 = !DILocation(line: 43, column: 5, scope: !2840, inlinedAt: !2836)
!2844 = !DILocation(line: 103, column: 3, scope: !2815)
!2845 = !DILocation(line: 39, column: 17, scope: !2829)
!2846 = !DILocation(line: 41, column: 13, scope: !2829)
!2847 = !DILocation(line: 41, column: 9, scope: !2829)
!2848 = !DILocation(line: 42, column: 8, scope: !2840)
!2849 = !DILocation(line: 42, column: 15, scope: !2840)
!2850 = !DILocation(line: 42, column: 10, scope: !2840)
!2851 = !DILocation(line: 43, column: 5, scope: !2840)
!2852 = !DILocation(line: 44, column: 3, scope: !2829)
!2853 = distinct !DISubprogram(name: "xnrealloc", scope: !165, file: !165, line: 112, type: !2854, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!12, !12, !99, !99}
!2856 = !{!2857, !2858, !2859}
!2857 = !DILocalVariable(name: "p", arg: 1, scope: !2853, file: !165, line: 112, type: !12)
!2858 = !DILocalVariable(name: "n", arg: 2, scope: !2853, file: !165, line: 112, type: !99)
!2859 = !DILocalVariable(name: "s", arg: 3, scope: !2853, file: !165, line: 112, type: !99)
!2860 = !DILocation(line: 112, column: 18, scope: !2853)
!2861 = !DILocation(line: 112, column: 28, scope: !2853)
!2862 = !DILocation(line: 112, column: 38, scope: !2853)
!2863 = !DILocation(line: 114, column: 7, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2853, file: !165, line: 114, column: 7)
!2865 = !DILocation(line: 114, column: 7, scope: !2853)
!2866 = !DILocation(line: 115, column: 5, scope: !2864)
!2867 = !DILocation(line: 116, column: 25, scope: !2853)
!2868 = !DILocalVariable(name: "p", arg: 1, scope: !2869, file: !2830, line: 51, type: !12)
!2869 = distinct !DISubprogram(name: "xrealloc", scope: !2830, file: !2830, line: 51, type: !2870, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!12, !12, !99}
!2872 = !{!2868, !2873}
!2873 = !DILocalVariable(name: "n", arg: 2, scope: !2869, file: !2830, line: 51, type: !99)
!2874 = !DILocation(line: 51, column: 17, scope: !2869, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 116, column: 10, scope: !2853)
!2876 = !DILocation(line: 51, column: 27, scope: !2869, inlinedAt: !2875)
!2877 = !DILocation(line: 53, column: 8, scope: !2878, inlinedAt: !2875)
!2878 = distinct !DILexicalBlock(scope: !2869, file: !2830, line: 53, column: 7)
!2879 = !DILocation(line: 53, column: 13, scope: !2878, inlinedAt: !2875)
!2880 = !DILocation(line: 53, column: 10, scope: !2878, inlinedAt: !2875)
!2881 = !DILocation(line: 57, column: 7, scope: !2882, inlinedAt: !2875)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !2830, line: 54, column: 5)
!2883 = !DILocation(line: 58, column: 7, scope: !2882, inlinedAt: !2875)
!2884 = !DILocation(line: 61, column: 7, scope: !2869, inlinedAt: !2875)
!2885 = !DILocation(line: 62, column: 8, scope: !2886, inlinedAt: !2875)
!2886 = distinct !DILexicalBlock(scope: !2869, file: !2830, line: 62, column: 7)
!2887 = !DILocation(line: 62, column: 13, scope: !2886, inlinedAt: !2875)
!2888 = !DILocation(line: 62, column: 10, scope: !2886, inlinedAt: !2875)
!2889 = !DILocation(line: 63, column: 5, scope: !2886, inlinedAt: !2875)
!2890 = !DILocation(line: 0, scope: !2869, inlinedAt: !2875)
!2891 = !DILocation(line: 116, column: 3, scope: !2853)
!2892 = !DILocation(line: 51, column: 17, scope: !2869)
!2893 = !DILocation(line: 51, column: 27, scope: !2869)
!2894 = !DILocation(line: 53, column: 8, scope: !2878)
!2895 = !DILocation(line: 53, column: 13, scope: !2878)
!2896 = !DILocation(line: 53, column: 10, scope: !2878)
!2897 = !DILocation(line: 57, column: 7, scope: !2882)
!2898 = !DILocation(line: 58, column: 7, scope: !2882)
!2899 = !DILocation(line: 61, column: 7, scope: !2869)
!2900 = !DILocation(line: 62, column: 8, scope: !2886)
!2901 = !DILocation(line: 62, column: 13, scope: !2886)
!2902 = !DILocation(line: 62, column: 10, scope: !2886)
!2903 = !DILocation(line: 63, column: 5, scope: !2886)
!2904 = !DILocation(line: 0, scope: !2869)
!2905 = !DILocation(line: 65, column: 1, scope: !2869)
!2906 = !DILocation(line: 174, column: 19, scope: !166)
!2907 = !DILocation(line: 174, column: 30, scope: !166)
!2908 = !DILocation(line: 174, column: 41, scope: !166)
!2909 = !DILocation(line: 176, column: 14, scope: !166)
!2910 = !DILocation(line: 176, column: 10, scope: !166)
!2911 = !DILocation(line: 178, column: 9, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !166, file: !165, line: 178, column: 7)
!2913 = !DILocation(line: 178, column: 7, scope: !166)
!2914 = !DILocation(line: 180, column: 13, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !165, line: 180, column: 11)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !165, line: 179, column: 5)
!2917 = !DILocation(line: 180, column: 11, scope: !2916)
!2918 = !DILocation(line: 188, column: 30, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2915, file: !165, line: 181, column: 9)
!2920 = !DILocation(line: 189, column: 16, scope: !2919)
!2921 = !DILocation(line: 189, column: 13, scope: !2919)
!2922 = !DILocation(line: 190, column: 9, scope: !2919)
!2923 = !DILocation(line: 0, scope: !2919)
!2924 = !DILocation(line: 191, column: 11, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2916, file: !165, line: 191, column: 11)
!2926 = !DILocation(line: 191, column: 11, scope: !2916)
!2927 = !DILocation(line: 206, column: 7, scope: !166)
!2928 = !DILocation(line: 207, column: 25, scope: !166)
!2929 = !DILocation(line: 51, column: 17, scope: !2869, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 207, column: 10, scope: !166)
!2931 = !DILocation(line: 51, column: 27, scope: !2869, inlinedAt: !2930)
!2932 = !DILocation(line: 53, column: 10, scope: !2878, inlinedAt: !2930)
!2933 = !DILocation(line: 192, column: 9, scope: !2925)
!2934 = !DILocation(line: 200, column: 69, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !165, line: 200, column: 11)
!2936 = distinct !DILexicalBlock(scope: !2912, file: !165, line: 195, column: 5)
!2937 = !DILocation(line: 201, column: 11, scope: !2935)
!2938 = !DILocation(line: 200, column: 11, scope: !2936)
!2939 = !DILocation(line: 202, column: 9, scope: !2935)
!2940 = !DILocation(line: 203, column: 14, scope: !2936)
!2941 = !DILocation(line: 203, column: 18, scope: !2936)
!2942 = !DILocation(line: 203, column: 9, scope: !2936)
!2943 = !DILocation(line: 53, column: 8, scope: !2878, inlinedAt: !2930)
!2944 = !DILocation(line: 57, column: 7, scope: !2882, inlinedAt: !2930)
!2945 = !DILocation(line: 58, column: 7, scope: !2882, inlinedAt: !2930)
!2946 = !DILocation(line: 61, column: 7, scope: !2869, inlinedAt: !2930)
!2947 = !DILocation(line: 62, column: 8, scope: !2886, inlinedAt: !2930)
!2948 = !DILocation(line: 62, column: 13, scope: !2886, inlinedAt: !2930)
!2949 = !DILocation(line: 62, column: 10, scope: !2886, inlinedAt: !2930)
!2950 = !DILocation(line: 63, column: 5, scope: !2886, inlinedAt: !2930)
!2951 = !DILocation(line: 0, scope: !2869, inlinedAt: !2930)
!2952 = !DILocation(line: 207, column: 3, scope: !166)
!2953 = distinct !DISubprogram(name: "xcharalloc", scope: !165, file: !165, line: 216, type: !1902, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !2954)
!2954 = !{!2955}
!2955 = !DILocalVariable(name: "n", arg: 1, scope: !2953, file: !165, line: 216, type: !99)
!2956 = !DILocation(line: 216, column: 20, scope: !2953)
!2957 = !DILocation(line: 39, column: 17, scope: !2829, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 218, column: 10, scope: !2953)
!2959 = !DILocation(line: 41, column: 13, scope: !2829, inlinedAt: !2958)
!2960 = !DILocation(line: 41, column: 9, scope: !2829, inlinedAt: !2958)
!2961 = !DILocation(line: 42, column: 8, scope: !2840, inlinedAt: !2958)
!2962 = !DILocation(line: 42, column: 15, scope: !2840, inlinedAt: !2958)
!2963 = !DILocation(line: 42, column: 10, scope: !2840, inlinedAt: !2958)
!2964 = !DILocation(line: 43, column: 5, scope: !2840, inlinedAt: !2958)
!2965 = !DILocation(line: 218, column: 3, scope: !2953)
!2966 = distinct !DISubprogram(name: "x2realloc", scope: !2830, file: !2830, line: 74, type: !2967, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!12, !12, !169}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "p", arg: 1, scope: !2966, file: !2830, line: 74, type: !12)
!2971 = !DILocalVariable(name: "pn", arg: 2, scope: !2966, file: !2830, line: 74, type: !169)
!2972 = !DILocation(line: 74, column: 18, scope: !2966)
!2973 = !DILocation(line: 74, column: 29, scope: !2966)
!2974 = !DILocation(line: 174, column: 19, scope: !166, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 76, column: 10, scope: !2966)
!2976 = !DILocation(line: 174, column: 30, scope: !166, inlinedAt: !2975)
!2977 = !DILocation(line: 174, column: 41, scope: !166, inlinedAt: !2975)
!2978 = !DILocation(line: 176, column: 14, scope: !166, inlinedAt: !2975)
!2979 = !DILocation(line: 176, column: 10, scope: !166, inlinedAt: !2975)
!2980 = !DILocation(line: 178, column: 9, scope: !2912, inlinedAt: !2975)
!2981 = !DILocation(line: 178, column: 7, scope: !166, inlinedAt: !2975)
!2982 = !DILocation(line: 180, column: 13, scope: !2915, inlinedAt: !2975)
!2983 = !DILocation(line: 180, column: 11, scope: !2916, inlinedAt: !2975)
!2984 = !DILocation(line: 191, column: 11, scope: !2925, inlinedAt: !2975)
!2985 = !DILocation(line: 191, column: 11, scope: !2916, inlinedAt: !2975)
!2986 = !DILocation(line: 206, column: 7, scope: !166, inlinedAt: !2975)
!2987 = !DILocation(line: 51, column: 17, scope: !2869, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 207, column: 10, scope: !166, inlinedAt: !2975)
!2989 = !DILocation(line: 51, column: 27, scope: !2869, inlinedAt: !2988)
!2990 = !DILocation(line: 53, column: 10, scope: !2878, inlinedAt: !2988)
!2991 = !DILocation(line: 192, column: 9, scope: !2925, inlinedAt: !2975)
!2992 = !DILocation(line: 201, column: 11, scope: !2935, inlinedAt: !2975)
!2993 = !DILocation(line: 200, column: 11, scope: !2936, inlinedAt: !2975)
!2994 = !DILocation(line: 202, column: 9, scope: !2935, inlinedAt: !2975)
!2995 = !DILocation(line: 203, column: 14, scope: !2936, inlinedAt: !2975)
!2996 = !DILocation(line: 203, column: 18, scope: !2936, inlinedAt: !2975)
!2997 = !DILocation(line: 203, column: 9, scope: !2936, inlinedAt: !2975)
!2998 = !DILocation(line: 53, column: 8, scope: !2878, inlinedAt: !2988)
!2999 = !DILocation(line: 57, column: 7, scope: !2882, inlinedAt: !2988)
!3000 = !DILocation(line: 58, column: 7, scope: !2882, inlinedAt: !2988)
!3001 = !DILocation(line: 61, column: 7, scope: !2869, inlinedAt: !2988)
!3002 = !DILocation(line: 62, column: 8, scope: !2886, inlinedAt: !2988)
!3003 = !DILocation(line: 62, column: 13, scope: !2886, inlinedAt: !2988)
!3004 = !DILocation(line: 62, column: 10, scope: !2886, inlinedAt: !2988)
!3005 = !DILocation(line: 63, column: 5, scope: !2886, inlinedAt: !2988)
!3006 = !DILocation(line: 0, scope: !2869, inlinedAt: !2988)
!3007 = !DILocation(line: 76, column: 3, scope: !2966)
!3008 = distinct !DISubprogram(name: "xzalloc", scope: !2830, file: !2830, line: 84, type: !2831, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !3009)
!3009 = !{!3010}
!3010 = !DILocalVariable(name: "s", arg: 1, scope: !3008, file: !2830, line: 84, type: !99)
!3011 = !DILocation(line: 84, column: 17, scope: !3008)
!3012 = !DILocation(line: 39, column: 17, scope: !2829, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 86, column: 18, scope: !3008)
!3014 = !DILocation(line: 41, column: 13, scope: !2829, inlinedAt: !3013)
!3015 = !DILocation(line: 41, column: 9, scope: !2829, inlinedAt: !3013)
!3016 = !DILocation(line: 42, column: 8, scope: !2840, inlinedAt: !3013)
!3017 = !DILocation(line: 42, column: 15, scope: !2840, inlinedAt: !3013)
!3018 = !DILocation(line: 42, column: 10, scope: !2840, inlinedAt: !3013)
!3019 = !DILocation(line: 43, column: 5, scope: !2840, inlinedAt: !3013)
!3020 = !DILocation(line: 86, column: 10, scope: !3008)
!3021 = !DILocation(line: 86, column: 3, scope: !3008)
!3022 = distinct !DISubprogram(name: "xcalloc", scope: !2830, file: !2830, line: 93, type: !2816, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !3023)
!3023 = !{!3024, !3025, !3026}
!3024 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !2830, line: 93, type: !99)
!3025 = !DILocalVariable(name: "s", arg: 2, scope: !3022, file: !2830, line: 93, type: !99)
!3026 = !DILocalVariable(name: "p", scope: !3022, file: !2830, line: 95, type: !12)
!3027 = !DILocation(line: 93, column: 17, scope: !3022)
!3028 = !DILocation(line: 93, column: 27, scope: !3022)
!3029 = !DILocation(line: 100, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3022, file: !2830, line: 100, column: 7)
!3031 = !DILocation(line: 101, column: 7, scope: !3030)
!3032 = !DILocation(line: 101, column: 18, scope: !3030)
!3033 = !DILocation(line: 95, column: 9, scope: !3022)
!3034 = !DILocation(line: 101, column: 16, scope: !3030)
!3035 = !DILocation(line: 100, column: 7, scope: !3022)
!3036 = !DILocation(line: 102, column: 5, scope: !3030)
!3037 = !DILocation(line: 103, column: 3, scope: !3022)
!3038 = distinct !DISubprogram(name: "xmemdup", scope: !2830, file: !2830, line: 111, type: !3039, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !3043)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!12, !3041, !99}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "p", arg: 1, scope: !3038, file: !2830, line: 111, type: !3041)
!3045 = !DILocalVariable(name: "s", arg: 2, scope: !3038, file: !2830, line: 111, type: !99)
!3046 = !DILocation(line: 111, column: 22, scope: !3038)
!3047 = !DILocation(line: 111, column: 32, scope: !3038)
!3048 = !DILocation(line: 39, column: 17, scope: !2829, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 113, column: 18, scope: !3038)
!3050 = !DILocation(line: 41, column: 13, scope: !2829, inlinedAt: !3049)
!3051 = !DILocation(line: 41, column: 9, scope: !2829, inlinedAt: !3049)
!3052 = !DILocation(line: 42, column: 8, scope: !2840, inlinedAt: !3049)
!3053 = !DILocation(line: 42, column: 15, scope: !2840, inlinedAt: !3049)
!3054 = !DILocation(line: 42, column: 10, scope: !2840, inlinedAt: !3049)
!3055 = !DILocation(line: 43, column: 5, scope: !2840, inlinedAt: !3049)
!3056 = !DILocation(line: 113, column: 10, scope: !3038)
!3057 = !DILocation(line: 113, column: 3, scope: !3038)
!3058 = distinct !DISubprogram(name: "xstrdup", scope: !2830, file: !2830, line: 119, type: !2108, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !161, retainedNodes: !3059)
!3059 = !{!3060}
!3060 = !DILocalVariable(name: "string", arg: 1, scope: !3058, file: !2830, line: 119, type: !20)
!3061 = !DILocation(line: 119, column: 22, scope: !3058)
!3062 = !DILocation(line: 121, column: 27, scope: !3058)
!3063 = !DILocation(line: 121, column: 43, scope: !3058)
!3064 = !DILocation(line: 111, column: 22, scope: !3038, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 121, column: 10, scope: !3058)
!3066 = !DILocation(line: 111, column: 32, scope: !3038, inlinedAt: !3065)
!3067 = !DILocation(line: 39, column: 17, scope: !2829, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 113, column: 18, scope: !3038, inlinedAt: !3065)
!3069 = !DILocation(line: 41, column: 13, scope: !2829, inlinedAt: !3068)
!3070 = !DILocation(line: 41, column: 9, scope: !2829, inlinedAt: !3068)
!3071 = !DILocation(line: 42, column: 8, scope: !2840, inlinedAt: !3068)
!3072 = !DILocation(line: 42, column: 15, scope: !2840, inlinedAt: !3068)
!3073 = !DILocation(line: 42, column: 10, scope: !2840, inlinedAt: !3068)
!3074 = !DILocation(line: 43, column: 5, scope: !2840, inlinedAt: !3068)
!3075 = !DILocation(line: 113, column: 10, scope: !3038, inlinedAt: !3065)
!3076 = !DILocation(line: 121, column: 3, scope: !3058)
!3077 = distinct !DISubprogram(name: "xalloc_die", scope: !3078, file: !3078, line: 32, type: !804, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !178, retainedNodes: !33)
!3078 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3079 = !DILocation(line: 34, column: 10, scope: !3077)
!3080 = !DILocation(line: 34, column: 33, scope: !3077)
!3081 = !DILocation(line: 34, column: 3, scope: !3077)
!3082 = !DILocation(line: 40, column: 3, scope: !3077)
!3083 = distinct !DISubprogram(name: "rpl_calloc", scope: !3084, file: !3084, line: 42, type: !2816, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !180, retainedNodes: !3085)
!3084 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3085 = !{!3086, !3087, !3088, !3089}
!3086 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !3084, line: 42, type: !99)
!3087 = !DILocalVariable(name: "s", arg: 2, scope: !3083, file: !3084, line: 42, type: !99)
!3088 = !DILocalVariable(name: "result", scope: !3083, file: !3084, line: 44, type: !12)
!3089 = !DILocalVariable(name: "bytes", scope: !3090, file: !3084, line: 56, type: !99)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !3084, line: 53, column: 5)
!3091 = distinct !DILexicalBlock(scope: !3083, file: !3084, line: 47, column: 7)
!3092 = !DILocation(line: 42, column: 20, scope: !3083)
!3093 = !DILocation(line: 42, column: 30, scope: !3083)
!3094 = !DILocation(line: 47, column: 9, scope: !3091)
!3095 = !DILocation(line: 47, column: 19, scope: !3091)
!3096 = !DILocation(line: 47, column: 14, scope: !3091)
!3097 = !DILocation(line: 56, column: 24, scope: !3090)
!3098 = !DILocation(line: 56, column: 14, scope: !3090)
!3099 = !DILocation(line: 57, column: 17, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3090, file: !3084, line: 57, column: 11)
!3101 = !DILocation(line: 57, column: 21, scope: !3100)
!3102 = !DILocation(line: 57, column: 11, scope: !3090)
!3103 = !DILocation(line: 59, column: 11, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !3084, line: 58, column: 9)
!3105 = !DILocation(line: 59, column: 17, scope: !3104)
!3106 = !DILocation(line: 65, column: 12, scope: !3083)
!3107 = !DILocation(line: 44, column: 9, scope: !3083)
!3108 = !DILocation(line: 72, column: 3, scope: !3083)
!3109 = !DILocation(line: 0, scope: !3104)
!3110 = !DILocation(line: 73, column: 1, scope: !3083)
!3111 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3112, file: !3112, line: 385, type: !3113, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !182, retainedNodes: !3127)
!3112 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!99, !3115, !20, !99, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1067, line: 6, baseType: !3118)
!3118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1069, line: 21, baseType: !3119)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1069, line: 13, size: 64, elements: !3120)
!3120 = !{!3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3119, file: !1069, line: 15, baseType: !23, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3119, file: !1069, line: 20, baseType: !3123, size: 32, offset: 32)
!3123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3119, file: !1069, line: 16, size: 32, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3123, file: !1069, line: 18, baseType: !6, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3123, file: !1069, line: 19, baseType: !1078, size: 32)
!3127 = !{!3128, !3129, !3130, !3131, !3132, !3133, !3134}
!3128 = !DILocalVariable(name: "pwc", arg: 1, scope: !3111, file: !3112, line: 385, type: !3115)
!3129 = !DILocalVariable(name: "s", arg: 2, scope: !3111, file: !3112, line: 385, type: !20)
!3130 = !DILocalVariable(name: "n", arg: 3, scope: !3111, file: !3112, line: 385, type: !99)
!3131 = !DILocalVariable(name: "ps", arg: 4, scope: !3111, file: !3112, line: 385, type: !3116)
!3132 = !DILocalVariable(name: "ret", scope: !3111, file: !3112, line: 387, type: !99)
!3133 = !DILocalVariable(name: "wc", scope: !3111, file: !3112, line: 388, type: !1081)
!3134 = !DILocalVariable(name: "uc", scope: !3135, file: !3112, line: 449, type: !927)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !3112, line: 448, column: 5)
!3136 = distinct !DILexicalBlock(scope: !3111, file: !3112, line: 447, column: 7)
!3137 = !DILocation(line: 385, column: 23, scope: !3111)
!3138 = !DILocation(line: 385, column: 40, scope: !3111)
!3139 = !DILocation(line: 385, column: 50, scope: !3111)
!3140 = !DILocation(line: 385, column: 64, scope: !3111)
!3141 = !DILocation(line: 388, column: 3, scope: !3111)
!3142 = !DILocation(line: 404, column: 9, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3111, file: !3112, line: 404, column: 7)
!3144 = !DILocation(line: 404, column: 7, scope: !3111)
!3145 = !DILocation(line: 439, column: 9, scope: !3111)
!3146 = !DILocation(line: 387, column: 10, scope: !3111)
!3147 = !DILocation(line: 447, column: 19, scope: !3136)
!3148 = !DILocation(line: 447, column: 31, scope: !3136)
!3149 = !DILocation(line: 447, column: 26, scope: !3136)
!3150 = !DILocation(line: 447, column: 41, scope: !3136)
!3151 = !DILocation(line: 447, column: 7, scope: !3111)
!3152 = !DILocation(line: 449, column: 26, scope: !3135)
!3153 = !DILocation(line: 449, column: 21, scope: !3135)
!3154 = !DILocation(line: 450, column: 14, scope: !3135)
!3155 = !DILocation(line: 450, column: 12, scope: !3135)
!3156 = !DILocation(line: 0, scope: !3135)
!3157 = !DILocation(line: 456, column: 1, scope: !3111)
!3158 = distinct !DISubprogram(name: "close_stream", scope: !3159, file: !3159, line: 56, type: !3160, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3196)
!3159 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!23, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2623, line: 7, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2625, line: 49, size: 1728, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3164, file: !2625, line: 51, baseType: !23, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3164, file: !2625, line: 54, baseType: !10, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3164, file: !2625, line: 55, baseType: !10, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3164, file: !2625, line: 56, baseType: !10, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3164, file: !2625, line: 57, baseType: !10, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3164, file: !2625, line: 58, baseType: !10, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3164, file: !2625, line: 59, baseType: !10, size: 64, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3164, file: !2625, line: 60, baseType: !10, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3164, file: !2625, line: 61, baseType: !10, size: 64, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3164, file: !2625, line: 64, baseType: !10, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3164, file: !2625, line: 65, baseType: !10, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3164, file: !2625, line: 66, baseType: !10, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3164, file: !2625, line: 68, baseType: !2640, size: 64, offset: 768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3164, file: !2625, line: 70, baseType: !3180, size: 64, offset: 832)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3164, file: !2625, line: 72, baseType: !23, size: 32, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3164, file: !2625, line: 73, baseType: !23, size: 32, offset: 928)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3164, file: !2625, line: 74, baseType: !2647, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3164, file: !2625, line: 77, baseType: !98, size: 16, offset: 1024)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3164, file: !2625, line: 78, baseType: !2652, size: 8, offset: 1040)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3164, file: !2625, line: 79, baseType: !2654, size: 8, offset: 1048)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3164, file: !2625, line: 81, baseType: !2658, size: 64, offset: 1088)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3164, file: !2625, line: 89, baseType: !2661, size: 64, offset: 1152)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3164, file: !2625, line: 91, baseType: !2663, size: 64, offset: 1216)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3164, file: !2625, line: 92, baseType: !2666, size: 64, offset: 1280)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3164, file: !2625, line: 93, baseType: !3180, size: 64, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3164, file: !2625, line: 94, baseType: !12, size: 64, offset: 1408)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3164, file: !2625, line: 95, baseType: !99, size: 64, offset: 1472)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3164, file: !2625, line: 96, baseType: !23, size: 32, offset: 1536)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3164, file: !2625, line: 98, baseType: !2673, size: 160, offset: 1568)
!3196 = !{!3197, !3198, !3200, !3201}
!3197 = !DILocalVariable(name: "stream", arg: 1, scope: !3158, file: !3159, line: 56, type: !3162)
!3198 = !DILocalVariable(name: "some_pending", scope: !3158, file: !3159, line: 58, type: !3199)
!3199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3200 = !DILocalVariable(name: "prev_fail", scope: !3158, file: !3159, line: 59, type: !3199)
!3201 = !DILocalVariable(name: "fclose_fail", scope: !3158, file: !3159, line: 60, type: !3199)
!3202 = !DILocation(line: 56, column: 21, scope: !3158)
!3203 = !DILocation(line: 58, column: 30, scope: !3158)
!3204 = !DILocalVariable(name: "__stream", arg: 1, scope: !3205, file: !3206, line: 135, type: !3162)
!3205 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3206, file: !3206, line: 135, type: !3160, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3207)
!3206 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3207 = !{!3204}
!3208 = !DILocation(line: 135, column: 1, scope: !3205, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 59, column: 27, scope: !3158)
!3210 = !DILocation(line: 137, column: 10, scope: !3205, inlinedAt: !3209)
!3211 = !{!3212, !704, i64 0}
!3212 = !{!"_IO_FILE", !704, i64 0, !624, i64 8, !624, i64 16, !624, i64 24, !624, i64 32, !624, i64 40, !624, i64 48, !624, i64 56, !624, i64 64, !624, i64 72, !624, i64 80, !624, i64 88, !624, i64 96, !624, i64 104, !704, i64 112, !704, i64 116, !1947, i64 120, !1321, i64 128, !625, i64 130, !625, i64 131, !624, i64 136, !1947, i64 144, !624, i64 152, !624, i64 160, !624, i64 168, !624, i64 176, !1947, i64 184, !704, i64 192, !625, i64 196}
!3213 = !DILocation(line: 59, column: 43, scope: !3158)
!3214 = !DILocation(line: 60, column: 29, scope: !3158)
!3215 = !DILocation(line: 60, column: 45, scope: !3158)
!3216 = !DILocation(line: 70, column: 17, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3158, file: !3159, line: 70, column: 7)
!3218 = !DILocation(line: 58, column: 50, scope: !3158)
!3219 = !DILocation(line: 70, column: 33, scope: !3217)
!3220 = !DILocation(line: 70, column: 53, scope: !3217)
!3221 = !DILocation(line: 70, column: 59, scope: !3217)
!3222 = !DILocation(line: 70, column: 7, scope: !3158)
!3223 = !DILocation(line: 72, column: 11, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3217, file: !3159, line: 71, column: 5)
!3225 = !DILocation(line: 73, column: 9, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3224, file: !3159, line: 72, column: 11)
!3227 = !DILocation(line: 73, column: 15, scope: !3226)
!3228 = !DILocation(line: 0, scope: !3158)
!3229 = !DILocation(line: 78, column: 1, scope: !3158)
!3230 = distinct !DISubprogram(name: "hard_locale", scope: !3231, file: !3231, line: 38, type: !3232, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !3234)
!3231 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!43, !23}
!3234 = !{!3235, !3236, !3237}
!3235 = !DILocalVariable(name: "category", arg: 1, scope: !3230, file: !3231, line: 38, type: !23)
!3236 = !DILocalVariable(name: "hard", scope: !3230, file: !3231, line: 40, type: !43)
!3237 = !DILocalVariable(name: "p", scope: !3230, file: !3231, line: 41, type: !20)
!3238 = !DILocation(line: 38, column: 18, scope: !3230)
!3239 = !DILocation(line: 40, column: 8, scope: !3230)
!3240 = !DILocation(line: 41, column: 19, scope: !3230)
!3241 = !DILocation(line: 41, column: 15, scope: !3230)
!3242 = !DILocation(line: 43, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3230, file: !3231, line: 43, column: 7)
!3244 = !DILocation(line: 43, column: 7, scope: !3230)
!3245 = !DILocation(line: 47, column: 15, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !3231, line: 47, column: 15)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !3231, line: 46, column: 9)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !3231, line: 45, column: 11)
!3249 = distinct !DILexicalBlock(scope: !3243, file: !3231, line: 44, column: 5)
!3250 = !DILocation(line: 47, column: 31, scope: !3246)
!3251 = !DILocation(line: 47, column: 36, scope: !3246)
!3252 = !DILocation(line: 47, column: 39, scope: !3246)
!3253 = !DILocation(line: 47, column: 59, scope: !3246)
!3254 = !DILocation(line: 47, column: 15, scope: !3247)
!3255 = !DILocation(line: 48, column: 13, scope: !3246)
!3256 = !DILocation(line: 71, column: 3, scope: !3230)
!3257 = distinct !DISubprogram(name: "locale_charset", scope: !3258, file: !3258, line: 687, type: !3259, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !189, retainedNodes: !3261)
!3258 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!20}
!3261 = !{!3262}
!3262 = !DILocalVariable(name: "codeset", scope: !3257, file: !3258, line: 689, type: !20)
!3263 = !DILocation(line: 696, column: 13, scope: !3257)
!3264 = !DILocation(line: 689, column: 15, scope: !3257)
!3265 = !DILocation(line: 754, column: 15, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3257, file: !3258, line: 754, column: 7)
!3267 = !DILocation(line: 754, column: 7, scope: !3257)
!3268 = !DILocation(line: 907, column: 13, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3258, line: 907, column: 13)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !3258, line: 897, column: 7)
!3271 = distinct !DILexicalBlock(scope: !3257, file: !3258, line: 856, column: 3)
!3272 = !DILocation(line: 907, column: 24, scope: !3269)
!3273 = !DILocation(line: 907, column: 13, scope: !3270)
!3274 = !DILocation(line: 995, column: 3, scope: !3257)
!3275 = distinct !DISubprogram(name: "rpl_fclose", scope: !3276, file: !3276, line: 58, type: !3277, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !578, retainedNodes: !3313)
!3276 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!23, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2623, line: 7, baseType: !3281)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2625, line: 49, size: 1728, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3281, file: !2625, line: 51, baseType: !23, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3281, file: !2625, line: 54, baseType: !10, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3281, file: !2625, line: 55, baseType: !10, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3281, file: !2625, line: 56, baseType: !10, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3281, file: !2625, line: 57, baseType: !10, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3281, file: !2625, line: 58, baseType: !10, size: 64, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3281, file: !2625, line: 59, baseType: !10, size: 64, offset: 384)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3281, file: !2625, line: 60, baseType: !10, size: 64, offset: 448)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3281, file: !2625, line: 61, baseType: !10, size: 64, offset: 512)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3281, file: !2625, line: 64, baseType: !10, size: 64, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3281, file: !2625, line: 65, baseType: !10, size: 64, offset: 640)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3281, file: !2625, line: 66, baseType: !10, size: 64, offset: 704)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3281, file: !2625, line: 68, baseType: !2640, size: 64, offset: 768)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3281, file: !2625, line: 70, baseType: !3297, size: 64, offset: 832)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3281, file: !2625, line: 72, baseType: !23, size: 32, offset: 896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3281, file: !2625, line: 73, baseType: !23, size: 32, offset: 928)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3281, file: !2625, line: 74, baseType: !2647, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3281, file: !2625, line: 77, baseType: !98, size: 16, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3281, file: !2625, line: 78, baseType: !2652, size: 8, offset: 1040)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3281, file: !2625, line: 79, baseType: !2654, size: 8, offset: 1048)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3281, file: !2625, line: 81, baseType: !2658, size: 64, offset: 1088)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3281, file: !2625, line: 89, baseType: !2661, size: 64, offset: 1152)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3281, file: !2625, line: 91, baseType: !2663, size: 64, offset: 1216)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3281, file: !2625, line: 92, baseType: !2666, size: 64, offset: 1280)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3281, file: !2625, line: 93, baseType: !3297, size: 64, offset: 1344)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3281, file: !2625, line: 94, baseType: !12, size: 64, offset: 1408)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3281, file: !2625, line: 95, baseType: !99, size: 64, offset: 1472)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3281, file: !2625, line: 96, baseType: !23, size: 32, offset: 1536)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3281, file: !2625, line: 98, baseType: !2673, size: 160, offset: 1568)
!3313 = !{!3314, !3315, !3316, !3317}
!3314 = !DILocalVariable(name: "fp", arg: 1, scope: !3275, file: !3276, line: 58, type: !3279)
!3315 = !DILocalVariable(name: "saved_errno", scope: !3275, file: !3276, line: 60, type: !23)
!3316 = !DILocalVariable(name: "fd", scope: !3275, file: !3276, line: 61, type: !23)
!3317 = !DILocalVariable(name: "result", scope: !3275, file: !3276, line: 62, type: !23)
!3318 = !DILocation(line: 58, column: 19, scope: !3275)
!3319 = !DILocation(line: 60, column: 7, scope: !3275)
!3320 = !DILocation(line: 62, column: 7, scope: !3275)
!3321 = !DILocation(line: 65, column: 8, scope: !3275)
!3322 = !DILocation(line: 61, column: 7, scope: !3275)
!3323 = !DILocation(line: 66, column: 10, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3275, file: !3276, line: 66, column: 7)
!3325 = !DILocation(line: 66, column: 7, scope: !3275)
!3326 = !DILocation(line: 67, column: 12, scope: !3324)
!3327 = !DILocation(line: 67, column: 5, scope: !3324)
!3328 = !DILocation(line: 72, column: 9, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3275, file: !3276, line: 72, column: 7)
!3330 = !DILocation(line: 72, column: 23, scope: !3329)
!3331 = !DILocation(line: 72, column: 33, scope: !3329)
!3332 = !DILocation(line: 72, column: 26, scope: !3329)
!3333 = !DILocation(line: 72, column: 59, scope: !3329)
!3334 = !DILocation(line: 73, column: 7, scope: !3329)
!3335 = !DILocation(line: 73, column: 10, scope: !3329)
!3336 = !DILocation(line: 72, column: 7, scope: !3275)
!3337 = !DILocation(line: 100, column: 12, scope: !3275)
!3338 = !DILocation(line: 105, column: 7, scope: !3275)
!3339 = !DILocation(line: 74, column: 19, scope: !3329)
!3340 = !DILocation(line: 105, column: 19, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3275, file: !3276, line: 105, column: 7)
!3342 = !DILocation(line: 107, column: 13, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3341, file: !3276, line: 106, column: 5)
!3344 = !DILocation(line: 109, column: 5, scope: !3343)
!3345 = !DILocation(line: 0, scope: !3275)
!3346 = !DILocation(line: 112, column: 1, scope: !3275)
!3347 = distinct !DISubprogram(name: "rpl_fflush", scope: !3348, file: !3348, line: 129, type: !3349, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !580, retainedNodes: !3385)
!3348 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!23, !3351}
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2623, line: 7, baseType: !3353)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2625, line: 49, size: 1728, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3353, file: !2625, line: 51, baseType: !23, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3353, file: !2625, line: 54, baseType: !10, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3353, file: !2625, line: 55, baseType: !10, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3353, file: !2625, line: 56, baseType: !10, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3353, file: !2625, line: 57, baseType: !10, size: 64, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3353, file: !2625, line: 58, baseType: !10, size: 64, offset: 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3353, file: !2625, line: 59, baseType: !10, size: 64, offset: 384)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3353, file: !2625, line: 60, baseType: !10, size: 64, offset: 448)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3353, file: !2625, line: 61, baseType: !10, size: 64, offset: 512)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3353, file: !2625, line: 64, baseType: !10, size: 64, offset: 576)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3353, file: !2625, line: 65, baseType: !10, size: 64, offset: 640)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3353, file: !2625, line: 66, baseType: !10, size: 64, offset: 704)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3353, file: !2625, line: 68, baseType: !2640, size: 64, offset: 768)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3353, file: !2625, line: 70, baseType: !3369, size: 64, offset: 832)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3353, file: !2625, line: 72, baseType: !23, size: 32, offset: 896)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3353, file: !2625, line: 73, baseType: !23, size: 32, offset: 928)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3353, file: !2625, line: 74, baseType: !2647, size: 64, offset: 960)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3353, file: !2625, line: 77, baseType: !98, size: 16, offset: 1024)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3353, file: !2625, line: 78, baseType: !2652, size: 8, offset: 1040)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3353, file: !2625, line: 79, baseType: !2654, size: 8, offset: 1048)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3353, file: !2625, line: 81, baseType: !2658, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3353, file: !2625, line: 89, baseType: !2661, size: 64, offset: 1152)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3353, file: !2625, line: 91, baseType: !2663, size: 64, offset: 1216)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3353, file: !2625, line: 92, baseType: !2666, size: 64, offset: 1280)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3353, file: !2625, line: 93, baseType: !3369, size: 64, offset: 1344)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3353, file: !2625, line: 94, baseType: !12, size: 64, offset: 1408)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3353, file: !2625, line: 95, baseType: !99, size: 64, offset: 1472)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3353, file: !2625, line: 96, baseType: !23, size: 32, offset: 1536)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3353, file: !2625, line: 98, baseType: !2673, size: 160, offset: 1568)
!3385 = !{!3386}
!3386 = !DILocalVariable(name: "stream", arg: 1, scope: !3347, file: !3348, line: 129, type: !3351)
!3387 = !DILocation(line: 129, column: 19, scope: !3347)
!3388 = !DILocation(line: 150, column: 14, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3347, file: !3348, line: 150, column: 7)
!3390 = !DILocation(line: 150, column: 22, scope: !3389)
!3391 = !DILocation(line: 150, column: 27, scope: !3389)
!3392 = !DILocation(line: 150, column: 7, scope: !3347)
!3393 = !DILocation(line: 151, column: 12, scope: !3389)
!3394 = !DILocation(line: 151, column: 5, scope: !3389)
!3395 = !DILocalVariable(name: "fp", arg: 1, scope: !3396, file: !3348, line: 41, type: !3351)
!3396 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3348, file: !3348, line: 41, type: !3397, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !580, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !3351}
!3399 = !{!3395}
!3400 = !DILocation(line: 41, column: 48, scope: !3396, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 156, column: 3, scope: !3347)
!3402 = !DILocation(line: 43, column: 11, scope: !3403, inlinedAt: !3401)
!3403 = distinct !DILexicalBlock(scope: !3396, file: !3348, line: 43, column: 7)
!3404 = !DILocation(line: 43, column: 18, scope: !3403, inlinedAt: !3401)
!3405 = !DILocation(line: 43, column: 7, scope: !3396, inlinedAt: !3401)
!3406 = !DILocation(line: 45, column: 5, scope: !3403, inlinedAt: !3401)
!3407 = !DILocation(line: 158, column: 10, scope: !3347)
!3408 = !DILocation(line: 158, column: 3, scope: !3347)
!3409 = !DILocation(line: 0, scope: !3347)
!3410 = !DILocation(line: 232, column: 1, scope: !3347)
!3411 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3412, file: !3412, line: 28, type: !3413, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !582, retainedNodes: !3450)
!3412 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!23, !3415, !3449, !23}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2623, line: 7, baseType: !3417)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2625, line: 49, size: 1728, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3417, file: !2625, line: 51, baseType: !23, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3417, file: !2625, line: 54, baseType: !10, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3417, file: !2625, line: 55, baseType: !10, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3417, file: !2625, line: 56, baseType: !10, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3417, file: !2625, line: 57, baseType: !10, size: 64, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3417, file: !2625, line: 58, baseType: !10, size: 64, offset: 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3417, file: !2625, line: 59, baseType: !10, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3417, file: !2625, line: 60, baseType: !10, size: 64, offset: 448)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3417, file: !2625, line: 61, baseType: !10, size: 64, offset: 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3417, file: !2625, line: 64, baseType: !10, size: 64, offset: 576)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3417, file: !2625, line: 65, baseType: !10, size: 64, offset: 640)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3417, file: !2625, line: 66, baseType: !10, size: 64, offset: 704)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3417, file: !2625, line: 68, baseType: !2640, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3417, file: !2625, line: 70, baseType: !3433, size: 64, offset: 832)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3417, file: !2625, line: 72, baseType: !23, size: 32, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3417, file: !2625, line: 73, baseType: !23, size: 32, offset: 928)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3417, file: !2625, line: 74, baseType: !2647, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3417, file: !2625, line: 77, baseType: !98, size: 16, offset: 1024)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3417, file: !2625, line: 78, baseType: !2652, size: 8, offset: 1040)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3417, file: !2625, line: 79, baseType: !2654, size: 8, offset: 1048)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3417, file: !2625, line: 81, baseType: !2658, size: 64, offset: 1088)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3417, file: !2625, line: 89, baseType: !2661, size: 64, offset: 1152)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3417, file: !2625, line: 91, baseType: !2663, size: 64, offset: 1216)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3417, file: !2625, line: 92, baseType: !2666, size: 64, offset: 1280)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3417, file: !2625, line: 93, baseType: !3433, size: 64, offset: 1344)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3417, file: !2625, line: 94, baseType: !12, size: 64, offset: 1408)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3417, file: !2625, line: 95, baseType: !99, size: 64, offset: 1472)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3417, file: !2625, line: 96, baseType: !23, size: 32, offset: 1536)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3417, file: !2625, line: 98, baseType: !2673, size: 160, offset: 1568)
!3449 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2795, line: 63, baseType: !2647)
!3450 = !{!3451, !3452, !3453, !3454}
!3451 = !DILocalVariable(name: "fp", arg: 1, scope: !3411, file: !3412, line: 28, type: !3415)
!3452 = !DILocalVariable(name: "offset", arg: 2, scope: !3411, file: !3412, line: 28, type: !3449)
!3453 = !DILocalVariable(name: "whence", arg: 3, scope: !3411, file: !3412, line: 28, type: !23)
!3454 = !DILocalVariable(name: "pos", scope: !3455, file: !3412, line: 117, type: !3449)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !3412, line: 113, column: 5)
!3456 = distinct !DILexicalBlock(scope: !3411, file: !3412, line: 52, column: 7)
!3457 = !DILocation(line: 28, column: 15, scope: !3411)
!3458 = !DILocation(line: 28, column: 25, scope: !3411)
!3459 = !DILocation(line: 28, column: 37, scope: !3411)
!3460 = !DILocation(line: 52, column: 11, scope: !3456)
!3461 = !{!3212, !624, i64 16}
!3462 = !DILocation(line: 52, column: 31, scope: !3456)
!3463 = !{!3212, !624, i64 8}
!3464 = !DILocation(line: 52, column: 24, scope: !3456)
!3465 = !DILocation(line: 53, column: 7, scope: !3456)
!3466 = !DILocation(line: 53, column: 14, scope: !3456)
!3467 = !{!3212, !624, i64 40}
!3468 = !DILocation(line: 53, column: 35, scope: !3456)
!3469 = !{!3212, !624, i64 32}
!3470 = !DILocation(line: 53, column: 28, scope: !3456)
!3471 = !DILocation(line: 54, column: 7, scope: !3456)
!3472 = !DILocation(line: 54, column: 14, scope: !3456)
!3473 = !{!3212, !624, i64 72}
!3474 = !DILocation(line: 54, column: 28, scope: !3456)
!3475 = !DILocation(line: 52, column: 7, scope: !3411)
!3476 = !DILocation(line: 117, column: 26, scope: !3455)
!3477 = !DILocation(line: 117, column: 19, scope: !3455)
!3478 = !DILocation(line: 117, column: 13, scope: !3455)
!3479 = !DILocation(line: 118, column: 15, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3455, file: !3412, line: 118, column: 11)
!3481 = !DILocation(line: 118, column: 11, scope: !3455)
!3482 = !DILocation(line: 129, column: 11, scope: !3455)
!3483 = !DILocation(line: 129, column: 18, scope: !3455)
!3484 = !DILocation(line: 130, column: 11, scope: !3455)
!3485 = !DILocation(line: 130, column: 19, scope: !3455)
!3486 = !{!3212, !1947, i64 144}
!3487 = !DILocation(line: 161, column: 7, scope: !3455)
!3488 = !DILocation(line: 163, column: 10, scope: !3411)
!3489 = !DILocation(line: 163, column: 3, scope: !3411)
!3490 = !DILocation(line: 0, scope: !3411)
!3491 = !DILocation(line: 164, column: 1, scope: !3411)
