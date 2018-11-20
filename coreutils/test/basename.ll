; ModuleID = 'coreutils-8.30/src/basename.bc'
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
@.str.1 = private unnamed_addr constant [53 x i8] c"Usage: %s NAME [SUFFIX]\0A  or:  %s OPTION... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print NAME with any leading directory components removed.\0AIf specified, also remove a trailing SUFFIX.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [202 x i8] c"  -a, --multiple       support multiple arguments and treat each as a NAME\0A  -s, --suffix=SUFFIX  remove a trailing SUFFIX; implies -a\0A  -z, --zero           end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AExamples:\0A  %s /usr/bin/sort          -> \22sort\22\0A  %s include/stdio.h .h     -> \22stdio\22\0A  %s -s .h include/stdio.h  -> \22stdio\22\0A  %s -a any/str1 any/str2   -> \22str1\22 followed by \22str2\22\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"+as:z\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), align 8, !dbg !26
@.str.37 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !31
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !36
@.str.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !40
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !47
@.str.57 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.63, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.64, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.69, i32 0, i32 0), i8* null], align 16, !dbg !54
@.str.60 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.61 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.62 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.63 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.64 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.65 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.66 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.67 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.68 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.69 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !100
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !107
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !119
@.str.11.70 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.71 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.72 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.73 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.74 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.75 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.76 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !126
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !133
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !121
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !135
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.84 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.100 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.101 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.102 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !141
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !596 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !601, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %0, metadata !600, metadata !DIExpression()), !dbg !624
  %3 = icmp eq i32 %0, 0, !dbg !625
  br i1 %3, label %9, label %4, !dbg !626

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !627, !tbaa !629
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !627
  %7 = load i8*, i8** @program_name, align 8, !dbg !627, !tbaa !629
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !627
  br label %66, !dbg !627

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !633
  %11 = load i8*, i8** @program_name, align 8, !dbg !633, !tbaa !629
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #12, !dbg !633
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !634
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !629
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !634
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !635
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !629
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !635
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !640
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !629
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !640
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !641
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !629
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !641
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !642
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !629
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !642
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !643
  %29 = load i8*, i8** @program_name, align 8, !dbg !643, !tbaa !629
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* %29, i8* %29, i8* %29, i8* %29) #12, !dbg !643
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #12, !dbg !644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !620
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !645
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !609, metadata !DIExpression()) #12, !dbg !646
  br label %33, !dbg !647

; <label>:33:                                     ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !609, metadata !DIExpression()) #12, !dbg !646
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #14, !dbg !647
  %37 = icmp eq i32 %36, 0, !dbg !647
  br i1 %37, label %43, label %38, !dbg !648

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !649
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !609, metadata !DIExpression()) #12, !dbg !646
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !650
  %41 = load i8*, i8** %40, align 8, !dbg !650, !tbaa !651
  %42 = icmp eq i8* %41, null, !dbg !653
  br i1 %42, label %43, label %33, !dbg !654, !llvm.loop !655

; <label>:43:                                     ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !609, metadata !DIExpression()) #12, !dbg !646
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !609, metadata !DIExpression()) #12, !dbg !646
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !658
  %46 = load i8*, i8** %45, align 8, !dbg !658, !tbaa !660
  %47 = icmp eq i8* %46, null, !dbg !661
  %48 = select i1 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !662
  call void @llvm.dbg.value(metadata i8* %48, metadata !608, metadata !DIExpression()) #12, !dbg !663
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !664
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !664
  %51 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !665
  call void @llvm.dbg.value(metadata i8* %51, metadata !616, metadata !DIExpression()) #12, !dbg !666
  %52 = icmp eq i8* %51, null, !dbg !667
  br i1 %52, label %59, label %53, !dbg !669

; <label>:53:                                     ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !670
  %55 = icmp eq i32 %54, 0, !dbg !670
  br i1 %55, label %59, label %56, !dbg !671

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !672
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !672
  br label %59, !dbg !674

; <label>:59:                                     ; preds = %43, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !675
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !675
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !676
  %63 = icmp eq i8* %48, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), !dbg !676
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !676
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %48, i8* %64) #12, !dbg !676
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #12, !dbg !677
  br label %66

; <label>:66:                                     ; preds = %59, %4
  tail call void @exit(i32 %0) #15, !dbg !678
  unreachable, !dbg !678
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !684, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8** %1, metadata !685, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 0, metadata !686, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8 0, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* null, metadata !688, metadata !DIExpression()), !dbg !695
  %3 = load i8*, i8** %1, align 8, !dbg !696, !tbaa !629
  tail call void @set_program_name(i8* %3) #12, !dbg !697
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !698
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !699
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !700
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !701
  br label %16, !dbg !702

; <label>:8:                                      ; preds = %11, %16
  %9 = phi i8 [ %17, %16 ], [ 1, %11 ]
  %10 = phi i8 [ %18, %16 ], [ %12, %11 ]
  br label %11, !dbg !703

; <label>:11:                                     ; preds = %11, %8
  %12 = phi i8 [ %10, %8 ], [ 1, %11 ], !dbg !694
  call void @llvm.dbg.value(metadata i8* %19, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8 %9, metadata !686, metadata !DIExpression()), !dbg !693
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !703
  call void @llvm.dbg.value(metadata i32 %13, metadata !689, metadata !DIExpression()), !dbg !704
  switch i32 %13, label %24 [
    i32 -1, label %25
    i32 115, label %14
    i32 97, label %8
    i32 122, label %11
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !705

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  %15 = load i8*, i8** @optarg, align 8, !dbg !706, !tbaa !629
  call void @llvm.dbg.value(metadata i8* %15, metadata !688, metadata !DIExpression()), !dbg !695
  br label %16, !dbg !708

; <label>:16:                                     ; preds = %2, %14
  %17 = phi i8 [ 0, %2 ], [ 1, %14 ]
  %18 = phi i8 [ 0, %2 ], [ %12, %14 ]
  %19 = phi i8* [ null, %2 ], [ %15, %14 ]
  br label %8, !dbg !703

; <label>:20:                                     ; preds = %11
  tail call void @usage(i32 0) #16, !dbg !709
  unreachable, !dbg !709

; <label>:21:                                     ; preds = %11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !629
  %23 = load i8*, i8** @Version, align 8, !dbg !710, !tbaa !629
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #12, !dbg !710
  tail call void @exit(i32 0) #15, !dbg !710
  unreachable, !dbg !710

; <label>:24:                                     ; preds = %11
  tail call void @usage(i32 1) #16, !dbg !711
  unreachable, !dbg !711

; <label>:25:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8 %9, metadata !686, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %19, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8 %9, metadata !686, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %19, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8 %9, metadata !686, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %19, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8 %9, metadata !686, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8 %12, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %19, metadata !688, metadata !DIExpression()), !dbg !695
  %26 = load i32, i32* @optind, align 4, !dbg !712, !tbaa !714
  %27 = icmp slt i32 %26, %0, !dbg !716
  br i1 %27, label %30, label %28, !dbg !717

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !718
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #12, !dbg !720
  tail call void @usage(i32 1) #16, !dbg !721
  unreachable, !dbg !721

; <label>:30:                                     ; preds = %25
  %31 = icmp ne i8 %9, 0, !dbg !722
  %32 = xor i1 %31, true, !dbg !724
  %33 = add nsw i32 %26, 2, !dbg !725
  %34 = icmp slt i32 %33, %0, !dbg !726
  %35 = and i1 %34, %32, !dbg !724
  br i1 %35, label %36, label %44, !dbg !724

; <label>:36:                                     ; preds = %30
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !727
  %38 = load i32, i32* @optind, align 4, !dbg !729, !tbaa !714
  %39 = add nsw i32 %38, 2, !dbg !730
  %40 = sext i32 %39 to i64, !dbg !731
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !731
  %42 = load i8*, i8** %41, align 8, !dbg !731, !tbaa !629
  %43 = tail call i8* @quote(i8* %42) #12, !dbg !732
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %37, i8* %43) #12, !dbg !733
  tail call void @usage(i32 1) #16, !dbg !734
  unreachable, !dbg !734

; <label>:44:                                     ; preds = %30
  br i1 %31, label %45, label %55, !dbg !735

; <label>:45:                                     ; preds = %44
  %46 = icmp ne i8 %12, 0
  br label %47, !dbg !736

; <label>:47:                                     ; preds = %45, %47
  %48 = phi i32 [ %26, %45 ], [ %53, %47 ]
  %49 = sext i32 %48 to i64, !dbg !740
  %50 = getelementptr inbounds i8*, i8** %1, i64 %49, !dbg !740
  %51 = load i8*, i8** %50, align 8, !dbg !740, !tbaa !629
  tail call fastcc void @perform_basename(i8* %51, i8* %19, i1 zeroext %46), !dbg !742
  %52 = load i32, i32* @optind, align 4, !dbg !743, !tbaa !714
  %53 = add nsw i32 %52, 1, !dbg !743
  store i32 %53, i32* @optind, align 4, !dbg !743, !tbaa !714
  %54 = icmp slt i32 %53, %0, !dbg !744
  br i1 %54, label %47, label %68, !dbg !736, !llvm.loop !745

; <label>:55:                                     ; preds = %44
  %56 = sext i32 %26 to i64, !dbg !747
  %57 = getelementptr inbounds i8*, i8** %1, i64 %56, !dbg !747
  %58 = load i8*, i8** %57, align 8, !dbg !747, !tbaa !629
  %59 = icmp eq i32 %33, %0, !dbg !748
  br i1 %59, label %60, label %65, !dbg !749

; <label>:60:                                     ; preds = %55
  %61 = add nsw i32 %26, 1, !dbg !750
  %62 = sext i32 %61 to i64, !dbg !751
  %63 = getelementptr inbounds i8*, i8** %1, i64 %62, !dbg !751
  %64 = load i8*, i8** %63, align 8, !dbg !751, !tbaa !629
  br label %65, !dbg !749

; <label>:65:                                     ; preds = %55, %60
  %66 = phi i8* [ %64, %60 ], [ null, %55 ], !dbg !749
  %67 = icmp ne i8 %12, 0, !dbg !752
  tail call fastcc void @perform_basename(i8* %58, i8* %66, i1 zeroext %67), !dbg !753
  br label %68

; <label>:68:                                     ; preds = %47, %65
  ret i32 0, !dbg !754
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @perform_basename(i8*, i8* readonly, i1 zeroext) unnamed_addr #7 !dbg !755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !759, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i8* %1, metadata !760, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i1 %2, metadata !761, metadata !DIExpression()), !dbg !765
  %4 = tail call noalias i8* @base_name(i8* %0) #12, !dbg !766
  call void @llvm.dbg.value(metadata i8* %4, metadata !762, metadata !DIExpression()), !dbg !767
  %5 = tail call zeroext i1 @strip_trailing_slashes(i8* %4) #12, !dbg !768
  %6 = icmp eq i8* %1, null, !dbg !769
  br i1 %6, label %29, label %7, !dbg !771

; <label>:7:                                      ; preds = %3
  %8 = load i8, i8* %4, align 1, !dbg !772, !tbaa !773
  %9 = icmp eq i8 %8, 47, !dbg !772
  br i1 %9, label %29, label %10, !dbg !774

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %4, metadata !775, metadata !DIExpression()) #12, !dbg !783
  call void @llvm.dbg.value(metadata i8* %1, metadata !780, metadata !DIExpression()) #12, !dbg !785
  %11 = tail call i64 @strlen(i8* nonnull %4) #14, !dbg !786
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !787
  call void @llvm.dbg.value(metadata i8* %12, metadata !781, metadata !DIExpression()) #12, !dbg !788
  %13 = tail call i64 @strlen(i8* nonnull %1) #14, !dbg !789
  %14 = getelementptr inbounds i8, i8* %1, i64 %13, !dbg !790
  call void @llvm.dbg.value(metadata i8* %14, metadata !782, metadata !DIExpression()) #12, !dbg !791
  br label %15, !dbg !792

; <label>:15:                                     ; preds = %21, %10
  %16 = phi i8* [ %12, %10 ], [ %22, %21 ], !dbg !793
  %17 = phi i8* [ %14, %10 ], [ %24, %21 ], !dbg !793
  call void @llvm.dbg.value(metadata i8* %17, metadata !782, metadata !DIExpression()) #12, !dbg !791
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  %18 = icmp ugt i8* %16, %4, !dbg !795
  %19 = icmp ugt i8* %17, %1, !dbg !796
  %20 = and i1 %18, %19, !dbg !797
  br i1 %20, label %21, label %27, !dbg !792

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !798
  call void @llvm.dbg.value(metadata i8* %22, metadata !781, metadata !DIExpression()) #12, !dbg !788
  %23 = load i8, i8* %22, align 1, !dbg !799, !tbaa !773
  %24 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !800
  call void @llvm.dbg.value(metadata i8* %24, metadata !782, metadata !DIExpression()) #12, !dbg !791
  %25 = load i8, i8* %24, align 1, !dbg !801, !tbaa !773
  %26 = icmp eq i8 %23, %25, !dbg !802
  br i1 %26, label %15, label %29, !dbg !803, !llvm.loop !804

; <label>:27:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  call void @llvm.dbg.value(metadata i8* %16, metadata !781, metadata !DIExpression()) #12, !dbg !788
  br i1 %18, label %28, label %29, !dbg !807

; <label>:28:                                     ; preds = %27
  store i8 0, i8* %16, align 1, !dbg !808, !tbaa !773
  br label %29, !dbg !810

; <label>:29:                                     ; preds = %21, %28, %27, %3, %7
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !811, !tbaa !629
  %31 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %30), !dbg !811
  %32 = select i1 %2, i32 0, i32 10, !dbg !812
  call void @llvm.dbg.value(metadata i32 %32, metadata !813, metadata !DIExpression()) #12, !dbg !819
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821, !tbaa !629
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !821
  %35 = load i8*, i8** %34, align 8, !dbg !821, !tbaa !822
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !821
  %37 = load i8*, i8** %36, align 8, !dbg !821, !tbaa !826
  %38 = icmp ult i8* %35, %37, !dbg !821
  br i1 %38, label %41, label %39, !dbg !821, !prof !827

; <label>:39:                                     ; preds = %29
  %40 = tail call i32 @__overflow(%struct._IO_FILE* %33, i32 %32) #12, !dbg !821
  br label %44, !dbg !821

; <label>:41:                                     ; preds = %29
  %42 = trunc i32 %32 to i8, !dbg !821
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !821
  store i8* %43, i8** %34, align 8, !dbg !821, !tbaa !822
  store i8 %42, i8* %35, align 1, !dbg !821, !tbaa !773
  br label %44, !dbg !821

; <label>:44:                                     ; preds = %39, %41
  tail call void @free(i8* %4) #12, !dbg !828
  ret void, !dbg !829
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !830 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !832, metadata !DIExpression()), !dbg !833
  store i8* %0, i8** @file_name, align 8, !dbg !834, !tbaa !629
  ret void, !dbg !835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !836 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !840, metadata !DIExpression()), !dbg !841
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !842, !tbaa !843
  ret void, !dbg !845
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !846 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !851, !tbaa !629
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !852
  %3 = icmp eq i32 %2, 0, !dbg !853
  br i1 %3, label %22, label %4, !dbg !854

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !855, !tbaa !843, !range !856
  %6 = icmp eq i8 %5, 0, !dbg !855
  br i1 %6, label %11, label %7, !dbg !857

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !858
  %9 = load i32, i32* %8, align 4, !dbg !858, !tbaa !714
  %10 = icmp eq i32 %9, 32, !dbg !859
  br i1 %10, label %22, label %11, !dbg !860

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 5) #12, !dbg !861
  call void @llvm.dbg.value(metadata i8* %12, metadata !848, metadata !DIExpression()), !dbg !862
  %13 = load i8*, i8** @file_name, align 8, !dbg !863, !tbaa !629
  %14 = icmp eq i8* %13, null, !dbg !863
  %15 = tail call i32* @__errno_location() #17, !dbg !865
  %16 = load i32, i32* %15, align 4, !dbg !865, !tbaa !714
  br i1 %14, label %19, label %17, !dbg !866

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !867
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.41, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !868
  br label %20, !dbg !868

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.42, i64 0, i64 0), i8* %12) #12, !dbg !869
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !870, !tbaa !714
  tail call void @_exit(i32 %21) #15, !dbg !871
  unreachable, !dbg !871

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !872, !tbaa !629
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !874
  %25 = icmp eq i32 %24, 0, !dbg !875
  br i1 %25, label %28, label %26, !dbg !876

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !877, !tbaa !714
  tail call void @_exit(i32 %27) #15, !dbg !878
  unreachable, !dbg !878

; <label>:28:                                     ; preds = %22
  ret void, !dbg !879
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @base_name(i8*) local_unnamed_addr #7 !dbg !880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !885, metadata !DIExpression()), !dbg !888
  %2 = tail call i8* @last_component(i8* %0) #14, !dbg !889
  call void @llvm.dbg.value(metadata i8* %2, metadata !886, metadata !DIExpression()), !dbg !890
  %3 = load i8, i8* %2, align 1, !dbg !891, !tbaa !773
  %4 = icmp eq i8 %3, 0, !dbg !891
  br i1 %4, label %5, label %8, !dbg !893

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @base_len(i8* %0) #14, !dbg !894
  %7 = tail call noalias i8* @xstrndup(i8* %0, i64 %6) #12, !dbg !895
  br label %16, !dbg !896

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @base_len(i8* %2) #14, !dbg !897
  call void @llvm.dbg.value(metadata i64 %9, metadata !887, metadata !DIExpression()), !dbg !898
  %10 = getelementptr inbounds i8, i8* %2, i64 %9, !dbg !899
  %11 = load i8, i8* %10, align 1, !dbg !899, !tbaa !773
  %12 = icmp eq i8 %11, 47, !dbg !899
  %13 = zext i1 %12 to i64, !dbg !901
  %14 = add i64 %9, %13, !dbg !901
  call void @llvm.dbg.value(metadata i64 %14, metadata !887, metadata !DIExpression()), !dbg !898
  %15 = tail call noalias i8* @xstrndup(i8* %2, i64 %14) #12, !dbg !902
  br label %16, !dbg !903

; <label>:16:                                     ; preds = %8, %5
  %17 = phi i8* [ %15, %8 ], [ %7, %5 ], !dbg !904
  ret i8* %17, !dbg !905
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !906 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !909, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i8* %0, metadata !910, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i8 0, metadata !912, metadata !DIExpression()), !dbg !915
  br label %2, !dbg !916

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !917
  call void @llvm.dbg.value(metadata i8* %3, metadata !910, metadata !DIExpression()), !dbg !914
  %4 = load i8, i8* %3, align 1, !dbg !918, !tbaa !773
  %5 = icmp eq i8 %4, 47, !dbg !918
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !919
  call void @llvm.dbg.value(metadata i8* %6, metadata !910, metadata !DIExpression()), !dbg !914
  br i1 %5, label %2, label %7, !dbg !916, !llvm.loop !920

; <label>:7:                                      ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !921
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !914
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !924
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !925
  call void @llvm.dbg.value(metadata i8 %11, metadata !912, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i8* %10, metadata !911, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i8* %9, metadata !910, metadata !DIExpression()), !dbg !914
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !929

; <label>:12:                                     ; preds = %7
  %13 = and i8 %11, 1, !dbg !930
  %14 = icmp eq i8 %13, 0, !dbg !930
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !932
  %16 = select i1 %14, i8 %11, i8 0, !dbg !932
  br label %17, !dbg !932

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !917
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !917
  call void @llvm.dbg.value(metadata i8 %19, metadata !912, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i8* %18, metadata !910, metadata !DIExpression()), !dbg !914
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !933
  call void @llvm.dbg.value(metadata i8* %20, metadata !911, metadata !DIExpression()), !dbg !928
  %21 = load i8, i8* %20, align 1, !dbg !921, !tbaa !773
  br label %7, !dbg !934, !llvm.loop !935

; <label>:22:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !910, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i8* %9, metadata !910, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i8* %9, metadata !910, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i8* %9, metadata !910, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i8* %9, metadata !910, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i8* %9, metadata !910, metadata !DIExpression()), !dbg !914
  ret i8* %9, !dbg !937
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !938 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !942, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression()), !dbg !946
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !947
  call void @llvm.dbg.value(metadata i64 %2, metadata !943, metadata !DIExpression()), !dbg !949
  br label %3, !dbg !950

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !951
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  %5 = icmp ugt i64 %4, 1, !dbg !953
  br i1 %5, label %6, label %11, !dbg !954

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !955
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !955
  %9 = load i8, i8* %8, align 1, !dbg !955, !tbaa !773
  %10 = icmp eq i8 %9, 47, !dbg !955
  br i1 %10, label %3, label %11, !dbg !956, !llvm.loop !957

; <label>:11:                                     ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %4, metadata !943, metadata !DIExpression()), !dbg !949
  ret i64 %4, !dbg !959
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @strip_trailing_slashes(i8*) local_unnamed_addr #7 !dbg !960 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !965, metadata !DIExpression()), !dbg !969
  %2 = tail call i8* @last_component(i8* %0) #14, !dbg !970
  call void @llvm.dbg.value(metadata i8* %2, metadata !966, metadata !DIExpression()), !dbg !971
  %3 = load i8, i8* %2, align 1, !dbg !972, !tbaa !773
  %4 = icmp eq i8 %3, 0, !dbg !972
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !974
  call void @llvm.dbg.value(metadata i8* %5, metadata !966, metadata !DIExpression()), !dbg !971
  %6 = tail call i64 @base_len(i8* %5) #14, !dbg !975
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !976
  call void @llvm.dbg.value(metadata i8* %7, metadata !967, metadata !DIExpression()), !dbg !977
  %8 = load i8, i8* %7, align 1, !dbg !978, !tbaa !773
  %9 = icmp ne i8 %8, 0, !dbg !979
  store i8 0, i8* %7, align 1, !dbg !980, !tbaa !773
  ret i1 %9, !dbg !981
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !982 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !984, metadata !DIExpression()), !dbg !987
  %2 = icmp eq i8* %0, null, !dbg !988
  br i1 %2, label %3, label %6, !dbg !990

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !991, !tbaa !629
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !993
  tail call void @abort() #15, !dbg !994
  unreachable, !dbg !994

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !995
  call void @llvm.dbg.value(metadata i8* %7, metadata !985, metadata !DIExpression()), !dbg !996
  %8 = icmp eq i8* %7, null, !dbg !997
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !998
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !999
  call void @llvm.dbg.value(metadata i8* %10, metadata !986, metadata !DIExpression()), !dbg !1000
  %11 = ptrtoint i8* %10 to i64, !dbg !1001
  %12 = ptrtoint i8* %0 to i64, !dbg !1001
  %13 = sub i64 %11, %12, !dbg !1001
  %14 = icmp sgt i64 %13, 6, !dbg !1003
  br i1 %14, label %15, label %24, !dbg !1004

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1005
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.58, i64 0, i64 0), i64 7) #14, !dbg !1006
  %18 = icmp eq i32 %17, 0, !dbg !1007
  br i1 %18, label %19, label %24, !dbg !1008

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !984, metadata !DIExpression()), !dbg !987
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.59, i64 0, i64 0), i64 3) #14, !dbg !1009
  %21 = icmp eq i32 %20, 0, !dbg !1012
  br i1 %21, label %22, label %24, !dbg !1013

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %23, metadata !984, metadata !DIExpression()), !dbg !987
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1016, !tbaa !629
  br label %24, !dbg !1017

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !984, metadata !DIExpression()), !dbg !987
  store i8* %25, i8** @program_name, align 8, !dbg !1018, !tbaa !629
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1019, !tbaa !629
  ret void, !dbg !1020
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1021 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1026, metadata !DIExpression()), !dbg !1029
  %2 = tail call i32* @__errno_location() #17, !dbg !1030
  %3 = load i32, i32* %2, align 4, !dbg !1030, !tbaa !714
  call void @llvm.dbg.value(metadata i32 %3, metadata !1027, metadata !DIExpression()), !dbg !1031
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1032
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1032
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1032
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1033
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1033
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1028, metadata !DIExpression()), !dbg !1034
  store i32 %3, i32* %2, align 4, !dbg !1035, !tbaa !714
  ret %struct.quoting_options* %8, !dbg !1036
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1037 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1043, metadata !DIExpression()), !dbg !1044
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1045
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1045
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1046
  %5 = load i32, i32* %4, align 8, !dbg !1046, !tbaa !1047
  ret i32 %5, !dbg !1049
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1050 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1054, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i32 %1, metadata !1055, metadata !DIExpression()), !dbg !1057
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1058
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1058
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1059
  store i32 %1, i32* %5, align 8, !dbg !1060, !tbaa !1047
  ret void, !dbg !1061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1062 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1066, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i8 %1, metadata !1067, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 %2, metadata !1068, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %1, metadata !1069, metadata !DIExpression()), !dbg !1077
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1078
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1078
  %6 = lshr i8 %1, 5, !dbg !1079
  %7 = zext i8 %6 to i64, !dbg !1079
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1080
  call void @llvm.dbg.value(metadata i32* %8, metadata !1070, metadata !DIExpression()), !dbg !1081
  %9 = and i8 %1, 31, !dbg !1082
  %10 = zext i8 %9 to i32, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %10, metadata !1072, metadata !DIExpression()), !dbg !1083
  %11 = load i32, i32* %8, align 4, !dbg !1084, !tbaa !714
  %12 = lshr i32 %11, %10, !dbg !1085
  %13 = and i32 %12, 1, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %13, metadata !1073, metadata !DIExpression()), !dbg !1087
  %14 = and i32 %2, 1, !dbg !1088
  %15 = xor i32 %13, %14, !dbg !1089
  %16 = shl i32 %15, %10, !dbg !1090
  %17 = xor i32 %16, %11, !dbg !1091
  store i32 %17, i32* %8, align 4, !dbg !1091, !tbaa !714
  ret i32 %13, !dbg !1092
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1093 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1097, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %1, metadata !1098, metadata !DIExpression()), !dbg !1101
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1102
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1097, metadata !DIExpression()), !dbg !1100
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1105
  %6 = load i32, i32* %5, align 4, !dbg !1105, !tbaa !1106
  call void @llvm.dbg.value(metadata i32 %6, metadata !1099, metadata !DIExpression()), !dbg !1107
  store i32 %1, i32* %5, align 4, !dbg !1108, !tbaa !1106
  ret i32 %6, !dbg !1109
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1110 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1114, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i8* %1, metadata !1115, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %2, metadata !1116, metadata !DIExpression()), !dbg !1119
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1120
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1122
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1114, metadata !DIExpression()), !dbg !1117
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1123
  store i32 10, i32* %6, align 8, !dbg !1124, !tbaa !1047
  %7 = icmp ne i8* %1, null, !dbg !1125
  %8 = icmp ne i8* %2, null, !dbg !1127
  %9 = and i1 %7, %8, !dbg !1128
  br i1 %9, label %11, label %10, !dbg !1128

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1129
  unreachable, !dbg !1129

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1130
  store i8* %1, i8** %12, align 8, !dbg !1131, !tbaa !1132
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1133
  store i8* %2, i8** %13, align 8, !dbg !1134, !tbaa !1135
  ret void, !dbg !1136
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1137 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1141, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %1, metadata !1142, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i8* %2, metadata !1143, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1145, metadata !DIExpression()), !dbg !1153
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1154
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1154
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1146, metadata !DIExpression()), !dbg !1155
  %8 = tail call i32* @__errno_location() #17, !dbg !1156
  %9 = load i32, i32* %8, align 4, !dbg !1156, !tbaa !714
  call void @llvm.dbg.value(metadata i32 %9, metadata !1147, metadata !DIExpression()), !dbg !1157
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1158
  %11 = load i32, i32* %10, align 8, !dbg !1158, !tbaa !1047
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1159
  %13 = load i32, i32* %12, align 4, !dbg !1159, !tbaa !1106
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1160
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1161
  %16 = load i8*, i8** %15, align 8, !dbg !1161, !tbaa !1132
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1162
  %18 = load i8*, i8** %17, align 8, !dbg !1162, !tbaa !1135
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %19, metadata !1148, metadata !DIExpression()), !dbg !1164
  store i32 %9, i32* %8, align 4, !dbg !1165, !tbaa !714
  ret i64 %19, !dbg !1166
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1167 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1173, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %1, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %2, metadata !1175, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %3, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 %4, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %5, metadata !1178, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32* %6, metadata !1179, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i8* %7, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %8, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 0, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 0, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8* null, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 0, metadata !1186, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1250
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1251
  %14 = icmp eq i64 %13, 1, !dbg !1252
  %15 = lshr i32 %5, 1, !dbg !1253
  %16 = trunc i32 %15 to i8, !dbg !1253
  %17 = and i8 %16, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i8 %17, metadata !1189, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 0, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 0, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1256
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1257

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1247
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1248
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1249
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1250
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1258
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1254
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1255
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1256
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %39, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %38, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %37, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %36, metadata !1189, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i64 %35, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %34, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %33, metadata !1186, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %32, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %31, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 0, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %30, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %29, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 %28, metadata !1177, metadata !DIExpression()), !dbg !1241
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
  ], !dbg !1260

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 1, metadata !1189, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 %36, metadata !1189, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 5, metadata !1177, metadata !DIExpression()), !dbg !1241
  br label %93, !dbg !1261

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1189, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i32 5, metadata !1177, metadata !DIExpression()), !dbg !1241
  %43 = and i8 %36, 1, !dbg !1262
  %44 = icmp eq i8 %43, 0, !dbg !1262
  br i1 %44, label %45, label %93, !dbg !1261

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1264
  br i1 %46, label %93, label %47, !dbg !1267

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1264, !tbaa !773
  br label %93, !dbg !1264

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.70, i64 0, i64 0), i32 %28), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %49, metadata !1180, metadata !DIExpression()), !dbg !1244
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), i32 %28), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %50, metadata !1181, metadata !DIExpression()), !dbg !1245
  br label %51, !dbg !1273

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %52, metadata !1180, metadata !DIExpression()), !dbg !1244
  %54 = and i8 %36, 1, !dbg !1274
  %55 = icmp eq i8 %54, 0, !dbg !1274
  br i1 %55, label %56, label %71, !dbg !1276

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 0, metadata !1183, metadata !DIExpression()), !dbg !1246
  %57 = load i8, i8* %52, align 1, !dbg !1277, !tbaa !773
  %58 = icmp eq i8 %57, 0, !dbg !1280
  br i1 %58, label %71, label %59, !dbg !1280

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %62, metadata !1183, metadata !DIExpression()), !dbg !1246
  %63 = icmp ult i64 %62, %40, !dbg !1281
  br i1 %63, label %64, label %66, !dbg !1284

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1281
  store i8 %60, i8* %65, align 1, !dbg !1281, !tbaa !773
  br label %66, !dbg !1281

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1284
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %68, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %67, metadata !1183, metadata !DIExpression()), !dbg !1246
  %69 = load i8, i8* %68, align 1, !dbg !1277, !tbaa !773
  %70 = icmp eq i8 %69, 0, !dbg !1280
  br i1 %70, label %71, label %59, !dbg !1280, !llvm.loop !1286

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1246
  call void @llvm.dbg.value(metadata i64 %72, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %53, metadata !1185, metadata !DIExpression()), !dbg !1248
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %73, metadata !1186, metadata !DIExpression()), !dbg !1249
  br label %93, !dbg !1289

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1250
  br label %75, !dbg !1290

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1258
  call void @llvm.dbg.value(metadata i8 %76, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1189, metadata !DIExpression()), !dbg !1253
  br label %77, !dbg !1291

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1250
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1258
  call void @llvm.dbg.value(metadata i8 %79, metadata !1189, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 %78, metadata !1187, metadata !DIExpression()), !dbg !1250
  %80 = and i8 %79, 1, !dbg !1292
  %81 = icmp eq i8 %80, 0, !dbg !1292
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1294
  br label %83, !dbg !1294

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1295
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1253
  call void @llvm.dbg.value(metadata i8 %85, metadata !1189, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 %84, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 2, metadata !1177, metadata !DIExpression()), !dbg !1241
  %86 = and i8 %85, 1, !dbg !1296
  %87 = icmp eq i8 %86, 0, !dbg !1296
  br i1 %87, label %88, label %93, !dbg !1298

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1299
  br i1 %89, label %93, label %90, !dbg !1302

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1299, !tbaa !773
  br label %93, !dbg !1299

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1189, metadata !DIExpression()), !dbg !1253
  br label %93, !dbg !1303

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1304
  unreachable, !dbg !1304

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1246
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %41 ], !dbg !1258
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1258
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1258
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1305
  call void @llvm.dbg.value(metadata i8 %101, metadata !1189, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %99, metadata !1186, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %97, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 %94, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 0, metadata !1182, metadata !DIExpression()), !dbg !1306
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
  br label %121, !dbg !1307

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1308
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1246
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1247
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1254
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1255
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1256
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %125, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %122, metadata !1182, metadata !DIExpression()), !dbg !1306
  %130 = icmp eq i64 %125, -1, !dbg !1309
  br i1 %130, label %131, label %135, !dbg !1310

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1311
  %133 = load i8, i8* %132, align 1, !dbg !1311, !tbaa !773
  %134 = icmp eq i8 %133, 0, !dbg !1312
  br i1 %134, label %617, label %137, !dbg !1313

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1314
  br i1 %136, label %617, label %137, !dbg !1313

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1198, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i8 0, metadata !1199, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1200, metadata !DIExpression()), !dbg !1317
  br i1 %107, label %138, label %153, !dbg !1318

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1320
  %140 = and i1 %108, %130, !dbg !1321
  br i1 %140, label %141, label %143, !dbg !1321

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %142, metadata !1176, metadata !DIExpression()), !dbg !1240
  br label %143, !dbg !1323

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1176, metadata !DIExpression()), !dbg !1240
  %145 = icmp ugt i64 %139, %144, !dbg !1324
  br i1 %145, label %153, label %146, !dbg !1325

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1326
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1327
  %149 = icmp ne i32 %148, 0, !dbg !1328
  %150 = or i1 %149, %110, !dbg !1329
  %151 = xor i1 %149, true, !dbg !1329
  %152 = zext i1 %151 to i8, !dbg !1329
  br i1 %150, label %153, label %661, !dbg !1329

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %155, metadata !1198, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 %154, metadata !1176, metadata !DIExpression()), !dbg !1240
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1331
  %157 = load i8, i8* %156, align 1, !dbg !1331, !tbaa !773
  call void @llvm.dbg.value(metadata i8 %157, metadata !1193, metadata !DIExpression()), !dbg !1332
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
  ], !dbg !1333

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1334

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1335

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1199, metadata !DIExpression()), !dbg !1316
  %161 = and i8 %126, 1, !dbg !1339
  %162 = icmp eq i8 %161, 0, !dbg !1339
  %163 = and i1 %114, %162, !dbg !1339
  br i1 %163, label %164, label %180, !dbg !1339

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1341
  br i1 %165, label %166, label %168, !dbg !1345

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1341
  store i8 39, i8* %167, align 1, !dbg !1341, !tbaa !773
  br label %168, !dbg !1341

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %169, metadata !1183, metadata !DIExpression()), !dbg !1246
  %170 = icmp ult i64 %169, %129, !dbg !1346
  br i1 %170, label %171, label %173, !dbg !1349

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1346
  store i8 36, i8* %172, align 1, !dbg !1346, !tbaa !773
  br label %173, !dbg !1346

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %174, metadata !1183, metadata !DIExpression()), !dbg !1246
  %175 = icmp ult i64 %174, %129, !dbg !1350
  br i1 %175, label %176, label %178, !dbg !1353

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1350
  store i8 39, i8* %177, align 1, !dbg !1350, !tbaa !773
  br label %178, !dbg !1350

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %179, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 1, metadata !1190, metadata !DIExpression()), !dbg !1254
  br label %180, !dbg !1354

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1305
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1305
  call void @llvm.dbg.value(metadata i8 %182, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %181, metadata !1183, metadata !DIExpression()), !dbg !1246
  %183 = icmp ult i64 %181, %129, !dbg !1355
  br i1 %183, label %184, label %186, !dbg !1358

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1355
  store i8 92, i8* %185, align 1, !dbg !1355, !tbaa !773
  br label %186, !dbg !1355

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %187, metadata !1183, metadata !DIExpression()), !dbg !1246
  br i1 %104, label %188, label %478, !dbg !1359

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1361
  %190 = icmp ult i64 %189, %154, !dbg !1362
  br i1 %190, label %191, label %467, !dbg !1363

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1364
  %193 = load i8, i8* %192, align 1, !dbg !1364, !tbaa !773
  %194 = add i8 %193, -48, !dbg !1365
  %195 = icmp ult i8 %194, 10, !dbg !1365
  br i1 %195, label %196, label %467, !dbg !1365

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1366
  br i1 %197, label %198, label %200, !dbg !1370

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1366
  store i8 48, i8* %199, align 1, !dbg !1366, !tbaa !773
  br label %200, !dbg !1366

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %201, metadata !1183, metadata !DIExpression()), !dbg !1246
  %202 = icmp ult i64 %201, %129, !dbg !1371
  br i1 %202, label %203, label %205, !dbg !1374

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1371
  store i8 48, i8* %204, align 1, !dbg !1371, !tbaa !773
  br label %205, !dbg !1371

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %206, metadata !1183, metadata !DIExpression()), !dbg !1246
  br label %467, !dbg !1375

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1376

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1377

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1378

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1380

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1382
  %213 = icmp ult i64 %212, %154, !dbg !1383
  br i1 %213, label %214, label %467, !dbg !1384

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1385
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1386
  %217 = load i8, i8* %216, align 1, !dbg !1386, !tbaa !773
  %218 = icmp eq i8 %217, 63, !dbg !1387
  br i1 %218, label %219, label %467, !dbg !1388

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1389
  %221 = load i8, i8* %220, align 1, !dbg !1389, !tbaa !773
  %222 = sext i8 %221 to i32, !dbg !1389
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
  ], !dbg !1390

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1391

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1193, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i64 %212, metadata !1182, metadata !DIExpression()), !dbg !1306
  %225 = icmp ult i64 %123, %129, !dbg !1393
  br i1 %225, label %226, label %228, !dbg !1396

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1393
  store i8 63, i8* %227, align 1, !dbg !1393, !tbaa !773
  br label %228, !dbg !1393

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %229, metadata !1183, metadata !DIExpression()), !dbg !1246
  %230 = icmp ult i64 %229, %129, !dbg !1397
  br i1 %230, label %231, label %233, !dbg !1400

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1397
  store i8 34, i8* %232, align 1, !dbg !1397, !tbaa !773
  br label %233, !dbg !1397

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %234, metadata !1183, metadata !DIExpression()), !dbg !1246
  %235 = icmp ult i64 %234, %129, !dbg !1401
  br i1 %235, label %236, label %238, !dbg !1404

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1401
  store i8 34, i8* %237, align 1, !dbg !1401, !tbaa !773
  br label %238, !dbg !1401

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %239, metadata !1183, metadata !DIExpression()), !dbg !1246
  %240 = icmp ult i64 %239, %129, !dbg !1405
  br i1 %240, label %241, label %243, !dbg !1408

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1405
  store i8 63, i8* %242, align 1, !dbg !1405, !tbaa !773
  br label %243, !dbg !1405

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %244, metadata !1183, metadata !DIExpression()), !dbg !1246
  br label %467, !dbg !1409

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1197, metadata !DIExpression()), !dbg !1410
  br label %255, !dbg !1411

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1197, metadata !DIExpression()), !dbg !1410
  br label %255, !dbg !1412

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1197, metadata !DIExpression()), !dbg !1410
  br label %253, !dbg !1413

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1197, metadata !DIExpression()), !dbg !1410
  br label %253, !dbg !1414

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1197, metadata !DIExpression()), !dbg !1410
  br label %255, !dbg !1415

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1197, metadata !DIExpression()), !dbg !1410
  br i1 %114, label %251, label %252, !dbg !1416

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1417

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1420

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1422
  call void @llvm.dbg.value(metadata i8 %254, metadata !1197, metadata !DIExpression()), !dbg !1410
  br i1 %113, label %255, label %661, !dbg !1423

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1422
  call void @llvm.dbg.value(metadata i8 %256, metadata !1197, metadata !DIExpression()), !dbg !1410
  br i1 %103, label %524, label %478, !dbg !1425

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1426
  br i1 %258, label %259, label %264, !dbg !1428

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1429, !tbaa !773
  %261 = icmp ne i8 %260, 0, !dbg !1430
  %262 = icmp ne i64 %122, 0, !dbg !1431
  %263 = or i1 %262, %261, !dbg !1433
  br i1 %263, label %467, label %270, !dbg !1433

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1434
  %266 = icmp ne i64 %122, 0, !dbg !1431
  %267 = or i1 %266, %265, !dbg !1428
  br i1 %267, label %467, label %270, !dbg !1428

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1431
  br i1 %269, label %270, label %467, !dbg !1435

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1200, metadata !DIExpression()), !dbg !1317
  br label %271, !dbg !1436

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1422
  call void @llvm.dbg.value(metadata i8 %272, metadata !1200, metadata !DIExpression()), !dbg !1317
  br i1 %113, label %467, label %661, !dbg !1437

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 1, metadata !1200, metadata !DIExpression()), !dbg !1317
  br i1 %114, label %274, label %467, !dbg !1439

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1440

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1443
  %277 = icmp ne i64 %124, 0, !dbg !1445
  %278 = or i1 %277, %276, !dbg !1446
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1446
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %280, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %279, metadata !1184, metadata !DIExpression()), !dbg !1247
  %281 = icmp ult i64 %123, %280, !dbg !1447
  br i1 %281, label %282, label %284, !dbg !1450

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1447
  store i8 39, i8* %283, align 1, !dbg !1447, !tbaa !773
  br label %284, !dbg !1447

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %285, metadata !1183, metadata !DIExpression()), !dbg !1246
  %286 = icmp ult i64 %285, %280, !dbg !1451
  br i1 %286, label %287, label %289, !dbg !1454

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1451
  store i8 92, i8* %288, align 1, !dbg !1451, !tbaa !773
  br label %289, !dbg !1451

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %290, metadata !1183, metadata !DIExpression()), !dbg !1246
  %291 = icmp ult i64 %290, %280, !dbg !1455
  br i1 %291, label %292, label %294, !dbg !1458

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1455
  store i8 39, i8* %293, align 1, !dbg !1455, !tbaa !773
  br label %294, !dbg !1455

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %295, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 0, metadata !1190, metadata !DIExpression()), !dbg !1254
  br label %467, !dbg !1459

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1460

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1201, metadata !DIExpression()), !dbg !1461
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1462
  %299 = load i16*, i16** %298, align 8, !dbg !1462, !tbaa !629
  %300 = zext i8 %157 to i64, !dbg !1462
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1462
  %302 = load i16, i16* %301, align 2, !dbg !1462, !tbaa !1464
  %303 = lshr i16 %302, 14, !dbg !1465
  %304 = trunc i16 %303 to i8, !dbg !1465
  %305 = and i8 %304, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i8 %305, metadata !1204, metadata !DIExpression()), !dbg !1466
  br label %359, !dbg !1467

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1468
  store i64 0, i64* %10, align 8, !dbg !1469
  call void @llvm.dbg.value(metadata i64 0, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1204, metadata !DIExpression()), !dbg !1466
  %307 = icmp eq i64 %154, -1, !dbg !1470
  br i1 %307, label %308, label %310, !dbg !1472

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %309, metadata !1176, metadata !DIExpression()), !dbg !1240
  br label %310, !dbg !1474

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1475
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  br label %312, !dbg !1476

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1477
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1478
  call void @llvm.dbg.value(metadata i8 %314, metadata !1204, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1479
  %315 = add i64 %313, %122, !dbg !1480
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1481
  %317 = sub i64 %311, %315, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1205, metadata !DIExpression(DW_OP_deref)), !dbg !1483
  call void @llvm.dbg.value(metadata i32* %12, metadata !1223, metadata !DIExpression(DW_OP_deref)), !dbg !1484
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %318, metadata !1226, metadata !DIExpression()), !dbg !1486
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1487

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  %320 = icmp ugt i64 %311, %315, !dbg !1488
  br i1 %320, label %321, label %344, !dbg !1490

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1201, metadata !DIExpression()), !dbg !1461
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1491
  %325 = load i8, i8* %324, align 1, !dbg !1491, !tbaa !773
  %326 = icmp eq i8 %325, 0, !dbg !1490
  br i1 %326, label %344, label %327, !dbg !1492

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %328, metadata !1201, metadata !DIExpression()), !dbg !1461
  %329 = add i64 %328, %122, !dbg !1494
  %330 = icmp ult i64 %329, %311, !dbg !1488
  br i1 %330, label %321, label %344, !dbg !1490, !llvm.loop !1495

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1496
  %333 = and i1 %116, %332, !dbg !1499
  call void @llvm.dbg.value(metadata i64 1, metadata !1227, metadata !DIExpression()), !dbg !1500
  br i1 %333, label %334, label %347, !dbg !1499

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1227, metadata !DIExpression()), !dbg !1500
  %336 = add i64 %335, %315, !dbg !1501
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1502
  %338 = load i8, i8* %337, align 1, !dbg !1502, !tbaa !773
  %339 = sext i8 %338 to i32, !dbg !1502
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1503

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %341, metadata !1227, metadata !DIExpression()), !dbg !1500
  %342 = icmp ult i64 %341, %318, !dbg !1496
  br i1 %342, label %334, label %347, !dbg !1505, !llvm.loop !1506

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %314, metadata !1204, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %313, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %314, metadata !1204, metadata !DIExpression()), !dbg !1466
  br label %344, !dbg !1508

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1204, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %352, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1508
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1509, !tbaa !714
  call void @llvm.dbg.value(metadata i32 %348, metadata !1223, metadata !DIExpression()), !dbg !1484
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !1511
  %350 = icmp eq i32 %349, 0, !dbg !1511
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1512
  call void @llvm.dbg.value(metadata i8 %351, metadata !1204, metadata !DIExpression()), !dbg !1466
  %352 = add i64 %318, %313, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %352, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %351, metadata !1204, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %352, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1508
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1205, metadata !DIExpression(DW_OP_deref)), !dbg !1483
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1514
  %354 = icmp eq i32 %353, 0, !dbg !1515
  br i1 %354, label %312, label %355, !dbg !1516, !llvm.loop !1517

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1519
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 2, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 2, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 2, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 2, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 2, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 %94, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %94, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %94, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %94, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %94, metadata !1177, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %311, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %351, metadata !1204, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %352, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1508
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1519
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1520
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1521
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %362, metadata !1204, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %361, metadata !1201, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %360, metadata !1176, metadata !DIExpression()), !dbg !1240
  %363 = and i8 %362, 1, !dbg !1522
  %364 = icmp ne i8 %363, 0, !dbg !1522
  call void @llvm.dbg.value(metadata i8 %363, metadata !1200, metadata !DIExpression()), !dbg !1317
  %365 = icmp ult i64 %361, 2, !dbg !1523
  %366 = or i1 %364, %115, !dbg !1524
  %367 = and i1 %365, %366, !dbg !1525
  br i1 %367, label %467, label %368, !dbg !1525

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %369, metadata !1234, metadata !DIExpression()), !dbg !1527
  br label %370, !dbg !1528

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1529
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1533
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1254
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1529
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1535
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1316
  call void @llvm.dbg.value(metadata i8 %376, metadata !1199, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %375, metadata !1198, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i8 %374, metadata !1193, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8 %373, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %372, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %371, metadata !1182, metadata !DIExpression()), !dbg !1306
  br i1 %366, label %423, label %377, !dbg !1539

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1540

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1199, metadata !DIExpression()), !dbg !1316
  %379 = and i8 %373, 1, !dbg !1543
  %380 = icmp eq i8 %379, 0, !dbg !1543
  %381 = and i1 %114, %380, !dbg !1543
  br i1 %381, label %382, label %398, !dbg !1543

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1545
  br i1 %383, label %384, label %386, !dbg !1549

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1545
  store i8 39, i8* %385, align 1, !dbg !1545, !tbaa !773
  br label %386, !dbg !1545

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %387, metadata !1183, metadata !DIExpression()), !dbg !1246
  %388 = icmp ult i64 %387, %129, !dbg !1550
  br i1 %388, label %389, label %391, !dbg !1553

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1550
  store i8 36, i8* %390, align 1, !dbg !1550, !tbaa !773
  br label %391, !dbg !1550

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %392, metadata !1183, metadata !DIExpression()), !dbg !1246
  %393 = icmp ult i64 %392, %129, !dbg !1554
  br i1 %393, label %394, label %396, !dbg !1557

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1554
  store i8 39, i8* %395, align 1, !dbg !1554, !tbaa !773
  br label %396, !dbg !1554

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %397, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 1, metadata !1190, metadata !DIExpression()), !dbg !1254
  br label %398, !dbg !1558

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1305
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1305
  call void @llvm.dbg.value(metadata i8 %400, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %399, metadata !1183, metadata !DIExpression()), !dbg !1246
  %401 = icmp ult i64 %399, %129, !dbg !1559
  br i1 %401, label %402, label %404, !dbg !1562

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1559
  store i8 92, i8* %403, align 1, !dbg !1559, !tbaa !773
  br label %404, !dbg !1559

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %405, metadata !1183, metadata !DIExpression()), !dbg !1246
  %406 = icmp ult i64 %405, %129, !dbg !1563
  br i1 %406, label %407, label %411, !dbg !1566

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1563
  %409 = or i8 %408, 48, !dbg !1563
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1563
  store i8 %409, i8* %410, align 1, !dbg !1563, !tbaa !773
  br label %411, !dbg !1563

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %412, metadata !1183, metadata !DIExpression()), !dbg !1246
  %413 = icmp ult i64 %412, %129, !dbg !1567
  br i1 %413, label %414, label %419, !dbg !1570

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1567
  %416 = and i8 %415, 7, !dbg !1567
  %417 = or i8 %416, 48, !dbg !1567
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1567
  store i8 %417, i8* %418, align 1, !dbg !1567, !tbaa !773
  br label %419, !dbg !1567

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %420, metadata !1183, metadata !DIExpression()), !dbg !1246
  %421 = and i8 %374, 7, !dbg !1571
  %422 = or i8 %421, 48, !dbg !1572
  call void @llvm.dbg.value(metadata i8 %422, metadata !1193, metadata !DIExpression()), !dbg !1332
  br label %432, !dbg !1573

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1574
  %425 = icmp eq i8 %424, 0, !dbg !1574
  br i1 %425, label %432, label %426, !dbg !1575

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1576
  br i1 %427, label %428, label %430, !dbg !1579

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1576
  store i8 92, i8* %429, align 1, !dbg !1576, !tbaa !773
  br label %430, !dbg !1576

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %431, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 0, metadata !1198, metadata !DIExpression()), !dbg !1315
  br label %432, !dbg !1580

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1581
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1254
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1582
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1583
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1585
  call void @llvm.dbg.value(metadata i8 %437, metadata !1199, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %436, metadata !1198, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i8 %435, metadata !1193, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8 %434, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %433, metadata !1183, metadata !DIExpression()), !dbg !1246
  %438 = add i64 %371, 1, !dbg !1586
  %439 = icmp ugt i64 %369, %438, !dbg !1588
  br i1 %439, label %440, label %562, !dbg !1589

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1590
  %442 = icmp ne i8 %441, 0, !dbg !1590
  %443 = and i8 %437, 1, !dbg !1590
  %444 = icmp eq i8 %443, 0, !dbg !1590
  %445 = and i1 %442, %444, !dbg !1590
  br i1 %445, label %446, label %457, !dbg !1590

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1593
  br i1 %447, label %448, label %450, !dbg !1597

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1593
  store i8 39, i8* %449, align 1, !dbg !1593, !tbaa !773
  br label %450, !dbg !1593

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %451, metadata !1183, metadata !DIExpression()), !dbg !1246
  %452 = icmp ult i64 %451, %129, !dbg !1598
  br i1 %452, label %453, label %455, !dbg !1601

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1598
  store i8 39, i8* %454, align 1, !dbg !1598, !tbaa !773
  br label %455, !dbg !1598

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %456, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 0, metadata !1190, metadata !DIExpression()), !dbg !1254
  br label %457, !dbg !1602

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1603
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1305
  call void @llvm.dbg.value(metadata i8 %459, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %458, metadata !1183, metadata !DIExpression()), !dbg !1246
  %460 = icmp ult i64 %458, %129, !dbg !1604
  br i1 %460, label %461, label %463, !dbg !1606

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1604
  store i8 %435, i8* %462, align 1, !dbg !1604, !tbaa !773
  br label %463, !dbg !1604

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %464, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %438, metadata !1182, metadata !DIExpression()), !dbg !1306
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1607
  %466 = load i8, i8* %465, align 1, !dbg !1607, !tbaa !773
  call void @llvm.dbg.value(metadata i8 %466, metadata !1193, metadata !DIExpression()), !dbg !1332
  br label %370, !dbg !1608, !llvm.loop !1609

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1612
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1305
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1247
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1613
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1305
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1305
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1330
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1330
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1330
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %476, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %475, metadata !1199, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %155, metadata !1198, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i8 %474, metadata !1193, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8 %473, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %472, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %471, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %470, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %469, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %468, metadata !1182, metadata !DIExpression()), !dbg !1306
  br i1 %105, label %489, label %478, !dbg !1614

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
  br i1 %112, label %490, label %512, !dbg !1616

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1617

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
  %501 = lshr i8 %494, 5, !dbg !1618
  %502 = zext i8 %501 to i64, !dbg !1618
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1619
  %504 = load i32, i32* %503, align 4, !dbg !1619, !tbaa !714
  %505 = and i8 %494, 31, !dbg !1620
  %506 = zext i8 %505 to i32, !dbg !1620
  %507 = shl i32 1, %506, !dbg !1621
  %508 = and i32 %504, %507, !dbg !1621
  %509 = icmp eq i32 %508, 0, !dbg !1621
  %510 = icmp eq i8 %155, 0, !dbg !1622
  %511 = and i1 %510, %509, !dbg !1623
  br i1 %511, label %562, label %524, !dbg !1623

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
  %523 = icmp eq i8 %155, 0, !dbg !1622
  br i1 %523, label %562, label %524, !dbg !1624

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1625
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1305
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1247
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1613
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1254
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1255
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1626
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1330
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %532, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %531, metadata !1193, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8 %530, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %529, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %528, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %527, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %526, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %525, metadata !1182, metadata !DIExpression()), !dbg !1306
  br i1 %110, label %534, label %661, !dbg !1629

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1199, metadata !DIExpression()), !dbg !1316
  %535 = and i8 %529, 1, !dbg !1631
  %536 = icmp eq i8 %535, 0, !dbg !1631
  %537 = and i1 %114, %536, !dbg !1631
  br i1 %537, label %538, label %554, !dbg !1631

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1633
  br i1 %539, label %540, label %542, !dbg !1637

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1633
  store i8 39, i8* %541, align 1, !dbg !1633, !tbaa !773
  br label %542, !dbg !1633

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %543, metadata !1183, metadata !DIExpression()), !dbg !1246
  %544 = icmp ult i64 %543, %533, !dbg !1638
  br i1 %544, label %545, label %547, !dbg !1641

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1638
  store i8 36, i8* %546, align 1, !dbg !1638, !tbaa !773
  br label %547, !dbg !1638

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %548, metadata !1183, metadata !DIExpression()), !dbg !1246
  %549 = icmp ult i64 %548, %533, !dbg !1642
  br i1 %549, label %550, label %552, !dbg !1645

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1642
  store i8 39, i8* %551, align 1, !dbg !1642, !tbaa !773
  br label %552, !dbg !1642

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %553, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 1, metadata !1190, metadata !DIExpression()), !dbg !1254
  br label %554, !dbg !1646

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1603
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1305
  call void @llvm.dbg.value(metadata i8 %556, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %555, metadata !1183, metadata !DIExpression()), !dbg !1246
  %557 = icmp ult i64 %555, %533, !dbg !1647
  br i1 %557, label %558, label %560, !dbg !1650

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1647
  store i8 92, i8* %559, align 1, !dbg !1647, !tbaa !773
  br label %560, !dbg !1647

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %561, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %572, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %571, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %570, metadata !1199, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %569, metadata !1193, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8 %568, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %567, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %566, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %565, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %564, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %563, metadata !1182, metadata !DIExpression()), !dbg !1306
  br label %589, !dbg !1651

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1625
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1305
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1247
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1613
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1254
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1255
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1654
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1330
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1330
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %571, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %570, metadata !1199, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %569, metadata !1193, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8 %568, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %567, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %566, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %565, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %564, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %563, metadata !1182, metadata !DIExpression()), !dbg !1306
  %573 = and i8 %567, 1, !dbg !1651
  %574 = icmp ne i8 %573, 0, !dbg !1651
  %575 = and i8 %570, 1, !dbg !1651
  %576 = icmp eq i8 %575, 0, !dbg !1651
  %577 = and i1 %574, %576, !dbg !1651
  br i1 %577, label %578, label %589, !dbg !1651

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1655
  br i1 %579, label %580, label %582, !dbg !1659

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1655
  store i8 39, i8* %581, align 1, !dbg !1655, !tbaa !773
  br label %582, !dbg !1655

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %583, metadata !1183, metadata !DIExpression()), !dbg !1246
  %584 = icmp ult i64 %583, %572, !dbg !1660
  br i1 %584, label %585, label %587, !dbg !1663

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1660
  store i8 39, i8* %586, align 1, !dbg !1660, !tbaa !773
  br label %587, !dbg !1660

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %588, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 0, metadata !1190, metadata !DIExpression()), !dbg !1254
  br label %589, !dbg !1664

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1603
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1305
  call void @llvm.dbg.value(metadata i8 %598, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %597, metadata !1183, metadata !DIExpression()), !dbg !1246
  %599 = icmp ult i64 %597, %590, !dbg !1665
  br i1 %599, label %600, label %602, !dbg !1668

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1665
  store i8 %592, i8* %601, align 1, !dbg !1665, !tbaa !773
  br label %602, !dbg !1665

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %603, metadata !1183, metadata !DIExpression()), !dbg !1246
  %604 = and i8 %591, 1, !dbg !1669
  %605 = icmp eq i8 %604, 0, !dbg !1669
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1671
  call void @llvm.dbg.value(metadata i8 %606, metadata !1192, metadata !DIExpression()), !dbg !1256
  br label %607, !dbg !1672

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1625
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1305
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1247
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1613
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1254
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1305
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1256
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %614, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %613, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %612, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %611, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %610, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %609, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %608, metadata !1182, metadata !DIExpression()), !dbg !1306
  %616 = add i64 %608, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %616, metadata !1182, metadata !DIExpression()), !dbg !1306
  br label %121, !dbg !1674, !llvm.loop !1675

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %618, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %618, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %125, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %125, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %126, metadata !1190, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %127, metadata !1191, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %128, metadata !1192, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  %619 = icmp eq i64 %123, 0, !dbg !1677
  %620 = and i1 %114, %619, !dbg !1679
  %621 = xor i1 %620, true, !dbg !1679
  %622 = or i1 %110, %621, !dbg !1679
  br i1 %622, label %623, label %661, !dbg !1679

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1680
  %625 = xor i1 %624, true, !dbg !1680
  %626 = and i8 %127, 1, !dbg !1682
  %627 = icmp eq i8 %626, 0, !dbg !1682
  %628 = or i1 %627, %625, !dbg !1680
  br i1 %628, label %638, label %629, !dbg !1680

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1683
  %631 = icmp eq i8 %630, 0, !dbg !1683
  br i1 %631, label %634, label %632, !dbg !1686

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %618, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %618, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %618, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %618, metadata !1176, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %95, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %96, metadata !1181, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %124, metadata !1184, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %125, metadata !1176, metadata !DIExpression()), !dbg !1240
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1687
  br label %671, !dbg !1688

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1689
  %636 = icmp ne i64 %124, 0, !dbg !1691
  %637 = and i1 %636, %635, !dbg !1692
  br i1 %637, label %27, label %638, !dbg !1692

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %129, metadata !1174, metadata !DIExpression()), !dbg !1238
  %639 = icmp ne i8* %98, null, !dbg !1693
  %640 = and i1 %639, %110, !dbg !1695
  br i1 %640, label %641, label %656, !dbg !1695

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %123, metadata !1183, metadata !DIExpression()), !dbg !1246
  %642 = load i8, i8* %98, align 1, !dbg !1696, !tbaa !773
  %643 = icmp eq i8 %642, 0, !dbg !1699
  br i1 %643, label %656, label %644, !dbg !1699

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %647, metadata !1183, metadata !DIExpression()), !dbg !1246
  %648 = icmp ult i64 %647, %129, !dbg !1700
  br i1 %648, label %649, label %651, !dbg !1703

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1700
  store i8 %645, i8* %650, align 1, !dbg !1700, !tbaa !773
  br label %651, !dbg !1700

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1703
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1704
  call void @llvm.dbg.value(metadata i8* %653, metadata !1185, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %652, metadata !1183, metadata !DIExpression()), !dbg !1246
  %654 = load i8, i8* %653, align 1, !dbg !1696, !tbaa !773
  %655 = icmp eq i8 %654, 0, !dbg !1699
  br i1 %655, label %656, label %644, !dbg !1699, !llvm.loop !1705

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1246
  call void @llvm.dbg.value(metadata i64 %657, metadata !1183, metadata !DIExpression()), !dbg !1246
  %658 = icmp ult i64 %657, %129, !dbg !1707
  br i1 %658, label %659, label %671, !dbg !1709

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1710
  store i8 0, i8* %660, align 1, !dbg !1711, !tbaa !773
  br label %671, !dbg !1710

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %663, metadata !1176, metadata !DIExpression()), !dbg !1240
  %665 = icmp ne i32 %662, 2, !dbg !1712
  %666 = icmp eq i8 %102, 0, !dbg !1714
  %667 = or i1 %665, %666, !dbg !1715
  call void @llvm.dbg.value(metadata i32 4, metadata !1177, metadata !DIExpression()), !dbg !1241
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %668, metadata !1177, metadata !DIExpression()), !dbg !1241
  %669 = and i32 %5, -3, !dbg !1716
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1717
  br label %671, !dbg !1718

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1719
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1724, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %1, metadata !1725, metadata !DIExpression()), !dbg !1729
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !1730
  call void @llvm.dbg.value(metadata i8* %3, metadata !1726, metadata !DIExpression()), !dbg !1731
  %4 = icmp eq i8* %3, %0, !dbg !1732
  br i1 %4, label %5, label %71, !dbg !1734

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %6, metadata !1727, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8* %6, metadata !1737, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8* null, metadata !1743, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 85, metadata !1744, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 84, metadata !1745, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 70, metadata !1746, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 45, metadata !1747, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 56, metadata !1748, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 0, metadata !1751, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 0, metadata !1752, metadata !DIExpression()), !dbg !1765
  %7 = load i8, i8* %6, align 1, !dbg !1766, !tbaa !773
  %8 = and i8 %7, -33, !dbg !1766
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1766

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1768, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* null, metadata !1773, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 84, metadata !1774, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 70, metadata !1775, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 45, metadata !1776, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 56, metadata !1777, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1778, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8 0, metadata !1779, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8 0, metadata !1780, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 0, metadata !1781, metadata !DIExpression()), !dbg !1794
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1795
  %11 = load i8, i8* %10, align 1, !dbg !1795, !tbaa !773
  %12 = and i8 %11, -33, !dbg !1795
  %13 = icmp eq i8 %12, 84, !dbg !1795
  br i1 %13, label %14, label %68, !dbg !1795

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1797, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* null, metadata !1802, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 70, metadata !1803, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i8 45, metadata !1804, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 56, metadata !1805, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1807, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1821
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1822
  %16 = load i8, i8* %15, align 1, !dbg !1822, !tbaa !773
  %17 = and i8 %16, -33, !dbg !1822
  %18 = icmp eq i8 %17, 70, !dbg !1822
  br i1 %18, label %19, label %68, !dbg !1822

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1824, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8* null, metadata !1829, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 45, metadata !1830, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8 56, metadata !1831, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 0, metadata !1832, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 0, metadata !1833, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1834, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1835, metadata !DIExpression()), !dbg !1846
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1847
  %21 = load i8, i8* %20, align 1, !dbg !1847, !tbaa !773
  %22 = icmp eq i8 %21, 45, !dbg !1847
  br i1 %22, label %23, label %68, !dbg !1849

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1850, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* null, metadata !1855, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 56, metadata !1856, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1857, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 0, metadata !1858, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 0, metadata !1859, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, metadata !1860, metadata !DIExpression()), !dbg !1870
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1871
  %25 = load i8, i8* %24, align 1, !dbg !1871, !tbaa !773
  %26 = icmp eq i8 %25, 56, !dbg !1871
  br i1 %26, label %27, label %68, !dbg !1873

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1874, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8* null, metadata !1879, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 0, metadata !1880, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8 0, metadata !1881, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1882, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !1892
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1893
  %29 = load i8, i8* %28, align 1, !dbg !1893, !tbaa !773
  %30 = icmp eq i8 %29, 0, !dbg !1893
  br i1 %30, label %31, label %68, !dbg !1895

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1896, !tbaa !773
  %33 = icmp eq i8 %32, 96, !dbg !1897
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.73, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.74, i64 0, i64 0), !dbg !1896
  br label %71, !dbg !1898

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1768, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8* null, metadata !1773, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 66, metadata !1774, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8 49, metadata !1775, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 56, metadata !1776, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 48, metadata !1777, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 51, metadata !1778, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 48, metadata !1779, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 0, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 0, metadata !1781, metadata !DIExpression()), !dbg !1911
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1912
  %37 = load i8, i8* %36, align 1, !dbg !1912, !tbaa !773
  %38 = and i8 %37, -33, !dbg !1912
  %39 = icmp eq i8 %38, 66, !dbg !1912
  br i1 %39, label %40, label %68, !dbg !1912

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1797, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8* null, metadata !1802, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 49, metadata !1803, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 56, metadata !1804, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 48, metadata !1805, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 51, metadata !1806, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8 48, metadata !1807, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1922
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1923
  %42 = load i8, i8* %41, align 1, !dbg !1923, !tbaa !773
  %43 = icmp eq i8 %42, 49, !dbg !1923
  br i1 %43, label %44, label %68, !dbg !1924

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1824, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8* null, metadata !1829, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 56, metadata !1830, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 48, metadata !1831, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 51, metadata !1832, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 48, metadata !1833, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 0, metadata !1834, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1835, metadata !DIExpression()), !dbg !1933
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1934
  %46 = load i8, i8* %45, align 1, !dbg !1934, !tbaa !773
  %47 = icmp eq i8 %46, 56, !dbg !1934
  br i1 %47, label %48, label %68, !dbg !1935

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1850, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* null, metadata !1855, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 48, metadata !1856, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 51, metadata !1857, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8 48, metadata !1858, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1859, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 0, metadata !1860, metadata !DIExpression()), !dbg !1943
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1944
  %50 = load i8, i8* %49, align 1, !dbg !1944, !tbaa !773
  %51 = icmp eq i8 %50, 48, !dbg !1944
  br i1 %51, label %52, label %68, !dbg !1945

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1874, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* null, metadata !1879, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 51, metadata !1880, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8 48, metadata !1881, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 0, metadata !1882, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !1952
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1953
  %54 = load i8, i8* %53, align 1, !dbg !1953, !tbaa !773
  %55 = icmp eq i8 %54, 51, !dbg !1953
  br i1 %55, label %56, label %68, !dbg !1954

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1955, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* null, metadata !1960, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 48, metadata !1961, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1962, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1963, metadata !DIExpression()), !dbg !1971
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1972
  %58 = load i8, i8* %57, align 1, !dbg !1972, !tbaa !773
  %59 = icmp eq i8 %58, 48, !dbg !1972
  br i1 %59, label %60, label %68, !dbg !1974

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1975, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8* null, metadata !1980, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !1989
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1990
  %62 = load i8, i8* %61, align 1, !dbg !1990, !tbaa !773
  %63 = icmp eq i8 %62, 0, !dbg !1990
  br i1 %63, label %64, label %68, !dbg !1992

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1993, !tbaa !773
  %66 = icmp eq i8 %65, 96, !dbg !1994
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.75, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.76, i64 0, i64 0), !dbg !1993
  br label %71, !dbg !1995

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1996
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), !dbg !1997
  br label %71, !dbg !1998

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1999
  ret i8* %72, !dbg !2000
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %1, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2007, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8* %0, metadata !2011, metadata !DIExpression()) #12, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %1, metadata !2016, metadata !DIExpression()) #12, !dbg !2026
  call void @llvm.dbg.value(metadata i64* null, metadata !2017, metadata !DIExpression()) #12, !dbg !2027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2018, metadata !DIExpression()) #12, !dbg !2028
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2029
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2019, metadata !DIExpression()) #12, !dbg !2030
  %6 = tail call i32* @__errno_location() #17, !dbg !2031
  %7 = load i32, i32* %6, align 4, !dbg !2031, !tbaa !714
  call void @llvm.dbg.value(metadata i32 %7, metadata !2020, metadata !DIExpression()) #12, !dbg !2032
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2033
  %9 = load i32, i32* %8, align 4, !dbg !2033, !tbaa !1106
  %10 = or i32 %9, 1, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %10, metadata !2021, metadata !DIExpression()) #12, !dbg !2035
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2036
  %12 = load i32, i32* %11, align 8, !dbg !2036, !tbaa !1047
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2037
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2038
  %15 = load i8*, i8** %14, align 8, !dbg !2038, !tbaa !1132
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2039
  %17 = load i8*, i8** %16, align 8, !dbg !2039, !tbaa !1135
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2040
  %19 = add i64 %18, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %19, metadata !2022, metadata !DIExpression()) #12, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %19, metadata !2043, metadata !DIExpression()) #12, !dbg !2048
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %20, metadata !2023, metadata !DIExpression()) #12, !dbg !2051
  %21 = load i32, i32* %11, align 8, !dbg !2052, !tbaa !1047
  %22 = load i8*, i8** %14, align 8, !dbg !2053, !tbaa !1132
  %23 = load i8*, i8** %16, align 8, !dbg !2054, !tbaa !1135
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2055
  store i32 %7, i32* %6, align 4, !dbg !2056, !tbaa !714
  ret i8* %20, !dbg !2057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2011, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i64 %1, metadata !2016, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64* %2, metadata !2017, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2018, metadata !DIExpression()), !dbg !2061
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2062
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2019, metadata !DIExpression()), !dbg !2063
  %7 = tail call i32* @__errno_location() #17, !dbg !2064
  %8 = load i32, i32* %7, align 4, !dbg !2064, !tbaa !714
  call void @llvm.dbg.value(metadata i32 %8, metadata !2020, metadata !DIExpression()), !dbg !2065
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2066
  %10 = load i32, i32* %9, align 4, !dbg !2066, !tbaa !1106
  %11 = icmp ne i64* %2, null, !dbg !2067
  %12 = xor i1 %11, true, !dbg !2067
  %13 = zext i1 %12 to i32, !dbg !2067
  %14 = or i32 %10, %13, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %14, metadata !2021, metadata !DIExpression()), !dbg !2069
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2070
  %16 = load i32, i32* %15, align 8, !dbg !2070, !tbaa !1047
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2071
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2072
  %19 = load i8*, i8** %18, align 8, !dbg !2072, !tbaa !1132
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2073
  %21 = load i8*, i8** %20, align 8, !dbg !2073, !tbaa !1135
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2074
  %23 = add i64 %22, 1, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %23, metadata !2022, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %23, metadata !2043, metadata !DIExpression()) #12, !dbg !2077
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %24, metadata !2023, metadata !DIExpression()), !dbg !2080
  %25 = load i32, i32* %15, align 8, !dbg !2081, !tbaa !1047
  %26 = load i8*, i8** %18, align 8, !dbg !2082, !tbaa !1132
  %27 = load i8*, i8** %20, align 8, !dbg !2083, !tbaa !1135
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2084
  store i32 %8, i32* %7, align 4, !dbg !2085, !tbaa !714
  br i1 %11, label %29, label %30, !dbg !2086

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2087, !tbaa !2089
  br label %30, !dbg !2090

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2092 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2096, !tbaa !629
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2094, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i32 1, metadata !2095, metadata !DIExpression()), !dbg !2098
  %2 = load i32, i32* @nslots, align 4, !dbg !2099, !tbaa !714
  %3 = icmp sgt i32 %2, 1, !dbg !2102
  br i1 %3, label %4, label %12, !dbg !2103

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2095, metadata !DIExpression()), !dbg !2098
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2104
  %7 = load i8*, i8** %6, align 8, !dbg !2104, !tbaa !2105
  tail call void @free(i8* %7) #12, !dbg !2107
  %8 = add nuw nsw i64 %5, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i32 undef, metadata !2095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2098
  %9 = load i32, i32* @nslots, align 4, !dbg !2099, !tbaa !714
  %10 = sext i32 %9 to i64, !dbg !2102
  %11 = icmp slt i64 %8, %10, !dbg !2102
  br i1 %11, label %4, label %12, !dbg !2103, !llvm.loop !2109

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2111
  %14 = load i8*, i8** %13, align 8, !dbg !2111, !tbaa !2105
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2113
  br i1 %15, label %17, label %16, !dbg !2114

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2115
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2117, !tbaa !2118
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2119, !tbaa !2105
  br label %17, !dbg !2120

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2121
  br i1 %18, label %21, label %19, !dbg !2123

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2124
  tail call void @free(i8* %20) #12, !dbg !2126
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2127, !tbaa !629
  br label %21, !dbg !2128

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2129, !tbaa !714
  ret void, !dbg !2130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2135, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8* %1, metadata !2136, metadata !DIExpression()), !dbg !2138
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2139
  ret i8* %3, !dbg !2140
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2145, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* %1, metadata !2146, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %2, metadata !2147, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2148, metadata !DIExpression()), !dbg !2163
  %5 = tail call i32* @__errno_location() #17, !dbg !2164
  %6 = load i32, i32* %5, align 4, !dbg !2164, !tbaa !714
  call void @llvm.dbg.value(metadata i32 %6, metadata !2149, metadata !DIExpression()), !dbg !2165
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2166, !tbaa !629
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2150, metadata !DIExpression()), !dbg !2167
  %8 = icmp slt i32 %0, 0, !dbg !2168
  br i1 %8, label %9, label %10, !dbg !2170

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2171
  unreachable, !dbg !2171

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2172, !tbaa !714
  %12 = icmp sgt i32 %11, %0, !dbg !2173
  br i1 %12, label %34, label %13, !dbg !2174

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2175
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2154, metadata !DIExpression()), !dbg !2176
  %15 = icmp eq i32 %0, 2147483647, !dbg !2177
  br i1 %15, label %16, label %17, !dbg !2179

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2180
  unreachable, !dbg !2180

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2181
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2181
  %20 = add nsw i32 %0, 1, !dbg !2182
  %21 = sext i32 %20 to i64, !dbg !2183
  %22 = shl nsw i64 %21, 4, !dbg !2184
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2185
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2185
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2150, metadata !DIExpression()), !dbg !2167
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2186, !tbaa !629
  br i1 %14, label %25, label %26, !dbg !2187

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2188, !tbaa.struct !2190
  br label %26, !dbg !2191

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2192, !tbaa !714
  %28 = sext i32 %27 to i64, !dbg !2193
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2193
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2194
  %31 = sub nsw i32 %20, %27, !dbg !2195
  %32 = sext i32 %31 to i64, !dbg !2196
  %33 = shl nsw i64 %32, 4, !dbg !2197
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2194
  store i32 %20, i32* @nslots, align 4, !dbg !2198, !tbaa !714
  br label %34, !dbg !2199

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2200
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2150, metadata !DIExpression()), !dbg !2167
  %36 = sext i32 %0 to i64, !dbg !2201
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2202
  %38 = load i64, i64* %37, align 8, !dbg !2202, !tbaa !2118
  call void @llvm.dbg.value(metadata i64 %38, metadata !2155, metadata !DIExpression()), !dbg !2203
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2204
  %40 = load i8*, i8** %39, align 8, !dbg !2204, !tbaa !2105
  call void @llvm.dbg.value(metadata i8* %40, metadata !2157, metadata !DIExpression()), !dbg !2205
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2206
  %42 = load i32, i32* %41, align 4, !dbg !2206, !tbaa !1106
  %43 = or i32 %42, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %43, metadata !2158, metadata !DIExpression()), !dbg !2208
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2209
  %45 = load i32, i32* %44, align 8, !dbg !2209, !tbaa !1047
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2210
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2211
  %48 = load i8*, i8** %47, align 8, !dbg !2211, !tbaa !1132
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2212
  %50 = load i8*, i8** %49, align 8, !dbg !2212, !tbaa !1135
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2213
  call void @llvm.dbg.value(metadata i64 %51, metadata !2159, metadata !DIExpression()), !dbg !2214
  %52 = icmp ugt i64 %38, %51, !dbg !2215
  br i1 %52, label %63, label %53, !dbg !2217

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %54, metadata !2155, metadata !DIExpression()), !dbg !2203
  store i64 %54, i64* %37, align 8, !dbg !2220, !tbaa !2118
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2221
  br i1 %55, label %57, label %56, !dbg !2223

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2224
  br label %57, !dbg !2224

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2043, metadata !DIExpression()) #12, !dbg !2225
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2227
  call void @llvm.dbg.value(metadata i8* %58, metadata !2157, metadata !DIExpression()), !dbg !2205
  store i8* %58, i8** %39, align 8, !dbg !2228, !tbaa !2105
  %59 = load i32, i32* %44, align 8, !dbg !2229, !tbaa !1047
  %60 = load i8*, i8** %47, align 8, !dbg !2230, !tbaa !1132
  %61 = load i8*, i8** %49, align 8, !dbg !2231, !tbaa !1135
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2232
  br label %63, !dbg !2233

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8* %64, metadata !2157, metadata !DIExpression()), !dbg !2205
  store i32 %6, i32* %5, align 4, !dbg !2235, !tbaa !714
  ret i8* %64, !dbg !2236
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2241, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %1, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %2, metadata !2243, metadata !DIExpression()), !dbg !2246
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2247
  ret i8* %4, !dbg !2248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2249 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 0, metadata !2135, metadata !DIExpression()) #12, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %0, metadata !2136, metadata !DIExpression()) #12, !dbg !2255
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2256
  ret i8* %2, !dbg !2257
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2258 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2262, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %1, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 0, metadata !2241, metadata !DIExpression()) #12, !dbg !2266
  call void @llvm.dbg.value(metadata i8* %0, metadata !2242, metadata !DIExpression()) #12, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %1, metadata !2243, metadata !DIExpression()) #12, !dbg !2269
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2270
  ret i8* %3, !dbg !2271
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2272 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 %1, metadata !2277, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %2, metadata !2278, metadata !DIExpression()), !dbg !2282
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2283
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2283
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2279, metadata !DIExpression(DW_OP_deref)), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %1, metadata !2285, metadata !DIExpression()) #12, !dbg !2291
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2293, !alias.scope !2294
  %6 = icmp eq i32 %1, 10, !dbg !2297
  br i1 %6, label %7, label %8, !dbg !2299

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2300, !noalias !2294
  unreachable, !dbg !2300

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2301
  store i32 %1, i32* %9, align 8, !dbg !2302, !tbaa !1047, !alias.scope !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2279, metadata !DIExpression(DW_OP_deref)), !dbg !2284
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2290, metadata !DIExpression(DW_OP_deref)), !dbg !2293
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2303
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2304
  ret i8* %10, !dbg !2305
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2306 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2310, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 %1, metadata !2311, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %2, metadata !2312, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i64 %3, metadata !2313, metadata !DIExpression()), !dbg !2318
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2319
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2314, metadata !DIExpression(DW_OP_deref)), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %1, metadata !2285, metadata !DIExpression()) #12, !dbg !2321
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !2323, !alias.scope !2324
  %7 = icmp eq i32 %1, 10, !dbg !2327
  br i1 %7, label %8, label %9, !dbg !2328

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2329, !noalias !2324
  unreachable, !dbg !2329

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2330
  store i32 %1, i32* %10, align 8, !dbg !2331, !tbaa !1047, !alias.scope !2324
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2314, metadata !DIExpression(DW_OP_deref)), !dbg !2320
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2290, metadata !DIExpression(DW_OP_deref)), !dbg !2323
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2333
  ret i8* %11, !dbg !2334
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2335 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %1, metadata !2340, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !2276, metadata !DIExpression()) #12, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %0, metadata !2277, metadata !DIExpression()) #12, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %1, metadata !2278, metadata !DIExpression()) #12, !dbg !2346
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2347
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2347
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2279, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2348
  call void @llvm.dbg.value(metadata i32 %0, metadata !2285, metadata !DIExpression()) #12, !dbg !2349
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !2351, !alias.scope !2352
  %5 = icmp eq i32 %0, 10, !dbg !2355
  br i1 %5, label %6, label %7, !dbg !2356

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2357, !noalias !2352
  unreachable, !dbg !2357

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2358
  store i32 %0, i32* %8, align 8, !dbg !2359, !tbaa !1047, !alias.scope !2352
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2279, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2348
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2290, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2351
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2361
  ret i8* %9, !dbg !2362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2363 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8* %1, metadata !2368, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %2, metadata !2369, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i32 0, metadata !2310, metadata !DIExpression()) #12, !dbg !2373
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()) #12, !dbg !2375
  call void @llvm.dbg.value(metadata i8* %1, metadata !2312, metadata !DIExpression()) #12, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %2, metadata !2313, metadata !DIExpression()) #12, !dbg !2377
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2378
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2378
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2314, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %0, metadata !2285, metadata !DIExpression()) #12, !dbg !2380
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2382, !alias.scope !2383
  %6 = icmp eq i32 %0, 10, !dbg !2386
  br i1 %6, label %7, label %8, !dbg !2387

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2388, !noalias !2383
  unreachable, !dbg !2388

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2389
  store i32 %0, i32* %9, align 8, !dbg !2390, !tbaa !1047, !alias.scope !2383
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2314, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2290, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2382
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2392
  ret i8* %10, !dbg !2393
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2394 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i64 %1, metadata !2399, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %2, metadata !2400, metadata !DIExpression()), !dbg !2404
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2405
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2406, !tbaa.struct !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1066, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 %2, metadata !1067, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 1, metadata !1068, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %2, metadata !1069, metadata !DIExpression()), !dbg !2413
  %6 = lshr i8 %2, 5, !dbg !2414
  %7 = zext i8 %6 to i64, !dbg !2414
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2415
  call void @llvm.dbg.value(metadata i32* %8, metadata !1070, metadata !DIExpression()), !dbg !2416
  %9 = and i8 %2, 31, !dbg !2417
  %10 = zext i8 %9 to i32, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %10, metadata !1072, metadata !DIExpression()), !dbg !2418
  %11 = load i32, i32* %8, align 4, !dbg !2419, !tbaa !714
  %12 = lshr i32 %11, %10, !dbg !2420
  %13 = and i32 %12, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %13, metadata !1073, metadata !DIExpression()), !dbg !2422
  %14 = xor i32 %13, 1, !dbg !2423
  %15 = shl i32 %14, %10, !dbg !2424
  %16 = xor i32 %15, %11, !dbg !2425
  store i32 %16, i32* %8, align 4, !dbg !2425, !tbaa !714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2426
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2427
  ret i8* %17, !dbg !2428
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2429 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 %1, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()) #12, !dbg !2437
  call void @llvm.dbg.value(metadata i64 -1, metadata !2399, metadata !DIExpression()) #12, !dbg !2439
  call void @llvm.dbg.value(metadata i8 %1, metadata !2400, metadata !DIExpression()) #12, !dbg !2440
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2441
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2442, !tbaa.struct !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2401, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2443
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1066, metadata !DIExpression()) #12, !dbg !2444
  call void @llvm.dbg.value(metadata i8 %1, metadata !1067, metadata !DIExpression()) #12, !dbg !2446
  call void @llvm.dbg.value(metadata i32 1, metadata !1068, metadata !DIExpression()) #12, !dbg !2447
  call void @llvm.dbg.value(metadata i8 %1, metadata !1069, metadata !DIExpression()) #12, !dbg !2448
  %5 = lshr i8 %1, 5, !dbg !2449
  %6 = zext i8 %5 to i64, !dbg !2449
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2450
  call void @llvm.dbg.value(metadata i32* %7, metadata !1070, metadata !DIExpression()) #12, !dbg !2451
  %8 = and i8 %1, 31, !dbg !2452
  %9 = zext i8 %8 to i32, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %9, metadata !1072, metadata !DIExpression()) #12, !dbg !2453
  %10 = load i32, i32* %7, align 4, !dbg !2454, !tbaa !714
  %11 = lshr i32 %10, %9, !dbg !2455
  %12 = and i32 %11, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %12, metadata !1073, metadata !DIExpression()) #12, !dbg !2457
  %13 = xor i32 %12, 1, !dbg !2458
  %14 = shl i32 %13, %9, !dbg !2459
  %15 = xor i32 %14, %10, !dbg !2460
  store i32 %15, i32* %7, align 4, !dbg !2460, !tbaa !714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2401, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2443
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2461
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2462
  ret i8* %16, !dbg !2463
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2464 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %0, metadata !2433, metadata !DIExpression()) #12, !dbg !2468
  call void @llvm.dbg.value(metadata i8 58, metadata !2434, metadata !DIExpression()) #12, !dbg !2470
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()) #12, !dbg !2471
  call void @llvm.dbg.value(metadata i64 -1, metadata !2399, metadata !DIExpression()) #12, !dbg !2473
  call void @llvm.dbg.value(metadata i8 58, metadata !2400, metadata !DIExpression()) #12, !dbg !2474
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2475
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2476, !tbaa.struct !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2401, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1066, metadata !DIExpression()) #12, !dbg !2478
  call void @llvm.dbg.value(metadata i8 58, metadata !1067, metadata !DIExpression()) #12, !dbg !2480
  call void @llvm.dbg.value(metadata i32 1, metadata !1068, metadata !DIExpression()) #12, !dbg !2481
  call void @llvm.dbg.value(metadata i8 58, metadata !1069, metadata !DIExpression()) #12, !dbg !2482
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2483
  call void @llvm.dbg.value(metadata i32* %4, metadata !1070, metadata !DIExpression()) #12, !dbg !2484
  call void @llvm.dbg.value(metadata i32 26, metadata !1072, metadata !DIExpression()) #12, !dbg !2485
  %5 = load i32, i32* %4, align 4, !dbg !2486, !tbaa !714
  %6 = or i32 %5, 67108864, !dbg !2487
  store i32 %6, i32* %4, align 4, !dbg !2487, !tbaa !714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2401, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2477
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2488
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2489
  ret i8* %7, !dbg !2490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2491 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2493, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %1, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()) #12, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %1, metadata !2399, metadata !DIExpression()) #12, !dbg !2499
  call void @llvm.dbg.value(metadata i8 58, metadata !2400, metadata !DIExpression()) #12, !dbg !2500
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2501
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2502, !tbaa.struct !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2401, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2503
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1066, metadata !DIExpression()) #12, !dbg !2504
  call void @llvm.dbg.value(metadata i8 58, metadata !1067, metadata !DIExpression()) #12, !dbg !2506
  call void @llvm.dbg.value(metadata i32 1, metadata !1068, metadata !DIExpression()) #12, !dbg !2507
  call void @llvm.dbg.value(metadata i8 58, metadata !1069, metadata !DIExpression()) #12, !dbg !2508
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2509
  call void @llvm.dbg.value(metadata i32* %5, metadata !1070, metadata !DIExpression()) #12, !dbg !2510
  call void @llvm.dbg.value(metadata i32 26, metadata !1072, metadata !DIExpression()) #12, !dbg !2511
  %6 = load i32, i32* %5, align 4, !dbg !2512, !tbaa !714
  %7 = or i32 %6, 67108864, !dbg !2513
  store i32 %7, i32* %5, align 4, !dbg !2513, !tbaa !714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2401, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2503
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2514
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2515
  ret i8* %8, !dbg !2516
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2517 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2290, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2523
  call void @llvm.dbg.value(metadata i32 %0, metadata !2519, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %2, metadata !2521, metadata !DIExpression()), !dbg !2527
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2528
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2528
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2529
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2529
  call void @llvm.dbg.value(metadata i32 %1, metadata !2285, metadata !DIExpression()) #12, !dbg !2530
  call void @llvm.dbg.value(metadata i32 0, metadata !2290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2523
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2523, !alias.scope !2531
  %8 = icmp eq i32 %1, 10, !dbg !2534
  br i1 %8, label %9, label %10, !dbg !2535

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2536, !noalias !2531
  unreachable, !dbg !2536

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2523
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2529
  store i32 %1, i32* %11, align 8, !dbg !2529
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2529
  %13 = bitcast i32* %12 to i8*, !dbg !2529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2529
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2529
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2522, metadata !DIExpression(DW_OP_deref)), !dbg !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1066, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 58, metadata !1067, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 1, metadata !1068, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 58, metadata !1069, metadata !DIExpression()), !dbg !2542
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2543
  call void @llvm.dbg.value(metadata i32* %14, metadata !1070, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 26, metadata !1072, metadata !DIExpression()), !dbg !2545
  %15 = load i32, i32* %14, align 4, !dbg !2546, !tbaa !714
  %16 = or i32 %15, 67108864, !dbg !2547
  store i32 %16, i32* %14, align 4, !dbg !2547, !tbaa !714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2522, metadata !DIExpression(DW_OP_deref)), !dbg !2537
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2549
  ret i8* %17, !dbg !2550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2551 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8* %1, metadata !2556, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8* %2, metadata !2557, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %3, metadata !2558, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()) #12, !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()) #12, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()) #12, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %3, metadata !2570, metadata !DIExpression()) #12, !dbg !2577
  call void @llvm.dbg.value(metadata i64 -1, metadata !2571, metadata !DIExpression()) #12, !dbg !2578
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2579
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2580, !tbaa.struct !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2572, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1114, metadata !DIExpression()) #12, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %1, metadata !1115, metadata !DIExpression()) #12, !dbg !2584
  call void @llvm.dbg.value(metadata i8* %2, metadata !1116, metadata !DIExpression()) #12, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1114, metadata !DIExpression()) #12, !dbg !2582
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2586
  store i32 10, i32* %7, align 8, !dbg !2587, !tbaa !1047
  %8 = icmp ne i8* %1, null, !dbg !2588
  %9 = icmp ne i8* %2, null, !dbg !2589
  %10 = and i1 %8, %9, !dbg !2590
  br i1 %10, label %12, label %11, !dbg !2590

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2591
  unreachable, !dbg !2591

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2592
  store i8* %1, i8** %13, align 8, !dbg !2593, !tbaa !1132
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2594
  store i8* %2, i8** %14, align 8, !dbg !2595, !tbaa !1135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2572, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2581
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2597
  ret i8* %15, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2564 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8* %3, metadata !2570, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 %4, metadata !2571, metadata !DIExpression()), !dbg !2603
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2604
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2605, !tbaa.struct !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2572, metadata !DIExpression(DW_OP_deref)), !dbg !2606
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1114, metadata !DIExpression()) #12, !dbg !2607
  call void @llvm.dbg.value(metadata i8* %1, metadata !1115, metadata !DIExpression()) #12, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %2, metadata !1116, metadata !DIExpression()) #12, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1114, metadata !DIExpression()) #12, !dbg !2607
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2611
  store i32 10, i32* %8, align 8, !dbg !2612, !tbaa !1047
  %9 = icmp ne i8* %1, null, !dbg !2613
  %10 = icmp ne i8* %2, null, !dbg !2614
  %11 = and i1 %9, %10, !dbg !2615
  br i1 %11, label %13, label %12, !dbg !2615

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2616
  unreachable, !dbg !2616

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2617
  store i8* %1, i8** %14, align 8, !dbg !2618, !tbaa !1132
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2619
  store i8* %2, i8** %15, align 8, !dbg !2620, !tbaa !1135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2572, metadata !DIExpression(DW_OP_deref)), !dbg !2606
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2622
  ret i8* %16, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2624 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %2, metadata !2630, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()) #12, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %0, metadata !2556, metadata !DIExpression()) #12, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %1, metadata !2557, metadata !DIExpression()) #12, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %2, metadata !2558, metadata !DIExpression()) #12, !dbg !2638
  call void @llvm.dbg.value(metadata i32 0, metadata !2563, metadata !DIExpression()) #12, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %0, metadata !2568, metadata !DIExpression()) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()) #12, !dbg !2642
  call void @llvm.dbg.value(metadata i8* %2, metadata !2570, metadata !DIExpression()) #12, !dbg !2643
  call void @llvm.dbg.value(metadata i64 -1, metadata !2571, metadata !DIExpression()) #12, !dbg !2644
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2645
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2646, !tbaa.struct !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2572, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1114, metadata !DIExpression()) #12, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %0, metadata !1115, metadata !DIExpression()) #12, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %1, metadata !1116, metadata !DIExpression()) #12, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1114, metadata !DIExpression()) #12, !dbg !2648
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2652
  store i32 10, i32* %6, align 8, !dbg !2653, !tbaa !1047
  %7 = icmp ne i8* %0, null, !dbg !2654
  %8 = icmp ne i8* %1, null, !dbg !2655
  %9 = and i1 %7, %8, !dbg !2656
  br i1 %9, label %11, label %10, !dbg !2656

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2657
  unreachable, !dbg !2657

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2658
  store i8* %0, i8** %12, align 8, !dbg !2659, !tbaa !1132
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2660
  store i8* %1, i8** %13, align 8, !dbg !2661, !tbaa !1135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2572, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2647
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2663
  ret i8* %14, !dbg !2664
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2665 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8* %1, metadata !2670, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %2, metadata !2671, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %3, metadata !2672, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2563, metadata !DIExpression()) #12, !dbg !2677
  call void @llvm.dbg.value(metadata i8* %0, metadata !2568, metadata !DIExpression()) #12, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()) #12, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %2, metadata !2570, metadata !DIExpression()) #12, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %3, metadata !2571, metadata !DIExpression()) #12, !dbg !2682
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2683
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2683
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2684, !tbaa.struct !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2572, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2685
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1114, metadata !DIExpression()) #12, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %0, metadata !1115, metadata !DIExpression()) #12, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %1, metadata !1116, metadata !DIExpression()) #12, !dbg !2689
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1114, metadata !DIExpression()) #12, !dbg !2686
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2690
  store i32 10, i32* %7, align 8, !dbg !2691, !tbaa !1047
  %8 = icmp ne i8* %0, null, !dbg !2692
  %9 = icmp ne i8* %1, null, !dbg !2693
  %10 = and i1 %8, %9, !dbg !2694
  br i1 %10, label %12, label %11, !dbg !2694

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2695
  unreachable, !dbg !2695

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2696
  store i8* %0, i8** %13, align 8, !dbg !2697, !tbaa !1132
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2698
  store i8* %1, i8** %14, align 8, !dbg !2699, !tbaa !1135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2572, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2685
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2700
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2701
  ret i8* %15, !dbg !2702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8* %1, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 %2, metadata !2709, metadata !DIExpression()), !dbg !2712
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2713
  ret i8* %4, !dbg !2714
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2719, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()) #12, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %0, metadata !2708, metadata !DIExpression()) #12, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()) #12, !dbg !2726
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2727
  ret i8* %3, !dbg !2728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %1, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()) #12, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %1, metadata !2708, metadata !DIExpression()) #12, !dbg !2739
  call void @llvm.dbg.value(metadata i64 -1, metadata !2709, metadata !DIExpression()) #12, !dbg !2740
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2741
  ret i8* %3, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2743 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()) #12, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %0, metadata !2734, metadata !DIExpression()) #12, !dbg !2751
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()) #12, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %0, metadata !2708, metadata !DIExpression()) #12, !dbg !2754
  call void @llvm.dbg.value(metadata i64 -1, metadata !2709, metadata !DIExpression()) #12, !dbg !2755
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2756
  ret i8* %2, !dbg !2757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2758 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2818, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8* %1, metadata !2819, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8* %2, metadata !2820, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %3, metadata !2821, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8** %4, metadata !2822, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %5, metadata !2823, metadata !DIExpression()), !dbg !2829
  %7 = icmp eq i8* %1, null, !dbg !2830
  br i1 %7, label %10, label %8, !dbg !2832

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2833
  br label %12, !dbg !2833

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2834
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #12, !dbg !2835
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !2835
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.84, i64 0, i64 0), i32 5) #12, !dbg !2836
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2836
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
  ], !dbg !2837

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2838
  unreachable, !dbg !2838

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #12, !dbg !2840
  %20 = load i8*, i8** %4, align 8, !dbg !2840, !tbaa !629
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !2840
  br label %146, !dbg !2841

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.86, i64 0, i64 0), i32 5) #12, !dbg !2842
  %24 = load i8*, i8** %4, align 8, !dbg !2842, !tbaa !629
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2842
  %26 = load i8*, i8** %25, align 8, !dbg !2842, !tbaa !629
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !2842
  br label %146, !dbg !2843

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #12, !dbg !2844
  %30 = load i8*, i8** %4, align 8, !dbg !2844, !tbaa !629
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2844
  %32 = load i8*, i8** %31, align 8, !dbg !2844, !tbaa !629
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2844
  %34 = load i8*, i8** %33, align 8, !dbg !2844, !tbaa !629
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !2844
  br label %146, !dbg !2845

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #12, !dbg !2846
  %38 = load i8*, i8** %4, align 8, !dbg !2846, !tbaa !629
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2846
  %40 = load i8*, i8** %39, align 8, !dbg !2846, !tbaa !629
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2846
  %42 = load i8*, i8** %41, align 8, !dbg !2846, !tbaa !629
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2846
  %44 = load i8*, i8** %43, align 8, !dbg !2846, !tbaa !629
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !2846
  br label %146, !dbg !2847

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #12, !dbg !2848
  %48 = load i8*, i8** %4, align 8, !dbg !2848, !tbaa !629
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2848
  %50 = load i8*, i8** %49, align 8, !dbg !2848, !tbaa !629
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2848
  %52 = load i8*, i8** %51, align 8, !dbg !2848, !tbaa !629
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2848
  %54 = load i8*, i8** %53, align 8, !dbg !2848, !tbaa !629
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2848
  %56 = load i8*, i8** %55, align 8, !dbg !2848, !tbaa !629
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !2848
  br label %146, !dbg !2849

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #12, !dbg !2850
  %60 = load i8*, i8** %4, align 8, !dbg !2850, !tbaa !629
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2850
  %62 = load i8*, i8** %61, align 8, !dbg !2850, !tbaa !629
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2850
  %64 = load i8*, i8** %63, align 8, !dbg !2850, !tbaa !629
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2850
  %66 = load i8*, i8** %65, align 8, !dbg !2850, !tbaa !629
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2850
  %68 = load i8*, i8** %67, align 8, !dbg !2850, !tbaa !629
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2850
  %70 = load i8*, i8** %69, align 8, !dbg !2850, !tbaa !629
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !2850
  br label %146, !dbg !2851

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #12, !dbg !2852
  %74 = load i8*, i8** %4, align 8, !dbg !2852, !tbaa !629
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2852
  %76 = load i8*, i8** %75, align 8, !dbg !2852, !tbaa !629
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2852
  %78 = load i8*, i8** %77, align 8, !dbg !2852, !tbaa !629
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2852
  %80 = load i8*, i8** %79, align 8, !dbg !2852, !tbaa !629
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2852
  %82 = load i8*, i8** %81, align 8, !dbg !2852, !tbaa !629
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2852
  %84 = load i8*, i8** %83, align 8, !dbg !2852, !tbaa !629
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2852
  %86 = load i8*, i8** %85, align 8, !dbg !2852, !tbaa !629
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !2852
  br label %146, !dbg !2853

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #12, !dbg !2854
  %90 = load i8*, i8** %4, align 8, !dbg !2854, !tbaa !629
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2854
  %92 = load i8*, i8** %91, align 8, !dbg !2854, !tbaa !629
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2854
  %94 = load i8*, i8** %93, align 8, !dbg !2854, !tbaa !629
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2854
  %96 = load i8*, i8** %95, align 8, !dbg !2854, !tbaa !629
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2854
  %98 = load i8*, i8** %97, align 8, !dbg !2854, !tbaa !629
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2854
  %100 = load i8*, i8** %99, align 8, !dbg !2854, !tbaa !629
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2854
  %102 = load i8*, i8** %101, align 8, !dbg !2854, !tbaa !629
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2854
  %104 = load i8*, i8** %103, align 8, !dbg !2854, !tbaa !629
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !2854
  br label %146, !dbg !2855

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #12, !dbg !2856
  %108 = load i8*, i8** %4, align 8, !dbg !2856, !tbaa !629
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2856
  %110 = load i8*, i8** %109, align 8, !dbg !2856, !tbaa !629
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2856
  %112 = load i8*, i8** %111, align 8, !dbg !2856, !tbaa !629
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2856
  %114 = load i8*, i8** %113, align 8, !dbg !2856, !tbaa !629
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2856
  %116 = load i8*, i8** %115, align 8, !dbg !2856, !tbaa !629
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2856
  %118 = load i8*, i8** %117, align 8, !dbg !2856, !tbaa !629
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2856
  %120 = load i8*, i8** %119, align 8, !dbg !2856, !tbaa !629
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2856
  %122 = load i8*, i8** %121, align 8, !dbg !2856, !tbaa !629
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2856
  %124 = load i8*, i8** %123, align 8, !dbg !2856, !tbaa !629
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !2856
  br label %146, !dbg !2857

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #12, !dbg !2858
  %128 = load i8*, i8** %4, align 8, !dbg !2858, !tbaa !629
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2858
  %130 = load i8*, i8** %129, align 8, !dbg !2858, !tbaa !629
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2858
  %132 = load i8*, i8** %131, align 8, !dbg !2858, !tbaa !629
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2858
  %134 = load i8*, i8** %133, align 8, !dbg !2858, !tbaa !629
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2858
  %136 = load i8*, i8** %135, align 8, !dbg !2858, !tbaa !629
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2858
  %138 = load i8*, i8** %137, align 8, !dbg !2858, !tbaa !629
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2858
  %140 = load i8*, i8** %139, align 8, !dbg !2858, !tbaa !629
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2858
  %142 = load i8*, i8** %141, align 8, !dbg !2858, !tbaa !629
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2858
  %144 = load i8*, i8** %143, align 8, !dbg !2858, !tbaa !629
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !2858
  br label %146, !dbg !2859

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2861 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2865, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %1, metadata !2866, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* %2, metadata !2867, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %3, metadata !2868, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8** %4, metadata !2869, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 0, metadata !2870, metadata !DIExpression()), !dbg !2876
  br label %6, !dbg !2877

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2879
  call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2876
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2881
  %9 = load i8*, i8** %8, align 8, !dbg !2881, !tbaa !629
  %10 = icmp eq i8* %9, null, !dbg !2882
  %11 = add i64 %7, 1, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %11, metadata !2870, metadata !DIExpression()), !dbg !2876
  br i1 %10, label %12, label %6, !dbg !2882, !llvm.loop !2884

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2876
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2886
  ret void, !dbg !2887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2888 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2899, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %1, metadata !2900, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* %2, metadata !2901, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8* %3, metadata !2902, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2903, metadata !DIExpression()), !dbg !2911
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2912
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2912
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2905, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 0, metadata !2904, metadata !DIExpression()), !dbg !2914
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2904, metadata !DIExpression()), !dbg !2914
  %11 = load i32, i32* %8, align 8, !dbg !2915
  %12 = icmp ult i32 %11, 41, !dbg !2915
  br i1 %12, label %13, label %18, !dbg !2915

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2915
  %15 = sext i32 %11 to i64, !dbg !2915
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2915
  %17 = add i32 %11, 8, !dbg !2915
  store i32 %17, i32* %8, align 8, !dbg !2915
  br label %21, !dbg !2915

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2915
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2915
  store i8* %20, i8** %10, align 8, !dbg !2915
  br label %21, !dbg !2915

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2915
  %25 = load i8*, i8** %24, align 8, !dbg !2915
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2918
  store i8* %25, i8** %26, align 16, !dbg !2919, !tbaa !629
  %27 = icmp eq i8* %25, null, !dbg !2920
  br i1 %27, label %30, label %28, !dbg !2921

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 1, metadata !2904, metadata !DIExpression()), !dbg !2914
  %29 = icmp ult i32 %22, 41, !dbg !2915
  br i1 %29, label %35, label %32, !dbg !2915

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2922
  call void @llvm.dbg.value(metadata i64 %31, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %31, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2924
  ret void, !dbg !2924

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2915
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2915
  store i8* %34, i8** %10, align 8, !dbg !2915
  br label %40, !dbg !2915

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2915
  %37 = sext i32 %22 to i64, !dbg !2915
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2915
  %39 = add i32 %22, 8, !dbg !2915
  store i32 %39, i32* %8, align 8, !dbg !2915
  br label %40, !dbg !2915

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2915
  %44 = load i8*, i8** %43, align 8, !dbg !2915
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2918
  store i8* %44, i8** %45, align 8, !dbg !2919, !tbaa !629
  %46 = icmp eq i8* %44, null, !dbg !2920
  br i1 %46, label %30, label %47, !dbg !2921

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 2, metadata !2904, metadata !DIExpression()), !dbg !2914
  %48 = icmp ult i32 %41, 41, !dbg !2915
  br i1 %48, label %52, label %49, !dbg !2915

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2915
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2915
  store i8* %51, i8** %10, align 8, !dbg !2915
  br label %57, !dbg !2915

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2915
  %54 = sext i32 %41 to i64, !dbg !2915
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2915
  %56 = add i32 %41, 8, !dbg !2915
  store i32 %56, i32* %8, align 8, !dbg !2915
  br label %57, !dbg !2915

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2915
  %61 = load i8*, i8** %60, align 8, !dbg !2915
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2918
  store i8* %61, i8** %62, align 16, !dbg !2919, !tbaa !629
  %63 = icmp eq i8* %61, null, !dbg !2920
  br i1 %63, label %30, label %64, !dbg !2921

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 3, metadata !2904, metadata !DIExpression()), !dbg !2914
  %65 = icmp ult i32 %58, 41, !dbg !2915
  br i1 %65, label %69, label %66, !dbg !2915

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2915
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2915
  store i8* %68, i8** %10, align 8, !dbg !2915
  br label %74, !dbg !2915

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2915
  %71 = sext i32 %58 to i64, !dbg !2915
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2915
  %73 = add i32 %58, 8, !dbg !2915
  store i32 %73, i32* %8, align 8, !dbg !2915
  br label %74, !dbg !2915

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2915
  %78 = load i8*, i8** %77, align 8, !dbg !2915
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2918
  store i8* %78, i8** %79, align 8, !dbg !2919, !tbaa !629
  %80 = icmp eq i8* %78, null, !dbg !2920
  br i1 %80, label %30, label %81, !dbg !2921

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 4, metadata !2904, metadata !DIExpression()), !dbg !2914
  %82 = icmp ult i32 %75, 41, !dbg !2915
  br i1 %82, label %86, label %83, !dbg !2915

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2915
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2915
  store i8* %85, i8** %10, align 8, !dbg !2915
  br label %91, !dbg !2915

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2915
  %88 = sext i32 %75 to i64, !dbg !2915
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2915
  %90 = add i32 %75, 8, !dbg !2915
  store i32 %90, i32* %8, align 8, !dbg !2915
  br label %91, !dbg !2915

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2915
  %95 = load i8*, i8** %94, align 8, !dbg !2915
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2918
  store i8* %95, i8** %96, align 16, !dbg !2919, !tbaa !629
  %97 = icmp eq i8* %95, null, !dbg !2920
  br i1 %97, label %30, label %98, !dbg !2921

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 5, metadata !2904, metadata !DIExpression()), !dbg !2914
  %99 = icmp ult i32 %92, 41, !dbg !2915
  br i1 %99, label %103, label %100, !dbg !2915

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2915
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2915
  store i8* %102, i8** %10, align 8, !dbg !2915
  br label %108, !dbg !2915

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2915
  %105 = sext i32 %92 to i64, !dbg !2915
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2915
  %107 = add i32 %92, 8, !dbg !2915
  store i32 %107, i32* %8, align 8, !dbg !2915
  br label %108, !dbg !2915

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2915
  %111 = load i8*, i8** %110, align 8, !dbg !2915
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2918
  store i8* %111, i8** %112, align 8, !dbg !2919, !tbaa !629
  %113 = icmp eq i8* %111, null, !dbg !2920
  br i1 %113, label %30, label %114, !dbg !2921

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 6, metadata !2904, metadata !DIExpression()), !dbg !2914
  %115 = load i8*, i8** %10, align 8, !dbg !2915
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2915
  store i8* %116, i8** %10, align 8, !dbg !2915
  %117 = bitcast i8* %115 to i8**, !dbg !2915
  %118 = load i8*, i8** %117, align 8, !dbg !2915
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2918
  store i8* %118, i8** %119, align 16, !dbg !2919, !tbaa !629
  %120 = icmp eq i8* %118, null, !dbg !2920
  br i1 %120, label %30, label %121, !dbg !2921

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 7, metadata !2904, metadata !DIExpression()), !dbg !2914
  %122 = load i8*, i8** %10, align 8, !dbg !2915
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2915
  store i8* %123, i8** %10, align 8, !dbg !2915
  %124 = bitcast i8* %122 to i8**, !dbg !2915
  %125 = load i8*, i8** %124, align 8, !dbg !2915
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2918
  store i8* %125, i8** %126, align 8, !dbg !2919, !tbaa !629
  %127 = icmp eq i8* %125, null, !dbg !2920
  br i1 %127, label %30, label %128, !dbg !2921

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 8, metadata !2904, metadata !DIExpression()), !dbg !2914
  %129 = load i8*, i8** %10, align 8, !dbg !2915
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2915
  store i8* %130, i8** %10, align 8, !dbg !2915
  %131 = bitcast i8* %129 to i8**, !dbg !2915
  %132 = load i8*, i8** %131, align 8, !dbg !2915
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2918
  store i8* %132, i8** %133, align 16, !dbg !2919, !tbaa !629
  %134 = icmp eq i8* %132, null, !dbg !2920
  br i1 %134, label %30, label %135, !dbg !2921

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 9, metadata !2904, metadata !DIExpression()), !dbg !2914
  %136 = load i8*, i8** %10, align 8, !dbg !2915
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2915
  store i8* %137, i8** %10, align 8, !dbg !2915
  %138 = bitcast i8* %136 to i8**, !dbg !2915
  %139 = load i8*, i8** %138, align 8, !dbg !2915
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2918
  store i8* %139, i8** %140, align 8, !dbg !2919, !tbaa !629
  %141 = icmp eq i8* %139, null, !dbg !2920
  %142 = select i1 %141, i64 9, i64 10, !dbg !2921
  br label %30, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2925 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2929, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8* %1, metadata !2930, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* %2, metadata !2931, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8* %3, metadata !2932, metadata !DIExpression()), !dbg !2943
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2944
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2944
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2933, metadata !DIExpression()), !dbg !2945
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2946
  call void @llvm.va_start(i8* nonnull %6), !dbg !2946
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2947
  call void @llvm.va_end(i8* nonnull %6), !dbg !2948
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2949
  ret void, !dbg !2949
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2950 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #12, !dbg !2951
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.98, i64 0, i64 0)) #12, !dbg !2951
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #12, !dbg !2952
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.101, i64 0, i64 0)) #12, !dbg !2952
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.102, i64 0, i64 0), i32 5) #12, !dbg !2953
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2953, !tbaa !629
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2953
  ret void, !dbg !2954
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2955 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %1, metadata !2960, metadata !DIExpression()), !dbg !2962
  %3 = udiv i64 9223372036854775807, %1, !dbg !2963
  %4 = icmp ult i64 %3, %0, !dbg !2963
  br i1 %4, label %5, label %6, !dbg !2965

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2966
  unreachable, !dbg !2966

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %7, metadata !2968, metadata !DIExpression()) #12, !dbg !2975
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %8, metadata !2974, metadata !DIExpression()) #12, !dbg !2978
  %9 = icmp eq i8* %8, null, !dbg !2979
  %10 = icmp ne i64 %7, 0, !dbg !2981
  %11 = and i1 %10, %9, !dbg !2982
  br i1 %11, label %12, label %13, !dbg !2982

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2983
  unreachable, !dbg !2983

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2984
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2969 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2968, metadata !DIExpression()), !dbg !2985
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %2, metadata !2974, metadata !DIExpression()), !dbg !2987
  %3 = icmp eq i8* %2, null, !dbg !2988
  %4 = icmp ne i64 %0, 0, !dbg !2989
  %5 = and i1 %4, %3, !dbg !2990
  br i1 %5, label %6, label %7, !dbg !2990

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2991
  unreachable, !dbg !2991

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2992
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2993 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %2, metadata !2999, metadata !DIExpression()), !dbg !3002
  %4 = udiv i64 9223372036854775807, %2, !dbg !3003
  %5 = icmp ult i64 %4, %1, !dbg !3003
  br i1 %5, label %6, label %7, !dbg !3005

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3006
  unreachable, !dbg !3006

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()) #12, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %8, metadata !3013, metadata !DIExpression()) #12, !dbg !3016
  %9 = icmp eq i64 %8, 0, !dbg !3017
  %10 = icmp ne i8* %0, null, !dbg !3019
  %11 = and i1 %10, %9, !dbg !3020
  br i1 %11, label %12, label %13, !dbg !3020

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3021
  br label %19, !dbg !3023

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %14, metadata !3008, metadata !DIExpression()) #12, !dbg !3014
  %15 = icmp eq i8* %14, null, !dbg !3025
  %16 = icmp ne i64 %8, 0, !dbg !3027
  %17 = and i1 %16, %15, !dbg !3028
  br i1 %17, label %18, label %19, !dbg !3028

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3029
  unreachable, !dbg !3029

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3030
  ret i8* %20, !dbg !3031
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3009 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %1, metadata !3013, metadata !DIExpression()), !dbg !3033
  %3 = icmp eq i64 %1, 0, !dbg !3034
  %4 = icmp ne i8* %0, null, !dbg !3035
  %5 = and i1 %4, %3, !dbg !3036
  br i1 %5, label %6, label %7, !dbg !3036

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3037
  br label %13, !dbg !3038

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %8, metadata !3008, metadata !DIExpression()), !dbg !3032
  %9 = icmp eq i8* %8, null, !dbg !3040
  %10 = icmp ne i64 %1, 0, !dbg !3041
  %11 = and i1 %10, %9, !dbg !3042
  br i1 %11, label %12, label %13, !dbg !3042

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3043
  unreachable, !dbg !3043

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3044
  ret i8* %14, !dbg !3045
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !170 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !175, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64* %1, metadata !176, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %2, metadata !177, metadata !DIExpression()), !dbg !3048
  %4 = load i64, i64* %1, align 8, !dbg !3049, !tbaa !2089
  call void @llvm.dbg.value(metadata i64 %4, metadata !178, metadata !DIExpression()), !dbg !3050
  %5 = icmp eq i8* %0, null, !dbg !3051
  br i1 %5, label %6, label %20, !dbg !3053

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3054
  br i1 %7, label %8, label %13, !dbg !3057

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3058
  call void @llvm.dbg.value(metadata i64 %9, metadata !178, metadata !DIExpression()), !dbg !3050
  %10 = icmp ugt i64 %2, 128, !dbg !3060
  %11 = zext i1 %10 to i64, !dbg !3060
  %12 = add nuw nsw i64 %9, %11, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %12, metadata !178, metadata !DIExpression()), !dbg !3050
  br label %13, !dbg !3062

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3063
  call void @llvm.dbg.value(metadata i64 %14, metadata !178, metadata !DIExpression()), !dbg !3050
  %15 = udiv i64 9223372036854775807, %2, !dbg !3064
  %16 = icmp ult i64 %15, %14, !dbg !3064
  br i1 %16, label %19, label %17, !dbg !3066

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !178, metadata !DIExpression()), !dbg !3050
  store i64 %14, i64* %1, align 8, !dbg !3067, !tbaa !2089
  %18 = mul i64 %14, %2, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()) #12, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %28, metadata !3013, metadata !DIExpression()) #12, !dbg !3071
  br label %31, !dbg !3072

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3073
  unreachable, !dbg !3073

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3074
  %22 = icmp ugt i64 %21, %4, !dbg !3077
  br i1 %22, label %24, label %23, !dbg !3078

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3079
  unreachable, !dbg !3079

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3080
  %26 = add i64 %4, 1, !dbg !3081
  %27 = add i64 %26, %25, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %27, metadata !178, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %27, metadata !178, metadata !DIExpression()), !dbg !3050
  store i64 %27, i64* %1, align 8, !dbg !3067, !tbaa !2089
  %28 = mul i64 %27, %2, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()) #12, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %28, metadata !3013, metadata !DIExpression()) #12, !dbg !3071
  %29 = icmp eq i64 %28, 0, !dbg !3083
  br i1 %29, label %30, label %31, !dbg !3072

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3084
  br label %38, !dbg !3085

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %33, metadata !3008, metadata !DIExpression()) #12, !dbg !3069
  %34 = icmp eq i8* %33, null, !dbg !3087
  %35 = icmp ne i64 %32, 0, !dbg !3088
  %36 = and i1 %35, %34, !dbg !3089
  br i1 %36, label %37, label %38, !dbg !3089

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3090
  unreachable, !dbg !3090

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3091
  ret i8* %39, !dbg !3092
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3093 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %0, metadata !2968, metadata !DIExpression()) #12, !dbg !3097
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %2, metadata !2974, metadata !DIExpression()) #12, !dbg !3100
  %3 = icmp eq i8* %2, null, !dbg !3101
  %4 = icmp ne i64 %0, 0, !dbg !3102
  %5 = and i1 %4, %3, !dbg !3103
  br i1 %5, label %6, label %7, !dbg !3103

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3104
  unreachable, !dbg !3104

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3106 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64* %1, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %0, metadata !175, metadata !DIExpression()) #12, !dbg !3114
  call void @llvm.dbg.value(metadata i64* %1, metadata !176, metadata !DIExpression()) #12, !dbg !3116
  call void @llvm.dbg.value(metadata i64 1, metadata !177, metadata !DIExpression()) #12, !dbg !3117
  %3 = load i64, i64* %1, align 8, !dbg !3118, !tbaa !2089
  call void @llvm.dbg.value(metadata i64 %3, metadata !178, metadata !DIExpression()) #12, !dbg !3119
  %4 = icmp eq i8* %0, null, !dbg !3120
  br i1 %4, label %5, label %12, !dbg !3121

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3122
  br i1 %6, label %9, label %7, !dbg !3123

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !178, metadata !DIExpression()) #12, !dbg !3119
  %8 = icmp slt i64 %3, 0, !dbg !3124
  br i1 %8, label %11, label %9, !dbg !3125

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !178, metadata !DIExpression()) #12, !dbg !3119
  store i64 %10, i64* %1, align 8, !dbg !3126, !tbaa !2089
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()) #12, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %18, metadata !3013, metadata !DIExpression()) #12, !dbg !3129
  br label %21, !dbg !3130

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3131
  unreachable, !dbg !3131

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3132
  br i1 %13, label %15, label %14, !dbg !3133

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3134
  unreachable, !dbg !3134

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3135
  %17 = add i64 %3, 1, !dbg !3136
  %18 = add i64 %17, %16, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %18, metadata !178, metadata !DIExpression()) #12, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %18, metadata !178, metadata !DIExpression()) #12, !dbg !3119
  store i64 %18, i64* %1, align 8, !dbg !3126, !tbaa !2089
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()) #12, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %18, metadata !3013, metadata !DIExpression()) #12, !dbg !3129
  %19 = icmp eq i64 %18, 0, !dbg !3138
  br i1 %19, label %20, label %21, !dbg !3130

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3139
  br label %28, !dbg !3140

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3141
  call void @llvm.dbg.value(metadata i8* %23, metadata !3008, metadata !DIExpression()) #12, !dbg !3127
  %24 = icmp eq i8* %23, null, !dbg !3142
  %25 = icmp ne i64 %22, 0, !dbg !3143
  %26 = and i1 %25, %24, !dbg !3144
  br i1 %26, label %27, label %28, !dbg !3144

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3145
  unreachable, !dbg !3145

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3146
  ret i8* %29, !dbg !3147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3148 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3150, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %0, metadata !2968, metadata !DIExpression()) #12, !dbg !3152
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %2, metadata !2974, metadata !DIExpression()) #12, !dbg !3155
  %3 = icmp eq i8* %2, null, !dbg !3156
  %4 = icmp ne i64 %0, 0, !dbg !3157
  %5 = and i1 %4, %3, !dbg !3158
  br i1 %5, label %6, label %7, !dbg !3158

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3159
  unreachable, !dbg !3159

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3160
  ret i8* %2, !dbg !3161
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3162 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()), !dbg !3168
  %3 = udiv i64 9223372036854775807, %1, !dbg !3169
  %4 = icmp ult i64 %3, %0, !dbg !3169
  br i1 %4, label %8, label %5, !dbg !3171

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %6, metadata !3166, metadata !DIExpression()), !dbg !3173
  %7 = icmp eq i8* %6, null, !dbg !3174
  br i1 %7, label %8, label %9, !dbg !3175

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3176
  unreachable, !dbg !3176

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3177
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %1, metadata !2968, metadata !DIExpression()) #12, !dbg !3188
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()) #12, !dbg !3191
  %4 = icmp eq i8* %3, null, !dbg !3192
  %5 = icmp ne i64 %1, 0, !dbg !3193
  %6 = and i1 %5, %4, !dbg !3194
  br i1 %6, label %7, label %8, !dbg !3194

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3195
  unreachable, !dbg !3195

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3196
  ret i8* %3, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3198 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3200, metadata !DIExpression()), !dbg !3201
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3202
  %3 = add i64 %2, 1, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()) #12, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %3, metadata !3185, metadata !DIExpression()) #12, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %3, metadata !2968, metadata !DIExpression()) #12, !dbg !3207
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %4, metadata !2974, metadata !DIExpression()) #12, !dbg !3210
  %5 = icmp eq i8* %4, null, !dbg !3211
  %6 = icmp ne i64 %3, 0, !dbg !3212
  %7 = and i1 %6, %5, !dbg !3213
  br i1 %7, label %8, label %9, !dbg !3213

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3214
  unreachable, !dbg !3214

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3215
  ret i8* %4, !dbg !3216
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3217 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3219, !tbaa !714
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #12, !dbg !3220
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #12, !dbg !3221
  tail call void @abort() #15, !dbg !3222
  unreachable, !dbg !3222
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3223 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3226, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %1, metadata !3227, metadata !DIExpression()), !dbg !3230
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #12, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %3, metadata !3228, metadata !DIExpression()), !dbg !3232
  %4 = icmp eq i8* %3, null, !dbg !3233
  br i1 %4, label %5, label %6, !dbg !3235

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3236
  unreachable, !dbg !3236

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3237
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3238 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3248
  %3 = icmp eq i64 %0, 0, !dbg !3249
  %4 = icmp eq i64 %1, 0, !dbg !3250
  %5 = or i1 %3, %4, !dbg !3251
  br i1 %5, label %12, label %6, !dbg !3251

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3252
  call void @llvm.dbg.value(metadata i64 %7, metadata !3244, metadata !DIExpression()), !dbg !3253
  %8 = udiv i64 %7, %1, !dbg !3254
  %9 = icmp eq i64 %8, %0, !dbg !3256
  br i1 %9, label %12, label %10, !dbg !3257

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3258
  store i32 12, i32* %11, align 4, !dbg !3260, !tbaa !714
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3241, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %13, metadata !3242, metadata !DIExpression()), !dbg !3248
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %15, metadata !3243, metadata !DIExpression()), !dbg !3262
  br label %16, !dbg !3263

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3264
  ret i8* %17, !dbg !3265
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3266 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3283, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3284, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %2, metadata !3285, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3286, metadata !DIExpression()), !dbg !3295
  %6 = bitcast i32* %5 to i8*, !dbg !3296
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3296
  %7 = icmp eq i32* %0, null, !dbg !3297
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3299
  call void @llvm.dbg.value(metadata i32* %8, metadata !3283, metadata !DIExpression()), !dbg !3292
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %9, metadata !3287, metadata !DIExpression()), !dbg !3301
  %10 = icmp ugt i64 %9, -3, !dbg !3302
  %11 = icmp ne i64 %2, 0, !dbg !3303
  %12 = and i1 %11, %10, !dbg !3304
  br i1 %12, label %13, label %18, !dbg !3304

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3305
  br i1 %14, label %18, label %15, !dbg !3306

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3307, !tbaa !773
  call void @llvm.dbg.value(metadata i8 %16, metadata !3289, metadata !DIExpression()), !dbg !3308
  %17 = zext i8 %16 to i32, !dbg !3309
  store i32 %17, i32* %8, align 4, !dbg !3310, !tbaa !714
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3312
  ret i64 %19, !dbg !3312
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3313 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3352, metadata !DIExpression()), !dbg !3357
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3358
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3359, metadata !DIExpression()), !dbg !3362
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3364
  %4 = load i32, i32* %3, align 8, !dbg !3364, !tbaa !3365
  %5 = and i32 %4, 32, !dbg !3364
  %6 = icmp eq i32 %5, 0, !dbg !3366
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3367
  %8 = icmp ne i32 %7, 0, !dbg !3368
  br i1 %6, label %9, label %19, !dbg !3369

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3371
  %11 = xor i1 %8, true, !dbg !3372
  %12 = or i1 %10, %11, !dbg !3372
  %13 = sext i1 %8 to i32, !dbg !3372
  br i1 %12, label %22, label %14, !dbg !3372

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3373
  %16 = load i32, i32* %15, align 4, !dbg !3373, !tbaa !714
  %17 = icmp ne i32 %16, 9, !dbg !3374
  %18 = sext i1 %17 to i32, !dbg !3375
  br label %22, !dbg !3375

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3376

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3378
  store i32 0, i32* %21, align 4, !dbg !3380, !tbaa !714
  br label %22, !dbg !3378

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3381
  ret i32 %23, !dbg !3382
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8 1, metadata !3389, metadata !DIExpression()), !dbg !3392
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %2, metadata !3390, metadata !DIExpression()), !dbg !3394
  %3 = icmp eq i8* %2, null, !dbg !3395
  br i1 %3, label %11, label %4, !dbg !3397

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i64 0, i64 0)) #14, !dbg !3398
  %6 = icmp eq i32 %5, 0, !dbg !3403
  br i1 %6, label %10, label %7, !dbg !3404

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0)) #14, !dbg !3405
  %9 = icmp eq i32 %8, 0, !dbg !3406
  br i1 %9, label %10, label %11, !dbg !3407

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3389, metadata !DIExpression()), !dbg !3392
  br label %11, !dbg !3408

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3410 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3415, metadata !DIExpression()), !dbg !3417
  %2 = icmp eq i8* %1, null, !dbg !3418
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %1, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %3, metadata !3415, metadata !DIExpression()), !dbg !3417
  %4 = load i8, i8* %3, align 1, !dbg !3421, !tbaa !773
  %5 = icmp eq i8 %4, 0, !dbg !3425
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %3, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %6, metadata !3415, metadata !DIExpression()), !dbg !3417
  ret i8* %6, !dbg !3427
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3428 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3467, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 0, metadata !3468, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3470, metadata !DIExpression()), !dbg !3473
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %2, metadata !3469, metadata !DIExpression()), !dbg !3475
  %3 = icmp slt i32 %2, 0, !dbg !3476
  br i1 %3, label %4, label %6, !dbg !3478

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3479
  br label %24, !dbg !3480

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3481
  %8 = icmp eq i32 %7, 0, !dbg !3481
  br i1 %8, label %13, label %9, !dbg !3483

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3484
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3485
  %12 = icmp eq i64 %11, -1, !dbg !3486
  br i1 %12, label %16, label %13, !dbg !3487

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3488
  %15 = icmp eq i32 %14, 0, !dbg !3488
  br i1 %15, label %16, label %18, !dbg !3489

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3468, metadata !DIExpression()), !dbg !3472
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %21, metadata !3470, metadata !DIExpression()), !dbg !3473
  br label %24, !dbg !3491

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3492
  %20 = load i32, i32* %19, align 4, !dbg !3492, !tbaa !714
  call void @llvm.dbg.value(metadata i32 %20, metadata !3468, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 %20, metadata !3468, metadata !DIExpression()), !dbg !3472
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %21, metadata !3470, metadata !DIExpression()), !dbg !3473
  %22 = icmp eq i32 %20, 0, !dbg !3493
  br i1 %22, label %24, label %23, !dbg !3491

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3495, !tbaa !714
  call void @llvm.dbg.value(metadata i32 -1, metadata !3470, metadata !DIExpression()), !dbg !3473
  br label %24, !dbg !3497

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3498
  ret i32 %25, !dbg !3499
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3500 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3539, metadata !DIExpression()), !dbg !3540
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3541
  br i1 %2, label %6, label %3, !dbg !3543

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3544
  %5 = icmp eq i32 %4, 0, !dbg !3544
  br i1 %5, label %6, label %8, !dbg !3545

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3546
  br label %17, !dbg !3547

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3548, metadata !DIExpression()) #12, !dbg !3553
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3555
  %10 = load i32, i32* %9, align 8, !dbg !3555, !tbaa !3365
  %11 = and i32 %10, 256, !dbg !3557
  %12 = icmp eq i32 %11, 0, !dbg !3557
  br i1 %12, label %15, label %13, !dbg !3558

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3559
  br label %15, !dbg !3559

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3560
  br label %17, !dbg !3561

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3562
  ret i32 %18, !dbg !3563
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3564 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3604, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %2, metadata !3606, metadata !DIExpression()), !dbg !3612
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3613
  %5 = load i8*, i8** %4, align 8, !dbg !3613, !tbaa !3614
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3615
  %7 = load i8*, i8** %6, align 8, !dbg !3615, !tbaa !3616
  %8 = icmp eq i8* %5, %7, !dbg !3617
  br i1 %8, label %9, label %28, !dbg !3618

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3619
  %11 = load i8*, i8** %10, align 8, !dbg !3619, !tbaa !822
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3620
  %13 = load i8*, i8** %12, align 8, !dbg !3620, !tbaa !3621
  %14 = icmp eq i8* %11, %13, !dbg !3622
  br i1 %14, label %15, label %28, !dbg !3623

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3624
  %17 = load i8*, i8** %16, align 8, !dbg !3624, !tbaa !3625
  %18 = icmp eq i8* %17, null, !dbg !3626
  br i1 %18, label %19, label %28, !dbg !3627

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3628
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %21, metadata !3607, metadata !DIExpression()), !dbg !3630
  %22 = icmp eq i64 %21, -1, !dbg !3631
  br i1 %22, label %30, label %23, !dbg !3633

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3634
  %25 = load i32, i32* %24, align 8, !dbg !3635, !tbaa !3365
  %26 = and i32 %25, -17, !dbg !3635
  store i32 %26, i32* %24, align 8, !dbg !3635, !tbaa !3365
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3636
  store i64 %21, i64* %27, align 8, !dbg !3637, !tbaa !3638
  br label %30, !dbg !3639

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3640
  br label %30, !dbg !3641

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3642
  ret i32 %31, !dbg !3643
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
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !28, !33, !150, !152, !155, !42, !49, !56, !157, !143, !165, !182, !184, !186, !188, !191, !193, !195, !584, !586, !588}
!llvm.ident = !{!590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590}
!llvm.module.flags = !{!591, !592, !593, !594, !595}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 31, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/basename.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1536, elements: !24)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!15 = !{!16, !19, !21, !23}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 52, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !13, file: !14, line: 55, baseType: !20, size: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !14, line: 56, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !13, file: !14, line: 57, baseType: !20, size: 32, offset: 192)
!24 = !{!25}
!25 = !DISubrange(count: 6)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "Version", scope: !28, file: !29, line: 2, type: !17, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !30)
!29 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!30 = !{!26}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "file_name", scope: !33, file: !38, line: 46, type: !17, isLocal: true, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !35)
!34 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!35 = !{!31, !36}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !33, file: !38, line: 56, type: !39, isLocal: true, isDefinition: true)
!38 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!39 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "exit_failure", scope: !42, file: !45, line: 24, type: !46, isLocal: false, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !44)
!43 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!44 = !{!40}
!45 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "program_name", scope: !49, file: !53, line: 33, type: !17, isLocal: false, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !52)
!50 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!51 = !{!8, !6}
!52 = !{!47}
!53 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !56, file: !102, line: 85, type: !137, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !94, globals: !99)
!57 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!58 = !{!59, !74, !79}
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !60, line: 32, baseType: !61, size: 32, elements: !62)
!60 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!61 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!63 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!67 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!68 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!69 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!70 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!71 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!72 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!73 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !60, line: 242, baseType: !61, size: 32, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 46, baseType: !61, size: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!94 = !{!20, !95, !96, !6}
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 62, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !{!54, !100, !107, !119, !121, !126, !133, !135}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !56, file: !102, line: 101, type: !103, isLocal: false, isDefinition: true)
!102 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 320, elements: !105)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!105 = !{!106}
!106 = !DISubrange(count: 10)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !56, file: !102, line: 1052, type: !109, isLocal: false, isDefinition: true)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !102, line: 65, size: 448, elements: !110)
!110 = !{!111, !112, !113, !117, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !109, file: !102, line: 68, baseType: !59, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !102, line: 71, baseType: !20, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !109, file: !102, line: 75, baseType: !114, size: 256, offset: 64)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 256, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !109, file: !102, line: 78, baseType: !17, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !109, file: !102, line: 81, baseType: !17, size: 64, offset: 384)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !56, file: !102, line: 116, type: !109, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "slot0", scope: !56, file: !102, line: 842, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 256)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "slotvec", scope: !56, file: !102, line: 845, type: !128, isLocal: true, isDefinition: true)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !102, line: 834, size: 128, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !129, file: !102, line: 836, baseType: !96, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !129, file: !102, line: 837, baseType: !6, size: 64, offset: 64)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "nslots", scope: !56, file: !102, line: 843, type: !20, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "slotvec0", scope: !56, file: !102, line: 844, type: !129, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 704, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!139 = !{!140}
!140 = !DISubrange(count: 11)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !143, file: !146, line: 26, type: !147, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !145)
!144 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!145 = !{!141}
!146 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 47)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!151 = !DIFile(filename: "./lib/basename.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !154)
!153 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!154 = !{!6}
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!156 = !DIFile(filename: "./lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !159, retainedTypes: !164)
!158 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!159 = !{!160}
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !161, line: 41, baseType: !61, size: 32, elements: !162)
!161 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!162 = !{!163}
!163 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!164 = !{!8}
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !181)
!166 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!167 = !{!168}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !170, file: !169, line: 186, baseType: !61, size: 32, elements: !179)
!169 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!170 = distinct !DISubprogram(name: "x2nrealloc", scope: !169, file: !169, line: 174, type: !171, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !174)
!171 = !DISubroutineType(types: !172)
!172 = !{!8, !8, !173, !96}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!174 = !{!175, !176, !177, !178}
!175 = !DILocalVariable(name: "p", arg: 1, scope: !170, file: !169, line: 174, type: !8)
!176 = !DILocalVariable(name: "pn", arg: 2, scope: !170, file: !169, line: 174, type: !173)
!177 = !DILocalVariable(name: "s", arg: 3, scope: !170, file: !169, line: 174, type: !96)
!178 = !DILocalVariable(name: "n", scope: !170, file: !169, line: 176, type: !96)
!179 = !{!180}
!180 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!181 = !{!96, !6, !8}
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!183 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!185 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !164)
!187 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !190)
!189 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!190 = !{!96}
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!192 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!194 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !164)
!196 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!197 = !{!198}
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !199, line: 41, baseType: !61, size: 32, elements: !200)
!199 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!201 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!202 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!203 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!204 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!205 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!206 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!207 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!208 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!209 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!210 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!211 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!212 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!213 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!214 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!216 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!217 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!228 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!229 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!239 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!240 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!241 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!242 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!243 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!244 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!245 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!246 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!247 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!248 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!249 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!250 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!309 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!313 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!314 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!396 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!469 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!470 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!471 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!472 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!473 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!474 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!475 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!476 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!477 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!478 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!479 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!480 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!481 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!482 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!483 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!486 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!487 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!489 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!490 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!516 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!517 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!518 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!519 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!520 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!525 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!526 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!527 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!528 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!585 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !164)
!587 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !164)
!589 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!590 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!591 = !{i32 2, !"Dwarf Version", i32 4}
!592 = !{i32 2, !"Debug Info Version", i32 3}
!593 = !{i32 1, !"wchar_size", i32 4}
!594 = !{i32 7, !"PIC Level", i32 2}
!595 = !{i32 7, !"PIE Level", i32 2}
!596 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 42, type: !597, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !20}
!599 = !{!600}
!600 = !DILocalVariable(name: "status", arg: 1, scope: !596, file: !3, line: 42, type: !20)
!601 = !DILocalVariable(name: "infomap", scope: !602, file: !603, line: 632, type: !617)
!602 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !603, file: !603, line: 630, type: !604, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !606)
!603 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!604 = !DISubroutineType(types: !605)
!605 = !{null, !17}
!606 = !{!607, !601, !608, !609, !616}
!607 = !DILocalVariable(name: "program", arg: 1, scope: !602, file: !603, line: 630, type: !17)
!608 = !DILocalVariable(name: "node", scope: !602, file: !603, line: 642, type: !17)
!609 = !DILocalVariable(name: "map_prog", scope: !602, file: !603, line: 643, type: !610)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !602, file: !603, line: 632, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !612, file: !603, line: 632, baseType: !17, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !603, line: 632, baseType: !17, size: 64, offset: 64)
!616 = !DILocalVariable(name: "lc_messages", scope: !602, file: !603, line: 655, type: !17)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 896, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 7)
!620 = !DILocation(line: 632, column: 67, scope: !602, inlinedAt: !621)
!621 = distinct !DILocation(line: 76, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 47, column: 5)
!623 = distinct !DILexicalBlock(scope: !596, file: !3, line: 44, column: 7)
!624 = !DILocation(line: 42, column: 12, scope: !596)
!625 = !DILocation(line: 44, column: 14, scope: !623)
!626 = !DILocation(line: 44, column: 7, scope: !596)
!627 = !DILocation(line: 45, column: 5, scope: !628)
!628 = distinct !DILexicalBlock(scope: !623, file: !3, line: 45, column: 5)
!629 = !{!630, !630, i64 0}
!630 = !{!"any pointer", !631, i64 0}
!631 = !{!"omnipotent char", !632, i64 0}
!632 = !{!"Simple C/C++ TBAA"}
!633 = !DILocation(line: 48, column: 7, scope: !622)
!634 = !DILocation(line: 53, column: 7, scope: !622)
!635 = !DILocation(line: 587, column: 3, scope: !636, inlinedAt: !639)
!636 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !603, file: !603, line: 585, type: !637, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!637 = !DISubroutineType(types: !638)
!638 = !{null}
!639 = distinct !DILocation(line: 58, column: 7, scope: !622)
!640 = !DILocation(line: 60, column: 7, scope: !622)
!641 = !DILocation(line: 65, column: 7, scope: !622)
!642 = !DILocation(line: 66, column: 7, scope: !622)
!643 = !DILocation(line: 67, column: 7, scope: !622)
!644 = !DILocation(line: 632, column: 3, scope: !602, inlinedAt: !621)
!645 = !DILocation(line: 643, column: 36, scope: !602, inlinedAt: !621)
!646 = !DILocation(line: 643, column: 25, scope: !602, inlinedAt: !621)
!647 = !DILocation(line: 645, column: 33, scope: !602, inlinedAt: !621)
!648 = !DILocation(line: 645, column: 3, scope: !602, inlinedAt: !621)
!649 = !DILocation(line: 646, column: 13, scope: !602, inlinedAt: !621)
!650 = !DILocation(line: 645, column: 20, scope: !602, inlinedAt: !621)
!651 = !{!652, !630, i64 0}
!652 = !{!"infomap", !630, i64 0, !630, i64 8}
!653 = !DILocation(line: 645, column: 10, scope: !602, inlinedAt: !621)
!654 = !DILocation(line: 645, column: 28, scope: !602, inlinedAt: !621)
!655 = distinct !{!655, !656, !657}
!656 = !DILocation(line: 645, column: 3, scope: !602)
!657 = !DILocation(line: 646, column: 13, scope: !602)
!658 = !DILocation(line: 648, column: 17, scope: !659, inlinedAt: !621)
!659 = distinct !DILexicalBlock(scope: !602, file: !603, line: 648, column: 7)
!660 = !{!652, !630, i64 8}
!661 = !DILocation(line: 648, column: 7, scope: !659, inlinedAt: !621)
!662 = !DILocation(line: 648, column: 7, scope: !602, inlinedAt: !621)
!663 = !DILocation(line: 642, column: 15, scope: !602, inlinedAt: !621)
!664 = !DILocation(line: 651, column: 3, scope: !602, inlinedAt: !621)
!665 = !DILocation(line: 655, column: 29, scope: !602, inlinedAt: !621)
!666 = !DILocation(line: 655, column: 15, scope: !602, inlinedAt: !621)
!667 = !DILocation(line: 656, column: 7, scope: !668, inlinedAt: !621)
!668 = distinct !DILexicalBlock(scope: !602, file: !603, line: 656, column: 7)
!669 = !DILocation(line: 656, column: 19, scope: !668, inlinedAt: !621)
!670 = !DILocation(line: 656, column: 22, scope: !668, inlinedAt: !621)
!671 = !DILocation(line: 656, column: 7, scope: !602, inlinedAt: !621)
!672 = !DILocation(line: 662, column: 7, scope: !673, inlinedAt: !621)
!673 = distinct !DILexicalBlock(scope: !668, file: !603, line: 657, column: 5)
!674 = !DILocation(line: 664, column: 5, scope: !673, inlinedAt: !621)
!675 = !DILocation(line: 665, column: 3, scope: !602, inlinedAt: !621)
!676 = !DILocation(line: 667, column: 3, scope: !602, inlinedAt: !621)
!677 = !DILocation(line: 669, column: 1, scope: !602, inlinedAt: !621)
!678 = !DILocation(line: 78, column: 3, scope: !596)
!679 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 124, type: !680, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !683)
!680 = !DISubroutineType(types: !681)
!681 = !{!20, !20, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!683 = !{!684, !685, !686, !687, !688, !689}
!684 = !DILocalVariable(name: "argc", arg: 1, scope: !679, file: !3, line: 124, type: !20)
!685 = !DILocalVariable(name: "argv", arg: 2, scope: !679, file: !3, line: 124, type: !682)
!686 = !DILocalVariable(name: "multiple_names", scope: !679, file: !3, line: 126, type: !39)
!687 = !DILocalVariable(name: "use_nuls", scope: !679, file: !3, line: 127, type: !39)
!688 = !DILocalVariable(name: "suffix", scope: !679, file: !3, line: 128, type: !17)
!689 = !DILocalVariable(name: "c", scope: !690, file: !3, line: 140, type: !20)
!690 = distinct !DILexicalBlock(scope: !679, file: !3, line: 139, column: 5)
!691 = !DILocation(line: 124, column: 11, scope: !679)
!692 = !DILocation(line: 124, column: 24, scope: !679)
!693 = !DILocation(line: 126, column: 8, scope: !679)
!694 = !DILocation(line: 127, column: 8, scope: !679)
!695 = !DILocation(line: 128, column: 15, scope: !679)
!696 = !DILocation(line: 131, column: 21, scope: !679)
!697 = !DILocation(line: 131, column: 3, scope: !679)
!698 = !DILocation(line: 132, column: 3, scope: !679)
!699 = !DILocation(line: 133, column: 3, scope: !679)
!700 = !DILocation(line: 134, column: 3, scope: !679)
!701 = !DILocation(line: 136, column: 3, scope: !679)
!702 = !DILocation(line: 138, column: 3, scope: !679)
!703 = !DILocation(line: 140, column: 15, scope: !690)
!704 = !DILocation(line: 140, column: 11, scope: !690)
!705 = !DILocation(line: 142, column: 11, scope: !690)
!706 = !DILocation(line: 148, column: 20, scope: !707)
!707 = distinct !DILexicalBlock(scope: !690, file: !3, line: 146, column: 9)
!708 = !DILocation(line: 150, column: 11, scope: !707)
!709 = !DILocation(line: 160, column: 9, scope: !707)
!710 = !DILocation(line: 161, column: 9, scope: !707)
!711 = !DILocation(line: 164, column: 11, scope: !707)
!712 = !DILocation(line: 168, column: 14, scope: !713)
!713 = distinct !DILexicalBlock(scope: !679, file: !3, line: 168, column: 7)
!714 = !{!715, !715, i64 0}
!715 = !{!"int", !631, i64 0}
!716 = !DILocation(line: 168, column: 12, scope: !713)
!717 = !DILocation(line: 168, column: 7, scope: !679)
!718 = !DILocation(line: 170, column: 20, scope: !719)
!719 = distinct !DILexicalBlock(scope: !713, file: !3, line: 169, column: 5)
!720 = !DILocation(line: 170, column: 7, scope: !719)
!721 = !DILocation(line: 171, column: 7, scope: !719)
!722 = !DILocation(line: 174, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !679, file: !3, line: 174, column: 7)
!724 = !DILocation(line: 174, column: 23, scope: !723)
!725 = !DILocation(line: 174, column: 33, scope: !723)
!726 = !DILocation(line: 174, column: 37, scope: !723)
!727 = !DILocation(line: 176, column: 20, scope: !728)
!728 = distinct !DILexicalBlock(scope: !723, file: !3, line: 175, column: 5)
!729 = !DILocation(line: 176, column: 55, scope: !728)
!730 = !DILocation(line: 176, column: 62, scope: !728)
!731 = !DILocation(line: 176, column: 50, scope: !728)
!732 = !DILocation(line: 176, column: 43, scope: !728)
!733 = !DILocation(line: 176, column: 7, scope: !728)
!734 = !DILocation(line: 177, column: 7, scope: !728)
!735 = !DILocation(line: 180, column: 7, scope: !679)
!736 = !DILocation(line: 182, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 182, column: 7)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 181, column: 5)
!739 = distinct !DILexicalBlock(scope: !679, file: !3, line: 180, column: 7)
!740 = !DILocation(line: 183, column: 27, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 182, column: 7)
!742 = !DILocation(line: 183, column: 9, scope: !741)
!743 = !DILocation(line: 182, column: 35, scope: !741)
!744 = !DILocation(line: 182, column: 21, scope: !741)
!745 = distinct !{!745, !736, !746}
!746 = !DILocation(line: 183, column: 57, scope: !737)
!747 = !DILocation(line: 186, column: 23, scope: !739)
!748 = !DILocation(line: 187, column: 34, scope: !739)
!749 = !DILocation(line: 187, column: 23, scope: !739)
!750 = !DILocation(line: 187, column: 56, scope: !739)
!751 = !DILocation(line: 187, column: 44, scope: !739)
!752 = !DILocation(line: 187, column: 69, scope: !739)
!753 = !DILocation(line: 186, column: 5, scope: !739)
!754 = !DILocation(line: 190, column: 1, scope: !679)
!755 = distinct !DISubprogram(name: "perform_basename", scope: !3, file: !3, line: 104, type: !756, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !17, !17, !39}
!758 = !{!759, !760, !761, !762}
!759 = !DILocalVariable(name: "string", arg: 1, scope: !755, file: !3, line: 104, type: !17)
!760 = !DILocalVariable(name: "suffix", arg: 2, scope: !755, file: !3, line: 104, type: !17)
!761 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !755, file: !3, line: 104, type: !39)
!762 = !DILocalVariable(name: "name", scope: !755, file: !3, line: 106, type: !6)
!763 = !DILocation(line: 104, column: 31, scope: !755)
!764 = !DILocation(line: 104, column: 51, scope: !755)
!765 = !DILocation(line: 104, column: 64, scope: !755)
!766 = !DILocation(line: 106, column: 16, scope: !755)
!767 = !DILocation(line: 106, column: 9, scope: !755)
!768 = !DILocation(line: 107, column: 3, scope: !755)
!769 = !DILocation(line: 115, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !755, file: !3, line: 115, column: 7)
!771 = !DILocation(line: 115, column: 14, scope: !770)
!772 = !DILocation(line: 115, column: 17, scope: !770)
!773 = !{!631, !631, i64 0}
!774 = !DILocation(line: 115, column: 7, scope: !755)
!775 = !DILocalVariable(name: "name", arg: 1, scope: !776, file: !3, line: 85, type: !6)
!776 = distinct !DISubprogram(name: "remove_suffix", scope: !3, file: !3, line: 85, type: !777, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !6, !17}
!779 = !{!775, !780, !781, !782}
!780 = !DILocalVariable(name: "suffix", arg: 2, scope: !776, file: !3, line: 85, type: !17)
!781 = !DILocalVariable(name: "np", scope: !776, file: !3, line: 87, type: !6)
!782 = !DILocalVariable(name: "sp", scope: !776, file: !3, line: 88, type: !17)
!783 = !DILocation(line: 85, column: 22, scope: !776, inlinedAt: !784)
!784 = distinct !DILocation(line: 116, column: 5, scope: !770)
!785 = !DILocation(line: 85, column: 40, scope: !776, inlinedAt: !784)
!786 = !DILocation(line: 90, column: 15, scope: !776, inlinedAt: !784)
!787 = !DILocation(line: 90, column: 13, scope: !776, inlinedAt: !784)
!788 = !DILocation(line: 87, column: 9, scope: !776, inlinedAt: !784)
!789 = !DILocation(line: 91, column: 17, scope: !776, inlinedAt: !784)
!790 = !DILocation(line: 91, column: 15, scope: !776, inlinedAt: !784)
!791 = !DILocation(line: 88, column: 15, scope: !776, inlinedAt: !784)
!792 = !DILocation(line: 93, column: 3, scope: !776, inlinedAt: !784)
!793 = !DILocation(line: 0, scope: !794, inlinedAt: !784)
!794 = distinct !DILexicalBlock(scope: !776, file: !3, line: 94, column: 9)
!795 = !DILocation(line: 93, column: 13, scope: !776, inlinedAt: !784)
!796 = !DILocation(line: 93, column: 26, scope: !776, inlinedAt: !784)
!797 = !DILocation(line: 93, column: 20, scope: !776, inlinedAt: !784)
!798 = !DILocation(line: 94, column: 10, scope: !794, inlinedAt: !784)
!799 = !DILocation(line: 94, column: 9, scope: !794, inlinedAt: !784)
!800 = !DILocation(line: 94, column: 19, scope: !794, inlinedAt: !784)
!801 = !DILocation(line: 94, column: 18, scope: !794, inlinedAt: !784)
!802 = !DILocation(line: 94, column: 15, scope: !794, inlinedAt: !784)
!803 = !DILocation(line: 94, column: 9, scope: !776, inlinedAt: !784)
!804 = distinct !{!804, !805, !806}
!805 = !DILocation(line: 93, column: 3, scope: !776)
!806 = !DILocation(line: 95, column: 7, scope: !776)
!807 = !DILocation(line: 96, column: 7, scope: !776, inlinedAt: !784)
!808 = !DILocation(line: 97, column: 9, scope: !809, inlinedAt: !784)
!809 = distinct !DILexicalBlock(scope: !776, file: !3, line: 96, column: 7)
!810 = !DILocation(line: 97, column: 5, scope: !809, inlinedAt: !784)
!811 = !DILocation(line: 118, column: 3, scope: !755)
!812 = !DILocation(line: 119, column: 3, scope: !755)
!813 = !DILocalVariable(name: "__c", arg: 1, scope: !814, file: !815, line: 108, type: !20)
!814 = distinct !DISubprogram(name: "putchar_unlocked", scope: !815, file: !815, line: 108, type: !816, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !818)
!815 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!816 = !DISubroutineType(types: !817)
!817 = !{!20, !20}
!818 = !{!813}
!819 = !DILocation(line: 108, column: 23, scope: !814, inlinedAt: !820)
!820 = distinct !DILocation(line: 119, column: 3, scope: !755)
!821 = !DILocation(line: 110, column: 10, scope: !814, inlinedAt: !820)
!822 = !{!823, !630, i64 40}
!823 = !{!"_IO_FILE", !715, i64 0, !630, i64 8, !630, i64 16, !630, i64 24, !630, i64 32, !630, i64 40, !630, i64 48, !630, i64 56, !630, i64 64, !630, i64 72, !630, i64 80, !630, i64 88, !630, i64 96, !630, i64 104, !715, i64 112, !715, i64 116, !824, i64 120, !825, i64 128, !631, i64 130, !631, i64 131, !630, i64 136, !824, i64 144, !630, i64 152, !630, i64 160, !630, i64 168, !630, i64 176, !824, i64 184, !715, i64 192, !631, i64 196}
!824 = !{!"long", !631, i64 0}
!825 = !{!"short", !631, i64 0}
!826 = !{!823, !630, i64 48}
!827 = !{!"branch_weights", i32 2000, i32 1}
!828 = !DILocation(line: 120, column: 3, scope: !755)
!829 = !DILocation(line: 121, column: 1, scope: !755)
!830 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !38, file: !38, line: 51, type: !604, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !33, retainedNodes: !831)
!831 = !{!832}
!832 = !DILocalVariable(name: "file", arg: 1, scope: !830, file: !38, line: 51, type: !17)
!833 = !DILocation(line: 51, column: 41, scope: !830)
!834 = !DILocation(line: 53, column: 13, scope: !830)
!835 = !DILocation(line: 54, column: 1, scope: !830)
!836 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !38, file: !38, line: 88, type: !837, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !33, retainedNodes: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !39}
!839 = !{!840}
!840 = !DILocalVariable(name: "ignore", arg: 1, scope: !836, file: !38, line: 88, type: !39)
!841 = !DILocation(line: 88, column: 37, scope: !836)
!842 = !DILocation(line: 90, column: 16, scope: !836)
!843 = !{!844, !844, i64 0}
!844 = !{!"_Bool", !631, i64 0}
!845 = !DILocation(line: 91, column: 1, scope: !836)
!846 = distinct !DISubprogram(name: "close_stdout", scope: !38, file: !38, line: 117, type: !637, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !33, retainedNodes: !847)
!847 = !{!848}
!848 = !DILocalVariable(name: "write_error", scope: !849, file: !38, line: 122, type: !17)
!849 = distinct !DILexicalBlock(scope: !850, file: !38, line: 121, column: 5)
!850 = distinct !DILexicalBlock(scope: !846, file: !38, line: 119, column: 7)
!851 = !DILocation(line: 119, column: 21, scope: !850)
!852 = !DILocation(line: 119, column: 7, scope: !850)
!853 = !DILocation(line: 119, column: 29, scope: !850)
!854 = !DILocation(line: 120, column: 7, scope: !850)
!855 = !DILocation(line: 120, column: 12, scope: !850)
!856 = !{i8 0, i8 2}
!857 = !DILocation(line: 120, column: 25, scope: !850)
!858 = !DILocation(line: 120, column: 28, scope: !850)
!859 = !DILocation(line: 120, column: 34, scope: !850)
!860 = !DILocation(line: 119, column: 7, scope: !846)
!861 = !DILocation(line: 122, column: 33, scope: !849)
!862 = !DILocation(line: 122, column: 19, scope: !849)
!863 = !DILocation(line: 123, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !849, file: !38, line: 123, column: 11)
!865 = !DILocation(line: 0, scope: !864)
!866 = !DILocation(line: 123, column: 11, scope: !849)
!867 = !DILocation(line: 124, column: 36, scope: !864)
!868 = !DILocation(line: 124, column: 9, scope: !864)
!869 = !DILocation(line: 127, column: 9, scope: !864)
!870 = !DILocation(line: 129, column: 14, scope: !849)
!871 = !DILocation(line: 129, column: 7, scope: !849)
!872 = !DILocation(line: 134, column: 42, scope: !873)
!873 = distinct !DILexicalBlock(scope: !846, file: !38, line: 134, column: 7)
!874 = !DILocation(line: 134, column: 28, scope: !873)
!875 = !DILocation(line: 134, column: 50, scope: !873)
!876 = !DILocation(line: 134, column: 7, scope: !846)
!877 = !DILocation(line: 135, column: 12, scope: !873)
!878 = !DILocation(line: 135, column: 5, scope: !873)
!879 = !DILocation(line: 136, column: 1, scope: !846)
!880 = distinct !DISubprogram(name: "base_name", scope: !881, file: !881, line: 28, type: !882, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !884)
!881 = !DIFile(filename: "lib/basename.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!882 = !DISubroutineType(types: !883)
!883 = !{!6, !17}
!884 = !{!885, !886, !887}
!885 = !DILocalVariable(name: "name", arg: 1, scope: !880, file: !881, line: 28, type: !17)
!886 = !DILocalVariable(name: "base", scope: !880, file: !881, line: 30, type: !17)
!887 = !DILocalVariable(name: "length", scope: !880, file: !881, line: 31, type: !96)
!888 = !DILocation(line: 28, column: 24, scope: !880)
!889 = !DILocation(line: 30, column: 22, scope: !880)
!890 = !DILocation(line: 30, column: 15, scope: !880)
!891 = !DILocation(line: 35, column: 9, scope: !892)
!892 = distinct !DILexicalBlock(scope: !880, file: !881, line: 35, column: 7)
!893 = !DILocation(line: 35, column: 7, scope: !880)
!894 = !DILocation(line: 36, column: 28, scope: !892)
!895 = !DILocation(line: 36, column: 12, scope: !892)
!896 = !DILocation(line: 36, column: 5, scope: !892)
!897 = !DILocation(line: 39, column: 12, scope: !880)
!898 = !DILocation(line: 31, column: 10, scope: !880)
!899 = !DILocation(line: 40, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !880, file: !881, line: 40, column: 7)
!901 = !DILocation(line: 40, column: 7, scope: !880)
!902 = !DILocation(line: 57, column: 10, scope: !880)
!903 = !DILocation(line: 57, column: 3, scope: !880)
!904 = !DILocation(line: 0, scope: !892)
!905 = !DILocation(line: 58, column: 1, scope: !880)
!906 = distinct !DISubprogram(name: "last_component", scope: !907, file: !907, line: 30, type: !882, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !152, retainedNodes: !908)
!907 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!908 = !{!909, !910, !911, !912}
!909 = !DILocalVariable(name: "name", arg: 1, scope: !906, file: !907, line: 30, type: !17)
!910 = !DILocalVariable(name: "base", scope: !906, file: !907, line: 32, type: !17)
!911 = !DILocalVariable(name: "p", scope: !906, file: !907, line: 33, type: !17)
!912 = !DILocalVariable(name: "saw_slash", scope: !906, file: !907, line: 34, type: !39)
!913 = !DILocation(line: 30, column: 29, scope: !906)
!914 = !DILocation(line: 32, column: 15, scope: !906)
!915 = !DILocation(line: 34, column: 8, scope: !906)
!916 = !DILocation(line: 36, column: 3, scope: !906)
!917 = !DILocation(line: 0, scope: !906)
!918 = !DILocation(line: 36, column: 10, scope: !906)
!919 = !DILocation(line: 37, column: 9, scope: !906)
!920 = distinct !{!920, !916, !919}
!921 = !DILocation(line: 39, column: 18, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !907, line: 39, column: 3)
!923 = distinct !DILexicalBlock(scope: !906, file: !907, line: 39, column: 3)
!924 = !DILocation(line: 0, scope: !922)
!925 = !DILocation(line: 0, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !907, line: 41, column: 11)
!927 = distinct !DILexicalBlock(scope: !922, file: !907, line: 40, column: 5)
!928 = !DILocation(line: 33, column: 15, scope: !906)
!929 = !DILocation(line: 39, column: 3, scope: !923)
!930 = !DILocation(line: 43, column: 16, scope: !931)
!931 = distinct !DILexicalBlock(scope: !926, file: !907, line: 43, column: 16)
!932 = !DILocation(line: 43, column: 16, scope: !926)
!933 = !DILocation(line: 39, column: 23, scope: !922)
!934 = !DILocation(line: 39, column: 3, scope: !922)
!935 = distinct !{!935, !929, !936}
!936 = !DILocation(line: 48, column: 5, scope: !923)
!937 = !DILocation(line: 50, column: 3, scope: !906)
!938 = distinct !DISubprogram(name: "base_len", scope: !907, file: !907, line: 58, type: !939, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !152, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{!96, !17}
!941 = !{!942, !943, !944}
!942 = !DILocalVariable(name: "name", arg: 1, scope: !938, file: !907, line: 58, type: !17)
!943 = !DILocalVariable(name: "len", scope: !938, file: !907, line: 60, type: !96)
!944 = !DILocalVariable(name: "prefix_len", scope: !938, file: !907, line: 61, type: !96)
!945 = !DILocation(line: 58, column: 23, scope: !938)
!946 = !DILocation(line: 61, column: 10, scope: !938)
!947 = !DILocation(line: 63, column: 14, scope: !948)
!948 = distinct !DILexicalBlock(scope: !938, file: !907, line: 63, column: 3)
!949 = !DILocation(line: 60, column: 10, scope: !938)
!950 = !DILocation(line: 63, column: 8, scope: !948)
!951 = !DILocation(line: 0, scope: !952)
!952 = distinct !DILexicalBlock(scope: !948, file: !907, line: 63, column: 3)
!953 = !DILocation(line: 63, column: 32, scope: !952)
!954 = !DILocation(line: 63, column: 38, scope: !952)
!955 = !DILocation(line: 63, column: 41, scope: !952)
!956 = !DILocation(line: 63, column: 3, scope: !948)
!957 = distinct !{!957, !956, !958}
!958 = !DILocation(line: 64, column: 5, scope: !948)
!959 = !DILocation(line: 74, column: 3, scope: !938)
!960 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !961, file: !961, line: 31, type: !962, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !155, retainedNodes: !964)
!961 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!962 = !DISubroutineType(types: !963)
!963 = !{!39, !6}
!964 = !{!965, !966, !967, !968}
!965 = !DILocalVariable(name: "file", arg: 1, scope: !960, file: !961, line: 31, type: !6)
!966 = !DILocalVariable(name: "base", scope: !960, file: !961, line: 33, type: !6)
!967 = !DILocalVariable(name: "base_lim", scope: !960, file: !961, line: 34, type: !6)
!968 = !DILocalVariable(name: "had_slash", scope: !960, file: !961, line: 35, type: !39)
!969 = !DILocation(line: 31, column: 31, scope: !960)
!970 = !DILocation(line: 33, column: 16, scope: !960)
!971 = !DILocation(line: 33, column: 9, scope: !960)
!972 = !DILocation(line: 39, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !960, file: !961, line: 39, column: 7)
!974 = !DILocation(line: 39, column: 7, scope: !960)
!975 = !DILocation(line: 41, column: 21, scope: !960)
!976 = !DILocation(line: 41, column: 19, scope: !960)
!977 = !DILocation(line: 34, column: 9, scope: !960)
!978 = !DILocation(line: 42, column: 16, scope: !960)
!979 = !DILocation(line: 42, column: 26, scope: !960)
!980 = !DILocation(line: 43, column: 13, scope: !960)
!981 = !DILocation(line: 44, column: 3, scope: !960)
!982 = distinct !DISubprogram(name: "set_program_name", scope: !53, file: !53, line: 39, type: !604, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !49, retainedNodes: !983)
!983 = !{!984, !985, !986}
!984 = !DILocalVariable(name: "argv0", arg: 1, scope: !982, file: !53, line: 39, type: !17)
!985 = !DILocalVariable(name: "slash", scope: !982, file: !53, line: 46, type: !17)
!986 = !DILocalVariable(name: "base", scope: !982, file: !53, line: 47, type: !17)
!987 = !DILocation(line: 39, column: 31, scope: !982)
!988 = !DILocation(line: 51, column: 13, scope: !989)
!989 = distinct !DILexicalBlock(scope: !982, file: !53, line: 51, column: 7)
!990 = !DILocation(line: 51, column: 7, scope: !982)
!991 = !DILocation(line: 55, column: 14, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !53, line: 52, column: 5)
!993 = !DILocation(line: 54, column: 7, scope: !992)
!994 = !DILocation(line: 56, column: 7, scope: !992)
!995 = !DILocation(line: 59, column: 11, scope: !982)
!996 = !DILocation(line: 46, column: 15, scope: !982)
!997 = !DILocation(line: 60, column: 17, scope: !982)
!998 = !DILocation(line: 60, column: 33, scope: !982)
!999 = !DILocation(line: 60, column: 11, scope: !982)
!1000 = !DILocation(line: 47, column: 15, scope: !982)
!1001 = !DILocation(line: 61, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !982, file: !53, line: 61, column: 7)
!1003 = !DILocation(line: 61, column: 20, scope: !1002)
!1004 = !DILocation(line: 61, column: 25, scope: !1002)
!1005 = !DILocation(line: 61, column: 42, scope: !1002)
!1006 = !DILocation(line: 61, column: 28, scope: !1002)
!1007 = !DILocation(line: 61, column: 61, scope: !1002)
!1008 = !DILocation(line: 61, column: 7, scope: !982)
!1009 = !DILocation(line: 64, column: 11, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !53, line: 64, column: 11)
!1011 = distinct !DILexicalBlock(scope: !1002, file: !53, line: 62, column: 5)
!1012 = !DILocation(line: 64, column: 36, scope: !1010)
!1013 = !DILocation(line: 64, column: 11, scope: !1011)
!1014 = !DILocation(line: 66, column: 24, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !53, line: 65, column: 9)
!1016 = !DILocation(line: 70, column: 41, scope: !1015)
!1017 = !DILocation(line: 72, column: 9, scope: !1015)
!1018 = !DILocation(line: 84, column: 16, scope: !982)
!1019 = !DILocation(line: 90, column: 27, scope: !982)
!1020 = !DILocation(line: 92, column: 1, scope: !982)
!1021 = distinct !DISubprogram(name: "clone_quoting_options", scope: !102, file: !102, line: 122, type: !1022, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1025)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1024, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1025 = !{!1026, !1027, !1028}
!1026 = !DILocalVariable(name: "o", arg: 1, scope: !1021, file: !102, line: 122, type: !1024)
!1027 = !DILocalVariable(name: "e", scope: !1021, file: !102, line: 124, type: !20)
!1028 = !DILocalVariable(name: "p", scope: !1021, file: !102, line: 125, type: !1024)
!1029 = !DILocation(line: 122, column: 48, scope: !1021)
!1030 = !DILocation(line: 124, column: 11, scope: !1021)
!1031 = !DILocation(line: 124, column: 7, scope: !1021)
!1032 = !DILocation(line: 125, column: 40, scope: !1021)
!1033 = !DILocation(line: 125, column: 31, scope: !1021)
!1034 = !DILocation(line: 125, column: 27, scope: !1021)
!1035 = !DILocation(line: 127, column: 9, scope: !1021)
!1036 = !DILocation(line: 128, column: 3, scope: !1021)
!1037 = distinct !DISubprogram(name: "get_quoting_style", scope: !102, file: !102, line: 133, type: !1038, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1042)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!59, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1042 = !{!1043}
!1043 = !DILocalVariable(name: "o", arg: 1, scope: !1037, file: !102, line: 133, type: !1040)
!1044 = !DILocation(line: 133, column: 50, scope: !1037)
!1045 = !DILocation(line: 135, column: 11, scope: !1037)
!1046 = !DILocation(line: 135, column: 46, scope: !1037)
!1047 = !{!1048, !631, i64 0}
!1048 = !{!"quoting_options", !631, i64 0, !715, i64 4, !631, i64 8, !630, i64 40, !630, i64 48}
!1049 = !DILocation(line: 135, column: 3, scope: !1037)
!1050 = distinct !DISubprogram(name: "set_quoting_style", scope: !102, file: !102, line: 141, type: !1051, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !1024, !59}
!1053 = !{!1054, !1055}
!1054 = !DILocalVariable(name: "o", arg: 1, scope: !1050, file: !102, line: 141, type: !1024)
!1055 = !DILocalVariable(name: "s", arg: 2, scope: !1050, file: !102, line: 141, type: !59)
!1056 = !DILocation(line: 141, column: 44, scope: !1050)
!1057 = !DILocation(line: 141, column: 66, scope: !1050)
!1058 = !DILocation(line: 143, column: 4, scope: !1050)
!1059 = !DILocation(line: 143, column: 39, scope: !1050)
!1060 = !DILocation(line: 143, column: 45, scope: !1050)
!1061 = !DILocation(line: 144, column: 1, scope: !1050)
!1062 = distinct !DISubprogram(name: "set_char_quoting", scope: !102, file: !102, line: 152, type: !1063, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!20, !1024, !7, !20}
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1072, !1073}
!1066 = !DILocalVariable(name: "o", arg: 1, scope: !1062, file: !102, line: 152, type: !1024)
!1067 = !DILocalVariable(name: "c", arg: 2, scope: !1062, file: !102, line: 152, type: !7)
!1068 = !DILocalVariable(name: "i", arg: 3, scope: !1062, file: !102, line: 152, type: !20)
!1069 = !DILocalVariable(name: "uc", scope: !1062, file: !102, line: 154, type: !9)
!1070 = !DILocalVariable(name: "p", scope: !1062, file: !102, line: 155, type: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1072 = !DILocalVariable(name: "shift", scope: !1062, file: !102, line: 157, type: !20)
!1073 = !DILocalVariable(name: "r", scope: !1062, file: !102, line: 158, type: !20)
!1074 = !DILocation(line: 152, column: 43, scope: !1062)
!1075 = !DILocation(line: 152, column: 51, scope: !1062)
!1076 = !DILocation(line: 152, column: 58, scope: !1062)
!1077 = !DILocation(line: 154, column: 17, scope: !1062)
!1078 = !DILocation(line: 156, column: 6, scope: !1062)
!1079 = !DILocation(line: 156, column: 62, scope: !1062)
!1080 = !DILocation(line: 156, column: 57, scope: !1062)
!1081 = !DILocation(line: 155, column: 17, scope: !1062)
!1082 = !DILocation(line: 157, column: 15, scope: !1062)
!1083 = !DILocation(line: 157, column: 7, scope: !1062)
!1084 = !DILocation(line: 158, column: 12, scope: !1062)
!1085 = !DILocation(line: 158, column: 15, scope: !1062)
!1086 = !DILocation(line: 158, column: 25, scope: !1062)
!1087 = !DILocation(line: 158, column: 7, scope: !1062)
!1088 = !DILocation(line: 159, column: 13, scope: !1062)
!1089 = !DILocation(line: 159, column: 18, scope: !1062)
!1090 = !DILocation(line: 159, column: 23, scope: !1062)
!1091 = !DILocation(line: 159, column: 6, scope: !1062)
!1092 = !DILocation(line: 160, column: 3, scope: !1062)
!1093 = distinct !DISubprogram(name: "set_quoting_flags", scope: !102, file: !102, line: 168, type: !1094, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!20, !1024, !20}
!1096 = !{!1097, !1098, !1099}
!1097 = !DILocalVariable(name: "o", arg: 1, scope: !1093, file: !102, line: 168, type: !1024)
!1098 = !DILocalVariable(name: "i", arg: 2, scope: !1093, file: !102, line: 168, type: !20)
!1099 = !DILocalVariable(name: "r", scope: !1093, file: !102, line: 170, type: !20)
!1100 = !DILocation(line: 168, column: 44, scope: !1093)
!1101 = !DILocation(line: 168, column: 51, scope: !1093)
!1102 = !DILocation(line: 171, column: 8, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1093, file: !102, line: 171, column: 7)
!1104 = !DILocation(line: 171, column: 7, scope: !1093)
!1105 = !DILocation(line: 173, column: 10, scope: !1093)
!1106 = !{!1048, !715, i64 4}
!1107 = !DILocation(line: 170, column: 7, scope: !1093)
!1108 = !DILocation(line: 174, column: 12, scope: !1093)
!1109 = !DILocation(line: 175, column: 3, scope: !1093)
!1110 = distinct !DISubprogram(name: "set_custom_quoting", scope: !102, file: !102, line: 179, type: !1111, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !1024, !17, !17}
!1113 = !{!1114, !1115, !1116}
!1114 = !DILocalVariable(name: "o", arg: 1, scope: !1110, file: !102, line: 179, type: !1024)
!1115 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1110, file: !102, line: 180, type: !17)
!1116 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1110, file: !102, line: 180, type: !17)
!1117 = !DILocation(line: 179, column: 45, scope: !1110)
!1118 = !DILocation(line: 180, column: 33, scope: !1110)
!1119 = !DILocation(line: 180, column: 57, scope: !1110)
!1120 = !DILocation(line: 182, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1110, file: !102, line: 182, column: 7)
!1122 = !DILocation(line: 182, column: 7, scope: !1110)
!1123 = !DILocation(line: 184, column: 6, scope: !1110)
!1124 = !DILocation(line: 184, column: 12, scope: !1110)
!1125 = !DILocation(line: 185, column: 8, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1110, file: !102, line: 185, column: 7)
!1127 = !DILocation(line: 185, column: 23, scope: !1126)
!1128 = !DILocation(line: 185, column: 19, scope: !1126)
!1129 = !DILocation(line: 186, column: 5, scope: !1126)
!1130 = !DILocation(line: 187, column: 6, scope: !1110)
!1131 = !DILocation(line: 187, column: 17, scope: !1110)
!1132 = !{!1048, !630, i64 40}
!1133 = !DILocation(line: 188, column: 6, scope: !1110)
!1134 = !DILocation(line: 188, column: 18, scope: !1110)
!1135 = !{!1048, !630, i64 48}
!1136 = !DILocation(line: 189, column: 1, scope: !1110)
!1137 = distinct !DISubprogram(name: "quotearg_buffer", scope: !102, file: !102, line: 784, type: !1138, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!96, !6, !96, !17, !96, !1040}
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1141 = !DILocalVariable(name: "buffer", arg: 1, scope: !1137, file: !102, line: 784, type: !6)
!1142 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1137, file: !102, line: 784, type: !96)
!1143 = !DILocalVariable(name: "arg", arg: 3, scope: !1137, file: !102, line: 785, type: !17)
!1144 = !DILocalVariable(name: "argsize", arg: 4, scope: !1137, file: !102, line: 785, type: !96)
!1145 = !DILocalVariable(name: "o", arg: 5, scope: !1137, file: !102, line: 786, type: !1040)
!1146 = !DILocalVariable(name: "p", scope: !1137, file: !102, line: 788, type: !1040)
!1147 = !DILocalVariable(name: "e", scope: !1137, file: !102, line: 789, type: !20)
!1148 = !DILocalVariable(name: "r", scope: !1137, file: !102, line: 790, type: !96)
!1149 = !DILocation(line: 784, column: 24, scope: !1137)
!1150 = !DILocation(line: 784, column: 39, scope: !1137)
!1151 = !DILocation(line: 785, column: 30, scope: !1137)
!1152 = !DILocation(line: 785, column: 42, scope: !1137)
!1153 = !DILocation(line: 786, column: 48, scope: !1137)
!1154 = !DILocation(line: 788, column: 37, scope: !1137)
!1155 = !DILocation(line: 788, column: 33, scope: !1137)
!1156 = !DILocation(line: 789, column: 11, scope: !1137)
!1157 = !DILocation(line: 789, column: 7, scope: !1137)
!1158 = !DILocation(line: 791, column: 43, scope: !1137)
!1159 = !DILocation(line: 791, column: 53, scope: !1137)
!1160 = !DILocation(line: 791, column: 60, scope: !1137)
!1161 = !DILocation(line: 792, column: 43, scope: !1137)
!1162 = !DILocation(line: 792, column: 58, scope: !1137)
!1163 = !DILocation(line: 790, column: 14, scope: !1137)
!1164 = !DILocation(line: 790, column: 10, scope: !1137)
!1165 = !DILocation(line: 793, column: 9, scope: !1137)
!1166 = !DILocation(line: 794, column: 3, scope: !1137)
!1167 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !102, file: !102, line: 256, type: !1168, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1172)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!96, !6, !96, !17, !96, !59, !20, !1170, !17, !17}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1197, !1198, !1199, !1200, !1201, !1204, !1205, !1223, !1226, !1227, !1234}
!1173 = !DILocalVariable(name: "buffer", arg: 1, scope: !1167, file: !102, line: 256, type: !6)
!1174 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1167, file: !102, line: 256, type: !96)
!1175 = !DILocalVariable(name: "arg", arg: 3, scope: !1167, file: !102, line: 257, type: !17)
!1176 = !DILocalVariable(name: "argsize", arg: 4, scope: !1167, file: !102, line: 257, type: !96)
!1177 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1167, file: !102, line: 258, type: !59)
!1178 = !DILocalVariable(name: "flags", arg: 6, scope: !1167, file: !102, line: 258, type: !20)
!1179 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1167, file: !102, line: 259, type: !1170)
!1180 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1167, file: !102, line: 260, type: !17)
!1181 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1167, file: !102, line: 261, type: !17)
!1182 = !DILocalVariable(name: "i", scope: !1167, file: !102, line: 263, type: !96)
!1183 = !DILocalVariable(name: "len", scope: !1167, file: !102, line: 264, type: !96)
!1184 = !DILocalVariable(name: "orig_buffersize", scope: !1167, file: !102, line: 265, type: !96)
!1185 = !DILocalVariable(name: "quote_string", scope: !1167, file: !102, line: 266, type: !17)
!1186 = !DILocalVariable(name: "quote_string_len", scope: !1167, file: !102, line: 267, type: !96)
!1187 = !DILocalVariable(name: "backslash_escapes", scope: !1167, file: !102, line: 268, type: !39)
!1188 = !DILocalVariable(name: "unibyte_locale", scope: !1167, file: !102, line: 269, type: !39)
!1189 = !DILocalVariable(name: "elide_outer_quotes", scope: !1167, file: !102, line: 270, type: !39)
!1190 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1167, file: !102, line: 271, type: !39)
!1191 = !DILocalVariable(name: "encountered_single_quote", scope: !1167, file: !102, line: 272, type: !39)
!1192 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1167, file: !102, line: 273, type: !39)
!1193 = !DILocalVariable(name: "c", scope: !1194, file: !102, line: 402, type: !9)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !102, line: 401, column: 5)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !102, line: 400, column: 3)
!1196 = distinct !DILexicalBlock(scope: !1167, file: !102, line: 400, column: 3)
!1197 = !DILocalVariable(name: "esc", scope: !1194, file: !102, line: 403, type: !9)
!1198 = !DILocalVariable(name: "is_right_quote", scope: !1194, file: !102, line: 404, type: !39)
!1199 = !DILocalVariable(name: "escaping", scope: !1194, file: !102, line: 405, type: !39)
!1200 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1194, file: !102, line: 406, type: !39)
!1201 = !DILocalVariable(name: "m", scope: !1202, file: !102, line: 610, type: !96)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 608, column: 11)
!1203 = distinct !DILexicalBlock(scope: !1194, file: !102, line: 426, column: 9)
!1204 = !DILocalVariable(name: "printable", scope: !1202, file: !102, line: 612, type: !39)
!1205 = !DILocalVariable(name: "mbstate", scope: !1206, file: !102, line: 621, type: !1208)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !102, line: 620, column: 15)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !102, line: 614, column: 17)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1209, line: 6, baseType: !1210)
!1209 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1211, line: 21, baseType: !1212)
!1211 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 13, size: 64, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1212, file: !1211, line: 15, baseType: !20, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1212, file: !1211, line: 20, baseType: !1216, size: 32, offset: 32)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1211, line: 16, size: 32, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1216, file: !1211, line: 18, baseType: !61, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1216, file: !1211, line: 19, baseType: !1220, size: 32)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 4)
!1223 = !DILocalVariable(name: "w", scope: !1224, file: !102, line: 631, type: !1225)
!1224 = distinct !DILexicalBlock(scope: !1206, file: !102, line: 630, column: 19)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !97, line: 90, baseType: !20)
!1226 = !DILocalVariable(name: "bytes", scope: !1224, file: !102, line: 632, type: !96)
!1227 = !DILocalVariable(name: "j", scope: !1228, file: !102, line: 657, type: !96)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !102, line: 656, column: 27)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !102, line: 654, column: 29)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !102, line: 649, column: 23)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !102, line: 641, column: 30)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !102, line: 636, column: 30)
!1233 = distinct !DILexicalBlock(scope: !1224, file: !102, line: 634, column: 25)
!1234 = !DILocalVariable(name: "ilim", scope: !1235, file: !102, line: 684, type: !96)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !102, line: 681, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1202, file: !102, line: 680, column: 17)
!1237 = !DILocation(line: 256, column: 33, scope: !1167)
!1238 = !DILocation(line: 256, column: 48, scope: !1167)
!1239 = !DILocation(line: 257, column: 39, scope: !1167)
!1240 = !DILocation(line: 257, column: 51, scope: !1167)
!1241 = !DILocation(line: 258, column: 46, scope: !1167)
!1242 = !DILocation(line: 258, column: 65, scope: !1167)
!1243 = !DILocation(line: 259, column: 47, scope: !1167)
!1244 = !DILocation(line: 260, column: 39, scope: !1167)
!1245 = !DILocation(line: 261, column: 39, scope: !1167)
!1246 = !DILocation(line: 264, column: 10, scope: !1167)
!1247 = !DILocation(line: 265, column: 10, scope: !1167)
!1248 = !DILocation(line: 266, column: 15, scope: !1167)
!1249 = !DILocation(line: 267, column: 10, scope: !1167)
!1250 = !DILocation(line: 268, column: 8, scope: !1167)
!1251 = !DILocation(line: 269, column: 25, scope: !1167)
!1252 = !DILocation(line: 269, column: 36, scope: !1167)
!1253 = !DILocation(line: 270, column: 8, scope: !1167)
!1254 = !DILocation(line: 271, column: 8, scope: !1167)
!1255 = !DILocation(line: 272, column: 8, scope: !1167)
!1256 = !DILocation(line: 273, column: 8, scope: !1167)
!1257 = !DILocation(line: 273, column: 3, scope: !1167)
!1258 = !DILocation(line: 0, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1167, file: !102, line: 317, column: 5)
!1260 = !DILocation(line: 316, column: 3, scope: !1167)
!1261 = !DILocation(line: 323, column: 11, scope: !1259)
!1262 = !DILocation(line: 323, column: 12, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !102, line: 323, column: 11)
!1264 = !DILocation(line: 324, column: 9, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !102, line: 324, column: 9)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !102, line: 324, column: 9)
!1267 = !DILocation(line: 324, column: 9, scope: !1266)
!1268 = !DILocation(line: 362, column: 26, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !102, line: 340, column: 11)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !102, line: 339, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1259, file: !102, line: 338, column: 7)
!1272 = !DILocation(line: 363, column: 27, scope: !1269)
!1273 = !DILocation(line: 364, column: 11, scope: !1269)
!1274 = !DILocation(line: 365, column: 14, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !102, line: 365, column: 13)
!1276 = !DILocation(line: 365, column: 13, scope: !1271)
!1277 = !DILocation(line: 366, column: 43, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !102, line: 366, column: 11)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !102, line: 366, column: 11)
!1280 = !DILocation(line: 366, column: 11, scope: !1279)
!1281 = !DILocation(line: 367, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !102, line: 367, column: 13)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !102, line: 367, column: 13)
!1284 = !DILocation(line: 367, column: 13, scope: !1283)
!1285 = !DILocation(line: 366, column: 70, scope: !1278)
!1286 = distinct !{!1286, !1280, !1287}
!1287 = !DILocation(line: 367, column: 13, scope: !1279)
!1288 = !DILocation(line: 370, column: 28, scope: !1271)
!1289 = !DILocation(line: 372, column: 7, scope: !1259)
!1290 = !DILocation(line: 376, column: 7, scope: !1259)
!1291 = !DILocation(line: 379, column: 7, scope: !1259)
!1292 = !DILocation(line: 381, column: 12, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1259, file: !102, line: 381, column: 11)
!1294 = !DILocation(line: 381, column: 11, scope: !1259)
!1295 = !DILocation(line: 0, scope: !1293)
!1296 = !DILocation(line: 386, column: 12, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1259, file: !102, line: 386, column: 11)
!1298 = !DILocation(line: 386, column: 11, scope: !1259)
!1299 = !DILocation(line: 387, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !102, line: 387, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !102, line: 387, column: 9)
!1302 = !DILocation(line: 387, column: 9, scope: !1301)
!1303 = !DILocation(line: 394, column: 7, scope: !1259)
!1304 = !DILocation(line: 397, column: 7, scope: !1259)
!1305 = !DILocation(line: 0, scope: !1167)
!1306 = !DILocation(line: 263, column: 10, scope: !1167)
!1307 = !DILocation(line: 400, column: 8, scope: !1196)
!1308 = !DILocation(line: 0, scope: !1195)
!1309 = !DILocation(line: 400, column: 27, scope: !1195)
!1310 = !DILocation(line: 400, column: 19, scope: !1195)
!1311 = !DILocation(line: 400, column: 41, scope: !1195)
!1312 = !DILocation(line: 400, column: 48, scope: !1195)
!1313 = !DILocation(line: 400, column: 3, scope: !1196)
!1314 = !DILocation(line: 400, column: 60, scope: !1195)
!1315 = !DILocation(line: 404, column: 12, scope: !1194)
!1316 = !DILocation(line: 405, column: 12, scope: !1194)
!1317 = !DILocation(line: 406, column: 12, scope: !1194)
!1318 = !DILocation(line: 409, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1194, file: !102, line: 408, column: 11)
!1320 = !DILocation(line: 411, column: 17, scope: !1319)
!1321 = !DILocation(line: 412, column: 39, scope: !1319)
!1322 = !DILocation(line: 416, column: 32, scope: !1319)
!1323 = !DILocation(line: 412, column: 19, scope: !1319)
!1324 = !DILocation(line: 412, column: 15, scope: !1319)
!1325 = !DILocation(line: 417, column: 11, scope: !1319)
!1326 = !DILocation(line: 417, column: 26, scope: !1319)
!1327 = !DILocation(line: 417, column: 14, scope: !1319)
!1328 = !DILocation(line: 417, column: 63, scope: !1319)
!1329 = !DILocation(line: 408, column: 11, scope: !1194)
!1330 = !DILocation(line: 0, scope: !1194)
!1331 = !DILocation(line: 424, column: 11, scope: !1194)
!1332 = !DILocation(line: 402, column: 21, scope: !1194)
!1333 = !DILocation(line: 425, column: 7, scope: !1194)
!1334 = !DILocation(line: 428, column: 15, scope: !1203)
!1335 = !DILocation(line: 430, column: 15, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !102, line: 430, column: 15)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !102, line: 429, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 428, column: 15)
!1339 = !DILocation(line: 430, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !102, line: 430, column: 15)
!1341 = !DILocation(line: 430, column: 15, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !102, line: 430, column: 15)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !102, line: 430, column: 15)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !102, line: 430, column: 15)
!1345 = !DILocation(line: 430, column: 15, scope: !1343)
!1346 = !DILocation(line: 430, column: 15, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !102, line: 430, column: 15)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !102, line: 430, column: 15)
!1349 = !DILocation(line: 430, column: 15, scope: !1348)
!1350 = !DILocation(line: 430, column: 15, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !102, line: 430, column: 15)
!1352 = distinct !DILexicalBlock(scope: !1344, file: !102, line: 430, column: 15)
!1353 = !DILocation(line: 430, column: 15, scope: !1352)
!1354 = !DILocation(line: 430, column: 15, scope: !1344)
!1355 = !DILocation(line: 430, column: 15, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !102, line: 430, column: 15)
!1357 = distinct !DILexicalBlock(scope: !1336, file: !102, line: 430, column: 15)
!1358 = !DILocation(line: 430, column: 15, scope: !1357)
!1359 = !DILocation(line: 438, column: 19, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1337, file: !102, line: 437, column: 19)
!1361 = !DILocation(line: 438, column: 24, scope: !1360)
!1362 = !DILocation(line: 438, column: 28, scope: !1360)
!1363 = !DILocation(line: 438, column: 38, scope: !1360)
!1364 = !DILocation(line: 438, column: 48, scope: !1360)
!1365 = !DILocation(line: 438, column: 59, scope: !1360)
!1366 = !DILocation(line: 440, column: 19, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !102, line: 440, column: 19)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !102, line: 440, column: 19)
!1369 = distinct !DILexicalBlock(scope: !1360, file: !102, line: 439, column: 17)
!1370 = !DILocation(line: 440, column: 19, scope: !1368)
!1371 = !DILocation(line: 441, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !102, line: 441, column: 19)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !102, line: 441, column: 19)
!1374 = !DILocation(line: 441, column: 19, scope: !1373)
!1375 = !DILocation(line: 442, column: 17, scope: !1369)
!1376 = !DILocation(line: 449, column: 20, scope: !1338)
!1377 = !DILocation(line: 454, column: 11, scope: !1203)
!1378 = !DILocation(line: 457, column: 19, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 455, column: 13)
!1380 = !DILocation(line: 463, column: 19, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1379, file: !102, line: 462, column: 19)
!1382 = !DILocation(line: 463, column: 24, scope: !1381)
!1383 = !DILocation(line: 463, column: 28, scope: !1381)
!1384 = !DILocation(line: 463, column: 38, scope: !1381)
!1385 = !DILocation(line: 463, column: 47, scope: !1381)
!1386 = !DILocation(line: 463, column: 41, scope: !1381)
!1387 = !DILocation(line: 463, column: 52, scope: !1381)
!1388 = !DILocation(line: 462, column: 19, scope: !1379)
!1389 = !DILocation(line: 464, column: 25, scope: !1381)
!1390 = !DILocation(line: 464, column: 17, scope: !1381)
!1391 = !DILocation(line: 471, column: 25, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1381, file: !102, line: 465, column: 19)
!1393 = !DILocation(line: 475, column: 21, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !102, line: 475, column: 21)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !102, line: 475, column: 21)
!1396 = !DILocation(line: 475, column: 21, scope: !1395)
!1397 = !DILocation(line: 476, column: 21, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !102, line: 476, column: 21)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !102, line: 476, column: 21)
!1400 = !DILocation(line: 476, column: 21, scope: !1399)
!1401 = !DILocation(line: 477, column: 21, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !102, line: 477, column: 21)
!1403 = distinct !DILexicalBlock(scope: !1392, file: !102, line: 477, column: 21)
!1404 = !DILocation(line: 477, column: 21, scope: !1403)
!1405 = !DILocation(line: 478, column: 21, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !102, line: 478, column: 21)
!1407 = distinct !DILexicalBlock(scope: !1392, file: !102, line: 478, column: 21)
!1408 = !DILocation(line: 478, column: 21, scope: !1407)
!1409 = !DILocation(line: 479, column: 21, scope: !1392)
!1410 = !DILocation(line: 403, column: 21, scope: !1194)
!1411 = !DILocation(line: 492, column: 31, scope: !1203)
!1412 = !DILocation(line: 493, column: 31, scope: !1203)
!1413 = !DILocation(line: 495, column: 31, scope: !1203)
!1414 = !DILocation(line: 496, column: 31, scope: !1203)
!1415 = !DILocation(line: 497, column: 31, scope: !1203)
!1416 = !DILocation(line: 500, column: 15, scope: !1203)
!1417 = !DILocation(line: 502, column: 19, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !102, line: 501, column: 13)
!1419 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 500, column: 15)
!1420 = !DILocation(line: 509, column: 33, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 509, column: 15)
!1422 = !DILocation(line: 0, scope: !1203)
!1423 = !DILocation(line: 514, column: 15, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 513, column: 15)
!1425 = !DILocation(line: 518, column: 15, scope: !1203)
!1426 = !DILocation(line: 526, column: 26, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 526, column: 15)
!1428 = !DILocation(line: 526, column: 15, scope: !1203)
!1429 = !DILocation(line: 526, column: 40, scope: !1427)
!1430 = !DILocation(line: 526, column: 47, scope: !1427)
!1431 = !DILocation(line: 530, column: 17, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 530, column: 15)
!1433 = !DILocation(line: 526, column: 18, scope: !1427)
!1434 = !DILocation(line: 526, column: 65, scope: !1427)
!1435 = !DILocation(line: 530, column: 15, scope: !1203)
!1436 = !DILocation(line: 535, column: 11, scope: !1203)
!1437 = !DILocation(line: 549, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 548, column: 15)
!1439 = !DILocation(line: 556, column: 15, scope: !1203)
!1440 = !DILocation(line: 558, column: 19, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !102, line: 557, column: 13)
!1442 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 556, column: 15)
!1443 = !DILocation(line: 561, column: 19, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !102, line: 561, column: 19)
!1445 = !DILocation(line: 561, column: 35, scope: !1444)
!1446 = !DILocation(line: 561, column: 30, scope: !1444)
!1447 = !DILocation(line: 570, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !102, line: 570, column: 15)
!1449 = distinct !DILexicalBlock(scope: !1441, file: !102, line: 570, column: 15)
!1450 = !DILocation(line: 570, column: 15, scope: !1449)
!1451 = !DILocation(line: 571, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !102, line: 571, column: 15)
!1453 = distinct !DILexicalBlock(scope: !1441, file: !102, line: 571, column: 15)
!1454 = !DILocation(line: 571, column: 15, scope: !1453)
!1455 = !DILocation(line: 572, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !102, line: 572, column: 15)
!1457 = distinct !DILexicalBlock(scope: !1441, file: !102, line: 572, column: 15)
!1458 = !DILocation(line: 572, column: 15, scope: !1457)
!1459 = !DILocation(line: 574, column: 13, scope: !1441)
!1460 = !DILocation(line: 614, column: 17, scope: !1202)
!1461 = !DILocation(line: 610, column: 20, scope: !1202)
!1462 = !DILocation(line: 617, column: 29, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1207, file: !102, line: 615, column: 15)
!1464 = !{!825, !825, i64 0}
!1465 = !DILocation(line: 617, column: 27, scope: !1463)
!1466 = !DILocation(line: 612, column: 18, scope: !1202)
!1467 = !DILocation(line: 618, column: 15, scope: !1463)
!1468 = !DILocation(line: 621, column: 17, scope: !1206)
!1469 = !DILocation(line: 622, column: 17, scope: !1206)
!1470 = !DILocation(line: 626, column: 29, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1206, file: !102, line: 626, column: 21)
!1472 = !DILocation(line: 626, column: 21, scope: !1206)
!1473 = !DILocation(line: 627, column: 29, scope: !1471)
!1474 = !DILocation(line: 627, column: 19, scope: !1471)
!1475 = !DILocation(line: 0, scope: !1319)
!1476 = !DILocation(line: 629, column: 17, scope: !1206)
!1477 = !DILocation(line: 624, column: 19, scope: !1206)
!1478 = !DILocation(line: 625, column: 27, scope: !1206)
!1479 = !DILocation(line: 631, column: 21, scope: !1224)
!1480 = !DILocation(line: 632, column: 56, scope: !1224)
!1481 = !DILocation(line: 632, column: 50, scope: !1224)
!1482 = !DILocation(line: 633, column: 53, scope: !1224)
!1483 = !DILocation(line: 621, column: 27, scope: !1206)
!1484 = !DILocation(line: 631, column: 29, scope: !1224)
!1485 = !DILocation(line: 632, column: 36, scope: !1224)
!1486 = !DILocation(line: 632, column: 28, scope: !1224)
!1487 = !DILocation(line: 634, column: 25, scope: !1224)
!1488 = !DILocation(line: 644, column: 38, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1231, file: !102, line: 642, column: 23)
!1490 = !DILocation(line: 644, column: 48, scope: !1489)
!1491 = !DILocation(line: 644, column: 51, scope: !1489)
!1492 = !DILocation(line: 644, column: 25, scope: !1489)
!1493 = !DILocation(line: 645, column: 28, scope: !1489)
!1494 = !DILocation(line: 644, column: 34, scope: !1489)
!1495 = distinct !{!1495, !1492, !1493}
!1496 = !DILocation(line: 658, column: 43, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !102, line: 658, column: 29)
!1498 = distinct !DILexicalBlock(scope: !1228, file: !102, line: 658, column: 29)
!1499 = !DILocation(line: 655, column: 29, scope: !1229)
!1500 = !DILocation(line: 657, column: 36, scope: !1228)
!1501 = !DILocation(line: 659, column: 49, scope: !1497)
!1502 = !DILocation(line: 659, column: 39, scope: !1497)
!1503 = !DILocation(line: 659, column: 31, scope: !1497)
!1504 = !DILocation(line: 658, column: 53, scope: !1497)
!1505 = !DILocation(line: 658, column: 29, scope: !1498)
!1506 = distinct !{!1506, !1505, !1507}
!1507 = !DILocation(line: 667, column: 33, scope: !1498)
!1508 = !DILocation(line: 674, column: 19, scope: !1206)
!1509 = !DILocation(line: 670, column: 41, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1230, file: !102, line: 670, column: 29)
!1511 = !DILocation(line: 670, column: 31, scope: !1510)
!1512 = !DILocation(line: 670, column: 29, scope: !1230)
!1513 = !DILocation(line: 672, column: 27, scope: !1230)
!1514 = !DILocation(line: 675, column: 26, scope: !1206)
!1515 = !DILocation(line: 675, column: 24, scope: !1206)
!1516 = !DILocation(line: 674, column: 19, scope: !1224)
!1517 = distinct !{!1517, !1476, !1518}
!1518 = !DILocation(line: 675, column: 44, scope: !1206)
!1519 = !DILocation(line: 676, column: 15, scope: !1207)
!1520 = !DILocation(line: 0, scope: !1471)
!1521 = !DILocation(line: 0, scope: !1206)
!1522 = !DILocation(line: 678, column: 40, scope: !1202)
!1523 = !DILocation(line: 680, column: 19, scope: !1236)
!1524 = !DILocation(line: 680, column: 45, scope: !1236)
!1525 = !DILocation(line: 680, column: 23, scope: !1236)
!1526 = !DILocation(line: 684, column: 33, scope: !1235)
!1527 = !DILocation(line: 684, column: 24, scope: !1235)
!1528 = !DILocation(line: 686, column: 17, scope: !1235)
!1529 = !DILocation(line: 0, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !102, line: 687, column: 19)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !102, line: 686, column: 17)
!1532 = distinct !DILexicalBlock(scope: !1235, file: !102, line: 686, column: 17)
!1533 = !DILocation(line: 0, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !102, line: 703, column: 21)
!1535 = !DILocation(line: 0, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !102, line: 696, column: 23)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !102, line: 695, column: 30)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !102, line: 688, column: 25)
!1539 = !DILocation(line: 688, column: 43, scope: !1538)
!1540 = !DILocation(line: 690, column: 25, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !102, line: 690, column: 25)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !102, line: 689, column: 23)
!1543 = !DILocation(line: 690, column: 25, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !102, line: 690, column: 25)
!1545 = !DILocation(line: 690, column: 25, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !102, line: 690, column: 25)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !102, line: 690, column: 25)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !102, line: 690, column: 25)
!1549 = !DILocation(line: 690, column: 25, scope: !1547)
!1550 = !DILocation(line: 690, column: 25, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !102, line: 690, column: 25)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !102, line: 690, column: 25)
!1553 = !DILocation(line: 690, column: 25, scope: !1552)
!1554 = !DILocation(line: 690, column: 25, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !102, line: 690, column: 25)
!1556 = distinct !DILexicalBlock(scope: !1548, file: !102, line: 690, column: 25)
!1557 = !DILocation(line: 690, column: 25, scope: !1556)
!1558 = !DILocation(line: 690, column: 25, scope: !1548)
!1559 = !DILocation(line: 690, column: 25, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !102, line: 690, column: 25)
!1561 = distinct !DILexicalBlock(scope: !1541, file: !102, line: 690, column: 25)
!1562 = !DILocation(line: 690, column: 25, scope: !1561)
!1563 = !DILocation(line: 691, column: 25, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !102, line: 691, column: 25)
!1565 = distinct !DILexicalBlock(scope: !1542, file: !102, line: 691, column: 25)
!1566 = !DILocation(line: 691, column: 25, scope: !1565)
!1567 = !DILocation(line: 692, column: 25, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !102, line: 692, column: 25)
!1569 = distinct !DILexicalBlock(scope: !1542, file: !102, line: 692, column: 25)
!1570 = !DILocation(line: 692, column: 25, scope: !1569)
!1571 = !DILocation(line: 693, column: 38, scope: !1542)
!1572 = !DILocation(line: 693, column: 33, scope: !1542)
!1573 = !DILocation(line: 694, column: 23, scope: !1542)
!1574 = !DILocation(line: 695, column: 30, scope: !1537)
!1575 = !DILocation(line: 695, column: 30, scope: !1538)
!1576 = !DILocation(line: 697, column: 25, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !102, line: 697, column: 25)
!1578 = distinct !DILexicalBlock(scope: !1536, file: !102, line: 697, column: 25)
!1579 = !DILocation(line: 697, column: 25, scope: !1578)
!1580 = !DILocation(line: 699, column: 23, scope: !1536)
!1581 = !DILocation(line: 0, scope: !1569)
!1582 = !DILocation(line: 0, scope: !1542)
!1583 = !DILocation(line: 0, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1319, file: !102, line: 418, column: 9)
!1585 = !DILocation(line: 0, scope: !1541)
!1586 = !DILocation(line: 700, column: 35, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1530, file: !102, line: 700, column: 25)
!1588 = !DILocation(line: 700, column: 30, scope: !1587)
!1589 = !DILocation(line: 700, column: 25, scope: !1530)
!1590 = !DILocation(line: 702, column: 21, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !102, line: 702, column: 21)
!1592 = distinct !DILexicalBlock(scope: !1530, file: !102, line: 702, column: 21)
!1593 = !DILocation(line: 702, column: 21, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !102, line: 702, column: 21)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !102, line: 702, column: 21)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !102, line: 702, column: 21)
!1597 = !DILocation(line: 702, column: 21, scope: !1595)
!1598 = !DILocation(line: 702, column: 21, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !102, line: 702, column: 21)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !102, line: 702, column: 21)
!1601 = !DILocation(line: 702, column: 21, scope: !1600)
!1602 = !DILocation(line: 702, column: 21, scope: !1596)
!1603 = !DILocation(line: 0, scope: !1578)
!1604 = !DILocation(line: 703, column: 21, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1534, file: !102, line: 703, column: 21)
!1606 = !DILocation(line: 703, column: 21, scope: !1534)
!1607 = !DILocation(line: 704, column: 25, scope: !1530)
!1608 = !DILocation(line: 686, column: 17, scope: !1531)
!1609 = distinct !{!1609, !1610, !1611}
!1610 = !DILocation(line: 686, column: 17, scope: !1532)
!1611 = !DILocation(line: 705, column: 19, scope: !1532)
!1612 = !DILocation(line: 0, scope: !1196)
!1613 = !DILocation(line: 416, column: 30, scope: !1319)
!1614 = !DILocation(line: 712, column: 34, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1194, file: !102, line: 712, column: 11)
!1616 = !DILocation(line: 714, column: 14, scope: !1615)
!1617 = !DILocation(line: 715, column: 14, scope: !1615)
!1618 = !DILocation(line: 715, column: 35, scope: !1615)
!1619 = !DILocation(line: 715, column: 17, scope: !1615)
!1620 = !DILocation(line: 715, column: 47, scope: !1615)
!1621 = !DILocation(line: 715, column: 65, scope: !1615)
!1622 = !DILocation(line: 716, column: 15, scope: !1615)
!1623 = !DILocation(line: 716, column: 11, scope: !1615)
!1624 = !DILocation(line: 712, column: 11, scope: !1194)
!1625 = !DILocation(line: 400, column: 10, scope: !1196)
!1626 = !DILocation(line: 0, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !102, line: 519, column: 13)
!1628 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 518, column: 15)
!1629 = !DILocation(line: 720, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1194, file: !102, line: 720, column: 7)
!1631 = !DILocation(line: 720, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1630, file: !102, line: 720, column: 7)
!1633 = !DILocation(line: 720, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !102, line: 720, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !102, line: 720, column: 7)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !102, line: 720, column: 7)
!1637 = !DILocation(line: 720, column: 7, scope: !1635)
!1638 = !DILocation(line: 720, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !102, line: 720, column: 7)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !102, line: 720, column: 7)
!1641 = !DILocation(line: 720, column: 7, scope: !1640)
!1642 = !DILocation(line: 720, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !102, line: 720, column: 7)
!1644 = distinct !DILexicalBlock(scope: !1636, file: !102, line: 720, column: 7)
!1645 = !DILocation(line: 720, column: 7, scope: !1644)
!1646 = !DILocation(line: 720, column: 7, scope: !1636)
!1647 = !DILocation(line: 720, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !102, line: 720, column: 7)
!1649 = distinct !DILexicalBlock(scope: !1630, file: !102, line: 720, column: 7)
!1650 = !DILocation(line: 720, column: 7, scope: !1649)
!1651 = !DILocation(line: 723, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !102, line: 723, column: 7)
!1653 = distinct !DILexicalBlock(scope: !1194, file: !102, line: 723, column: 7)
!1654 = !DILocation(line: 424, column: 9, scope: !1194)
!1655 = !DILocation(line: 723, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !102, line: 723, column: 7)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !102, line: 723, column: 7)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !102, line: 723, column: 7)
!1659 = !DILocation(line: 723, column: 7, scope: !1657)
!1660 = !DILocation(line: 723, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !102, line: 723, column: 7)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !102, line: 723, column: 7)
!1663 = !DILocation(line: 723, column: 7, scope: !1662)
!1664 = !DILocation(line: 723, column: 7, scope: !1658)
!1665 = !DILocation(line: 724, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !102, line: 724, column: 7)
!1667 = distinct !DILexicalBlock(scope: !1194, file: !102, line: 724, column: 7)
!1668 = !DILocation(line: 724, column: 7, scope: !1667)
!1669 = !DILocation(line: 726, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1194, file: !102, line: 726, column: 11)
!1671 = !DILocation(line: 726, column: 11, scope: !1194)
!1672 = !DILocation(line: 728, column: 5, scope: !1195)
!1673 = !DILocation(line: 400, column: 75, scope: !1195)
!1674 = !DILocation(line: 400, column: 3, scope: !1195)
!1675 = distinct !{!1675, !1313, !1676}
!1676 = !DILocation(line: 728, column: 5, scope: !1196)
!1677 = !DILocation(line: 730, column: 11, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1167, file: !102, line: 730, column: 7)
!1679 = !DILocation(line: 730, column: 16, scope: !1678)
!1680 = !DILocation(line: 738, column: 51, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1167, file: !102, line: 738, column: 7)
!1682 = !DILocation(line: 739, column: 10, scope: !1681)
!1683 = !DILocation(line: 741, column: 11, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !102, line: 741, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !102, line: 740, column: 5)
!1686 = !DILocation(line: 741, column: 11, scope: !1685)
!1687 = !DILocation(line: 742, column: 16, scope: !1684)
!1688 = !DILocation(line: 742, column: 9, scope: !1684)
!1689 = !DILocation(line: 746, column: 18, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !102, line: 746, column: 16)
!1691 = !DILocation(line: 746, column: 32, scope: !1690)
!1692 = !DILocation(line: 746, column: 29, scope: !1690)
!1693 = !DILocation(line: 755, column: 7, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1167, file: !102, line: 755, column: 7)
!1695 = !DILocation(line: 755, column: 20, scope: !1694)
!1696 = !DILocation(line: 756, column: 12, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !102, line: 756, column: 5)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !102, line: 756, column: 5)
!1699 = !DILocation(line: 756, column: 5, scope: !1698)
!1700 = !DILocation(line: 757, column: 7, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !102, line: 757, column: 7)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !102, line: 757, column: 7)
!1703 = !DILocation(line: 757, column: 7, scope: !1702)
!1704 = !DILocation(line: 756, column: 39, scope: !1697)
!1705 = distinct !{!1705, !1699, !1706}
!1706 = !DILocation(line: 757, column: 7, scope: !1698)
!1707 = !DILocation(line: 759, column: 11, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1167, file: !102, line: 759, column: 7)
!1709 = !DILocation(line: 759, column: 7, scope: !1167)
!1710 = !DILocation(line: 760, column: 5, scope: !1708)
!1711 = !DILocation(line: 760, column: 17, scope: !1708)
!1712 = !DILocation(line: 766, column: 21, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1167, file: !102, line: 766, column: 7)
!1714 = !DILocation(line: 766, column: 54, scope: !1713)
!1715 = !DILocation(line: 766, column: 51, scope: !1713)
!1716 = !DILocation(line: 770, column: 42, scope: !1167)
!1717 = !DILocation(line: 768, column: 10, scope: !1167)
!1718 = !DILocation(line: 768, column: 3, scope: !1167)
!1719 = !DILocation(line: 772, column: 1, scope: !1167)
!1720 = distinct !DISubprogram(name: "gettext_quote", scope: !102, file: !102, line: 207, type: !1721, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1723)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!17, !17, !59}
!1723 = !{!1724, !1725, !1726, !1727}
!1724 = !DILocalVariable(name: "msgid", arg: 1, scope: !1720, file: !102, line: 207, type: !17)
!1725 = !DILocalVariable(name: "s", arg: 2, scope: !1720, file: !102, line: 207, type: !59)
!1726 = !DILocalVariable(name: "translation", scope: !1720, file: !102, line: 209, type: !17)
!1727 = !DILocalVariable(name: "locale_code", scope: !1720, file: !102, line: 210, type: !17)
!1728 = !DILocation(line: 207, column: 28, scope: !1720)
!1729 = !DILocation(line: 207, column: 54, scope: !1720)
!1730 = !DILocation(line: 209, column: 29, scope: !1720)
!1731 = !DILocation(line: 209, column: 15, scope: !1720)
!1732 = !DILocation(line: 212, column: 19, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1720, file: !102, line: 212, column: 7)
!1734 = !DILocation(line: 212, column: 7, scope: !1720)
!1735 = !DILocation(line: 233, column: 17, scope: !1720)
!1736 = !DILocation(line: 210, column: 15, scope: !1720)
!1737 = !DILocalVariable(name: "s1", arg: 1, scope: !1738, file: !1739, line: 160, type: !17)
!1738 = distinct !DISubprogram(name: "strcaseeq0", scope: !1739, file: !1739, line: 160, type: !1740, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1742)
!1739 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1742 = !{!1737, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1743 = !DILocalVariable(name: "s2", arg: 2, scope: !1738, file: !1739, line: 160, type: !17)
!1744 = !DILocalVariable(name: "s20", arg: 3, scope: !1738, file: !1739, line: 160, type: !7)
!1745 = !DILocalVariable(name: "s21", arg: 4, scope: !1738, file: !1739, line: 160, type: !7)
!1746 = !DILocalVariable(name: "s22", arg: 5, scope: !1738, file: !1739, line: 160, type: !7)
!1747 = !DILocalVariable(name: "s23", arg: 6, scope: !1738, file: !1739, line: 160, type: !7)
!1748 = !DILocalVariable(name: "s24", arg: 7, scope: !1738, file: !1739, line: 160, type: !7)
!1749 = !DILocalVariable(name: "s25", arg: 8, scope: !1738, file: !1739, line: 160, type: !7)
!1750 = !DILocalVariable(name: "s26", arg: 9, scope: !1738, file: !1739, line: 160, type: !7)
!1751 = !DILocalVariable(name: "s27", arg: 10, scope: !1738, file: !1739, line: 160, type: !7)
!1752 = !DILocalVariable(name: "s28", arg: 11, scope: !1738, file: !1739, line: 160, type: !7)
!1753 = !DILocation(line: 160, column: 25, scope: !1738, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 234, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1720, file: !102, line: 234, column: 7)
!1756 = !DILocation(line: 160, column: 41, scope: !1738, inlinedAt: !1754)
!1757 = !DILocation(line: 160, column: 50, scope: !1738, inlinedAt: !1754)
!1758 = !DILocation(line: 160, column: 60, scope: !1738, inlinedAt: !1754)
!1759 = !DILocation(line: 160, column: 70, scope: !1738, inlinedAt: !1754)
!1760 = !DILocation(line: 160, column: 80, scope: !1738, inlinedAt: !1754)
!1761 = !DILocation(line: 160, column: 90, scope: !1738, inlinedAt: !1754)
!1762 = !DILocation(line: 160, column: 100, scope: !1738, inlinedAt: !1754)
!1763 = !DILocation(line: 160, column: 110, scope: !1738, inlinedAt: !1754)
!1764 = !DILocation(line: 160, column: 120, scope: !1738, inlinedAt: !1754)
!1765 = !DILocation(line: 160, column: 130, scope: !1738, inlinedAt: !1754)
!1766 = !DILocation(line: 162, column: 7, scope: !1767, inlinedAt: !1754)
!1767 = distinct !DILexicalBlock(scope: !1738, file: !1739, line: 162, column: 7)
!1768 = !DILocalVariable(name: "s1", arg: 1, scope: !1769, file: !1739, line: 146, type: !17)
!1769 = distinct !DISubprogram(name: "strcaseeq1", scope: !1739, file: !1739, line: 146, type: !1770, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1772 = !{!1768, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781}
!1773 = !DILocalVariable(name: "s2", arg: 2, scope: !1769, file: !1739, line: 146, type: !17)
!1774 = !DILocalVariable(name: "s21", arg: 3, scope: !1769, file: !1739, line: 146, type: !7)
!1775 = !DILocalVariable(name: "s22", arg: 4, scope: !1769, file: !1739, line: 146, type: !7)
!1776 = !DILocalVariable(name: "s23", arg: 5, scope: !1769, file: !1739, line: 146, type: !7)
!1777 = !DILocalVariable(name: "s24", arg: 6, scope: !1769, file: !1739, line: 146, type: !7)
!1778 = !DILocalVariable(name: "s25", arg: 7, scope: !1769, file: !1739, line: 146, type: !7)
!1779 = !DILocalVariable(name: "s26", arg: 8, scope: !1769, file: !1739, line: 146, type: !7)
!1780 = !DILocalVariable(name: "s27", arg: 9, scope: !1769, file: !1739, line: 146, type: !7)
!1781 = !DILocalVariable(name: "s28", arg: 10, scope: !1769, file: !1739, line: 146, type: !7)
!1782 = !DILocation(line: 146, column: 25, scope: !1769, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 167, column: 16, scope: !1784, inlinedAt: !1754)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !1739, line: 164, column: 11)
!1785 = distinct !DILexicalBlock(scope: !1767, file: !1739, line: 163, column: 5)
!1786 = !DILocation(line: 146, column: 41, scope: !1769, inlinedAt: !1783)
!1787 = !DILocation(line: 146, column: 50, scope: !1769, inlinedAt: !1783)
!1788 = !DILocation(line: 146, column: 60, scope: !1769, inlinedAt: !1783)
!1789 = !DILocation(line: 146, column: 70, scope: !1769, inlinedAt: !1783)
!1790 = !DILocation(line: 146, column: 80, scope: !1769, inlinedAt: !1783)
!1791 = !DILocation(line: 146, column: 90, scope: !1769, inlinedAt: !1783)
!1792 = !DILocation(line: 146, column: 100, scope: !1769, inlinedAt: !1783)
!1793 = !DILocation(line: 146, column: 110, scope: !1769, inlinedAt: !1783)
!1794 = !DILocation(line: 146, column: 120, scope: !1769, inlinedAt: !1783)
!1795 = !DILocation(line: 148, column: 7, scope: !1796, inlinedAt: !1783)
!1796 = distinct !DILexicalBlock(scope: !1769, file: !1739, line: 148, column: 7)
!1797 = !DILocalVariable(name: "s1", arg: 1, scope: !1798, file: !1739, line: 132, type: !17)
!1798 = distinct !DISubprogram(name: "strcaseeq2", scope: !1739, file: !1739, line: 132, type: !1799, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1801 = !{!1797, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809}
!1802 = !DILocalVariable(name: "s2", arg: 2, scope: !1798, file: !1739, line: 132, type: !17)
!1803 = !DILocalVariable(name: "s22", arg: 3, scope: !1798, file: !1739, line: 132, type: !7)
!1804 = !DILocalVariable(name: "s23", arg: 4, scope: !1798, file: !1739, line: 132, type: !7)
!1805 = !DILocalVariable(name: "s24", arg: 5, scope: !1798, file: !1739, line: 132, type: !7)
!1806 = !DILocalVariable(name: "s25", arg: 6, scope: !1798, file: !1739, line: 132, type: !7)
!1807 = !DILocalVariable(name: "s26", arg: 7, scope: !1798, file: !1739, line: 132, type: !7)
!1808 = !DILocalVariable(name: "s27", arg: 8, scope: !1798, file: !1739, line: 132, type: !7)
!1809 = !DILocalVariable(name: "s28", arg: 9, scope: !1798, file: !1739, line: 132, type: !7)
!1810 = !DILocation(line: 132, column: 25, scope: !1798, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 153, column: 16, scope: !1812, inlinedAt: !1783)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !1739, line: 150, column: 11)
!1813 = distinct !DILexicalBlock(scope: !1796, file: !1739, line: 149, column: 5)
!1814 = !DILocation(line: 132, column: 41, scope: !1798, inlinedAt: !1811)
!1815 = !DILocation(line: 132, column: 50, scope: !1798, inlinedAt: !1811)
!1816 = !DILocation(line: 132, column: 60, scope: !1798, inlinedAt: !1811)
!1817 = !DILocation(line: 132, column: 70, scope: !1798, inlinedAt: !1811)
!1818 = !DILocation(line: 132, column: 80, scope: !1798, inlinedAt: !1811)
!1819 = !DILocation(line: 132, column: 90, scope: !1798, inlinedAt: !1811)
!1820 = !DILocation(line: 132, column: 100, scope: !1798, inlinedAt: !1811)
!1821 = !DILocation(line: 132, column: 110, scope: !1798, inlinedAt: !1811)
!1822 = !DILocation(line: 134, column: 7, scope: !1823, inlinedAt: !1811)
!1823 = distinct !DILexicalBlock(scope: !1798, file: !1739, line: 134, column: 7)
!1824 = !DILocalVariable(name: "s1", arg: 1, scope: !1825, file: !1739, line: 118, type: !17)
!1825 = distinct !DISubprogram(name: "strcaseeq3", scope: !1739, file: !1739, line: 118, type: !1826, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7}
!1828 = !{!1824, !1829, !1830, !1831, !1832, !1833, !1834, !1835}
!1829 = !DILocalVariable(name: "s2", arg: 2, scope: !1825, file: !1739, line: 118, type: !17)
!1830 = !DILocalVariable(name: "s23", arg: 3, scope: !1825, file: !1739, line: 118, type: !7)
!1831 = !DILocalVariable(name: "s24", arg: 4, scope: !1825, file: !1739, line: 118, type: !7)
!1832 = !DILocalVariable(name: "s25", arg: 5, scope: !1825, file: !1739, line: 118, type: !7)
!1833 = !DILocalVariable(name: "s26", arg: 6, scope: !1825, file: !1739, line: 118, type: !7)
!1834 = !DILocalVariable(name: "s27", arg: 7, scope: !1825, file: !1739, line: 118, type: !7)
!1835 = !DILocalVariable(name: "s28", arg: 8, scope: !1825, file: !1739, line: 118, type: !7)
!1836 = !DILocation(line: 118, column: 25, scope: !1825, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 139, column: 16, scope: !1838, inlinedAt: !1811)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !1739, line: 136, column: 11)
!1839 = distinct !DILexicalBlock(scope: !1823, file: !1739, line: 135, column: 5)
!1840 = !DILocation(line: 118, column: 41, scope: !1825, inlinedAt: !1837)
!1841 = !DILocation(line: 118, column: 50, scope: !1825, inlinedAt: !1837)
!1842 = !DILocation(line: 118, column: 60, scope: !1825, inlinedAt: !1837)
!1843 = !DILocation(line: 118, column: 70, scope: !1825, inlinedAt: !1837)
!1844 = !DILocation(line: 118, column: 80, scope: !1825, inlinedAt: !1837)
!1845 = !DILocation(line: 118, column: 90, scope: !1825, inlinedAt: !1837)
!1846 = !DILocation(line: 118, column: 100, scope: !1825, inlinedAt: !1837)
!1847 = !DILocation(line: 120, column: 7, scope: !1848, inlinedAt: !1837)
!1848 = distinct !DILexicalBlock(scope: !1825, file: !1739, line: 120, column: 7)
!1849 = !DILocation(line: 120, column: 7, scope: !1825, inlinedAt: !1837)
!1850 = !DILocalVariable(name: "s1", arg: 1, scope: !1851, file: !1739, line: 104, type: !17)
!1851 = distinct !DISubprogram(name: "strcaseeq4", scope: !1739, file: !1739, line: 104, type: !1852, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!20, !17, !17, !7, !7, !7, !7, !7}
!1854 = !{!1850, !1855, !1856, !1857, !1858, !1859, !1860}
!1855 = !DILocalVariable(name: "s2", arg: 2, scope: !1851, file: !1739, line: 104, type: !17)
!1856 = !DILocalVariable(name: "s24", arg: 3, scope: !1851, file: !1739, line: 104, type: !7)
!1857 = !DILocalVariable(name: "s25", arg: 4, scope: !1851, file: !1739, line: 104, type: !7)
!1858 = !DILocalVariable(name: "s26", arg: 5, scope: !1851, file: !1739, line: 104, type: !7)
!1859 = !DILocalVariable(name: "s27", arg: 6, scope: !1851, file: !1739, line: 104, type: !7)
!1860 = !DILocalVariable(name: "s28", arg: 7, scope: !1851, file: !1739, line: 104, type: !7)
!1861 = !DILocation(line: 104, column: 25, scope: !1851, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 125, column: 16, scope: !1863, inlinedAt: !1837)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !1739, line: 122, column: 11)
!1864 = distinct !DILexicalBlock(scope: !1848, file: !1739, line: 121, column: 5)
!1865 = !DILocation(line: 104, column: 41, scope: !1851, inlinedAt: !1862)
!1866 = !DILocation(line: 104, column: 50, scope: !1851, inlinedAt: !1862)
!1867 = !DILocation(line: 104, column: 60, scope: !1851, inlinedAt: !1862)
!1868 = !DILocation(line: 104, column: 70, scope: !1851, inlinedAt: !1862)
!1869 = !DILocation(line: 104, column: 80, scope: !1851, inlinedAt: !1862)
!1870 = !DILocation(line: 104, column: 90, scope: !1851, inlinedAt: !1862)
!1871 = !DILocation(line: 106, column: 7, scope: !1872, inlinedAt: !1862)
!1872 = distinct !DILexicalBlock(scope: !1851, file: !1739, line: 106, column: 7)
!1873 = !DILocation(line: 106, column: 7, scope: !1851, inlinedAt: !1862)
!1874 = !DILocalVariable(name: "s1", arg: 1, scope: !1875, file: !1739, line: 90, type: !17)
!1875 = distinct !DISubprogram(name: "strcaseeq5", scope: !1739, file: !1739, line: 90, type: !1876, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1878)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!20, !17, !17, !7, !7, !7, !7}
!1878 = !{!1874, !1879, !1880, !1881, !1882, !1883}
!1879 = !DILocalVariable(name: "s2", arg: 2, scope: !1875, file: !1739, line: 90, type: !17)
!1880 = !DILocalVariable(name: "s25", arg: 3, scope: !1875, file: !1739, line: 90, type: !7)
!1881 = !DILocalVariable(name: "s26", arg: 4, scope: !1875, file: !1739, line: 90, type: !7)
!1882 = !DILocalVariable(name: "s27", arg: 5, scope: !1875, file: !1739, line: 90, type: !7)
!1883 = !DILocalVariable(name: "s28", arg: 6, scope: !1875, file: !1739, line: 90, type: !7)
!1884 = !DILocation(line: 90, column: 25, scope: !1875, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 111, column: 16, scope: !1886, inlinedAt: !1862)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !1739, line: 108, column: 11)
!1887 = distinct !DILexicalBlock(scope: !1872, file: !1739, line: 107, column: 5)
!1888 = !DILocation(line: 90, column: 41, scope: !1875, inlinedAt: !1885)
!1889 = !DILocation(line: 90, column: 50, scope: !1875, inlinedAt: !1885)
!1890 = !DILocation(line: 90, column: 60, scope: !1875, inlinedAt: !1885)
!1891 = !DILocation(line: 90, column: 70, scope: !1875, inlinedAt: !1885)
!1892 = !DILocation(line: 90, column: 80, scope: !1875, inlinedAt: !1885)
!1893 = !DILocation(line: 92, column: 7, scope: !1894, inlinedAt: !1885)
!1894 = distinct !DILexicalBlock(scope: !1875, file: !1739, line: 92, column: 7)
!1895 = !DILocation(line: 92, column: 7, scope: !1875, inlinedAt: !1885)
!1896 = !DILocation(line: 235, column: 12, scope: !1755)
!1897 = !DILocation(line: 235, column: 21, scope: !1755)
!1898 = !DILocation(line: 235, column: 5, scope: !1755)
!1899 = !DILocation(line: 146, column: 25, scope: !1769, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 167, column: 16, scope: !1784, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 236, column: 7, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1720, file: !102, line: 236, column: 7)
!1903 = !DILocation(line: 146, column: 41, scope: !1769, inlinedAt: !1900)
!1904 = !DILocation(line: 146, column: 50, scope: !1769, inlinedAt: !1900)
!1905 = !DILocation(line: 146, column: 60, scope: !1769, inlinedAt: !1900)
!1906 = !DILocation(line: 146, column: 70, scope: !1769, inlinedAt: !1900)
!1907 = !DILocation(line: 146, column: 80, scope: !1769, inlinedAt: !1900)
!1908 = !DILocation(line: 146, column: 90, scope: !1769, inlinedAt: !1900)
!1909 = !DILocation(line: 146, column: 100, scope: !1769, inlinedAt: !1900)
!1910 = !DILocation(line: 146, column: 110, scope: !1769, inlinedAt: !1900)
!1911 = !DILocation(line: 146, column: 120, scope: !1769, inlinedAt: !1900)
!1912 = !DILocation(line: 148, column: 7, scope: !1796, inlinedAt: !1900)
!1913 = !DILocation(line: 132, column: 25, scope: !1798, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 153, column: 16, scope: !1812, inlinedAt: !1900)
!1915 = !DILocation(line: 132, column: 41, scope: !1798, inlinedAt: !1914)
!1916 = !DILocation(line: 132, column: 50, scope: !1798, inlinedAt: !1914)
!1917 = !DILocation(line: 132, column: 60, scope: !1798, inlinedAt: !1914)
!1918 = !DILocation(line: 132, column: 70, scope: !1798, inlinedAt: !1914)
!1919 = !DILocation(line: 132, column: 80, scope: !1798, inlinedAt: !1914)
!1920 = !DILocation(line: 132, column: 90, scope: !1798, inlinedAt: !1914)
!1921 = !DILocation(line: 132, column: 100, scope: !1798, inlinedAt: !1914)
!1922 = !DILocation(line: 132, column: 110, scope: !1798, inlinedAt: !1914)
!1923 = !DILocation(line: 134, column: 7, scope: !1823, inlinedAt: !1914)
!1924 = !DILocation(line: 134, column: 7, scope: !1798, inlinedAt: !1914)
!1925 = !DILocation(line: 118, column: 25, scope: !1825, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 139, column: 16, scope: !1838, inlinedAt: !1914)
!1927 = !DILocation(line: 118, column: 41, scope: !1825, inlinedAt: !1926)
!1928 = !DILocation(line: 118, column: 50, scope: !1825, inlinedAt: !1926)
!1929 = !DILocation(line: 118, column: 60, scope: !1825, inlinedAt: !1926)
!1930 = !DILocation(line: 118, column: 70, scope: !1825, inlinedAt: !1926)
!1931 = !DILocation(line: 118, column: 80, scope: !1825, inlinedAt: !1926)
!1932 = !DILocation(line: 118, column: 90, scope: !1825, inlinedAt: !1926)
!1933 = !DILocation(line: 118, column: 100, scope: !1825, inlinedAt: !1926)
!1934 = !DILocation(line: 120, column: 7, scope: !1848, inlinedAt: !1926)
!1935 = !DILocation(line: 120, column: 7, scope: !1825, inlinedAt: !1926)
!1936 = !DILocation(line: 104, column: 25, scope: !1851, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 125, column: 16, scope: !1863, inlinedAt: !1926)
!1938 = !DILocation(line: 104, column: 41, scope: !1851, inlinedAt: !1937)
!1939 = !DILocation(line: 104, column: 50, scope: !1851, inlinedAt: !1937)
!1940 = !DILocation(line: 104, column: 60, scope: !1851, inlinedAt: !1937)
!1941 = !DILocation(line: 104, column: 70, scope: !1851, inlinedAt: !1937)
!1942 = !DILocation(line: 104, column: 80, scope: !1851, inlinedAt: !1937)
!1943 = !DILocation(line: 104, column: 90, scope: !1851, inlinedAt: !1937)
!1944 = !DILocation(line: 106, column: 7, scope: !1872, inlinedAt: !1937)
!1945 = !DILocation(line: 106, column: 7, scope: !1851, inlinedAt: !1937)
!1946 = !DILocation(line: 90, column: 25, scope: !1875, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 111, column: 16, scope: !1886, inlinedAt: !1937)
!1948 = !DILocation(line: 90, column: 41, scope: !1875, inlinedAt: !1947)
!1949 = !DILocation(line: 90, column: 50, scope: !1875, inlinedAt: !1947)
!1950 = !DILocation(line: 90, column: 60, scope: !1875, inlinedAt: !1947)
!1951 = !DILocation(line: 90, column: 70, scope: !1875, inlinedAt: !1947)
!1952 = !DILocation(line: 90, column: 80, scope: !1875, inlinedAt: !1947)
!1953 = !DILocation(line: 92, column: 7, scope: !1894, inlinedAt: !1947)
!1954 = !DILocation(line: 92, column: 7, scope: !1875, inlinedAt: !1947)
!1955 = !DILocalVariable(name: "s1", arg: 1, scope: !1956, file: !1739, line: 76, type: !17)
!1956 = distinct !DISubprogram(name: "strcaseeq6", scope: !1739, file: !1739, line: 76, type: !1957, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!20, !17, !17, !7, !7, !7}
!1959 = !{!1955, !1960, !1961, !1962, !1963}
!1960 = !DILocalVariable(name: "s2", arg: 2, scope: !1956, file: !1739, line: 76, type: !17)
!1961 = !DILocalVariable(name: "s26", arg: 3, scope: !1956, file: !1739, line: 76, type: !7)
!1962 = !DILocalVariable(name: "s27", arg: 4, scope: !1956, file: !1739, line: 76, type: !7)
!1963 = !DILocalVariable(name: "s28", arg: 5, scope: !1956, file: !1739, line: 76, type: !7)
!1964 = !DILocation(line: 76, column: 25, scope: !1956, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 97, column: 16, scope: !1966, inlinedAt: !1947)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !1739, line: 94, column: 11)
!1967 = distinct !DILexicalBlock(scope: !1894, file: !1739, line: 93, column: 5)
!1968 = !DILocation(line: 76, column: 41, scope: !1956, inlinedAt: !1965)
!1969 = !DILocation(line: 76, column: 50, scope: !1956, inlinedAt: !1965)
!1970 = !DILocation(line: 76, column: 60, scope: !1956, inlinedAt: !1965)
!1971 = !DILocation(line: 76, column: 70, scope: !1956, inlinedAt: !1965)
!1972 = !DILocation(line: 78, column: 7, scope: !1973, inlinedAt: !1965)
!1973 = distinct !DILexicalBlock(scope: !1956, file: !1739, line: 78, column: 7)
!1974 = !DILocation(line: 78, column: 7, scope: !1956, inlinedAt: !1965)
!1975 = !DILocalVariable(name: "s1", arg: 1, scope: !1976, file: !1739, line: 62, type: !17)
!1976 = distinct !DISubprogram(name: "strcaseeq7", scope: !1739, file: !1739, line: 62, type: !1977, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!20, !17, !17, !7, !7}
!1979 = !{!1975, !1980, !1981, !1982}
!1980 = !DILocalVariable(name: "s2", arg: 2, scope: !1976, file: !1739, line: 62, type: !17)
!1981 = !DILocalVariable(name: "s27", arg: 3, scope: !1976, file: !1739, line: 62, type: !7)
!1982 = !DILocalVariable(name: "s28", arg: 4, scope: !1976, file: !1739, line: 62, type: !7)
!1983 = !DILocation(line: 62, column: 25, scope: !1976, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 83, column: 16, scope: !1985, inlinedAt: !1965)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !1739, line: 80, column: 11)
!1986 = distinct !DILexicalBlock(scope: !1973, file: !1739, line: 79, column: 5)
!1987 = !DILocation(line: 62, column: 41, scope: !1976, inlinedAt: !1984)
!1988 = !DILocation(line: 62, column: 50, scope: !1976, inlinedAt: !1984)
!1989 = !DILocation(line: 62, column: 60, scope: !1976, inlinedAt: !1984)
!1990 = !DILocation(line: 64, column: 7, scope: !1991, inlinedAt: !1984)
!1991 = distinct !DILexicalBlock(scope: !1976, file: !1739, line: 64, column: 7)
!1992 = !DILocation(line: 236, column: 7, scope: !1720)
!1993 = !DILocation(line: 237, column: 12, scope: !1902)
!1994 = !DILocation(line: 237, column: 21, scope: !1902)
!1995 = !DILocation(line: 237, column: 5, scope: !1902)
!1996 = !DILocation(line: 239, column: 13, scope: !1720)
!1997 = !DILocation(line: 239, column: 11, scope: !1720)
!1998 = !DILocation(line: 239, column: 3, scope: !1720)
!1999 = !DILocation(line: 0, scope: !1720)
!2000 = !DILocation(line: 240, column: 1, scope: !1720)
!2001 = distinct !DISubprogram(name: "quotearg_alloc", scope: !102, file: !102, line: 799, type: !2002, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!6, !17, !96, !1040}
!2004 = !{!2005, !2006, !2007}
!2005 = !DILocalVariable(name: "arg", arg: 1, scope: !2001, file: !102, line: 799, type: !17)
!2006 = !DILocalVariable(name: "argsize", arg: 2, scope: !2001, file: !102, line: 799, type: !96)
!2007 = !DILocalVariable(name: "o", arg: 3, scope: !2001, file: !102, line: 800, type: !1040)
!2008 = !DILocation(line: 799, column: 29, scope: !2001)
!2009 = !DILocation(line: 799, column: 41, scope: !2001)
!2010 = !DILocation(line: 800, column: 47, scope: !2001)
!2011 = !DILocalVariable(name: "arg", arg: 1, scope: !2012, file: !102, line: 812, type: !17)
!2012 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !102, file: !102, line: 812, type: !2013, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!6, !17, !96, !173, !1040}
!2015 = !{!2011, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023}
!2016 = !DILocalVariable(name: "argsize", arg: 2, scope: !2012, file: !102, line: 812, type: !96)
!2017 = !DILocalVariable(name: "size", arg: 3, scope: !2012, file: !102, line: 812, type: !173)
!2018 = !DILocalVariable(name: "o", arg: 4, scope: !2012, file: !102, line: 813, type: !1040)
!2019 = !DILocalVariable(name: "p", scope: !2012, file: !102, line: 815, type: !1040)
!2020 = !DILocalVariable(name: "e", scope: !2012, file: !102, line: 816, type: !20)
!2021 = !DILocalVariable(name: "flags", scope: !2012, file: !102, line: 818, type: !20)
!2022 = !DILocalVariable(name: "bufsize", scope: !2012, file: !102, line: 819, type: !96)
!2023 = !DILocalVariable(name: "buf", scope: !2012, file: !102, line: 823, type: !6)
!2024 = !DILocation(line: 812, column: 33, scope: !2012, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 802, column: 10, scope: !2001)
!2026 = !DILocation(line: 812, column: 45, scope: !2012, inlinedAt: !2025)
!2027 = !DILocation(line: 812, column: 62, scope: !2012, inlinedAt: !2025)
!2028 = !DILocation(line: 813, column: 51, scope: !2012, inlinedAt: !2025)
!2029 = !DILocation(line: 815, column: 37, scope: !2012, inlinedAt: !2025)
!2030 = !DILocation(line: 815, column: 33, scope: !2012, inlinedAt: !2025)
!2031 = !DILocation(line: 816, column: 11, scope: !2012, inlinedAt: !2025)
!2032 = !DILocation(line: 816, column: 7, scope: !2012, inlinedAt: !2025)
!2033 = !DILocation(line: 818, column: 18, scope: !2012, inlinedAt: !2025)
!2034 = !DILocation(line: 818, column: 24, scope: !2012, inlinedAt: !2025)
!2035 = !DILocation(line: 818, column: 7, scope: !2012, inlinedAt: !2025)
!2036 = !DILocation(line: 819, column: 69, scope: !2012, inlinedAt: !2025)
!2037 = !DILocation(line: 820, column: 53, scope: !2012, inlinedAt: !2025)
!2038 = !DILocation(line: 821, column: 49, scope: !2012, inlinedAt: !2025)
!2039 = !DILocation(line: 822, column: 49, scope: !2012, inlinedAt: !2025)
!2040 = !DILocation(line: 819, column: 20, scope: !2012, inlinedAt: !2025)
!2041 = !DILocation(line: 822, column: 62, scope: !2012, inlinedAt: !2025)
!2042 = !DILocation(line: 819, column: 10, scope: !2012, inlinedAt: !2025)
!2043 = !DILocalVariable(name: "n", arg: 1, scope: !2044, file: !169, line: 216, type: !96)
!2044 = distinct !DISubprogram(name: "xcharalloc", scope: !169, file: !169, line: 216, type: !2045, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!6, !96}
!2047 = !{!2043}
!2048 = !DILocation(line: 216, column: 20, scope: !2044, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 823, column: 15, scope: !2012, inlinedAt: !2025)
!2050 = !DILocation(line: 218, column: 10, scope: !2044, inlinedAt: !2049)
!2051 = !DILocation(line: 823, column: 9, scope: !2012, inlinedAt: !2025)
!2052 = !DILocation(line: 824, column: 60, scope: !2012, inlinedAt: !2025)
!2053 = !DILocation(line: 826, column: 32, scope: !2012, inlinedAt: !2025)
!2054 = !DILocation(line: 826, column: 47, scope: !2012, inlinedAt: !2025)
!2055 = !DILocation(line: 824, column: 3, scope: !2012, inlinedAt: !2025)
!2056 = !DILocation(line: 827, column: 9, scope: !2012, inlinedAt: !2025)
!2057 = !DILocation(line: 802, column: 3, scope: !2001)
!2058 = !DILocation(line: 812, column: 33, scope: !2012)
!2059 = !DILocation(line: 812, column: 45, scope: !2012)
!2060 = !DILocation(line: 812, column: 62, scope: !2012)
!2061 = !DILocation(line: 813, column: 51, scope: !2012)
!2062 = !DILocation(line: 815, column: 37, scope: !2012)
!2063 = !DILocation(line: 815, column: 33, scope: !2012)
!2064 = !DILocation(line: 816, column: 11, scope: !2012)
!2065 = !DILocation(line: 816, column: 7, scope: !2012)
!2066 = !DILocation(line: 818, column: 18, scope: !2012)
!2067 = !DILocation(line: 818, column: 27, scope: !2012)
!2068 = !DILocation(line: 818, column: 24, scope: !2012)
!2069 = !DILocation(line: 818, column: 7, scope: !2012)
!2070 = !DILocation(line: 819, column: 69, scope: !2012)
!2071 = !DILocation(line: 820, column: 53, scope: !2012)
!2072 = !DILocation(line: 821, column: 49, scope: !2012)
!2073 = !DILocation(line: 822, column: 49, scope: !2012)
!2074 = !DILocation(line: 819, column: 20, scope: !2012)
!2075 = !DILocation(line: 822, column: 62, scope: !2012)
!2076 = !DILocation(line: 819, column: 10, scope: !2012)
!2077 = !DILocation(line: 216, column: 20, scope: !2044, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 823, column: 15, scope: !2012)
!2079 = !DILocation(line: 218, column: 10, scope: !2044, inlinedAt: !2078)
!2080 = !DILocation(line: 823, column: 9, scope: !2012)
!2081 = !DILocation(line: 824, column: 60, scope: !2012)
!2082 = !DILocation(line: 826, column: 32, scope: !2012)
!2083 = !DILocation(line: 826, column: 47, scope: !2012)
!2084 = !DILocation(line: 824, column: 3, scope: !2012)
!2085 = !DILocation(line: 827, column: 9, scope: !2012)
!2086 = !DILocation(line: 828, column: 7, scope: !2012)
!2087 = !DILocation(line: 829, column: 11, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2012, file: !102, line: 828, column: 7)
!2089 = !{!824, !824, i64 0}
!2090 = !DILocation(line: 829, column: 5, scope: !2088)
!2091 = !DILocation(line: 830, column: 3, scope: !2012)
!2092 = distinct !DISubprogram(name: "quotearg_free", scope: !102, file: !102, line: 848, type: !637, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2093)
!2093 = !{!2094, !2095}
!2094 = !DILocalVariable(name: "sv", scope: !2092, file: !102, line: 850, type: !128)
!2095 = !DILocalVariable(name: "i", scope: !2092, file: !102, line: 851, type: !20)
!2096 = !DILocation(line: 850, column: 24, scope: !2092)
!2097 = !DILocation(line: 850, column: 19, scope: !2092)
!2098 = !DILocation(line: 851, column: 7, scope: !2092)
!2099 = !DILocation(line: 852, column: 19, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !102, line: 852, column: 3)
!2101 = distinct !DILexicalBlock(scope: !2092, file: !102, line: 852, column: 3)
!2102 = !DILocation(line: 852, column: 17, scope: !2100)
!2103 = !DILocation(line: 852, column: 3, scope: !2101)
!2104 = !DILocation(line: 853, column: 17, scope: !2100)
!2105 = !{!2106, !630, i64 8}
!2106 = !{!"slotvec", !824, i64 0, !630, i64 8}
!2107 = !DILocation(line: 853, column: 5, scope: !2100)
!2108 = !DILocation(line: 852, column: 28, scope: !2100)
!2109 = distinct !{!2109, !2103, !2110}
!2110 = !DILocation(line: 853, column: 20, scope: !2101)
!2111 = !DILocation(line: 854, column: 13, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2092, file: !102, line: 854, column: 7)
!2113 = !DILocation(line: 854, column: 17, scope: !2112)
!2114 = !DILocation(line: 854, column: 7, scope: !2092)
!2115 = !DILocation(line: 856, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !102, line: 855, column: 5)
!2117 = !DILocation(line: 857, column: 21, scope: !2116)
!2118 = !{!2106, !824, i64 0}
!2119 = !DILocation(line: 858, column: 20, scope: !2116)
!2120 = !DILocation(line: 859, column: 5, scope: !2116)
!2121 = !DILocation(line: 860, column: 10, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2092, file: !102, line: 860, column: 7)
!2123 = !DILocation(line: 860, column: 7, scope: !2092)
!2124 = !DILocation(line: 862, column: 13, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2122, file: !102, line: 861, column: 5)
!2126 = !DILocation(line: 862, column: 7, scope: !2125)
!2127 = !DILocation(line: 863, column: 15, scope: !2125)
!2128 = !DILocation(line: 864, column: 5, scope: !2125)
!2129 = !DILocation(line: 865, column: 10, scope: !2092)
!2130 = !DILocation(line: 866, column: 1, scope: !2092)
!2131 = distinct !DISubprogram(name: "quotearg_n", scope: !102, file: !102, line: 931, type: !2132, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!6, !20, !17}
!2134 = !{!2135, !2136}
!2135 = !DILocalVariable(name: "n", arg: 1, scope: !2131, file: !102, line: 931, type: !20)
!2136 = !DILocalVariable(name: "arg", arg: 2, scope: !2131, file: !102, line: 931, type: !17)
!2137 = !DILocation(line: 931, column: 17, scope: !2131)
!2138 = !DILocation(line: 931, column: 32, scope: !2131)
!2139 = !DILocation(line: 933, column: 10, scope: !2131)
!2140 = !DILocation(line: 933, column: 3, scope: !2131)
!2141 = distinct !DISubprogram(name: "quotearg_n_options", scope: !102, file: !102, line: 877, type: !2142, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!6, !20, !17, !96, !1040}
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2154, !2155, !2157, !2158, !2159}
!2145 = !DILocalVariable(name: "n", arg: 1, scope: !2141, file: !102, line: 877, type: !20)
!2146 = !DILocalVariable(name: "arg", arg: 2, scope: !2141, file: !102, line: 877, type: !17)
!2147 = !DILocalVariable(name: "argsize", arg: 3, scope: !2141, file: !102, line: 877, type: !96)
!2148 = !DILocalVariable(name: "options", arg: 4, scope: !2141, file: !102, line: 878, type: !1040)
!2149 = !DILocalVariable(name: "e", scope: !2141, file: !102, line: 880, type: !20)
!2150 = !DILocalVariable(name: "sv", scope: !2141, file: !102, line: 882, type: !128)
!2151 = !DILocalVariable(name: "preallocated", scope: !2152, file: !102, line: 889, type: !39)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !102, line: 888, column: 5)
!2153 = distinct !DILexicalBlock(scope: !2141, file: !102, line: 887, column: 7)
!2154 = !DILocalVariable(name: "nmax", scope: !2152, file: !102, line: 890, type: !20)
!2155 = !DILocalVariable(name: "size", scope: !2156, file: !102, line: 903, type: !96)
!2156 = distinct !DILexicalBlock(scope: !2141, file: !102, line: 902, column: 3)
!2157 = !DILocalVariable(name: "val", scope: !2156, file: !102, line: 904, type: !6)
!2158 = !DILocalVariable(name: "flags", scope: !2156, file: !102, line: 906, type: !20)
!2159 = !DILocalVariable(name: "qsize", scope: !2156, file: !102, line: 907, type: !96)
!2160 = !DILocation(line: 877, column: 25, scope: !2141)
!2161 = !DILocation(line: 877, column: 40, scope: !2141)
!2162 = !DILocation(line: 877, column: 52, scope: !2141)
!2163 = !DILocation(line: 878, column: 51, scope: !2141)
!2164 = !DILocation(line: 880, column: 11, scope: !2141)
!2165 = !DILocation(line: 880, column: 7, scope: !2141)
!2166 = !DILocation(line: 882, column: 24, scope: !2141)
!2167 = !DILocation(line: 882, column: 19, scope: !2141)
!2168 = !DILocation(line: 884, column: 9, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2141, file: !102, line: 884, column: 7)
!2170 = !DILocation(line: 884, column: 7, scope: !2141)
!2171 = !DILocation(line: 885, column: 5, scope: !2169)
!2172 = !DILocation(line: 887, column: 7, scope: !2153)
!2173 = !DILocation(line: 887, column: 14, scope: !2153)
!2174 = !DILocation(line: 887, column: 7, scope: !2141)
!2175 = !DILocation(line: 889, column: 31, scope: !2152)
!2176 = !DILocation(line: 890, column: 11, scope: !2152)
!2177 = !DILocation(line: 892, column: 16, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2152, file: !102, line: 892, column: 11)
!2179 = !DILocation(line: 892, column: 11, scope: !2152)
!2180 = !DILocation(line: 893, column: 9, scope: !2178)
!2181 = !DILocation(line: 895, column: 32, scope: !2152)
!2182 = !DILocation(line: 895, column: 61, scope: !2152)
!2183 = !DILocation(line: 895, column: 58, scope: !2152)
!2184 = !DILocation(line: 895, column: 66, scope: !2152)
!2185 = !DILocation(line: 895, column: 22, scope: !2152)
!2186 = !DILocation(line: 895, column: 15, scope: !2152)
!2187 = !DILocation(line: 896, column: 11, scope: !2152)
!2188 = !DILocation(line: 897, column: 15, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2152, file: !102, line: 896, column: 11)
!2190 = !{i64 0, i64 8, !2089, i64 8, i64 8, !629}
!2191 = !DILocation(line: 897, column: 9, scope: !2189)
!2192 = !DILocation(line: 898, column: 20, scope: !2152)
!2193 = !DILocation(line: 898, column: 18, scope: !2152)
!2194 = !DILocation(line: 898, column: 7, scope: !2152)
!2195 = !DILocation(line: 898, column: 38, scope: !2152)
!2196 = !DILocation(line: 898, column: 31, scope: !2152)
!2197 = !DILocation(line: 898, column: 48, scope: !2152)
!2198 = !DILocation(line: 899, column: 14, scope: !2152)
!2199 = !DILocation(line: 900, column: 5, scope: !2152)
!2200 = !DILocation(line: 0, scope: !2141)
!2201 = !DILocation(line: 903, column: 19, scope: !2156)
!2202 = !DILocation(line: 903, column: 25, scope: !2156)
!2203 = !DILocation(line: 903, column: 12, scope: !2156)
!2204 = !DILocation(line: 904, column: 23, scope: !2156)
!2205 = !DILocation(line: 904, column: 11, scope: !2156)
!2206 = !DILocation(line: 906, column: 26, scope: !2156)
!2207 = !DILocation(line: 906, column: 32, scope: !2156)
!2208 = !DILocation(line: 906, column: 9, scope: !2156)
!2209 = !DILocation(line: 908, column: 55, scope: !2156)
!2210 = !DILocation(line: 909, column: 46, scope: !2156)
!2211 = !DILocation(line: 910, column: 55, scope: !2156)
!2212 = !DILocation(line: 911, column: 55, scope: !2156)
!2213 = !DILocation(line: 907, column: 20, scope: !2156)
!2214 = !DILocation(line: 907, column: 12, scope: !2156)
!2215 = !DILocation(line: 913, column: 14, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2156, file: !102, line: 913, column: 9)
!2217 = !DILocation(line: 913, column: 9, scope: !2156)
!2218 = !DILocation(line: 915, column: 35, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !102, line: 914, column: 7)
!2220 = !DILocation(line: 915, column: 20, scope: !2219)
!2221 = !DILocation(line: 916, column: 17, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !102, line: 916, column: 13)
!2223 = !DILocation(line: 916, column: 13, scope: !2219)
!2224 = !DILocation(line: 917, column: 11, scope: !2222)
!2225 = !DILocation(line: 216, column: 20, scope: !2044, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 918, column: 27, scope: !2219)
!2227 = !DILocation(line: 218, column: 10, scope: !2044, inlinedAt: !2226)
!2228 = !DILocation(line: 918, column: 19, scope: !2219)
!2229 = !DILocation(line: 919, column: 69, scope: !2219)
!2230 = !DILocation(line: 921, column: 44, scope: !2219)
!2231 = !DILocation(line: 922, column: 44, scope: !2219)
!2232 = !DILocation(line: 919, column: 9, scope: !2219)
!2233 = !DILocation(line: 923, column: 7, scope: !2219)
!2234 = !DILocation(line: 0, scope: !2156)
!2235 = !DILocation(line: 925, column: 11, scope: !2156)
!2236 = !DILocation(line: 926, column: 5, scope: !2156)
!2237 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !102, file: !102, line: 937, type: !2238, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!6, !20, !17, !96}
!2240 = !{!2241, !2242, !2243}
!2241 = !DILocalVariable(name: "n", arg: 1, scope: !2237, file: !102, line: 937, type: !20)
!2242 = !DILocalVariable(name: "arg", arg: 2, scope: !2237, file: !102, line: 937, type: !17)
!2243 = !DILocalVariable(name: "argsize", arg: 3, scope: !2237, file: !102, line: 937, type: !96)
!2244 = !DILocation(line: 937, column: 21, scope: !2237)
!2245 = !DILocation(line: 937, column: 36, scope: !2237)
!2246 = !DILocation(line: 937, column: 48, scope: !2237)
!2247 = !DILocation(line: 939, column: 10, scope: !2237)
!2248 = !DILocation(line: 939, column: 3, scope: !2237)
!2249 = distinct !DISubprogram(name: "quotearg", scope: !102, file: !102, line: 943, type: !882, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2250)
!2250 = !{!2251}
!2251 = !DILocalVariable(name: "arg", arg: 1, scope: !2249, file: !102, line: 943, type: !17)
!2252 = !DILocation(line: 943, column: 23, scope: !2249)
!2253 = !DILocation(line: 931, column: 17, scope: !2131, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 945, column: 10, scope: !2249)
!2255 = !DILocation(line: 931, column: 32, scope: !2131, inlinedAt: !2254)
!2256 = !DILocation(line: 933, column: 10, scope: !2131, inlinedAt: !2254)
!2257 = !DILocation(line: 945, column: 3, scope: !2249)
!2258 = distinct !DISubprogram(name: "quotearg_mem", scope: !102, file: !102, line: 949, type: !2259, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!6, !17, !96}
!2261 = !{!2262, !2263}
!2262 = !DILocalVariable(name: "arg", arg: 1, scope: !2258, file: !102, line: 949, type: !17)
!2263 = !DILocalVariable(name: "argsize", arg: 2, scope: !2258, file: !102, line: 949, type: !96)
!2264 = !DILocation(line: 949, column: 27, scope: !2258)
!2265 = !DILocation(line: 949, column: 39, scope: !2258)
!2266 = !DILocation(line: 937, column: 21, scope: !2237, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 951, column: 10, scope: !2258)
!2268 = !DILocation(line: 937, column: 36, scope: !2237, inlinedAt: !2267)
!2269 = !DILocation(line: 937, column: 48, scope: !2237, inlinedAt: !2267)
!2270 = !DILocation(line: 939, column: 10, scope: !2237, inlinedAt: !2267)
!2271 = !DILocation(line: 951, column: 3, scope: !2258)
!2272 = distinct !DISubprogram(name: "quotearg_n_style", scope: !102, file: !102, line: 955, type: !2273, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!6, !20, !59, !17}
!2275 = !{!2276, !2277, !2278, !2279}
!2276 = !DILocalVariable(name: "n", arg: 1, scope: !2272, file: !102, line: 955, type: !20)
!2277 = !DILocalVariable(name: "s", arg: 2, scope: !2272, file: !102, line: 955, type: !59)
!2278 = !DILocalVariable(name: "arg", arg: 3, scope: !2272, file: !102, line: 955, type: !17)
!2279 = !DILocalVariable(name: "o", scope: !2272, file: !102, line: 957, type: !1041)
!2280 = !DILocation(line: 955, column: 23, scope: !2272)
!2281 = !DILocation(line: 955, column: 45, scope: !2272)
!2282 = !DILocation(line: 955, column: 60, scope: !2272)
!2283 = !DILocation(line: 957, column: 3, scope: !2272)
!2284 = !DILocation(line: 957, column: 32, scope: !2272)
!2285 = !DILocalVariable(name: "style", arg: 1, scope: !2286, file: !102, line: 193, type: !59)
!2286 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !102, file: !102, line: 193, type: !2287, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!109, !59}
!2289 = !{!2285, !2290}
!2290 = !DILocalVariable(name: "o", scope: !2286, file: !102, line: 195, type: !109)
!2291 = !DILocation(line: 193, column: 48, scope: !2286, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 957, column: 36, scope: !2272)
!2293 = !DILocation(line: 195, column: 26, scope: !2286, inlinedAt: !2292)
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"quoting_options_from_style: argument 0"}
!2296 = distinct !{!2296, !"quoting_options_from_style"}
!2297 = !DILocation(line: 196, column: 13, scope: !2298, inlinedAt: !2292)
!2298 = distinct !DILexicalBlock(scope: !2286, file: !102, line: 196, column: 7)
!2299 = !DILocation(line: 196, column: 7, scope: !2286, inlinedAt: !2292)
!2300 = !DILocation(line: 197, column: 5, scope: !2298, inlinedAt: !2292)
!2301 = !DILocation(line: 198, column: 5, scope: !2286, inlinedAt: !2292)
!2302 = !DILocation(line: 198, column: 11, scope: !2286, inlinedAt: !2292)
!2303 = !DILocation(line: 958, column: 10, scope: !2272)
!2304 = !DILocation(line: 959, column: 1, scope: !2272)
!2305 = !DILocation(line: 958, column: 3, scope: !2272)
!2306 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !102, file: !102, line: 962, type: !2307, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!6, !20, !59, !17, !96}
!2309 = !{!2310, !2311, !2312, !2313, !2314}
!2310 = !DILocalVariable(name: "n", arg: 1, scope: !2306, file: !102, line: 962, type: !20)
!2311 = !DILocalVariable(name: "s", arg: 2, scope: !2306, file: !102, line: 962, type: !59)
!2312 = !DILocalVariable(name: "arg", arg: 3, scope: !2306, file: !102, line: 963, type: !17)
!2313 = !DILocalVariable(name: "argsize", arg: 4, scope: !2306, file: !102, line: 963, type: !96)
!2314 = !DILocalVariable(name: "o", scope: !2306, file: !102, line: 965, type: !1041)
!2315 = !DILocation(line: 962, column: 27, scope: !2306)
!2316 = !DILocation(line: 962, column: 49, scope: !2306)
!2317 = !DILocation(line: 963, column: 35, scope: !2306)
!2318 = !DILocation(line: 963, column: 47, scope: !2306)
!2319 = !DILocation(line: 965, column: 3, scope: !2306)
!2320 = !DILocation(line: 965, column: 32, scope: !2306)
!2321 = !DILocation(line: 193, column: 48, scope: !2286, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 965, column: 36, scope: !2306)
!2323 = !DILocation(line: 195, column: 26, scope: !2286, inlinedAt: !2322)
!2324 = !{!2325}
!2325 = distinct !{!2325, !2326, !"quoting_options_from_style: argument 0"}
!2326 = distinct !{!2326, !"quoting_options_from_style"}
!2327 = !DILocation(line: 196, column: 13, scope: !2298, inlinedAt: !2322)
!2328 = !DILocation(line: 196, column: 7, scope: !2286, inlinedAt: !2322)
!2329 = !DILocation(line: 197, column: 5, scope: !2298, inlinedAt: !2322)
!2330 = !DILocation(line: 198, column: 5, scope: !2286, inlinedAt: !2322)
!2331 = !DILocation(line: 198, column: 11, scope: !2286, inlinedAt: !2322)
!2332 = !DILocation(line: 966, column: 10, scope: !2306)
!2333 = !DILocation(line: 967, column: 1, scope: !2306)
!2334 = !DILocation(line: 966, column: 3, scope: !2306)
!2335 = distinct !DISubprogram(name: "quotearg_style", scope: !102, file: !102, line: 970, type: !2336, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!6, !59, !17}
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "s", arg: 1, scope: !2335, file: !102, line: 970, type: !59)
!2340 = !DILocalVariable(name: "arg", arg: 2, scope: !2335, file: !102, line: 970, type: !17)
!2341 = !DILocation(line: 970, column: 36, scope: !2335)
!2342 = !DILocation(line: 970, column: 51, scope: !2335)
!2343 = !DILocation(line: 955, column: 23, scope: !2272, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 972, column: 10, scope: !2335)
!2345 = !DILocation(line: 955, column: 45, scope: !2272, inlinedAt: !2344)
!2346 = !DILocation(line: 955, column: 60, scope: !2272, inlinedAt: !2344)
!2347 = !DILocation(line: 957, column: 3, scope: !2272, inlinedAt: !2344)
!2348 = !DILocation(line: 957, column: 32, scope: !2272, inlinedAt: !2344)
!2349 = !DILocation(line: 193, column: 48, scope: !2286, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 957, column: 36, scope: !2272, inlinedAt: !2344)
!2351 = !DILocation(line: 195, column: 26, scope: !2286, inlinedAt: !2350)
!2352 = !{!2353}
!2353 = distinct !{!2353, !2354, !"quoting_options_from_style: argument 0"}
!2354 = distinct !{!2354, !"quoting_options_from_style"}
!2355 = !DILocation(line: 196, column: 13, scope: !2298, inlinedAt: !2350)
!2356 = !DILocation(line: 196, column: 7, scope: !2286, inlinedAt: !2350)
!2357 = !DILocation(line: 197, column: 5, scope: !2298, inlinedAt: !2350)
!2358 = !DILocation(line: 198, column: 5, scope: !2286, inlinedAt: !2350)
!2359 = !DILocation(line: 198, column: 11, scope: !2286, inlinedAt: !2350)
!2360 = !DILocation(line: 958, column: 10, scope: !2272, inlinedAt: !2344)
!2361 = !DILocation(line: 959, column: 1, scope: !2272, inlinedAt: !2344)
!2362 = !DILocation(line: 972, column: 3, scope: !2335)
!2363 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !102, file: !102, line: 976, type: !2364, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!6, !59, !17, !96}
!2366 = !{!2367, !2368, !2369}
!2367 = !DILocalVariable(name: "s", arg: 1, scope: !2363, file: !102, line: 976, type: !59)
!2368 = !DILocalVariable(name: "arg", arg: 2, scope: !2363, file: !102, line: 976, type: !17)
!2369 = !DILocalVariable(name: "argsize", arg: 3, scope: !2363, file: !102, line: 976, type: !96)
!2370 = !DILocation(line: 976, column: 40, scope: !2363)
!2371 = !DILocation(line: 976, column: 55, scope: !2363)
!2372 = !DILocation(line: 976, column: 67, scope: !2363)
!2373 = !DILocation(line: 962, column: 27, scope: !2306, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 978, column: 10, scope: !2363)
!2375 = !DILocation(line: 962, column: 49, scope: !2306, inlinedAt: !2374)
!2376 = !DILocation(line: 963, column: 35, scope: !2306, inlinedAt: !2374)
!2377 = !DILocation(line: 963, column: 47, scope: !2306, inlinedAt: !2374)
!2378 = !DILocation(line: 965, column: 3, scope: !2306, inlinedAt: !2374)
!2379 = !DILocation(line: 965, column: 32, scope: !2306, inlinedAt: !2374)
!2380 = !DILocation(line: 193, column: 48, scope: !2286, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 965, column: 36, scope: !2306, inlinedAt: !2374)
!2382 = !DILocation(line: 195, column: 26, scope: !2286, inlinedAt: !2381)
!2383 = !{!2384}
!2384 = distinct !{!2384, !2385, !"quoting_options_from_style: argument 0"}
!2385 = distinct !{!2385, !"quoting_options_from_style"}
!2386 = !DILocation(line: 196, column: 13, scope: !2298, inlinedAt: !2381)
!2387 = !DILocation(line: 196, column: 7, scope: !2286, inlinedAt: !2381)
!2388 = !DILocation(line: 197, column: 5, scope: !2298, inlinedAt: !2381)
!2389 = !DILocation(line: 198, column: 5, scope: !2286, inlinedAt: !2381)
!2390 = !DILocation(line: 198, column: 11, scope: !2286, inlinedAt: !2381)
!2391 = !DILocation(line: 966, column: 10, scope: !2306, inlinedAt: !2374)
!2392 = !DILocation(line: 967, column: 1, scope: !2306, inlinedAt: !2374)
!2393 = !DILocation(line: 978, column: 3, scope: !2363)
!2394 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !102, file: !102, line: 982, type: !2395, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!6, !17, !96, !7}
!2397 = !{!2398, !2399, !2400, !2401}
!2398 = !DILocalVariable(name: "arg", arg: 1, scope: !2394, file: !102, line: 982, type: !17)
!2399 = !DILocalVariable(name: "argsize", arg: 2, scope: !2394, file: !102, line: 982, type: !96)
!2400 = !DILocalVariable(name: "ch", arg: 3, scope: !2394, file: !102, line: 982, type: !7)
!2401 = !DILocalVariable(name: "options", scope: !2394, file: !102, line: 984, type: !109)
!2402 = !DILocation(line: 982, column: 32, scope: !2394)
!2403 = !DILocation(line: 982, column: 44, scope: !2394)
!2404 = !DILocation(line: 982, column: 58, scope: !2394)
!2405 = !DILocation(line: 984, column: 3, scope: !2394)
!2406 = !DILocation(line: 985, column: 13, scope: !2394)
!2407 = !{i64 0, i64 4, !773, i64 4, i64 4, !714, i64 8, i64 32, !773, i64 40, i64 8, !629, i64 48, i64 8, !629}
!2408 = !DILocation(line: 984, column: 26, scope: !2394)
!2409 = !DILocation(line: 152, column: 43, scope: !1062, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 986, column: 3, scope: !2394)
!2411 = !DILocation(line: 152, column: 51, scope: !1062, inlinedAt: !2410)
!2412 = !DILocation(line: 152, column: 58, scope: !1062, inlinedAt: !2410)
!2413 = !DILocation(line: 154, column: 17, scope: !1062, inlinedAt: !2410)
!2414 = !DILocation(line: 156, column: 62, scope: !1062, inlinedAt: !2410)
!2415 = !DILocation(line: 156, column: 57, scope: !1062, inlinedAt: !2410)
!2416 = !DILocation(line: 155, column: 17, scope: !1062, inlinedAt: !2410)
!2417 = !DILocation(line: 157, column: 15, scope: !1062, inlinedAt: !2410)
!2418 = !DILocation(line: 157, column: 7, scope: !1062, inlinedAt: !2410)
!2419 = !DILocation(line: 158, column: 12, scope: !1062, inlinedAt: !2410)
!2420 = !DILocation(line: 158, column: 15, scope: !1062, inlinedAt: !2410)
!2421 = !DILocation(line: 158, column: 25, scope: !1062, inlinedAt: !2410)
!2422 = !DILocation(line: 158, column: 7, scope: !1062, inlinedAt: !2410)
!2423 = !DILocation(line: 159, column: 18, scope: !1062, inlinedAt: !2410)
!2424 = !DILocation(line: 159, column: 23, scope: !1062, inlinedAt: !2410)
!2425 = !DILocation(line: 159, column: 6, scope: !1062, inlinedAt: !2410)
!2426 = !DILocation(line: 987, column: 10, scope: !2394)
!2427 = !DILocation(line: 988, column: 1, scope: !2394)
!2428 = !DILocation(line: 987, column: 3, scope: !2394)
!2429 = distinct !DISubprogram(name: "quotearg_char", scope: !102, file: !102, line: 991, type: !2430, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!6, !17, !7}
!2432 = !{!2433, !2434}
!2433 = !DILocalVariable(name: "arg", arg: 1, scope: !2429, file: !102, line: 991, type: !17)
!2434 = !DILocalVariable(name: "ch", arg: 2, scope: !2429, file: !102, line: 991, type: !7)
!2435 = !DILocation(line: 991, column: 28, scope: !2429)
!2436 = !DILocation(line: 991, column: 38, scope: !2429)
!2437 = !DILocation(line: 982, column: 32, scope: !2394, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 993, column: 10, scope: !2429)
!2439 = !DILocation(line: 982, column: 44, scope: !2394, inlinedAt: !2438)
!2440 = !DILocation(line: 982, column: 58, scope: !2394, inlinedAt: !2438)
!2441 = !DILocation(line: 984, column: 3, scope: !2394, inlinedAt: !2438)
!2442 = !DILocation(line: 985, column: 13, scope: !2394, inlinedAt: !2438)
!2443 = !DILocation(line: 984, column: 26, scope: !2394, inlinedAt: !2438)
!2444 = !DILocation(line: 152, column: 43, scope: !1062, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 986, column: 3, scope: !2394, inlinedAt: !2438)
!2446 = !DILocation(line: 152, column: 51, scope: !1062, inlinedAt: !2445)
!2447 = !DILocation(line: 152, column: 58, scope: !1062, inlinedAt: !2445)
!2448 = !DILocation(line: 154, column: 17, scope: !1062, inlinedAt: !2445)
!2449 = !DILocation(line: 156, column: 62, scope: !1062, inlinedAt: !2445)
!2450 = !DILocation(line: 156, column: 57, scope: !1062, inlinedAt: !2445)
!2451 = !DILocation(line: 155, column: 17, scope: !1062, inlinedAt: !2445)
!2452 = !DILocation(line: 157, column: 15, scope: !1062, inlinedAt: !2445)
!2453 = !DILocation(line: 157, column: 7, scope: !1062, inlinedAt: !2445)
!2454 = !DILocation(line: 158, column: 12, scope: !1062, inlinedAt: !2445)
!2455 = !DILocation(line: 158, column: 15, scope: !1062, inlinedAt: !2445)
!2456 = !DILocation(line: 158, column: 25, scope: !1062, inlinedAt: !2445)
!2457 = !DILocation(line: 158, column: 7, scope: !1062, inlinedAt: !2445)
!2458 = !DILocation(line: 159, column: 18, scope: !1062, inlinedAt: !2445)
!2459 = !DILocation(line: 159, column: 23, scope: !1062, inlinedAt: !2445)
!2460 = !DILocation(line: 159, column: 6, scope: !1062, inlinedAt: !2445)
!2461 = !DILocation(line: 987, column: 10, scope: !2394, inlinedAt: !2438)
!2462 = !DILocation(line: 988, column: 1, scope: !2394, inlinedAt: !2438)
!2463 = !DILocation(line: 993, column: 3, scope: !2429)
!2464 = distinct !DISubprogram(name: "quotearg_colon", scope: !102, file: !102, line: 997, type: !882, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2465)
!2465 = !{!2466}
!2466 = !DILocalVariable(name: "arg", arg: 1, scope: !2464, file: !102, line: 997, type: !17)
!2467 = !DILocation(line: 997, column: 29, scope: !2464)
!2468 = !DILocation(line: 991, column: 28, scope: !2429, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 999, column: 10, scope: !2464)
!2470 = !DILocation(line: 991, column: 38, scope: !2429, inlinedAt: !2469)
!2471 = !DILocation(line: 982, column: 32, scope: !2394, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 993, column: 10, scope: !2429, inlinedAt: !2469)
!2473 = !DILocation(line: 982, column: 44, scope: !2394, inlinedAt: !2472)
!2474 = !DILocation(line: 982, column: 58, scope: !2394, inlinedAt: !2472)
!2475 = !DILocation(line: 984, column: 3, scope: !2394, inlinedAt: !2472)
!2476 = !DILocation(line: 985, column: 13, scope: !2394, inlinedAt: !2472)
!2477 = !DILocation(line: 984, column: 26, scope: !2394, inlinedAt: !2472)
!2478 = !DILocation(line: 152, column: 43, scope: !1062, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 986, column: 3, scope: !2394, inlinedAt: !2472)
!2480 = !DILocation(line: 152, column: 51, scope: !1062, inlinedAt: !2479)
!2481 = !DILocation(line: 152, column: 58, scope: !1062, inlinedAt: !2479)
!2482 = !DILocation(line: 154, column: 17, scope: !1062, inlinedAt: !2479)
!2483 = !DILocation(line: 156, column: 57, scope: !1062, inlinedAt: !2479)
!2484 = !DILocation(line: 155, column: 17, scope: !1062, inlinedAt: !2479)
!2485 = !DILocation(line: 157, column: 7, scope: !1062, inlinedAt: !2479)
!2486 = !DILocation(line: 158, column: 12, scope: !1062, inlinedAt: !2479)
!2487 = !DILocation(line: 159, column: 6, scope: !1062, inlinedAt: !2479)
!2488 = !DILocation(line: 987, column: 10, scope: !2394, inlinedAt: !2472)
!2489 = !DILocation(line: 988, column: 1, scope: !2394, inlinedAt: !2472)
!2490 = !DILocation(line: 999, column: 3, scope: !2464)
!2491 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !102, file: !102, line: 1003, type: !2259, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2492)
!2492 = !{!2493, !2494}
!2493 = !DILocalVariable(name: "arg", arg: 1, scope: !2491, file: !102, line: 1003, type: !17)
!2494 = !DILocalVariable(name: "argsize", arg: 2, scope: !2491, file: !102, line: 1003, type: !96)
!2495 = !DILocation(line: 1003, column: 33, scope: !2491)
!2496 = !DILocation(line: 1003, column: 45, scope: !2491)
!2497 = !DILocation(line: 982, column: 32, scope: !2394, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 1005, column: 10, scope: !2491)
!2499 = !DILocation(line: 982, column: 44, scope: !2394, inlinedAt: !2498)
!2500 = !DILocation(line: 982, column: 58, scope: !2394, inlinedAt: !2498)
!2501 = !DILocation(line: 984, column: 3, scope: !2394, inlinedAt: !2498)
!2502 = !DILocation(line: 985, column: 13, scope: !2394, inlinedAt: !2498)
!2503 = !DILocation(line: 984, column: 26, scope: !2394, inlinedAt: !2498)
!2504 = !DILocation(line: 152, column: 43, scope: !1062, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 986, column: 3, scope: !2394, inlinedAt: !2498)
!2506 = !DILocation(line: 152, column: 51, scope: !1062, inlinedAt: !2505)
!2507 = !DILocation(line: 152, column: 58, scope: !1062, inlinedAt: !2505)
!2508 = !DILocation(line: 154, column: 17, scope: !1062, inlinedAt: !2505)
!2509 = !DILocation(line: 156, column: 57, scope: !1062, inlinedAt: !2505)
!2510 = !DILocation(line: 155, column: 17, scope: !1062, inlinedAt: !2505)
!2511 = !DILocation(line: 157, column: 7, scope: !1062, inlinedAt: !2505)
!2512 = !DILocation(line: 158, column: 12, scope: !1062, inlinedAt: !2505)
!2513 = !DILocation(line: 159, column: 6, scope: !1062, inlinedAt: !2505)
!2514 = !DILocation(line: 987, column: 10, scope: !2394, inlinedAt: !2498)
!2515 = !DILocation(line: 988, column: 1, scope: !2394, inlinedAt: !2498)
!2516 = !DILocation(line: 1005, column: 3, scope: !2491)
!2517 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !102, file: !102, line: 1009, type: !2273, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2518)
!2518 = !{!2519, !2520, !2521, !2522}
!2519 = !DILocalVariable(name: "n", arg: 1, scope: !2517, file: !102, line: 1009, type: !20)
!2520 = !DILocalVariable(name: "s", arg: 2, scope: !2517, file: !102, line: 1009, type: !59)
!2521 = !DILocalVariable(name: "arg", arg: 3, scope: !2517, file: !102, line: 1009, type: !17)
!2522 = !DILocalVariable(name: "options", scope: !2517, file: !102, line: 1011, type: !109)
!2523 = !DILocation(line: 195, column: 26, scope: !2286, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 1012, column: 13, scope: !2517)
!2525 = !DILocation(line: 1009, column: 29, scope: !2517)
!2526 = !DILocation(line: 1009, column: 51, scope: !2517)
!2527 = !DILocation(line: 1009, column: 66, scope: !2517)
!2528 = !DILocation(line: 1011, column: 3, scope: !2517)
!2529 = !DILocation(line: 1012, column: 13, scope: !2517)
!2530 = !DILocation(line: 193, column: 48, scope: !2286, inlinedAt: !2524)
!2531 = !{!2532}
!2532 = distinct !{!2532, !2533, !"quoting_options_from_style: argument 0"}
!2533 = distinct !{!2533, !"quoting_options_from_style"}
!2534 = !DILocation(line: 196, column: 13, scope: !2298, inlinedAt: !2524)
!2535 = !DILocation(line: 196, column: 7, scope: !2286, inlinedAt: !2524)
!2536 = !DILocation(line: 197, column: 5, scope: !2298, inlinedAt: !2524)
!2537 = !DILocation(line: 1011, column: 26, scope: !2517)
!2538 = !DILocation(line: 152, column: 43, scope: !1062, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1013, column: 3, scope: !2517)
!2540 = !DILocation(line: 152, column: 51, scope: !1062, inlinedAt: !2539)
!2541 = !DILocation(line: 152, column: 58, scope: !1062, inlinedAt: !2539)
!2542 = !DILocation(line: 154, column: 17, scope: !1062, inlinedAt: !2539)
!2543 = !DILocation(line: 156, column: 57, scope: !1062, inlinedAt: !2539)
!2544 = !DILocation(line: 155, column: 17, scope: !1062, inlinedAt: !2539)
!2545 = !DILocation(line: 157, column: 7, scope: !1062, inlinedAt: !2539)
!2546 = !DILocation(line: 158, column: 12, scope: !1062, inlinedAt: !2539)
!2547 = !DILocation(line: 159, column: 6, scope: !1062, inlinedAt: !2539)
!2548 = !DILocation(line: 1014, column: 10, scope: !2517)
!2549 = !DILocation(line: 1015, column: 1, scope: !2517)
!2550 = !DILocation(line: 1014, column: 3, scope: !2517)
!2551 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !102, file: !102, line: 1018, type: !2552, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!6, !20, !17, !17, !17}
!2554 = !{!2555, !2556, !2557, !2558}
!2555 = !DILocalVariable(name: "n", arg: 1, scope: !2551, file: !102, line: 1018, type: !20)
!2556 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2551, file: !102, line: 1018, type: !17)
!2557 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2551, file: !102, line: 1019, type: !17)
!2558 = !DILocalVariable(name: "arg", arg: 4, scope: !2551, file: !102, line: 1019, type: !17)
!2559 = !DILocation(line: 1018, column: 24, scope: !2551)
!2560 = !DILocation(line: 1018, column: 39, scope: !2551)
!2561 = !DILocation(line: 1019, column: 32, scope: !2551)
!2562 = !DILocation(line: 1019, column: 57, scope: !2551)
!2563 = !DILocalVariable(name: "n", arg: 1, scope: !2564, file: !102, line: 1026, type: !20)
!2564 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !102, file: !102, line: 1026, type: !2565, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!6, !20, !17, !17, !17, !96}
!2567 = !{!2563, !2568, !2569, !2570, !2571, !2572}
!2568 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2564, file: !102, line: 1026, type: !17)
!2569 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2564, file: !102, line: 1027, type: !17)
!2570 = !DILocalVariable(name: "arg", arg: 4, scope: !2564, file: !102, line: 1028, type: !17)
!2571 = !DILocalVariable(name: "argsize", arg: 5, scope: !2564, file: !102, line: 1028, type: !96)
!2572 = !DILocalVariable(name: "o", scope: !2564, file: !102, line: 1030, type: !109)
!2573 = !DILocation(line: 1026, column: 28, scope: !2564, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 1021, column: 10, scope: !2551)
!2575 = !DILocation(line: 1026, column: 43, scope: !2564, inlinedAt: !2574)
!2576 = !DILocation(line: 1027, column: 36, scope: !2564, inlinedAt: !2574)
!2577 = !DILocation(line: 1028, column: 36, scope: !2564, inlinedAt: !2574)
!2578 = !DILocation(line: 1028, column: 48, scope: !2564, inlinedAt: !2574)
!2579 = !DILocation(line: 1030, column: 3, scope: !2564, inlinedAt: !2574)
!2580 = !DILocation(line: 1030, column: 30, scope: !2564, inlinedAt: !2574)
!2581 = !DILocation(line: 1030, column: 26, scope: !2564, inlinedAt: !2574)
!2582 = !DILocation(line: 179, column: 45, scope: !1110, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 1031, column: 3, scope: !2564, inlinedAt: !2574)
!2584 = !DILocation(line: 180, column: 33, scope: !1110, inlinedAt: !2583)
!2585 = !DILocation(line: 180, column: 57, scope: !1110, inlinedAt: !2583)
!2586 = !DILocation(line: 184, column: 6, scope: !1110, inlinedAt: !2583)
!2587 = !DILocation(line: 184, column: 12, scope: !1110, inlinedAt: !2583)
!2588 = !DILocation(line: 185, column: 8, scope: !1126, inlinedAt: !2583)
!2589 = !DILocation(line: 185, column: 23, scope: !1126, inlinedAt: !2583)
!2590 = !DILocation(line: 185, column: 19, scope: !1126, inlinedAt: !2583)
!2591 = !DILocation(line: 186, column: 5, scope: !1126, inlinedAt: !2583)
!2592 = !DILocation(line: 187, column: 6, scope: !1110, inlinedAt: !2583)
!2593 = !DILocation(line: 187, column: 17, scope: !1110, inlinedAt: !2583)
!2594 = !DILocation(line: 188, column: 6, scope: !1110, inlinedAt: !2583)
!2595 = !DILocation(line: 188, column: 18, scope: !1110, inlinedAt: !2583)
!2596 = !DILocation(line: 1032, column: 10, scope: !2564, inlinedAt: !2574)
!2597 = !DILocation(line: 1033, column: 1, scope: !2564, inlinedAt: !2574)
!2598 = !DILocation(line: 1021, column: 3, scope: !2551)
!2599 = !DILocation(line: 1026, column: 28, scope: !2564)
!2600 = !DILocation(line: 1026, column: 43, scope: !2564)
!2601 = !DILocation(line: 1027, column: 36, scope: !2564)
!2602 = !DILocation(line: 1028, column: 36, scope: !2564)
!2603 = !DILocation(line: 1028, column: 48, scope: !2564)
!2604 = !DILocation(line: 1030, column: 3, scope: !2564)
!2605 = !DILocation(line: 1030, column: 30, scope: !2564)
!2606 = !DILocation(line: 1030, column: 26, scope: !2564)
!2607 = !DILocation(line: 179, column: 45, scope: !1110, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 1031, column: 3, scope: !2564)
!2609 = !DILocation(line: 180, column: 33, scope: !1110, inlinedAt: !2608)
!2610 = !DILocation(line: 180, column: 57, scope: !1110, inlinedAt: !2608)
!2611 = !DILocation(line: 184, column: 6, scope: !1110, inlinedAt: !2608)
!2612 = !DILocation(line: 184, column: 12, scope: !1110, inlinedAt: !2608)
!2613 = !DILocation(line: 185, column: 8, scope: !1126, inlinedAt: !2608)
!2614 = !DILocation(line: 185, column: 23, scope: !1126, inlinedAt: !2608)
!2615 = !DILocation(line: 185, column: 19, scope: !1126, inlinedAt: !2608)
!2616 = !DILocation(line: 186, column: 5, scope: !1126, inlinedAt: !2608)
!2617 = !DILocation(line: 187, column: 6, scope: !1110, inlinedAt: !2608)
!2618 = !DILocation(line: 187, column: 17, scope: !1110, inlinedAt: !2608)
!2619 = !DILocation(line: 188, column: 6, scope: !1110, inlinedAt: !2608)
!2620 = !DILocation(line: 188, column: 18, scope: !1110, inlinedAt: !2608)
!2621 = !DILocation(line: 1032, column: 10, scope: !2564)
!2622 = !DILocation(line: 1033, column: 1, scope: !2564)
!2623 = !DILocation(line: 1032, column: 3, scope: !2564)
!2624 = distinct !DISubprogram(name: "quotearg_custom", scope: !102, file: !102, line: 1036, type: !2625, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!6, !17, !17, !17}
!2627 = !{!2628, !2629, !2630}
!2628 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2624, file: !102, line: 1036, type: !17)
!2629 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2624, file: !102, line: 1036, type: !17)
!2630 = !DILocalVariable(name: "arg", arg: 3, scope: !2624, file: !102, line: 1037, type: !17)
!2631 = !DILocation(line: 1036, column: 30, scope: !2624)
!2632 = !DILocation(line: 1036, column: 54, scope: !2624)
!2633 = !DILocation(line: 1037, column: 30, scope: !2624)
!2634 = !DILocation(line: 1018, column: 24, scope: !2551, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1039, column: 10, scope: !2624)
!2636 = !DILocation(line: 1018, column: 39, scope: !2551, inlinedAt: !2635)
!2637 = !DILocation(line: 1019, column: 32, scope: !2551, inlinedAt: !2635)
!2638 = !DILocation(line: 1019, column: 57, scope: !2551, inlinedAt: !2635)
!2639 = !DILocation(line: 1026, column: 28, scope: !2564, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1021, column: 10, scope: !2551, inlinedAt: !2635)
!2641 = !DILocation(line: 1026, column: 43, scope: !2564, inlinedAt: !2640)
!2642 = !DILocation(line: 1027, column: 36, scope: !2564, inlinedAt: !2640)
!2643 = !DILocation(line: 1028, column: 36, scope: !2564, inlinedAt: !2640)
!2644 = !DILocation(line: 1028, column: 48, scope: !2564, inlinedAt: !2640)
!2645 = !DILocation(line: 1030, column: 3, scope: !2564, inlinedAt: !2640)
!2646 = !DILocation(line: 1030, column: 30, scope: !2564, inlinedAt: !2640)
!2647 = !DILocation(line: 1030, column: 26, scope: !2564, inlinedAt: !2640)
!2648 = !DILocation(line: 179, column: 45, scope: !1110, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1031, column: 3, scope: !2564, inlinedAt: !2640)
!2650 = !DILocation(line: 180, column: 33, scope: !1110, inlinedAt: !2649)
!2651 = !DILocation(line: 180, column: 57, scope: !1110, inlinedAt: !2649)
!2652 = !DILocation(line: 184, column: 6, scope: !1110, inlinedAt: !2649)
!2653 = !DILocation(line: 184, column: 12, scope: !1110, inlinedAt: !2649)
!2654 = !DILocation(line: 185, column: 8, scope: !1126, inlinedAt: !2649)
!2655 = !DILocation(line: 185, column: 23, scope: !1126, inlinedAt: !2649)
!2656 = !DILocation(line: 185, column: 19, scope: !1126, inlinedAt: !2649)
!2657 = !DILocation(line: 186, column: 5, scope: !1126, inlinedAt: !2649)
!2658 = !DILocation(line: 187, column: 6, scope: !1110, inlinedAt: !2649)
!2659 = !DILocation(line: 187, column: 17, scope: !1110, inlinedAt: !2649)
!2660 = !DILocation(line: 188, column: 6, scope: !1110, inlinedAt: !2649)
!2661 = !DILocation(line: 188, column: 18, scope: !1110, inlinedAt: !2649)
!2662 = !DILocation(line: 1032, column: 10, scope: !2564, inlinedAt: !2640)
!2663 = !DILocation(line: 1033, column: 1, scope: !2564, inlinedAt: !2640)
!2664 = !DILocation(line: 1039, column: 3, scope: !2624)
!2665 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !102, file: !102, line: 1043, type: !2666, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!6, !17, !17, !17, !96}
!2668 = !{!2669, !2670, !2671, !2672}
!2669 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2665, file: !102, line: 1043, type: !17)
!2670 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2665, file: !102, line: 1043, type: !17)
!2671 = !DILocalVariable(name: "arg", arg: 3, scope: !2665, file: !102, line: 1044, type: !17)
!2672 = !DILocalVariable(name: "argsize", arg: 4, scope: !2665, file: !102, line: 1044, type: !96)
!2673 = !DILocation(line: 1043, column: 34, scope: !2665)
!2674 = !DILocation(line: 1043, column: 58, scope: !2665)
!2675 = !DILocation(line: 1044, column: 34, scope: !2665)
!2676 = !DILocation(line: 1044, column: 46, scope: !2665)
!2677 = !DILocation(line: 1026, column: 28, scope: !2564, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 1046, column: 10, scope: !2665)
!2679 = !DILocation(line: 1026, column: 43, scope: !2564, inlinedAt: !2678)
!2680 = !DILocation(line: 1027, column: 36, scope: !2564, inlinedAt: !2678)
!2681 = !DILocation(line: 1028, column: 36, scope: !2564, inlinedAt: !2678)
!2682 = !DILocation(line: 1028, column: 48, scope: !2564, inlinedAt: !2678)
!2683 = !DILocation(line: 1030, column: 3, scope: !2564, inlinedAt: !2678)
!2684 = !DILocation(line: 1030, column: 30, scope: !2564, inlinedAt: !2678)
!2685 = !DILocation(line: 1030, column: 26, scope: !2564, inlinedAt: !2678)
!2686 = !DILocation(line: 179, column: 45, scope: !1110, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1031, column: 3, scope: !2564, inlinedAt: !2678)
!2688 = !DILocation(line: 180, column: 33, scope: !1110, inlinedAt: !2687)
!2689 = !DILocation(line: 180, column: 57, scope: !1110, inlinedAt: !2687)
!2690 = !DILocation(line: 184, column: 6, scope: !1110, inlinedAt: !2687)
!2691 = !DILocation(line: 184, column: 12, scope: !1110, inlinedAt: !2687)
!2692 = !DILocation(line: 185, column: 8, scope: !1126, inlinedAt: !2687)
!2693 = !DILocation(line: 185, column: 23, scope: !1126, inlinedAt: !2687)
!2694 = !DILocation(line: 185, column: 19, scope: !1126, inlinedAt: !2687)
!2695 = !DILocation(line: 186, column: 5, scope: !1126, inlinedAt: !2687)
!2696 = !DILocation(line: 187, column: 6, scope: !1110, inlinedAt: !2687)
!2697 = !DILocation(line: 187, column: 17, scope: !1110, inlinedAt: !2687)
!2698 = !DILocation(line: 188, column: 6, scope: !1110, inlinedAt: !2687)
!2699 = !DILocation(line: 188, column: 18, scope: !1110, inlinedAt: !2687)
!2700 = !DILocation(line: 1032, column: 10, scope: !2564, inlinedAt: !2678)
!2701 = !DILocation(line: 1033, column: 1, scope: !2564, inlinedAt: !2678)
!2702 = !DILocation(line: 1046, column: 3, scope: !2665)
!2703 = distinct !DISubprogram(name: "quote_n_mem", scope: !102, file: !102, line: 1061, type: !2704, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!17, !20, !17, !96}
!2706 = !{!2707, !2708, !2709}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !102, line: 1061, type: !20)
!2708 = !DILocalVariable(name: "arg", arg: 2, scope: !2703, file: !102, line: 1061, type: !17)
!2709 = !DILocalVariable(name: "argsize", arg: 3, scope: !2703, file: !102, line: 1061, type: !96)
!2710 = !DILocation(line: 1061, column: 18, scope: !2703)
!2711 = !DILocation(line: 1061, column: 33, scope: !2703)
!2712 = !DILocation(line: 1061, column: 45, scope: !2703)
!2713 = !DILocation(line: 1063, column: 10, scope: !2703)
!2714 = !DILocation(line: 1063, column: 3, scope: !2703)
!2715 = distinct !DISubprogram(name: "quote_mem", scope: !102, file: !102, line: 1067, type: !2716, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!17, !17, !96}
!2718 = !{!2719, !2720}
!2719 = !DILocalVariable(name: "arg", arg: 1, scope: !2715, file: !102, line: 1067, type: !17)
!2720 = !DILocalVariable(name: "argsize", arg: 2, scope: !2715, file: !102, line: 1067, type: !96)
!2721 = !DILocation(line: 1067, column: 24, scope: !2715)
!2722 = !DILocation(line: 1067, column: 36, scope: !2715)
!2723 = !DILocation(line: 1061, column: 18, scope: !2703, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1069, column: 10, scope: !2715)
!2725 = !DILocation(line: 1061, column: 33, scope: !2703, inlinedAt: !2724)
!2726 = !DILocation(line: 1061, column: 45, scope: !2703, inlinedAt: !2724)
!2727 = !DILocation(line: 1063, column: 10, scope: !2703, inlinedAt: !2724)
!2728 = !DILocation(line: 1069, column: 3, scope: !2715)
!2729 = distinct !DISubprogram(name: "quote_n", scope: !102, file: !102, line: 1073, type: !2730, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!17, !20, !17}
!2732 = !{!2733, !2734}
!2733 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !102, line: 1073, type: !20)
!2734 = !DILocalVariable(name: "arg", arg: 2, scope: !2729, file: !102, line: 1073, type: !17)
!2735 = !DILocation(line: 1073, column: 14, scope: !2729)
!2736 = !DILocation(line: 1073, column: 29, scope: !2729)
!2737 = !DILocation(line: 1061, column: 18, scope: !2703, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1075, column: 10, scope: !2729)
!2739 = !DILocation(line: 1061, column: 33, scope: !2703, inlinedAt: !2738)
!2740 = !DILocation(line: 1061, column: 45, scope: !2703, inlinedAt: !2738)
!2741 = !DILocation(line: 1063, column: 10, scope: !2703, inlinedAt: !2738)
!2742 = !DILocation(line: 1075, column: 3, scope: !2729)
!2743 = distinct !DISubprogram(name: "quote", scope: !102, file: !102, line: 1079, type: !2744, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!17, !17}
!2746 = !{!2747}
!2747 = !DILocalVariable(name: "arg", arg: 1, scope: !2743, file: !102, line: 1079, type: !17)
!2748 = !DILocation(line: 1079, column: 20, scope: !2743)
!2749 = !DILocation(line: 1073, column: 14, scope: !2729, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1081, column: 10, scope: !2743)
!2751 = !DILocation(line: 1073, column: 29, scope: !2729, inlinedAt: !2750)
!2752 = !DILocation(line: 1061, column: 18, scope: !2703, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1075, column: 10, scope: !2729, inlinedAt: !2750)
!2754 = !DILocation(line: 1061, column: 33, scope: !2703, inlinedAt: !2753)
!2755 = !DILocation(line: 1061, column: 45, scope: !2703, inlinedAt: !2753)
!2756 = !DILocation(line: 1063, column: 10, scope: !2703, inlinedAt: !2753)
!2757 = !DILocation(line: 1081, column: 3, scope: !2743)
!2758 = distinct !DISubprogram(name: "version_etc_arn", scope: !161, file: !161, line: 62, type: !2759, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2817)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{null, !2761, !17, !17, !17, !2816, !96}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2763, line: 7, baseType: !2764)
!2763 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2765, line: 49, size: 1728, elements: !2766)
!2765 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2766 = !{!2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2782, !2784, !2785, !2786, !2790, !2791, !2793, !2797, !2800, !2802, !2805, !2808, !2809, !2810, !2811, !2812}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2764, file: !2765, line: 51, baseType: !20, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2764, file: !2765, line: 54, baseType: !6, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2764, file: !2765, line: 55, baseType: !6, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2764, file: !2765, line: 56, baseType: !6, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2764, file: !2765, line: 57, baseType: !6, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2764, file: !2765, line: 58, baseType: !6, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2764, file: !2765, line: 59, baseType: !6, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2764, file: !2765, line: 60, baseType: !6, size: 64, offset: 448)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2764, file: !2765, line: 61, baseType: !6, size: 64, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2764, file: !2765, line: 64, baseType: !6, size: 64, offset: 576)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2764, file: !2765, line: 65, baseType: !6, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2764, file: !2765, line: 66, baseType: !6, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2764, file: !2765, line: 68, baseType: !2780, size: 64, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2765, line: 36, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2764, file: !2765, line: 70, baseType: !2783, size: 64, offset: 832)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2764, file: !2765, line: 72, baseType: !20, size: 32, offset: 896)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2764, file: !2765, line: 73, baseType: !20, size: 32, offset: 928)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2764, file: !2765, line: 74, baseType: !2787, size: 64, offset: 960)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2788, line: 150, baseType: !2789)
!2788 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2789 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2764, file: !2765, line: 77, baseType: !95, size: 16, offset: 1024)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2764, file: !2765, line: 78, baseType: !2792, size: 8, offset: 1040)
!2792 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2764, file: !2765, line: 79, baseType: !2794, size: 8, offset: 1048)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2795)
!2795 = !{!2796}
!2796 = !DISubrange(count: 1)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2764, file: !2765, line: 81, baseType: !2798, size: 64, offset: 1088)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2765, line: 43, baseType: null)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2764, file: !2765, line: 89, baseType: !2801, size: 64, offset: 1152)
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2788, line: 151, baseType: !2789)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2764, file: !2765, line: 91, baseType: !2803, size: 64, offset: 1216)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2765, line: 37, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2764, file: !2765, line: 92, baseType: !2806, size: 64, offset: 1280)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2765, line: 38, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2764, file: !2765, line: 93, baseType: !2783, size: 64, offset: 1344)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2764, file: !2765, line: 94, baseType: !8, size: 64, offset: 1408)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2764, file: !2765, line: 95, baseType: !96, size: 64, offset: 1472)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2764, file: !2765, line: 96, baseType: !20, size: 32, offset: 1536)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2764, file: !2765, line: 98, baseType: !2813, size: 160, offset: 1568)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2814)
!2814 = !{!2815}
!2815 = !DISubrange(count: 20)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!2817 = !{!2818, !2819, !2820, !2821, !2822, !2823}
!2818 = !DILocalVariable(name: "stream", arg: 1, scope: !2758, file: !161, line: 62, type: !2761)
!2819 = !DILocalVariable(name: "command_name", arg: 2, scope: !2758, file: !161, line: 63, type: !17)
!2820 = !DILocalVariable(name: "package", arg: 3, scope: !2758, file: !161, line: 63, type: !17)
!2821 = !DILocalVariable(name: "version", arg: 4, scope: !2758, file: !161, line: 64, type: !17)
!2822 = !DILocalVariable(name: "authors", arg: 5, scope: !2758, file: !161, line: 65, type: !2816)
!2823 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2758, file: !161, line: 65, type: !96)
!2824 = !DILocation(line: 62, column: 24, scope: !2758)
!2825 = !DILocation(line: 63, column: 30, scope: !2758)
!2826 = !DILocation(line: 63, column: 56, scope: !2758)
!2827 = !DILocation(line: 64, column: 30, scope: !2758)
!2828 = !DILocation(line: 65, column: 39, scope: !2758)
!2829 = !DILocation(line: 65, column: 55, scope: !2758)
!2830 = !DILocation(line: 67, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2758, file: !161, line: 67, column: 7)
!2832 = !DILocation(line: 67, column: 7, scope: !2758)
!2833 = !DILocation(line: 68, column: 5, scope: !2831)
!2834 = !DILocation(line: 70, column: 5, scope: !2831)
!2835 = !DILocation(line: 84, column: 3, scope: !2758)
!2836 = !DILocation(line: 86, column: 3, scope: !2758)
!2837 = !DILocation(line: 95, column: 3, scope: !2758)
!2838 = !DILocation(line: 99, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2758, file: !161, line: 96, column: 5)
!2840 = !DILocation(line: 102, column: 7, scope: !2839)
!2841 = !DILocation(line: 103, column: 7, scope: !2839)
!2842 = !DILocation(line: 106, column: 7, scope: !2839)
!2843 = !DILocation(line: 107, column: 7, scope: !2839)
!2844 = !DILocation(line: 110, column: 7, scope: !2839)
!2845 = !DILocation(line: 112, column: 7, scope: !2839)
!2846 = !DILocation(line: 117, column: 7, scope: !2839)
!2847 = !DILocation(line: 119, column: 7, scope: !2839)
!2848 = !DILocation(line: 124, column: 7, scope: !2839)
!2849 = !DILocation(line: 126, column: 7, scope: !2839)
!2850 = !DILocation(line: 131, column: 7, scope: !2839)
!2851 = !DILocation(line: 134, column: 7, scope: !2839)
!2852 = !DILocation(line: 139, column: 7, scope: !2839)
!2853 = !DILocation(line: 142, column: 7, scope: !2839)
!2854 = !DILocation(line: 147, column: 7, scope: !2839)
!2855 = !DILocation(line: 151, column: 7, scope: !2839)
!2856 = !DILocation(line: 156, column: 7, scope: !2839)
!2857 = !DILocation(line: 160, column: 7, scope: !2839)
!2858 = !DILocation(line: 167, column: 7, scope: !2839)
!2859 = !DILocation(line: 171, column: 7, scope: !2839)
!2860 = !DILocation(line: 173, column: 1, scope: !2758)
!2861 = distinct !DISubprogram(name: "version_etc_ar", scope: !161, file: !161, line: 180, type: !2862, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !2761, !17, !17, !17, !2816}
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870}
!2865 = !DILocalVariable(name: "stream", arg: 1, scope: !2861, file: !161, line: 180, type: !2761)
!2866 = !DILocalVariable(name: "command_name", arg: 2, scope: !2861, file: !161, line: 181, type: !17)
!2867 = !DILocalVariable(name: "package", arg: 3, scope: !2861, file: !161, line: 181, type: !17)
!2868 = !DILocalVariable(name: "version", arg: 4, scope: !2861, file: !161, line: 182, type: !17)
!2869 = !DILocalVariable(name: "authors", arg: 5, scope: !2861, file: !161, line: 182, type: !2816)
!2870 = !DILocalVariable(name: "n_authors", scope: !2861, file: !161, line: 184, type: !96)
!2871 = !DILocation(line: 180, column: 23, scope: !2861)
!2872 = !DILocation(line: 181, column: 29, scope: !2861)
!2873 = !DILocation(line: 181, column: 55, scope: !2861)
!2874 = !DILocation(line: 182, column: 29, scope: !2861)
!2875 = !DILocation(line: 182, column: 59, scope: !2861)
!2876 = !DILocation(line: 184, column: 10, scope: !2861)
!2877 = !DILocation(line: 186, column: 8, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2861, file: !161, line: 186, column: 3)
!2879 = !DILocation(line: 0, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2878, file: !161, line: 186, column: 3)
!2881 = !DILocation(line: 186, column: 23, scope: !2880)
!2882 = !DILocation(line: 186, column: 3, scope: !2878)
!2883 = !DILocation(line: 186, column: 52, scope: !2880)
!2884 = distinct !{!2884, !2882, !2885}
!2885 = !DILocation(line: 187, column: 5, scope: !2878)
!2886 = !DILocation(line: 188, column: 3, scope: !2861)
!2887 = !DILocation(line: 189, column: 1, scope: !2861)
!2888 = distinct !DISubprogram(name: "version_etc_va", scope: !161, file: !161, line: 196, type: !2889, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2898)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !2761, !17, !17, !17, !2891}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !158, line: 189, size: 192, elements: !2893)
!2893 = !{!2894, !2895, !2896, !2897}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2892, file: !158, line: 189, baseType: !61, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2892, file: !158, line: 189, baseType: !61, size: 32, offset: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2892, file: !158, line: 189, baseType: !8, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2892, file: !158, line: 189, baseType: !8, size: 64, offset: 128)
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904, !2905}
!2899 = !DILocalVariable(name: "stream", arg: 1, scope: !2888, file: !161, line: 196, type: !2761)
!2900 = !DILocalVariable(name: "command_name", arg: 2, scope: !2888, file: !161, line: 197, type: !17)
!2901 = !DILocalVariable(name: "package", arg: 3, scope: !2888, file: !161, line: 197, type: !17)
!2902 = !DILocalVariable(name: "version", arg: 4, scope: !2888, file: !161, line: 198, type: !17)
!2903 = !DILocalVariable(name: "authors", arg: 5, scope: !2888, file: !161, line: 198, type: !2891)
!2904 = !DILocalVariable(name: "n_authors", scope: !2888, file: !161, line: 200, type: !96)
!2905 = !DILocalVariable(name: "authtab", scope: !2888, file: !161, line: 201, type: !2906)
!2906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !105)
!2907 = !DILocation(line: 196, column: 23, scope: !2888)
!2908 = !DILocation(line: 197, column: 29, scope: !2888)
!2909 = !DILocation(line: 197, column: 55, scope: !2888)
!2910 = !DILocation(line: 198, column: 29, scope: !2888)
!2911 = !DILocation(line: 198, column: 46, scope: !2888)
!2912 = !DILocation(line: 201, column: 3, scope: !2888)
!2913 = !DILocation(line: 201, column: 15, scope: !2888)
!2914 = !DILocation(line: 200, column: 10, scope: !2888)
!2915 = !DILocation(line: 205, column: 35, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !161, line: 203, column: 3)
!2917 = distinct !DILexicalBlock(scope: !2888, file: !161, line: 203, column: 3)
!2918 = !DILocation(line: 205, column: 14, scope: !2916)
!2919 = !DILocation(line: 205, column: 33, scope: !2916)
!2920 = !DILocation(line: 205, column: 67, scope: !2916)
!2921 = !DILocation(line: 203, column: 3, scope: !2917)
!2922 = !DILocation(line: 0, scope: !2916)
!2923 = !DILocation(line: 208, column: 3, scope: !2888)
!2924 = !DILocation(line: 210, column: 1, scope: !2888)
!2925 = distinct !DISubprogram(name: "version_etc", scope: !161, file: !161, line: 227, type: !2926, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2761, !17, !17, !17, null}
!2928 = !{!2929, !2930, !2931, !2932, !2933}
!2929 = !DILocalVariable(name: "stream", arg: 1, scope: !2925, file: !161, line: 227, type: !2761)
!2930 = !DILocalVariable(name: "command_name", arg: 2, scope: !2925, file: !161, line: 228, type: !17)
!2931 = !DILocalVariable(name: "package", arg: 3, scope: !2925, file: !161, line: 228, type: !17)
!2932 = !DILocalVariable(name: "version", arg: 4, scope: !2925, file: !161, line: 229, type: !17)
!2933 = !DILocalVariable(name: "authors", scope: !2925, file: !161, line: 231, type: !2934)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2935, line: 52, baseType: !2936)
!2935 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2937, line: 48, baseType: !2938)
!2937 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, line: 231, baseType: !2939)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2892, size: 192, elements: !2795)
!2940 = !DILocation(line: 227, column: 20, scope: !2925)
!2941 = !DILocation(line: 228, column: 26, scope: !2925)
!2942 = !DILocation(line: 228, column: 52, scope: !2925)
!2943 = !DILocation(line: 229, column: 26, scope: !2925)
!2944 = !DILocation(line: 231, column: 3, scope: !2925)
!2945 = !DILocation(line: 231, column: 11, scope: !2925)
!2946 = !DILocation(line: 233, column: 3, scope: !2925)
!2947 = !DILocation(line: 234, column: 3, scope: !2925)
!2948 = !DILocation(line: 235, column: 3, scope: !2925)
!2949 = !DILocation(line: 236, column: 1, scope: !2925)
!2950 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !161, file: !161, line: 239, type: !637, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !157, retainedNodes: !4)
!2951 = !DILocation(line: 245, column: 3, scope: !2950)
!2952 = !DILocation(line: 251, column: 3, scope: !2950)
!2953 = !DILocation(line: 256, column: 3, scope: !2950)
!2954 = !DILocation(line: 258, column: 1, scope: !2950)
!2955 = distinct !DISubprogram(name: "xnmalloc", scope: !169, file: !169, line: 99, type: !2956, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!8, !96, !96}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "n", arg: 1, scope: !2955, file: !169, line: 99, type: !96)
!2960 = !DILocalVariable(name: "s", arg: 2, scope: !2955, file: !169, line: 99, type: !96)
!2961 = !DILocation(line: 99, column: 18, scope: !2955)
!2962 = !DILocation(line: 99, column: 28, scope: !2955)
!2963 = !DILocation(line: 101, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2955, file: !169, line: 101, column: 7)
!2965 = !DILocation(line: 101, column: 7, scope: !2955)
!2966 = !DILocation(line: 102, column: 5, scope: !2964)
!2967 = !DILocation(line: 103, column: 21, scope: !2955)
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2969, file: !2970, line: 39, type: !96)
!2969 = distinct !DISubprogram(name: "xmalloc", scope: !2970, file: !2970, line: 39, type: !2971, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2973)
!2970 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!8, !96}
!2973 = !{!2968, !2974}
!2974 = !DILocalVariable(name: "p", scope: !2969, file: !2970, line: 41, type: !8)
!2975 = !DILocation(line: 39, column: 17, scope: !2969, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 103, column: 10, scope: !2955)
!2977 = !DILocation(line: 41, column: 13, scope: !2969, inlinedAt: !2976)
!2978 = !DILocation(line: 41, column: 9, scope: !2969, inlinedAt: !2976)
!2979 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !2976)
!2980 = distinct !DILexicalBlock(scope: !2969, file: !2970, line: 42, column: 7)
!2981 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !2976)
!2982 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !2976)
!2983 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !2976)
!2984 = !DILocation(line: 103, column: 3, scope: !2955)
!2985 = !DILocation(line: 39, column: 17, scope: !2969)
!2986 = !DILocation(line: 41, column: 13, scope: !2969)
!2987 = !DILocation(line: 41, column: 9, scope: !2969)
!2988 = !DILocation(line: 42, column: 8, scope: !2980)
!2989 = !DILocation(line: 42, column: 15, scope: !2980)
!2990 = !DILocation(line: 42, column: 10, scope: !2980)
!2991 = !DILocation(line: 43, column: 5, scope: !2980)
!2992 = !DILocation(line: 44, column: 3, scope: !2969)
!2993 = distinct !DISubprogram(name: "xnrealloc", scope: !169, file: !169, line: 112, type: !2994, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!8, !8, !96, !96}
!2996 = !{!2997, !2998, !2999}
!2997 = !DILocalVariable(name: "p", arg: 1, scope: !2993, file: !169, line: 112, type: !8)
!2998 = !DILocalVariable(name: "n", arg: 2, scope: !2993, file: !169, line: 112, type: !96)
!2999 = !DILocalVariable(name: "s", arg: 3, scope: !2993, file: !169, line: 112, type: !96)
!3000 = !DILocation(line: 112, column: 18, scope: !2993)
!3001 = !DILocation(line: 112, column: 28, scope: !2993)
!3002 = !DILocation(line: 112, column: 38, scope: !2993)
!3003 = !DILocation(line: 114, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2993, file: !169, line: 114, column: 7)
!3005 = !DILocation(line: 114, column: 7, scope: !2993)
!3006 = !DILocation(line: 115, column: 5, scope: !3004)
!3007 = !DILocation(line: 116, column: 25, scope: !2993)
!3008 = !DILocalVariable(name: "p", arg: 1, scope: !3009, file: !2970, line: 51, type: !8)
!3009 = distinct !DISubprogram(name: "xrealloc", scope: !2970, file: !2970, line: 51, type: !3010, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!8, !8, !96}
!3012 = !{!3008, !3013}
!3013 = !DILocalVariable(name: "n", arg: 2, scope: !3009, file: !2970, line: 51, type: !96)
!3014 = !DILocation(line: 51, column: 17, scope: !3009, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 116, column: 10, scope: !2993)
!3016 = !DILocation(line: 51, column: 27, scope: !3009, inlinedAt: !3015)
!3017 = !DILocation(line: 53, column: 8, scope: !3018, inlinedAt: !3015)
!3018 = distinct !DILexicalBlock(scope: !3009, file: !2970, line: 53, column: 7)
!3019 = !DILocation(line: 53, column: 13, scope: !3018, inlinedAt: !3015)
!3020 = !DILocation(line: 53, column: 10, scope: !3018, inlinedAt: !3015)
!3021 = !DILocation(line: 57, column: 7, scope: !3022, inlinedAt: !3015)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !2970, line: 54, column: 5)
!3023 = !DILocation(line: 58, column: 7, scope: !3022, inlinedAt: !3015)
!3024 = !DILocation(line: 61, column: 7, scope: !3009, inlinedAt: !3015)
!3025 = !DILocation(line: 62, column: 8, scope: !3026, inlinedAt: !3015)
!3026 = distinct !DILexicalBlock(scope: !3009, file: !2970, line: 62, column: 7)
!3027 = !DILocation(line: 62, column: 13, scope: !3026, inlinedAt: !3015)
!3028 = !DILocation(line: 62, column: 10, scope: !3026, inlinedAt: !3015)
!3029 = !DILocation(line: 63, column: 5, scope: !3026, inlinedAt: !3015)
!3030 = !DILocation(line: 0, scope: !3009, inlinedAt: !3015)
!3031 = !DILocation(line: 116, column: 3, scope: !2993)
!3032 = !DILocation(line: 51, column: 17, scope: !3009)
!3033 = !DILocation(line: 51, column: 27, scope: !3009)
!3034 = !DILocation(line: 53, column: 8, scope: !3018)
!3035 = !DILocation(line: 53, column: 13, scope: !3018)
!3036 = !DILocation(line: 53, column: 10, scope: !3018)
!3037 = !DILocation(line: 57, column: 7, scope: !3022)
!3038 = !DILocation(line: 58, column: 7, scope: !3022)
!3039 = !DILocation(line: 61, column: 7, scope: !3009)
!3040 = !DILocation(line: 62, column: 8, scope: !3026)
!3041 = !DILocation(line: 62, column: 13, scope: !3026)
!3042 = !DILocation(line: 62, column: 10, scope: !3026)
!3043 = !DILocation(line: 63, column: 5, scope: !3026)
!3044 = !DILocation(line: 0, scope: !3009)
!3045 = !DILocation(line: 65, column: 1, scope: !3009)
!3046 = !DILocation(line: 174, column: 19, scope: !170)
!3047 = !DILocation(line: 174, column: 30, scope: !170)
!3048 = !DILocation(line: 174, column: 41, scope: !170)
!3049 = !DILocation(line: 176, column: 14, scope: !170)
!3050 = !DILocation(line: 176, column: 10, scope: !170)
!3051 = !DILocation(line: 178, column: 9, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !170, file: !169, line: 178, column: 7)
!3053 = !DILocation(line: 178, column: 7, scope: !170)
!3054 = !DILocation(line: 180, column: 13, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !169, line: 180, column: 11)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !169, line: 179, column: 5)
!3057 = !DILocation(line: 180, column: 11, scope: !3056)
!3058 = !DILocation(line: 188, column: 30, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !169, line: 181, column: 9)
!3060 = !DILocation(line: 189, column: 16, scope: !3059)
!3061 = !DILocation(line: 189, column: 13, scope: !3059)
!3062 = !DILocation(line: 190, column: 9, scope: !3059)
!3063 = !DILocation(line: 0, scope: !3059)
!3064 = !DILocation(line: 191, column: 11, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3056, file: !169, line: 191, column: 11)
!3066 = !DILocation(line: 191, column: 11, scope: !3056)
!3067 = !DILocation(line: 206, column: 7, scope: !170)
!3068 = !DILocation(line: 207, column: 25, scope: !170)
!3069 = !DILocation(line: 51, column: 17, scope: !3009, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 207, column: 10, scope: !170)
!3071 = !DILocation(line: 51, column: 27, scope: !3009, inlinedAt: !3070)
!3072 = !DILocation(line: 53, column: 10, scope: !3018, inlinedAt: !3070)
!3073 = !DILocation(line: 192, column: 9, scope: !3065)
!3074 = !DILocation(line: 200, column: 69, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !169, line: 200, column: 11)
!3076 = distinct !DILexicalBlock(scope: !3052, file: !169, line: 195, column: 5)
!3077 = !DILocation(line: 201, column: 11, scope: !3075)
!3078 = !DILocation(line: 200, column: 11, scope: !3076)
!3079 = !DILocation(line: 202, column: 9, scope: !3075)
!3080 = !DILocation(line: 203, column: 14, scope: !3076)
!3081 = !DILocation(line: 203, column: 18, scope: !3076)
!3082 = !DILocation(line: 203, column: 9, scope: !3076)
!3083 = !DILocation(line: 53, column: 8, scope: !3018, inlinedAt: !3070)
!3084 = !DILocation(line: 57, column: 7, scope: !3022, inlinedAt: !3070)
!3085 = !DILocation(line: 58, column: 7, scope: !3022, inlinedAt: !3070)
!3086 = !DILocation(line: 61, column: 7, scope: !3009, inlinedAt: !3070)
!3087 = !DILocation(line: 62, column: 8, scope: !3026, inlinedAt: !3070)
!3088 = !DILocation(line: 62, column: 13, scope: !3026, inlinedAt: !3070)
!3089 = !DILocation(line: 62, column: 10, scope: !3026, inlinedAt: !3070)
!3090 = !DILocation(line: 63, column: 5, scope: !3026, inlinedAt: !3070)
!3091 = !DILocation(line: 0, scope: !3009, inlinedAt: !3070)
!3092 = !DILocation(line: 207, column: 3, scope: !170)
!3093 = distinct !DISubprogram(name: "xcharalloc", scope: !169, file: !169, line: 216, type: !2045, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !3094)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "n", arg: 1, scope: !3093, file: !169, line: 216, type: !96)
!3096 = !DILocation(line: 216, column: 20, scope: !3093)
!3097 = !DILocation(line: 39, column: 17, scope: !2969, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 218, column: 10, scope: !3093)
!3099 = !DILocation(line: 41, column: 13, scope: !2969, inlinedAt: !3098)
!3100 = !DILocation(line: 41, column: 9, scope: !2969, inlinedAt: !3098)
!3101 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3098)
!3102 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !3098)
!3103 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3098)
!3104 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3098)
!3105 = !DILocation(line: 218, column: 3, scope: !3093)
!3106 = distinct !DISubprogram(name: "x2realloc", scope: !2970, file: !2970, line: 74, type: !3107, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!8, !8, !173}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "p", arg: 1, scope: !3106, file: !2970, line: 74, type: !8)
!3111 = !DILocalVariable(name: "pn", arg: 2, scope: !3106, file: !2970, line: 74, type: !173)
!3112 = !DILocation(line: 74, column: 18, scope: !3106)
!3113 = !DILocation(line: 74, column: 29, scope: !3106)
!3114 = !DILocation(line: 174, column: 19, scope: !170, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 76, column: 10, scope: !3106)
!3116 = !DILocation(line: 174, column: 30, scope: !170, inlinedAt: !3115)
!3117 = !DILocation(line: 174, column: 41, scope: !170, inlinedAt: !3115)
!3118 = !DILocation(line: 176, column: 14, scope: !170, inlinedAt: !3115)
!3119 = !DILocation(line: 176, column: 10, scope: !170, inlinedAt: !3115)
!3120 = !DILocation(line: 178, column: 9, scope: !3052, inlinedAt: !3115)
!3121 = !DILocation(line: 178, column: 7, scope: !170, inlinedAt: !3115)
!3122 = !DILocation(line: 180, column: 13, scope: !3055, inlinedAt: !3115)
!3123 = !DILocation(line: 180, column: 11, scope: !3056, inlinedAt: !3115)
!3124 = !DILocation(line: 191, column: 11, scope: !3065, inlinedAt: !3115)
!3125 = !DILocation(line: 191, column: 11, scope: !3056, inlinedAt: !3115)
!3126 = !DILocation(line: 206, column: 7, scope: !170, inlinedAt: !3115)
!3127 = !DILocation(line: 51, column: 17, scope: !3009, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 207, column: 10, scope: !170, inlinedAt: !3115)
!3129 = !DILocation(line: 51, column: 27, scope: !3009, inlinedAt: !3128)
!3130 = !DILocation(line: 53, column: 10, scope: !3018, inlinedAt: !3128)
!3131 = !DILocation(line: 192, column: 9, scope: !3065, inlinedAt: !3115)
!3132 = !DILocation(line: 201, column: 11, scope: !3075, inlinedAt: !3115)
!3133 = !DILocation(line: 200, column: 11, scope: !3076, inlinedAt: !3115)
!3134 = !DILocation(line: 202, column: 9, scope: !3075, inlinedAt: !3115)
!3135 = !DILocation(line: 203, column: 14, scope: !3076, inlinedAt: !3115)
!3136 = !DILocation(line: 203, column: 18, scope: !3076, inlinedAt: !3115)
!3137 = !DILocation(line: 203, column: 9, scope: !3076, inlinedAt: !3115)
!3138 = !DILocation(line: 53, column: 8, scope: !3018, inlinedAt: !3128)
!3139 = !DILocation(line: 57, column: 7, scope: !3022, inlinedAt: !3128)
!3140 = !DILocation(line: 58, column: 7, scope: !3022, inlinedAt: !3128)
!3141 = !DILocation(line: 61, column: 7, scope: !3009, inlinedAt: !3128)
!3142 = !DILocation(line: 62, column: 8, scope: !3026, inlinedAt: !3128)
!3143 = !DILocation(line: 62, column: 13, scope: !3026, inlinedAt: !3128)
!3144 = !DILocation(line: 62, column: 10, scope: !3026, inlinedAt: !3128)
!3145 = !DILocation(line: 63, column: 5, scope: !3026, inlinedAt: !3128)
!3146 = !DILocation(line: 0, scope: !3009, inlinedAt: !3128)
!3147 = !DILocation(line: 76, column: 3, scope: !3106)
!3148 = distinct !DISubprogram(name: "xzalloc", scope: !2970, file: !2970, line: 84, type: !2971, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !3149)
!3149 = !{!3150}
!3150 = !DILocalVariable(name: "s", arg: 1, scope: !3148, file: !2970, line: 84, type: !96)
!3151 = !DILocation(line: 84, column: 17, scope: !3148)
!3152 = !DILocation(line: 39, column: 17, scope: !2969, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 86, column: 18, scope: !3148)
!3154 = !DILocation(line: 41, column: 13, scope: !2969, inlinedAt: !3153)
!3155 = !DILocation(line: 41, column: 9, scope: !2969, inlinedAt: !3153)
!3156 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3153)
!3157 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !3153)
!3158 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3153)
!3159 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3153)
!3160 = !DILocation(line: 86, column: 10, scope: !3148)
!3161 = !DILocation(line: 86, column: 3, scope: !3148)
!3162 = distinct !DISubprogram(name: "xcalloc", scope: !2970, file: !2970, line: 93, type: !2956, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !3163)
!3163 = !{!3164, !3165, !3166}
!3164 = !DILocalVariable(name: "n", arg: 1, scope: !3162, file: !2970, line: 93, type: !96)
!3165 = !DILocalVariable(name: "s", arg: 2, scope: !3162, file: !2970, line: 93, type: !96)
!3166 = !DILocalVariable(name: "p", scope: !3162, file: !2970, line: 95, type: !8)
!3167 = !DILocation(line: 93, column: 17, scope: !3162)
!3168 = !DILocation(line: 93, column: 27, scope: !3162)
!3169 = !DILocation(line: 100, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3162, file: !2970, line: 100, column: 7)
!3171 = !DILocation(line: 101, column: 7, scope: !3170)
!3172 = !DILocation(line: 101, column: 18, scope: !3170)
!3173 = !DILocation(line: 95, column: 9, scope: !3162)
!3174 = !DILocation(line: 101, column: 16, scope: !3170)
!3175 = !DILocation(line: 100, column: 7, scope: !3162)
!3176 = !DILocation(line: 102, column: 5, scope: !3170)
!3177 = !DILocation(line: 103, column: 3, scope: !3162)
!3178 = distinct !DISubprogram(name: "xmemdup", scope: !2970, file: !2970, line: 111, type: !3179, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !3183)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!8, !3181, !96}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "p", arg: 1, scope: !3178, file: !2970, line: 111, type: !3181)
!3185 = !DILocalVariable(name: "s", arg: 2, scope: !3178, file: !2970, line: 111, type: !96)
!3186 = !DILocation(line: 111, column: 22, scope: !3178)
!3187 = !DILocation(line: 111, column: 32, scope: !3178)
!3188 = !DILocation(line: 39, column: 17, scope: !2969, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 113, column: 18, scope: !3178)
!3190 = !DILocation(line: 41, column: 13, scope: !2969, inlinedAt: !3189)
!3191 = !DILocation(line: 41, column: 9, scope: !2969, inlinedAt: !3189)
!3192 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3189)
!3193 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !3189)
!3194 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3189)
!3195 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3189)
!3196 = !DILocation(line: 113, column: 10, scope: !3178)
!3197 = !DILocation(line: 113, column: 3, scope: !3178)
!3198 = distinct !DISubprogram(name: "xstrdup", scope: !2970, file: !2970, line: 119, type: !882, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !3199)
!3199 = !{!3200}
!3200 = !DILocalVariable(name: "string", arg: 1, scope: !3198, file: !2970, line: 119, type: !17)
!3201 = !DILocation(line: 119, column: 22, scope: !3198)
!3202 = !DILocation(line: 121, column: 27, scope: !3198)
!3203 = !DILocation(line: 121, column: 43, scope: !3198)
!3204 = !DILocation(line: 111, column: 22, scope: !3178, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 121, column: 10, scope: !3198)
!3206 = !DILocation(line: 111, column: 32, scope: !3178, inlinedAt: !3205)
!3207 = !DILocation(line: 39, column: 17, scope: !2969, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 113, column: 18, scope: !3178, inlinedAt: !3205)
!3209 = !DILocation(line: 41, column: 13, scope: !2969, inlinedAt: !3208)
!3210 = !DILocation(line: 41, column: 9, scope: !2969, inlinedAt: !3208)
!3211 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3208)
!3212 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !3208)
!3213 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3208)
!3214 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3208)
!3215 = !DILocation(line: 113, column: 10, scope: !3178, inlinedAt: !3205)
!3216 = !DILocation(line: 121, column: 3, scope: !3198)
!3217 = distinct !DISubprogram(name: "xalloc_die", scope: !3218, file: !3218, line: 32, type: !637, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !182, retainedNodes: !4)
!3218 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3219 = !DILocation(line: 34, column: 10, scope: !3217)
!3220 = !DILocation(line: 34, column: 33, scope: !3217)
!3221 = !DILocation(line: 34, column: 3, scope: !3217)
!3222 = !DILocation(line: 40, column: 3, scope: !3217)
!3223 = distinct !DISubprogram(name: "xstrndup", scope: !3224, file: !3224, line: 30, type: !2259, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3225)
!3224 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3225 = !{!3226, !3227, !3228}
!3226 = !DILocalVariable(name: "string", arg: 1, scope: !3223, file: !3224, line: 30, type: !17)
!3227 = !DILocalVariable(name: "n", arg: 2, scope: !3223, file: !3224, line: 30, type: !96)
!3228 = !DILocalVariable(name: "s", scope: !3223, file: !3224, line: 32, type: !6)
!3229 = !DILocation(line: 30, column: 23, scope: !3223)
!3230 = !DILocation(line: 30, column: 38, scope: !3223)
!3231 = !DILocation(line: 32, column: 13, scope: !3223)
!3232 = !DILocation(line: 32, column: 9, scope: !3223)
!3233 = !DILocation(line: 33, column: 9, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3223, file: !3224, line: 33, column: 7)
!3235 = !DILocation(line: 33, column: 7, scope: !3223)
!3236 = !DILocation(line: 34, column: 5, scope: !3234)
!3237 = !DILocation(line: 35, column: 3, scope: !3223)
!3238 = distinct !DISubprogram(name: "rpl_calloc", scope: !3239, file: !3239, line: 42, type: !2956, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !186, retainedNodes: !3240)
!3239 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3238, file: !3239, line: 42, type: !96)
!3242 = !DILocalVariable(name: "s", arg: 2, scope: !3238, file: !3239, line: 42, type: !96)
!3243 = !DILocalVariable(name: "result", scope: !3238, file: !3239, line: 44, type: !8)
!3244 = !DILocalVariable(name: "bytes", scope: !3245, file: !3239, line: 56, type: !96)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !3239, line: 53, column: 5)
!3246 = distinct !DILexicalBlock(scope: !3238, file: !3239, line: 47, column: 7)
!3247 = !DILocation(line: 42, column: 20, scope: !3238)
!3248 = !DILocation(line: 42, column: 30, scope: !3238)
!3249 = !DILocation(line: 47, column: 9, scope: !3246)
!3250 = !DILocation(line: 47, column: 19, scope: !3246)
!3251 = !DILocation(line: 47, column: 14, scope: !3246)
!3252 = !DILocation(line: 56, column: 24, scope: !3245)
!3253 = !DILocation(line: 56, column: 14, scope: !3245)
!3254 = !DILocation(line: 57, column: 17, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3245, file: !3239, line: 57, column: 11)
!3256 = !DILocation(line: 57, column: 21, scope: !3255)
!3257 = !DILocation(line: 57, column: 11, scope: !3245)
!3258 = !DILocation(line: 59, column: 11, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !3239, line: 58, column: 9)
!3260 = !DILocation(line: 59, column: 17, scope: !3259)
!3261 = !DILocation(line: 65, column: 12, scope: !3238)
!3262 = !DILocation(line: 44, column: 9, scope: !3238)
!3263 = !DILocation(line: 72, column: 3, scope: !3238)
!3264 = !DILocation(line: 0, scope: !3259)
!3265 = !DILocation(line: 73, column: 1, scope: !3238)
!3266 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3267, file: !3267, line: 385, type: !3268, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !188, retainedNodes: !3282)
!3267 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!96, !3270, !17, !96, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1209, line: 6, baseType: !3273)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1211, line: 21, baseType: !3274)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 13, size: 64, elements: !3275)
!3275 = !{!3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3274, file: !1211, line: 15, baseType: !20, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3274, file: !1211, line: 20, baseType: !3278, size: 32, offset: 32)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3274, file: !1211, line: 16, size: 32, elements: !3279)
!3279 = !{!3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3278, file: !1211, line: 18, baseType: !61, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3278, file: !1211, line: 19, baseType: !1220, size: 32)
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289}
!3283 = !DILocalVariable(name: "pwc", arg: 1, scope: !3266, file: !3267, line: 385, type: !3270)
!3284 = !DILocalVariable(name: "s", arg: 2, scope: !3266, file: !3267, line: 385, type: !17)
!3285 = !DILocalVariable(name: "n", arg: 3, scope: !3266, file: !3267, line: 385, type: !96)
!3286 = !DILocalVariable(name: "ps", arg: 4, scope: !3266, file: !3267, line: 385, type: !3271)
!3287 = !DILocalVariable(name: "ret", scope: !3266, file: !3267, line: 387, type: !96)
!3288 = !DILocalVariable(name: "wc", scope: !3266, file: !3267, line: 388, type: !1225)
!3289 = !DILocalVariable(name: "uc", scope: !3290, file: !3267, line: 449, type: !9)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !3267, line: 448, column: 5)
!3291 = distinct !DILexicalBlock(scope: !3266, file: !3267, line: 447, column: 7)
!3292 = !DILocation(line: 385, column: 23, scope: !3266)
!3293 = !DILocation(line: 385, column: 40, scope: !3266)
!3294 = !DILocation(line: 385, column: 50, scope: !3266)
!3295 = !DILocation(line: 385, column: 64, scope: !3266)
!3296 = !DILocation(line: 388, column: 3, scope: !3266)
!3297 = !DILocation(line: 404, column: 9, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3266, file: !3267, line: 404, column: 7)
!3299 = !DILocation(line: 404, column: 7, scope: !3266)
!3300 = !DILocation(line: 439, column: 9, scope: !3266)
!3301 = !DILocation(line: 387, column: 10, scope: !3266)
!3302 = !DILocation(line: 447, column: 19, scope: !3291)
!3303 = !DILocation(line: 447, column: 31, scope: !3291)
!3304 = !DILocation(line: 447, column: 26, scope: !3291)
!3305 = !DILocation(line: 447, column: 41, scope: !3291)
!3306 = !DILocation(line: 447, column: 7, scope: !3266)
!3307 = !DILocation(line: 449, column: 26, scope: !3290)
!3308 = !DILocation(line: 449, column: 21, scope: !3290)
!3309 = !DILocation(line: 450, column: 14, scope: !3290)
!3310 = !DILocation(line: 450, column: 12, scope: !3290)
!3311 = !DILocation(line: 0, scope: !3290)
!3312 = !DILocation(line: 456, column: 1, scope: !3266)
!3313 = distinct !DISubprogram(name: "close_stream", scope: !3314, file: !3314, line: 56, type: !3315, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3351)
!3314 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!20, !3317}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2763, line: 7, baseType: !3319)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2765, line: 49, size: 1728, elements: !3320)
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3319, file: !2765, line: 51, baseType: !20, size: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3319, file: !2765, line: 54, baseType: !6, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3319, file: !2765, line: 55, baseType: !6, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3319, file: !2765, line: 56, baseType: !6, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3319, file: !2765, line: 57, baseType: !6, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3319, file: !2765, line: 58, baseType: !6, size: 64, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3319, file: !2765, line: 59, baseType: !6, size: 64, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3319, file: !2765, line: 60, baseType: !6, size: 64, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3319, file: !2765, line: 61, baseType: !6, size: 64, offset: 512)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3319, file: !2765, line: 64, baseType: !6, size: 64, offset: 576)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3319, file: !2765, line: 65, baseType: !6, size: 64, offset: 640)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3319, file: !2765, line: 66, baseType: !6, size: 64, offset: 704)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3319, file: !2765, line: 68, baseType: !2780, size: 64, offset: 768)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3319, file: !2765, line: 70, baseType: !3335, size: 64, offset: 832)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3319, file: !2765, line: 72, baseType: !20, size: 32, offset: 896)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3319, file: !2765, line: 73, baseType: !20, size: 32, offset: 928)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3319, file: !2765, line: 74, baseType: !2787, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3319, file: !2765, line: 77, baseType: !95, size: 16, offset: 1024)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3319, file: !2765, line: 78, baseType: !2792, size: 8, offset: 1040)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3319, file: !2765, line: 79, baseType: !2794, size: 8, offset: 1048)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3319, file: !2765, line: 81, baseType: !2798, size: 64, offset: 1088)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3319, file: !2765, line: 89, baseType: !2801, size: 64, offset: 1152)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3319, file: !2765, line: 91, baseType: !2803, size: 64, offset: 1216)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3319, file: !2765, line: 92, baseType: !2806, size: 64, offset: 1280)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3319, file: !2765, line: 93, baseType: !3335, size: 64, offset: 1344)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3319, file: !2765, line: 94, baseType: !8, size: 64, offset: 1408)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3319, file: !2765, line: 95, baseType: !96, size: 64, offset: 1472)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3319, file: !2765, line: 96, baseType: !20, size: 32, offset: 1536)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3319, file: !2765, line: 98, baseType: !2813, size: 160, offset: 1568)
!3351 = !{!3352, !3353, !3355, !3356}
!3352 = !DILocalVariable(name: "stream", arg: 1, scope: !3313, file: !3314, line: 56, type: !3317)
!3353 = !DILocalVariable(name: "some_pending", scope: !3313, file: !3314, line: 58, type: !3354)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!3355 = !DILocalVariable(name: "prev_fail", scope: !3313, file: !3314, line: 59, type: !3354)
!3356 = !DILocalVariable(name: "fclose_fail", scope: !3313, file: !3314, line: 60, type: !3354)
!3357 = !DILocation(line: 56, column: 21, scope: !3313)
!3358 = !DILocation(line: 58, column: 30, scope: !3313)
!3359 = !DILocalVariable(name: "__stream", arg: 1, scope: !3360, file: !815, line: 135, type: !3317)
!3360 = distinct !DISubprogram(name: "ferror_unlocked", scope: !815, file: !815, line: 135, type: !3315, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3361)
!3361 = !{!3359}
!3362 = !DILocation(line: 135, column: 1, scope: !3360, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 59, column: 27, scope: !3313)
!3364 = !DILocation(line: 137, column: 10, scope: !3360, inlinedAt: !3363)
!3365 = !{!823, !715, i64 0}
!3366 = !DILocation(line: 59, column: 43, scope: !3313)
!3367 = !DILocation(line: 60, column: 29, scope: !3313)
!3368 = !DILocation(line: 60, column: 45, scope: !3313)
!3369 = !DILocation(line: 70, column: 17, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3313, file: !3314, line: 70, column: 7)
!3371 = !DILocation(line: 58, column: 50, scope: !3313)
!3372 = !DILocation(line: 70, column: 33, scope: !3370)
!3373 = !DILocation(line: 70, column: 53, scope: !3370)
!3374 = !DILocation(line: 70, column: 59, scope: !3370)
!3375 = !DILocation(line: 70, column: 7, scope: !3313)
!3376 = !DILocation(line: 72, column: 11, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3370, file: !3314, line: 71, column: 5)
!3378 = !DILocation(line: 73, column: 9, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3377, file: !3314, line: 72, column: 11)
!3380 = !DILocation(line: 73, column: 15, scope: !3379)
!3381 = !DILocation(line: 0, scope: !3313)
!3382 = !DILocation(line: 78, column: 1, scope: !3313)
!3383 = distinct !DISubprogram(name: "hard_locale", scope: !3384, file: !3384, line: 38, type: !3385, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !3387)
!3384 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!39, !20}
!3387 = !{!3388, !3389, !3390}
!3388 = !DILocalVariable(name: "category", arg: 1, scope: !3383, file: !3384, line: 38, type: !20)
!3389 = !DILocalVariable(name: "hard", scope: !3383, file: !3384, line: 40, type: !39)
!3390 = !DILocalVariable(name: "p", scope: !3383, file: !3384, line: 41, type: !17)
!3391 = !DILocation(line: 38, column: 18, scope: !3383)
!3392 = !DILocation(line: 40, column: 8, scope: !3383)
!3393 = !DILocation(line: 41, column: 19, scope: !3383)
!3394 = !DILocation(line: 41, column: 15, scope: !3383)
!3395 = !DILocation(line: 43, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3383, file: !3384, line: 43, column: 7)
!3397 = !DILocation(line: 43, column: 7, scope: !3383)
!3398 = !DILocation(line: 47, column: 15, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3384, line: 47, column: 15)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3384, line: 46, column: 9)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3384, line: 45, column: 11)
!3402 = distinct !DILexicalBlock(scope: !3396, file: !3384, line: 44, column: 5)
!3403 = !DILocation(line: 47, column: 31, scope: !3399)
!3404 = !DILocation(line: 47, column: 36, scope: !3399)
!3405 = !DILocation(line: 47, column: 39, scope: !3399)
!3406 = !DILocation(line: 47, column: 59, scope: !3399)
!3407 = !DILocation(line: 47, column: 15, scope: !3400)
!3408 = !DILocation(line: 48, column: 13, scope: !3399)
!3409 = !DILocation(line: 71, column: 3, scope: !3383)
!3410 = distinct !DISubprogram(name: "locale_charset", scope: !3411, file: !3411, line: 687, type: !3412, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3414)
!3411 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!17}
!3414 = !{!3415}
!3415 = !DILocalVariable(name: "codeset", scope: !3410, file: !3411, line: 689, type: !17)
!3416 = !DILocation(line: 696, column: 13, scope: !3410)
!3417 = !DILocation(line: 689, column: 15, scope: !3410)
!3418 = !DILocation(line: 754, column: 15, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3410, file: !3411, line: 754, column: 7)
!3420 = !DILocation(line: 754, column: 7, scope: !3410)
!3421 = !DILocation(line: 907, column: 13, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !3411, line: 907, column: 13)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !3411, line: 897, column: 7)
!3424 = distinct !DILexicalBlock(scope: !3410, file: !3411, line: 856, column: 3)
!3425 = !DILocation(line: 907, column: 24, scope: !3422)
!3426 = !DILocation(line: 907, column: 13, scope: !3423)
!3427 = !DILocation(line: 995, column: 3, scope: !3410)
!3428 = distinct !DISubprogram(name: "rpl_fclose", scope: !3429, file: !3429, line: 58, type: !3430, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !584, retainedNodes: !3466)
!3429 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!20, !3432}
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2763, line: 7, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2765, line: 49, size: 1728, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3434, file: !2765, line: 51, baseType: !20, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3434, file: !2765, line: 54, baseType: !6, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3434, file: !2765, line: 55, baseType: !6, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3434, file: !2765, line: 56, baseType: !6, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3434, file: !2765, line: 57, baseType: !6, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3434, file: !2765, line: 58, baseType: !6, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3434, file: !2765, line: 59, baseType: !6, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3434, file: !2765, line: 60, baseType: !6, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3434, file: !2765, line: 61, baseType: !6, size: 64, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3434, file: !2765, line: 64, baseType: !6, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3434, file: !2765, line: 65, baseType: !6, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3434, file: !2765, line: 66, baseType: !6, size: 64, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3434, file: !2765, line: 68, baseType: !2780, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3434, file: !2765, line: 70, baseType: !3450, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3434, file: !2765, line: 72, baseType: !20, size: 32, offset: 896)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3434, file: !2765, line: 73, baseType: !20, size: 32, offset: 928)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3434, file: !2765, line: 74, baseType: !2787, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3434, file: !2765, line: 77, baseType: !95, size: 16, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3434, file: !2765, line: 78, baseType: !2792, size: 8, offset: 1040)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3434, file: !2765, line: 79, baseType: !2794, size: 8, offset: 1048)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3434, file: !2765, line: 81, baseType: !2798, size: 64, offset: 1088)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3434, file: !2765, line: 89, baseType: !2801, size: 64, offset: 1152)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3434, file: !2765, line: 91, baseType: !2803, size: 64, offset: 1216)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3434, file: !2765, line: 92, baseType: !2806, size: 64, offset: 1280)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3434, file: !2765, line: 93, baseType: !3450, size: 64, offset: 1344)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3434, file: !2765, line: 94, baseType: !8, size: 64, offset: 1408)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3434, file: !2765, line: 95, baseType: !96, size: 64, offset: 1472)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3434, file: !2765, line: 96, baseType: !20, size: 32, offset: 1536)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3434, file: !2765, line: 98, baseType: !2813, size: 160, offset: 1568)
!3466 = !{!3467, !3468, !3469, !3470}
!3467 = !DILocalVariable(name: "fp", arg: 1, scope: !3428, file: !3429, line: 58, type: !3432)
!3468 = !DILocalVariable(name: "saved_errno", scope: !3428, file: !3429, line: 60, type: !20)
!3469 = !DILocalVariable(name: "fd", scope: !3428, file: !3429, line: 61, type: !20)
!3470 = !DILocalVariable(name: "result", scope: !3428, file: !3429, line: 62, type: !20)
!3471 = !DILocation(line: 58, column: 19, scope: !3428)
!3472 = !DILocation(line: 60, column: 7, scope: !3428)
!3473 = !DILocation(line: 62, column: 7, scope: !3428)
!3474 = !DILocation(line: 65, column: 8, scope: !3428)
!3475 = !DILocation(line: 61, column: 7, scope: !3428)
!3476 = !DILocation(line: 66, column: 10, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3428, file: !3429, line: 66, column: 7)
!3478 = !DILocation(line: 66, column: 7, scope: !3428)
!3479 = !DILocation(line: 67, column: 12, scope: !3477)
!3480 = !DILocation(line: 67, column: 5, scope: !3477)
!3481 = !DILocation(line: 72, column: 9, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3428, file: !3429, line: 72, column: 7)
!3483 = !DILocation(line: 72, column: 23, scope: !3482)
!3484 = !DILocation(line: 72, column: 33, scope: !3482)
!3485 = !DILocation(line: 72, column: 26, scope: !3482)
!3486 = !DILocation(line: 72, column: 59, scope: !3482)
!3487 = !DILocation(line: 73, column: 7, scope: !3482)
!3488 = !DILocation(line: 73, column: 10, scope: !3482)
!3489 = !DILocation(line: 72, column: 7, scope: !3428)
!3490 = !DILocation(line: 100, column: 12, scope: !3428)
!3491 = !DILocation(line: 105, column: 7, scope: !3428)
!3492 = !DILocation(line: 74, column: 19, scope: !3482)
!3493 = !DILocation(line: 105, column: 19, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3428, file: !3429, line: 105, column: 7)
!3495 = !DILocation(line: 107, column: 13, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3494, file: !3429, line: 106, column: 5)
!3497 = !DILocation(line: 109, column: 5, scope: !3496)
!3498 = !DILocation(line: 0, scope: !3428)
!3499 = !DILocation(line: 112, column: 1, scope: !3428)
!3500 = distinct !DISubprogram(name: "rpl_fflush", scope: !3501, file: !3501, line: 129, type: !3502, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !586, retainedNodes: !3538)
!3501 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!20, !3504}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2763, line: 7, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2765, line: 49, size: 1728, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3506, file: !2765, line: 51, baseType: !20, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3506, file: !2765, line: 54, baseType: !6, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3506, file: !2765, line: 55, baseType: !6, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3506, file: !2765, line: 56, baseType: !6, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3506, file: !2765, line: 57, baseType: !6, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3506, file: !2765, line: 58, baseType: !6, size: 64, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3506, file: !2765, line: 59, baseType: !6, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3506, file: !2765, line: 60, baseType: !6, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3506, file: !2765, line: 61, baseType: !6, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3506, file: !2765, line: 64, baseType: !6, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3506, file: !2765, line: 65, baseType: !6, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3506, file: !2765, line: 66, baseType: !6, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3506, file: !2765, line: 68, baseType: !2780, size: 64, offset: 768)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3506, file: !2765, line: 70, baseType: !3522, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3506, file: !2765, line: 72, baseType: !20, size: 32, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3506, file: !2765, line: 73, baseType: !20, size: 32, offset: 928)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3506, file: !2765, line: 74, baseType: !2787, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3506, file: !2765, line: 77, baseType: !95, size: 16, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3506, file: !2765, line: 78, baseType: !2792, size: 8, offset: 1040)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3506, file: !2765, line: 79, baseType: !2794, size: 8, offset: 1048)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3506, file: !2765, line: 81, baseType: !2798, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3506, file: !2765, line: 89, baseType: !2801, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3506, file: !2765, line: 91, baseType: !2803, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3506, file: !2765, line: 92, baseType: !2806, size: 64, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3506, file: !2765, line: 93, baseType: !3522, size: 64, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3506, file: !2765, line: 94, baseType: !8, size: 64, offset: 1408)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3506, file: !2765, line: 95, baseType: !96, size: 64, offset: 1472)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3506, file: !2765, line: 96, baseType: !20, size: 32, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3506, file: !2765, line: 98, baseType: !2813, size: 160, offset: 1568)
!3538 = !{!3539}
!3539 = !DILocalVariable(name: "stream", arg: 1, scope: !3500, file: !3501, line: 129, type: !3504)
!3540 = !DILocation(line: 129, column: 19, scope: !3500)
!3541 = !DILocation(line: 150, column: 14, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3500, file: !3501, line: 150, column: 7)
!3543 = !DILocation(line: 150, column: 22, scope: !3542)
!3544 = !DILocation(line: 150, column: 27, scope: !3542)
!3545 = !DILocation(line: 150, column: 7, scope: !3500)
!3546 = !DILocation(line: 151, column: 12, scope: !3542)
!3547 = !DILocation(line: 151, column: 5, scope: !3542)
!3548 = !DILocalVariable(name: "fp", arg: 1, scope: !3549, file: !3501, line: 41, type: !3504)
!3549 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3501, file: !3501, line: 41, type: !3550, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !586, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3504}
!3552 = !{!3548}
!3553 = !DILocation(line: 41, column: 48, scope: !3549, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 156, column: 3, scope: !3500)
!3555 = !DILocation(line: 43, column: 11, scope: !3556, inlinedAt: !3554)
!3556 = distinct !DILexicalBlock(scope: !3549, file: !3501, line: 43, column: 7)
!3557 = !DILocation(line: 43, column: 18, scope: !3556, inlinedAt: !3554)
!3558 = !DILocation(line: 43, column: 7, scope: !3549, inlinedAt: !3554)
!3559 = !DILocation(line: 45, column: 5, scope: !3556, inlinedAt: !3554)
!3560 = !DILocation(line: 158, column: 10, scope: !3500)
!3561 = !DILocation(line: 158, column: 3, scope: !3500)
!3562 = !DILocation(line: 0, scope: !3500)
!3563 = !DILocation(line: 232, column: 1, scope: !3500)
!3564 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3565, file: !3565, line: 28, type: !3566, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !588, retainedNodes: !3603)
!3565 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!20, !3568, !3602, !20}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2763, line: 7, baseType: !3570)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2765, line: 49, size: 1728, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3570, file: !2765, line: 51, baseType: !20, size: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3570, file: !2765, line: 54, baseType: !6, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3570, file: !2765, line: 55, baseType: !6, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3570, file: !2765, line: 56, baseType: !6, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3570, file: !2765, line: 57, baseType: !6, size: 64, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3570, file: !2765, line: 58, baseType: !6, size: 64, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3570, file: !2765, line: 59, baseType: !6, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3570, file: !2765, line: 60, baseType: !6, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3570, file: !2765, line: 61, baseType: !6, size: 64, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3570, file: !2765, line: 64, baseType: !6, size: 64, offset: 576)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3570, file: !2765, line: 65, baseType: !6, size: 64, offset: 640)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3570, file: !2765, line: 66, baseType: !6, size: 64, offset: 704)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3570, file: !2765, line: 68, baseType: !2780, size: 64, offset: 768)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3570, file: !2765, line: 70, baseType: !3586, size: 64, offset: 832)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3570, file: !2765, line: 72, baseType: !20, size: 32, offset: 896)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3570, file: !2765, line: 73, baseType: !20, size: 32, offset: 928)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3570, file: !2765, line: 74, baseType: !2787, size: 64, offset: 960)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3570, file: !2765, line: 77, baseType: !95, size: 16, offset: 1024)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3570, file: !2765, line: 78, baseType: !2792, size: 8, offset: 1040)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3570, file: !2765, line: 79, baseType: !2794, size: 8, offset: 1048)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3570, file: !2765, line: 81, baseType: !2798, size: 64, offset: 1088)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3570, file: !2765, line: 89, baseType: !2801, size: 64, offset: 1152)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3570, file: !2765, line: 91, baseType: !2803, size: 64, offset: 1216)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3570, file: !2765, line: 92, baseType: !2806, size: 64, offset: 1280)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3570, file: !2765, line: 93, baseType: !3586, size: 64, offset: 1344)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3570, file: !2765, line: 94, baseType: !8, size: 64, offset: 1408)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3570, file: !2765, line: 95, baseType: !96, size: 64, offset: 1472)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3570, file: !2765, line: 96, baseType: !20, size: 32, offset: 1536)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3570, file: !2765, line: 98, baseType: !2813, size: 160, offset: 1568)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2935, line: 63, baseType: !2787)
!3603 = !{!3604, !3605, !3606, !3607}
!3604 = !DILocalVariable(name: "fp", arg: 1, scope: !3564, file: !3565, line: 28, type: !3568)
!3605 = !DILocalVariable(name: "offset", arg: 2, scope: !3564, file: !3565, line: 28, type: !3602)
!3606 = !DILocalVariable(name: "whence", arg: 3, scope: !3564, file: !3565, line: 28, type: !20)
!3607 = !DILocalVariable(name: "pos", scope: !3608, file: !3565, line: 117, type: !3602)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3565, line: 113, column: 5)
!3609 = distinct !DILexicalBlock(scope: !3564, file: !3565, line: 52, column: 7)
!3610 = !DILocation(line: 28, column: 15, scope: !3564)
!3611 = !DILocation(line: 28, column: 25, scope: !3564)
!3612 = !DILocation(line: 28, column: 37, scope: !3564)
!3613 = !DILocation(line: 52, column: 11, scope: !3609)
!3614 = !{!823, !630, i64 16}
!3615 = !DILocation(line: 52, column: 31, scope: !3609)
!3616 = !{!823, !630, i64 8}
!3617 = !DILocation(line: 52, column: 24, scope: !3609)
!3618 = !DILocation(line: 53, column: 7, scope: !3609)
!3619 = !DILocation(line: 53, column: 14, scope: !3609)
!3620 = !DILocation(line: 53, column: 35, scope: !3609)
!3621 = !{!823, !630, i64 32}
!3622 = !DILocation(line: 53, column: 28, scope: !3609)
!3623 = !DILocation(line: 54, column: 7, scope: !3609)
!3624 = !DILocation(line: 54, column: 14, scope: !3609)
!3625 = !{!823, !630, i64 72}
!3626 = !DILocation(line: 54, column: 28, scope: !3609)
!3627 = !DILocation(line: 52, column: 7, scope: !3564)
!3628 = !DILocation(line: 117, column: 26, scope: !3608)
!3629 = !DILocation(line: 117, column: 19, scope: !3608)
!3630 = !DILocation(line: 117, column: 13, scope: !3608)
!3631 = !DILocation(line: 118, column: 15, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3608, file: !3565, line: 118, column: 11)
!3633 = !DILocation(line: 118, column: 11, scope: !3608)
!3634 = !DILocation(line: 129, column: 11, scope: !3608)
!3635 = !DILocation(line: 129, column: 18, scope: !3608)
!3636 = !DILocation(line: 130, column: 11, scope: !3608)
!3637 = !DILocation(line: 130, column: 19, scope: !3608)
!3638 = !{!823, !824, i64 144}
!3639 = !DILocation(line: 161, column: 7, scope: !3608)
!3640 = !DILocation(line: 163, column: 10, scope: !3564)
!3641 = !DILocation(line: 163, column: 3, scope: !3564)
!3642 = !DILocation(line: 0, scope: !3564)
!3643 = !DILocation(line: 164, column: 1, scope: !3564)
