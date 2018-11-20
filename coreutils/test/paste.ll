; ModuleID = 'coreutils-8.30/src/paste.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [119 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [144 x i8] c"  -d, --delimiters=LIST   reuse characters from LIST instead of TABs\0A  -s, --serial            paste one file at a time instead of in parallel\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !66
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !45
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"\5C0\00", align 1
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !67
@.str.15 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@delims = internal unnamed_addr global i8* null, align 8, !dbg !43
@delim_end = internal unnamed_addr global i8* null, align 8, !dbg !64
@.str.18 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), align 8, !dbg !68
@.str.45 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !74
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !79
@.str.48 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.49 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.50 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !82
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !89
@.str.59 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !96
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !124
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !131
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !143
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !150
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !157
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !145
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !159
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.86 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.99 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.104 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !165
@.str.1.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.138 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !614 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !619, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32 %0, metadata !618, metadata !DIExpression()), !dbg !642
  %3 = icmp eq i32 %0, 0, !dbg !643
  br i1 %3, label %9, label %4, !dbg !644

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !645, !tbaa !647
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !645
  %7 = load i8*, i8** @program_name, align 8, !dbg !645, !tbaa !647
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !645
  br label %69, !dbg !645

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !651
  %11 = load i8*, i8** @program_name, align 8, !dbg !651, !tbaa !647
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !651
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !652
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !647
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !652
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !653
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !647
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !653
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !658
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !658, !tbaa !647
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #10, !dbg !658
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !661
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !647
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !661
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !662
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !647
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !662
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !663
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !647
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !663
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !664
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !647
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !664
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !665
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #10, !dbg !665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %34, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !638
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !666
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !627, metadata !DIExpression()) #10, !dbg !667
  br label %36, !dbg !668

; <label>:36:                                     ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !627, metadata !DIExpression()) #10, !dbg !667
  %39 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %37) #14, !dbg !668
  %40 = icmp eq i32 %39, 0, !dbg !668
  br i1 %40, label %46, label %41, !dbg !669

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !670
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !627, metadata !DIExpression()) #10, !dbg !667
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !671
  %44 = load i8*, i8** %43, align 8, !dbg !671, !tbaa !672
  %45 = icmp eq i8* %44, null, !dbg !674
  br i1 %45, label %46, label %36, !dbg !675, !llvm.loop !676

; <label>:46:                                     ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !627, metadata !DIExpression()) #10, !dbg !667
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !627, metadata !DIExpression()) #10, !dbg !667
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !679
  %49 = load i8*, i8** %48, align 8, !dbg !679, !tbaa !681
  %50 = icmp eq i8* %49, null, !dbg !682
  %51 = select i1 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %49, !dbg !683
  call void @llvm.dbg.value(metadata i8* %51, metadata !626, metadata !DIExpression()) #10, !dbg !684
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !685
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !685
  %54 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !686
  call void @llvm.dbg.value(metadata i8* %54, metadata !634, metadata !DIExpression()) #10, !dbg !687
  %55 = icmp eq i8* %54, null, !dbg !688
  br i1 %55, label %62, label %56, !dbg !690

; <label>:56:                                     ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !691
  %58 = icmp eq i32 %57, 0, !dbg !691
  br i1 %58, label %62, label %59, !dbg !692

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !693
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !693
  br label %62, !dbg !695

; <label>:62:                                     ; preds = %46, %56, %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !696
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !696
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !697
  %66 = icmp eq i8* %51, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !697
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !697
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %51, i8* %67) #10, !dbg !697
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #10, !dbg !698
  br label %69

; <label>:69:                                     ; preds = %62, %4
  tail call void @exit(i32 %0) #15, !dbg !699
  unreachable, !dbg !699
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !705, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i8** %1, metadata !706, metadata !DIExpression()), !dbg !712
  %3 = load i8*, i8** %1, align 8, !dbg !713, !tbaa !647
  tail call void @set_program_name(i8* %3) #10, !dbg !714
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !715
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !716
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !717
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !718
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @serial_merge, align 1
  br label %8, !dbg !719

; <label>:8:                                      ; preds = %12, %2
  %9 = phi i8* [ %16, %12 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %2 ]
  br label %10, !dbg !720

; <label>:10:                                     ; preds = %19, %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !708, metadata !DIExpression()), !dbg !721
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !720
  call void @llvm.dbg.value(metadata i32 %11, metadata !707, metadata !DIExpression()), !dbg !722
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 100, label %12
    i32 115, label %17
    i32 122, label %18
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !719

; <label>:12:                                     ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !723, !tbaa !647
  %14 = load i8, i8* %13, align 1, !dbg !723, !tbaa !726
  %15 = icmp eq i8 %14, 0, !dbg !727
  %16 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %13, !dbg !723
  call void @llvm.dbg.value(metadata i8* %16, metadata !708, metadata !DIExpression()), !dbg !721
  br label %8, !dbg !728, !llvm.loop !729

; <label>:17:                                     ; preds = %10
  store i1 true, i1* @serial_merge, align 1
  br label %19, !dbg !731

; <label>:18:                                     ; preds = %10
  store i1 true, i1* @line_delim, align 1
  br label %19, !dbg !732

; <label>:19:                                     ; preds = %18, %17
  br label %10, !dbg !721, !llvm.loop !729

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 0) #16, !dbg !733
  unreachable, !dbg !733

; <label>:21:                                     ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !647
  %23 = load i8*, i8** @Version, align 8, !dbg !734, !tbaa !647
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #10, !dbg !734
  tail call void @exit(i32 0) #15, !dbg !734
  unreachable, !dbg !734

; <label>:24:                                     ; preds = %10
  tail call void @usage(i32 1) #16, !dbg !735
  unreachable, !dbg !735

; <label>:25:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i8* %9, metadata !708, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8* %9, metadata !708, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8* %9, metadata !708, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8* %9, metadata !708, metadata !DIExpression()), !dbg !721
  %26 = load i32, i32* @optind, align 4, !dbg !736, !tbaa !737
  %27 = sub nsw i32 %0, %26, !dbg !739
  call void @llvm.dbg.value(metadata i32 %27, metadata !709, metadata !DIExpression()), !dbg !740
  %28 = icmp eq i32 %27, 0, !dbg !741
  br i1 %28, label %29, label %32, !dbg !743

; <label>:29:                                     ; preds = %25
  %30 = sext i32 %26 to i64, !dbg !744
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !744
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %31, align 8, !dbg !746, !tbaa !647
  call void @llvm.dbg.value(metadata i32 %27, metadata !709, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !740
  br label %32, !dbg !747

; <label>:32:                                     ; preds = %29, %25
  %33 = phi i32 [ 1, %29 ], [ %27, %25 ], !dbg !748
  call void @llvm.dbg.value(metadata i32 %33, metadata !709, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8* %9, metadata !749, metadata !DIExpression()) #10, !dbg !756
  %34 = tail call noalias i8* @xstrdup(i8* %9) #10, !dbg !759
  call void @llvm.dbg.value(metadata i8* %34, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8 0, metadata !755, metadata !DIExpression()) #10, !dbg !761
  store i8* %34, i8** @delims, align 8, !dbg !762, !tbaa !647
  call void @llvm.dbg.value(metadata i8* %34, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %9, metadata !749, metadata !DIExpression()) #10, !dbg !756
  %35 = load i8, i8* %9, align 1, !dbg !763, !tbaa !726
  %36 = icmp eq i8 %35, 0, !dbg !764
  br i1 %36, label %66, label %37, !dbg !764

; <label>:37:                                     ; preds = %32, %58
  %38 = phi i8 [ %61, %58 ], [ %35, %32 ]
  %39 = phi i8* [ %60, %58 ], [ %34, %32 ]
  %40 = phi i8* [ %59, %58 ], [ %9, %32 ]
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %40, metadata !749, metadata !DIExpression()) #10, !dbg !756
  %41 = icmp eq i8 %38, 92, !dbg !765
  %42 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !768
  call void @llvm.dbg.value(metadata i8* %42, metadata !749, metadata !DIExpression()) #10, !dbg !756
  br i1 %41, label %44, label %43, !dbg !770

; <label>:43:                                     ; preds = %37
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  store i8 %38, i8* %39, align 1, !dbg !771, !tbaa !726
  br label %58, !dbg !772

; <label>:44:                                     ; preds = %37
  %45 = load i8, i8* %42, align 1, !dbg !773, !tbaa !726
  %46 = sext i8 %45 to i32, !dbg !773
  switch i32 %46, label %54 [
    i32 48, label %55
    i32 98, label %47
    i32 102, label %48
    i32 110, label %49
    i32 114, label %50
    i32 116, label %51
    i32 118, label %52
    i32 92, label %53
    i32 0, label %63
  ], !dbg !774

; <label>:47:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  br label %55, !dbg !775

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  br label %55, !dbg !777

; <label>:49:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  br label %55, !dbg !778

; <label>:50:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  br label %55, !dbg !779

; <label>:51:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  br label %55, !dbg !780

; <label>:52:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  br label %55, !dbg !781

; <label>:53:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  br label %55, !dbg !782

; <label>:54:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  br label %55, !dbg !783

; <label>:55:                                     ; preds = %44, %54, %53, %52, %51, %50, %49, %48, %47
  %56 = phi i8 [ %45, %54 ], [ 92, %53 ], [ 11, %52 ], [ 9, %51 ], [ 13, %50 ], [ 10, %49 ], [ 12, %48 ], [ 8, %47 ], [ 0, %44 ]
  store i8 %56, i8* %39, align 1, !dbg !784, !tbaa !726
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !760
  %57 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !785
  call void @llvm.dbg.value(metadata i8* %57, metadata !749, metadata !DIExpression()) #10, !dbg !756
  br label %58

; <label>:58:                                     ; preds = %55, %43
  %59 = phi i8* [ %42, %43 ], [ %57, %55 ], !dbg !768
  %60 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !786
  call void @llvm.dbg.value(metadata i8* %60, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %59, metadata !749, metadata !DIExpression()) #10, !dbg !756
  %61 = load i8, i8* %59, align 1, !dbg !763, !tbaa !726
  %62 = icmp eq i8 %61, 0, !dbg !764
  br i1 %62, label %66, label %37, !dbg !764, !llvm.loop !787

; <label>:63:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  store i8* %39, i8** @delim_end, align 8, !dbg !790, !tbaa !647
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !791
  %65 = tail call i8* @quotearg_n_style_colon(i32 0, i32 6, i8* %9) #10, !dbg !791
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %64, i8* %65) #10, !dbg !791
  unreachable, !dbg !791

; <label>:66:                                     ; preds = %58, %32
  %67 = phi i8* [ %34, %32 ], [ %60, %58 ]
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  call void @llvm.dbg.value(metadata i8* %39, metadata !754, metadata !DIExpression()) #10, !dbg !760
  store i8* %67, i8** @delim_end, align 8, !dbg !790, !tbaa !647
  %68 = load i1, i1* @serial_merge, align 1
  %69 = select i1 %68, i1 (i64, i8**)* @paste_serial, i1 (i64, i8**)* @paste_parallel, !dbg !793
  %70 = sext i32 %33 to i64, !dbg !794
  %71 = load i32, i32* @optind, align 4, !dbg !795, !tbaa !737
  %72 = sext i32 %71 to i64, !dbg !796
  %73 = getelementptr inbounds i8*, i8** %1, i64 %72, !dbg !796
  %74 = tail call zeroext i1 %69(i64 %70, i8** %73) #10, !dbg !797, !callees !798
  %75 = load i8*, i8** @delims, align 8, !dbg !799, !tbaa !647
  tail call void @free(i8* %75) #10, !dbg !800
  %76 = load i1, i1* @have_read_stdin, align 1
  br i1 %76, label %77, label %84, !dbg !801

; <label>:77:                                     ; preds = %66
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !803, !tbaa !647
  %79 = tail call i32 @rpl_fclose(%struct._IO_FILE* %78) #10, !dbg !804
  %80 = icmp eq i32 %79, -1, !dbg !805
  br i1 %80, label %81, label %84, !dbg !806

; <label>:81:                                     ; preds = %77
  %82 = tail call i32* @__errno_location() #17, !dbg !807
  %83 = load i32, i32* %82, align 4, !dbg !807, !tbaa !737
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !807
  unreachable, !dbg !807

; <label>:84:                                     ; preds = %77, %66
  %85 = xor i1 %74, true, !dbg !808
  %86 = zext i1 %85 to i32, !dbg !808
  ret i32 %86, !dbg !809
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
define internal zeroext i1 @paste_serial(i64, i8** nocapture readonly) unnamed_addr #7 !dbg !810 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !814, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata i8** %1, metadata !815, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8 1, metadata !816, metadata !DIExpression()), !dbg !883
  %3 = icmp eq i64 %0, 0, !dbg !884
  br i1 %3, label %169, label %4, !dbg !884

; <label>:4:                                      ; preds = %2, %164
  %5 = phi i64 [ %166, %164 ], [ %0, %2 ]
  %6 = phi i8** [ %167, %164 ], [ %1, %2 ]
  %7 = phi i8 [ %165, %164 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !814, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata i8** %6, metadata !815, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8 %7, metadata !816, metadata !DIExpression()), !dbg !883
  %8 = load i8*, i8** %6, align 8, !dbg !885, !tbaa !647
  %9 = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #14, !dbg !885
  %10 = icmp eq i32 %9, 0, !dbg !885
  br i1 %10, label %11, label %13, !dbg !886

; <label>:11:                                     ; preds = %4
  store i1 true, i1* @have_read_stdin, align 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !887, !tbaa !647
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !820, metadata !DIExpression()), !dbg !890
  br label %22, !dbg !891

; <label>:13:                                     ; preds = %4
  %14 = tail call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !892
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !820, metadata !DIExpression()), !dbg !890
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !894
  br i1 %15, label %16, label %21, !dbg !896

; <label>:16:                                     ; preds = %13
  %17 = tail call i32* @__errno_location() #17, !dbg !897
  %18 = load i32, i32* %17, align 4, !dbg !897, !tbaa !737
  %19 = load i8*, i8** %6, align 8, !dbg !899, !tbaa !647
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %19) #10, !dbg !899
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %20) #10, !dbg !900
  call void @llvm.dbg.value(metadata i8 0, metadata !816, metadata !DIExpression()), !dbg !883
  br label %164, !dbg !901

; <label>:21:                                     ; preds = %13
  tail call void @fadvise(%struct._IO_FILE* nonnull %14, i32 2) #10, !dbg !902
  br label %22

; <label>:22:                                     ; preds = %21, %11
  %23 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %21 ], !dbg !903
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !820, metadata !DIExpression()), !dbg !890
  %24 = load i8*, i8** @delims, align 8, !dbg !904, !tbaa !647
  call void @llvm.dbg.value(metadata i8* %24, metadata !819, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !906, metadata !DIExpression()) #10, !dbg !912
  %25 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 1, !dbg !914
  %26 = load i8*, i8** %25, align 8, !dbg !914, !tbaa !915
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 2, !dbg !914
  %28 = load i8*, i8** %27, align 8, !dbg !914, !tbaa !919
  %29 = icmp ult i8* %26, %28, !dbg !914
  br i1 %29, label %30, label %35, !dbg !914, !prof !920

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !914
  store i8* %31, i8** %25, align 8, !dbg !914, !tbaa !915
  %32 = load i8, i8* %26, align 1, !dbg !914, !tbaa !726
  %33 = zext i8 %32 to i32, !dbg !914
  call void @llvm.dbg.value(metadata i32 %36, metadata !818, metadata !DIExpression()), !dbg !921
  %34 = tail call i32* @__errno_location() #17, !dbg !922
  call void @llvm.dbg.value(metadata i32 %40, metadata !876, metadata !DIExpression()), !dbg !923
  br label %44, !dbg !924

; <label>:35:                                     ; preds = %22
  %36 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %23) #10, !dbg !914
  call void @llvm.dbg.value(metadata i32 %36, metadata !818, metadata !DIExpression()), !dbg !921
  %37 = tail call i32* @__errno_location() #17, !dbg !922
  %38 = icmp eq i32 %36, -1, !dbg !925
  br i1 %38, label %39, label %44, !dbg !924

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %37, align 4, !dbg !922, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %40, metadata !876, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %107, metadata !876, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  %41 = load i1, i1* @line_delim, align 1
  %42 = select i1 %41, i8 0, i8 10
  %43 = zext i8 %42 to i32, !dbg !927
  br label %127, !dbg !929

; <label>:44:                                     ; preds = %30, %35
  %45 = phi i32* [ %34, %30 ], [ %37, %35 ]
  %46 = phi i32 [ %33, %30 ], [ %36, %35 ]
  br label %47, !dbg !930

; <label>:47:                                     ; preds = %84, %44
  %48 = phi i32 [ %63, %84 ], [ %46, %44 ]
  %49 = phi i8* [ %89, %84 ], [ %24, %44 ]
  br label %50, !dbg !930

; <label>:50:                                     ; preds = %104, %47
  %51 = phi i32 [ %48, %47 ], [ %63, %104 ], !dbg !933
  call void @llvm.dbg.value(metadata i8* %49, metadata !819, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !906, metadata !DIExpression()) #10, !dbg !935
  %52 = load i8*, i8** %25, align 8, !dbg !930, !tbaa !915
  %53 = load i8*, i8** %27, align 8, !dbg !930, !tbaa !919
  %54 = icmp ult i8* %52, %53, !dbg !930
  br i1 %54, label %55, label %59, !dbg !930, !prof !920

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !930
  store i8* %56, i8** %25, align 8, !dbg !930, !tbaa !915
  %57 = load i8, i8* %52, align 1, !dbg !930, !tbaa !726
  %58 = zext i8 %57 to i32, !dbg !930
  call void @llvm.dbg.value(metadata i32 %60, metadata !817, metadata !DIExpression()), !dbg !936
  br label %62, !dbg !937

; <label>:59:                                     ; preds = %50
  %60 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %23) #10, !dbg !930
  call void @llvm.dbg.value(metadata i32 %60, metadata !817, metadata !DIExpression()), !dbg !936
  %61 = icmp eq i32 %60, -1, !dbg !938
  br i1 %61, label %106, label %62, !dbg !937

; <label>:62:                                     ; preds = %55, %59
  %63 = phi i32 [ %58, %55 ], [ %60, %59 ]
  %64 = load i1, i1* @line_delim, align 1
  %65 = select i1 %64, i32 0, i32 10, !dbg !939
  %66 = icmp eq i32 %51, %65, !dbg !941
  br i1 %66, label %67, label %90, !dbg !942

; <label>:67:                                     ; preds = %62
  %68 = load i8, i8* %49, align 1, !dbg !943, !tbaa !726
  %69 = icmp eq i8 %68, 0, !dbg !946
  br i1 %69, label %84, label %70, !dbg !947

; <label>:70:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i8 %68, metadata !948, metadata !DIExpression()) #10, !dbg !953
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !955, !tbaa !647
  %72 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 5, !dbg !955
  %73 = load i8*, i8** %72, align 8, !dbg !955, !tbaa !963
  %74 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 6, !dbg !955
  %75 = load i8*, i8** %74, align 8, !dbg !955, !tbaa !964
  %76 = icmp ult i8* %73, %75, !dbg !955
  br i1 %76, label %77, label %79, !dbg !955, !prof !920

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !955
  store i8* %78, i8** %72, align 8, !dbg !955, !tbaa !963
  store i8 %68, i8* %73, align 1, !dbg !955, !tbaa !726
  br label %84, !dbg !965

; <label>:79:                                     ; preds = %70
  %80 = zext i8 %68 to i32, !dbg !966
  %81 = tail call i32 @__overflow(%struct._IO_FILE* %71, i32 %80) #10, !dbg !955
  %82 = icmp slt i32 %81, 0, !dbg !967
  br i1 %82, label %83, label %84, !dbg !965

; <label>:83:                                     ; preds = %79
  tail call fastcc void @write_error() #15, !dbg !968
  unreachable, !dbg !968

; <label>:84:                                     ; preds = %79, %77, %67
  %85 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !969
  call void @llvm.dbg.value(metadata i8* %85, metadata !819, metadata !DIExpression()), !dbg !905
  %86 = load i8*, i8** @delim_end, align 8, !dbg !971, !tbaa !647
  %87 = icmp eq i8* %85, %86, !dbg !972
  %88 = load i8*, i8** @delims, align 8, !dbg !973
  %89 = select i1 %87, i8* %88, i8* %85, !dbg !974
  br label %47, !dbg !974, !llvm.loop !975

; <label>:90:                                     ; preds = %62
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !977, !tbaa !647
  %92 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 5, !dbg !977
  %93 = load i8*, i8** %92, align 8, !dbg !977, !tbaa !963
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 6, !dbg !977
  %95 = load i8*, i8** %94, align 8, !dbg !977, !tbaa !964
  %96 = icmp ult i8* %93, %95, !dbg !977
  br i1 %96, label %97, label %100, !dbg !977, !prof !920

; <label>:97:                                     ; preds = %90
  %98 = trunc i32 %51 to i8, !dbg !980
  call void @llvm.dbg.value(metadata i8 %98, metadata !948, metadata !DIExpression()) #10, !dbg !981
  %99 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !977
  store i8* %99, i8** %92, align 8, !dbg !977, !tbaa !963
  store i8 %98, i8* %93, align 1, !dbg !977, !tbaa !726
  br label %104, !dbg !982

; <label>:100:                                    ; preds = %90
  %101 = and i32 %51, 255, !dbg !983
  %102 = tail call i32 @__overflow(%struct._IO_FILE* %91, i32 %101) #10, !dbg !977
  %103 = icmp slt i32 %102, 0, !dbg !984
  br i1 %103, label %105, label %104, !dbg !982

; <label>:104:                                    ; preds = %100, %97
  br label %50, !dbg !905, !llvm.loop !975

; <label>:105:                                    ; preds = %100
  tail call fastcc void @write_error() #15, !dbg !985
  unreachable, !dbg !985

; <label>:106:                                    ; preds = %59
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  %107 = load i32, i32* %45, align 4, !dbg !986, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %107, metadata !876, metadata !DIExpression()), !dbg !923
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !987, !tbaa !647
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 5, !dbg !987
  %110 = load i8*, i8** %109, align 8, !dbg !987, !tbaa !963
  %111 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 6, !dbg !987
  %112 = load i8*, i8** %111, align 8, !dbg !987, !tbaa !964
  %113 = icmp ult i8* %110, %112, !dbg !987
  br i1 %113, label %114, label %117, !dbg !987, !prof !920

; <label>:114:                                    ; preds = %106
  %115 = trunc i32 %51 to i8, !dbg !990
  call void @llvm.dbg.value(metadata i8 %115, metadata !948, metadata !DIExpression()) #10, !dbg !991
  %116 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !987
  store i8* %116, i8** %109, align 8, !dbg !987, !tbaa !963
  store i8 %115, i8* %110, align 1, !dbg !987, !tbaa !726
  br label %122, !dbg !992

; <label>:117:                                    ; preds = %106
  %118 = and i32 %51, 255, !dbg !993
  %119 = tail call i32 @__overflow(%struct._IO_FILE* %108, i32 %118) #10, !dbg !987
  %120 = icmp slt i32 %119, 0, !dbg !994
  br i1 %120, label %121, label %122, !dbg !992

; <label>:121:                                    ; preds = %117
  tail call fastcc void @write_error() #15, !dbg !995
  unreachable, !dbg !995

; <label>:122:                                    ; preds = %117, %114
  call void @llvm.dbg.value(metadata i32 %107, metadata !876, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %51, metadata !818, metadata !DIExpression()), !dbg !921
  %123 = load i1, i1* @line_delim, align 1
  %124 = select i1 %123, i8 0, i8 10
  %125 = zext i8 %124 to i32, !dbg !927
  %126 = icmp eq i32 %51, %125, !dbg !996
  br i1 %126, label %144, label %127, !dbg !929

; <label>:127:                                    ; preds = %39, %122
  %128 = phi i32 [ %43, %39 ], [ %125, %122 ]
  %129 = phi i8 [ %42, %39 ], [ %124, %122 ]
  %130 = phi i32 [ %40, %39 ], [ %107, %122 ]
  %131 = phi i32* [ %37, %39 ], [ %45, %122 ]
  call void @llvm.dbg.value(metadata i8 %124, metadata !948, metadata !DIExpression()) #10, !dbg !997
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !999, !tbaa !647
  %133 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %132, i64 0, i32 5, !dbg !999
  %134 = load i8*, i8** %133, align 8, !dbg !999, !tbaa !963
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %132, i64 0, i32 6, !dbg !999
  %136 = load i8*, i8** %135, align 8, !dbg !999, !tbaa !964
  %137 = icmp ult i8* %134, %136, !dbg !999
  br i1 %137, label %138, label %140, !dbg !999, !prof !920

; <label>:138:                                    ; preds = %127
  %139 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !999
  store i8* %139, i8** %133, align 8, !dbg !999, !tbaa !963
  store i8 %129, i8* %134, align 1, !dbg !999, !tbaa !726
  br label %144, !dbg !1001

; <label>:140:                                    ; preds = %127
  %141 = tail call i32 @__overflow(%struct._IO_FILE* %132, i32 %128) #10, !dbg !999
  %142 = icmp slt i32 %141, 0, !dbg !1002
  br i1 %142, label %143, label %144, !dbg !1001

; <label>:143:                                    ; preds = %140
  tail call fastcc void @write_error() #15, !dbg !1003
  unreachable, !dbg !1003

; <label>:144:                                    ; preds = %140, %138, %122
  %145 = phi i32 [ %130, %140 ], [ %130, %138 ], [ %107, %122 ]
  %146 = phi i32* [ %131, %140 ], [ %131, %138 ], [ %45, %122 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !1004, metadata !DIExpression()), !dbg !1007
  %147 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 0, !dbg !1010
  %148 = load i32, i32* %147, align 8, !dbg !1010, !tbaa !1011
  %149 = and i32 %148, 32, !dbg !1010
  %150 = icmp eq i32 %149, 0, !dbg !1012
  br i1 %150, label %154, label %151, !dbg !1013

; <label>:151:                                    ; preds = %144
  %152 = load i8*, i8** %6, align 8, !dbg !1014, !tbaa !647
  %153 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %152) #10, !dbg !1014
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %153) #10, !dbg !1016
  call void @llvm.dbg.value(metadata i8 0, metadata !816, metadata !DIExpression()), !dbg !883
  br label %154, !dbg !1017

; <label>:154:                                    ; preds = %144, %151
  %155 = phi i8 [ 0, %151 ], [ %7, %144 ], !dbg !1018
  call void @llvm.dbg.value(metadata i8 %155, metadata !816, metadata !DIExpression()), !dbg !883
  br i1 %10, label %156, label %157, !dbg !1019

; <label>:156:                                    ; preds = %154
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %23) #10, !dbg !1020
  br label %164, !dbg !1020

; <label>:157:                                    ; preds = %154
  %158 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %23) #10, !dbg !1022
  %159 = icmp eq i32 %158, -1, !dbg !1024
  br i1 %159, label %160, label %164, !dbg !1025

; <label>:160:                                    ; preds = %157
  %161 = load i32, i32* %146, align 4, !dbg !1026, !tbaa !737
  %162 = load i8*, i8** %6, align 8, !dbg !1028, !tbaa !647
  %163 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %162) #10, !dbg !1028
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %163) #10, !dbg !1029
  call void @llvm.dbg.value(metadata i8 0, metadata !816, metadata !DIExpression()), !dbg !883
  br label %164, !dbg !1030

; <label>:164:                                    ; preds = %156, %160, %157, %16
  %165 = phi i8 [ 0, %16 ], [ %155, %156 ], [ 0, %160 ], [ %155, %157 ], !dbg !1031
  %166 = add i64 %5, -1, !dbg !1032
  %167 = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %166, metadata !814, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata i8** %167, metadata !815, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8 %165, metadata !816, metadata !DIExpression()), !dbg !883
  %168 = icmp eq i64 %166, 0, !dbg !884
  br i1 %168, label %169, label %4, !dbg !884, !llvm.loop !1034

; <label>:169:                                    ; preds = %164, %2
  %170 = phi i8 [ 1, %2 ], [ %165, %164 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %170, metadata !816, metadata !DIExpression()), !dbg !883
  %171 = and i8 %170, 1, !dbg !1037
  %172 = icmp ne i8 %171, 0, !dbg !1037
  ret i1 %172, !dbg !1038
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_parallel(i64, i8** nocapture readonly) unnamed_addr #7 !dbg !1039 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1041, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8** %1, metadata !1042, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8 1, metadata !1043, metadata !DIExpression()), !dbg !1067
  %3 = add i64 %0, 2, !dbg !1068
  %4 = tail call noalias i8* @xmalloc(i64 %3) #10, !dbg !1069
  call void @llvm.dbg.value(metadata i8* %4, metadata !1044, metadata !DIExpression()), !dbg !1070
  %5 = add i64 %0, 1, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %5, metadata !1072, metadata !DIExpression()) #10, !dbg !1078
  call void @llvm.dbg.value(metadata i64 8, metadata !1077, metadata !DIExpression()) #10, !dbg !1080
  %6 = icmp ugt i64 %5, 1152921504606846975, !dbg !1081
  br i1 %6, label %7, label %8, !dbg !1083

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !1084
  unreachable, !dbg !1084

; <label>:8:                                      ; preds = %2
  %9 = shl i64 %5, 3, !dbg !1085
  %10 = tail call noalias i8* @xmalloc(i64 %9) #10, !dbg !1086
  %11 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !1087
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %11, metadata !1045, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 0, metadata !1047, metadata !DIExpression()), !dbg !1090
  %12 = icmp eq i64 %0, 0, !dbg !1091
  br i1 %12, label %279, label %13, !dbg !1094

; <label>:13:                                     ; preds = %8, %38
  %14 = phi i8 [ %39, %38 ], [ 0, %8 ]
  %15 = phi i64 [ %40, %38 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i8 %14, metadata !1048, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %15, metadata !1047, metadata !DIExpression()), !dbg !1090
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !1095
  %17 = load i8*, i8** %16, align 8, !dbg !1095, !tbaa !647
  %18 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #14, !dbg !1095
  %19 = icmp eq i32 %18, 0, !dbg !1095
  br i1 %19, label %20, label %24, !dbg !1098

; <label>:20:                                     ; preds = %13
  store i1 true, i1* @have_read_stdin, align 1
  %21 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8, !dbg !1099, !tbaa !647
  %22 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %15, !dbg !1101
  %23 = bitcast %struct._IO_FILE** %22 to i64*, !dbg !1102
  store i64 %21, i64* %23, align 8, !dbg !1102, !tbaa !647
  br label %38, !dbg !1103

; <label>:24:                                     ; preds = %13
  %25 = tail call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !1104
  %26 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %15, !dbg !1106
  store %struct._IO_FILE* %25, %struct._IO_FILE** %26, align 8, !dbg !1107, !tbaa !647
  %27 = icmp eq %struct._IO_FILE* %25, null, !dbg !1108
  br i1 %27, label %28, label %34, !dbg !1110

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i64 %15, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %15, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %15, metadata !1047, metadata !DIExpression()), !dbg !1090
  %29 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !1095
  call void @llvm.dbg.value(metadata i64 %15, metadata !1047, metadata !DIExpression()), !dbg !1090
  %30 = tail call i32* @__errno_location() #17, !dbg !1111
  %31 = load i32, i32* %30, align 4, !dbg !1111, !tbaa !737
  %32 = load i8*, i8** %29, align 8, !dbg !1111, !tbaa !647
  %33 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1111
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %33) #10, !dbg !1111
  unreachable, !dbg !1111

; <label>:34:                                     ; preds = %24
  %35 = tail call i32 @fileno(%struct._IO_FILE* nonnull %25) #10, !dbg !1112
  %36 = icmp eq i32 %35, 0, !dbg !1114
  %37 = select i1 %36, i8 1, i8 %14, !dbg !1115
  call void @llvm.dbg.value(metadata i8 %37, metadata !1048, metadata !DIExpression()), !dbg !1089
  tail call void @fadvise(%struct._IO_FILE* nonnull %25, i32 2) #10, !dbg !1116
  br label %38

; <label>:38:                                     ; preds = %20, %34
  %39 = phi i8 [ %14, %20 ], [ %37, %34 ], !dbg !1117
  %40 = add nuw i64 %15, 1, !dbg !1118
  call void @llvm.dbg.value(metadata i8 %39, metadata !1048, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %40, metadata !1047, metadata !DIExpression()), !dbg !1090
  %41 = icmp ult i64 %40, %0, !dbg !1091
  br i1 %41, label %13, label %42, !dbg !1094, !llvm.loop !1119

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i8 %39, metadata !1048, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 %39, metadata !1048, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 %39, metadata !1048, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 %39, metadata !1048, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %40, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %39, metadata !1048, metadata !DIExpression()), !dbg !1089
  %43 = and i8 %39, 1, !dbg !1121
  %44 = icmp eq i8 %43, 0, !dbg !1121
  br i1 %44, label %49, label %45, !dbg !1123

; <label>:45:                                     ; preds = %42
  %46 = load i1, i1* @have_read_stdin, align 1
  br i1 %46, label %47, label %49, !dbg !1124

; <label>:47:                                     ; preds = %45
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !1125
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48) #10, !dbg !1125
  unreachable, !dbg !1125

; <label>:49:                                     ; preds = %42, %45
  call void @llvm.dbg.value(metadata i8 1, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 undef, metadata !1058, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i32 undef, metadata !1055, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %40, metadata !1047, metadata !DIExpression()), !dbg !1090
  %50 = icmp ne i64 %0, 0
  br label %55, !dbg !1128

; <label>:51:                                     ; preds = %269, %163, %182, %184, %55
  %52 = phi i64 [ %57, %55 ], [ %159, %184 ], [ %159, %182 ], [ %159, %163 ], [ %271, %269 ], !dbg !1129
  %53 = phi i8 [ %56, %55 ], [ %160, %184 ], [ %160, %182 ], [ %160, %163 ], [ %275, %269 ], !dbg !1067
  call void @llvm.dbg.value(metadata i8 %53, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %52, metadata !1047, metadata !DIExpression()), !dbg !1090
  %54 = icmp eq i64 %52, 0, !dbg !1128
  br i1 %54, label %279, label %55, !dbg !1128

; <label>:55:                                     ; preds = %49, %51
  %56 = phi i8 [ 1, %49 ], [ %53, %51 ]
  %57 = phi i64 [ %40, %49 ], [ %52, %51 ]
  call void @llvm.dbg.value(metadata i8 %56, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %57, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 0, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 0, metadata !1052, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 0, metadata !1053, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %56, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 0, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %57, metadata !1047, metadata !DIExpression()), !dbg !1090
  %58 = icmp ne i64 %57, 0, !dbg !1133
  %59 = and i1 %58, %50, !dbg !1133
  br i1 %59, label %60, label %51, !dbg !1134, !llvm.loop !1135

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** @delims, align 8, !dbg !1137, !tbaa !647
  call void @llvm.dbg.value(metadata i8* %61, metadata !1051, metadata !DIExpression()), !dbg !1138
  br label %62, !dbg !1139

; <label>:62:                                     ; preds = %60, %269
  %63 = phi i8 [ %275, %269 ], [ %56, %60 ]
  %64 = phi i64 [ %270, %269 ], [ 0, %60 ]
  %65 = phi i64 [ %274, %269 ], [ 0, %60 ]
  %66 = phi i8* [ %273, %269 ], [ %61, %60 ]
  %67 = phi i8 [ %272, %269 ], [ 0, %60 ]
  %68 = phi i64 [ %271, %269 ], [ %57, %60 ]
  call void @llvm.dbg.value(metadata i8 %63, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %64, metadata !1053, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %65, metadata !1052, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %66, metadata !1051, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8 %67, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %68, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 0, metadata !1059, metadata !DIExpression()), !dbg !1141
  %69 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %64, !dbg !1139
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %69, align 8, !dbg !1139, !tbaa !647
  %71 = icmp eq %struct._IO_FILE* %70, null, !dbg !1139
  br i1 %71, label %158, label %72, !dbg !1142

; <label>:72:                                     ; preds = %62
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %70, metadata !906, metadata !DIExpression()) #10, !dbg !1143
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %70, i64 0, i32 1, !dbg !1146
  %74 = load i8*, i8** %73, align 8, !dbg !1146, !tbaa !915
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %70, i64 0, i32 2, !dbg !1146
  %76 = load i8*, i8** %75, align 8, !dbg !1146, !tbaa !919
  %77 = icmp ult i8* %74, %76, !dbg !1146
  br i1 %77, label %80, label %78, !dbg !1146, !prof !920

; <label>:78:                                     ; preds = %72
  %79 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %70) #10, !dbg !1146
  br label %84, !dbg !1146

; <label>:80:                                     ; preds = %72
  %81 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1146
  store i8* %81, i8** %73, align 8, !dbg !1146, !tbaa !915
  %82 = load i8, i8* %74, align 1, !dbg !1146, !tbaa !726
  %83 = zext i8 %82 to i32, !dbg !1146
  br label %84, !dbg !1146

; <label>:84:                                     ; preds = %78, %80
  %85 = phi i32 [ %79, %78 ], [ %83, %80 ], !dbg !1146
  call void @llvm.dbg.value(metadata i32 %85, metadata !1055, metadata !DIExpression()), !dbg !1127
  %86 = tail call i32* @__errno_location() #17, !dbg !1147
  %87 = load i32, i32* %86, align 4, !dbg !1147, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %87, metadata !1058, metadata !DIExpression()), !dbg !1126
  %88 = icmp ne i32 %85, -1, !dbg !1148
  %89 = icmp ne i64 %65, 0, !dbg !1150
  %90 = and i1 %89, %88, !dbg !1151
  br i1 %90, label %91, label %96, !dbg !1151

; <label>:91:                                     ; preds = %84
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1152, !tbaa !647
  %93 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %65, %struct._IO_FILE* %92), !dbg !1152
  %94 = icmp eq i64 %93, %65, !dbg !1155
  br i1 %94, label %98, label %95, !dbg !1156

; <label>:95:                                     ; preds = %91
  tail call fastcc void @write_error() #16, !dbg !1157
  unreachable, !dbg !1157

; <label>:96:                                     ; preds = %84
  call void @llvm.dbg.value(metadata i64 %65, metadata !1052, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 %87, metadata !1058, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i32 %85, metadata !1055, metadata !DIExpression()), !dbg !1127
  %97 = icmp eq i32 %85, -1, !dbg !1158
  br i1 %97, label %133, label %98, !dbg !1159

; <label>:98:                                     ; preds = %91, %96
  %99 = phi i64 [ %65, %96 ], [ 0, %91 ]
  br label %100

; <label>:100:                                    ; preds = %98, %130
  %101 = phi i32 [ %131, %130 ], [ %85, %98 ]
  call void @llvm.dbg.value(metadata i32 %101, metadata !1055, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8 1, metadata !1059, metadata !DIExpression()), !dbg !1141
  %102 = load i1, i1* @line_delim, align 1
  %103 = select i1 %102, i32 0, i32 10, !dbg !1160
  %104 = icmp eq i32 %101, %103, !dbg !1163
  br i1 %104, label %202, label %105, !dbg !1164

; <label>:105:                                    ; preds = %100
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1165, !tbaa !647
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %106, i64 0, i32 5, !dbg !1165
  %108 = load i8*, i8** %107, align 8, !dbg !1165, !tbaa !963
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %106, i64 0, i32 6, !dbg !1165
  %110 = load i8*, i8** %109, align 8, !dbg !1165, !tbaa !964
  %111 = icmp ult i8* %108, %110, !dbg !1165
  br i1 %111, label %112, label %115, !dbg !1165, !prof !920

; <label>:112:                                    ; preds = %105
  %113 = trunc i32 %101 to i8, !dbg !1168
  call void @llvm.dbg.value(metadata i8 %113, metadata !948, metadata !DIExpression()) #10, !dbg !1169
  %114 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !1165
  store i8* %114, i8** %107, align 8, !dbg !1165, !tbaa !963
  store i8 %113, i8* %108, align 1, !dbg !1165, !tbaa !726
  br label %120, !dbg !1170

; <label>:115:                                    ; preds = %105
  %116 = and i32 %101, 255, !dbg !1171
  %117 = tail call i32 @__overflow(%struct._IO_FILE* %106, i32 %116) #10, !dbg !1165
  %118 = icmp slt i32 %117, 0, !dbg !1172
  br i1 %118, label %119, label %120, !dbg !1170

; <label>:119:                                    ; preds = %115
  tail call fastcc void @write_error() #15, !dbg !1173
  unreachable, !dbg !1173

; <label>:120:                                    ; preds = %112, %115
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %70, metadata !906, metadata !DIExpression()) #10, !dbg !1174
  %121 = load i8*, i8** %73, align 8, !dbg !1176, !tbaa !915
  %122 = load i8*, i8** %75, align 8, !dbg !1176, !tbaa !919
  %123 = icmp ult i8* %121, %122, !dbg !1176
  br i1 %123, label %126, label %124, !dbg !1176, !prof !920

; <label>:124:                                    ; preds = %120
  %125 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %70) #10, !dbg !1176
  br label %130, !dbg !1176

; <label>:126:                                    ; preds = %120
  %127 = getelementptr inbounds i8, i8* %121, i64 1, !dbg !1176
  store i8* %127, i8** %73, align 8, !dbg !1176, !tbaa !915
  %128 = load i8, i8* %121, align 1, !dbg !1176, !tbaa !726
  %129 = zext i8 %128 to i32, !dbg !1176
  br label %130, !dbg !1176

; <label>:130:                                    ; preds = %124, %126
  %131 = phi i32 [ %125, %124 ], [ %129, %126 ], !dbg !1176
  call void @llvm.dbg.value(metadata i32 %131, metadata !1055, metadata !DIExpression()), !dbg !1127
  %132 = icmp eq i32 %131, -1, !dbg !1158
  br i1 %132, label %202, label %100, !dbg !1159, !llvm.loop !1177

; <label>:133:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i32 -1, metadata !1055, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %87, metadata !1058, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i32 undef, metadata !1058, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i32 -1, metadata !1055, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %65, metadata !1052, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %70, metadata !1004, metadata !DIExpression()), !dbg !1179
  %134 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %70, i64 0, i32 0, !dbg !1185
  %135 = load i32, i32* %134, align 8, !dbg !1185, !tbaa !1011
  %136 = and i32 %135, 32, !dbg !1185
  %137 = icmp eq i32 %136, 0, !dbg !1186
  br i1 %137, label %142, label %138, !dbg !1187

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !1188
  %140 = load i8*, i8** %139, align 8, !dbg !1188, !tbaa !647
  %141 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #10, !dbg !1188
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %141) #10, !dbg !1190
  call void @llvm.dbg.value(metadata i8 0, metadata !1043, metadata !DIExpression()), !dbg !1067
  br label %142, !dbg !1191

; <label>:142:                                    ; preds = %133, %138
  %143 = phi i8 [ 0, %138 ], [ %63, %133 ], !dbg !1192
  call void @llvm.dbg.value(metadata i8 %143, metadata !1043, metadata !DIExpression()), !dbg !1067
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1193, !tbaa !647
  %145 = icmp eq %struct._IO_FILE* %70, %144, !dbg !1195
  br i1 %145, label %146, label %147, !dbg !1196

; <label>:146:                                    ; preds = %142
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %70) #10, !dbg !1197
  br label %155, !dbg !1197

; <label>:147:                                    ; preds = %142
  %148 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %70) #10, !dbg !1198
  %149 = icmp eq i32 %148, -1, !dbg !1200
  br i1 %149, label %150, label %155, !dbg !1201

; <label>:150:                                    ; preds = %147
  %151 = load i32, i32* %86, align 4, !dbg !1202, !tbaa !737
  %152 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !1204
  %153 = load i8*, i8** %152, align 8, !dbg !1204, !tbaa !647
  %154 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %153) #10, !dbg !1204
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %154) #10, !dbg !1205
  call void @llvm.dbg.value(metadata i8 0, metadata !1043, metadata !DIExpression()), !dbg !1067
  br label %155, !dbg !1206

; <label>:155:                                    ; preds = %147, %150, %146
  %156 = phi i8 [ %143, %146 ], [ 0, %150 ], [ %143, %147 ], !dbg !1207
  call void @llvm.dbg.value(metadata i8 %156, metadata !1043, metadata !DIExpression()), !dbg !1067
  store %struct._IO_FILE* null, %struct._IO_FILE** %69, align 8, !dbg !1208, !tbaa !647
  %157 = add i64 %68, -1, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %157, metadata !1047, metadata !DIExpression()), !dbg !1090
  br label %158, !dbg !1210

; <label>:158:                                    ; preds = %62, %155
  %159 = phi i64 [ %157, %155 ], [ %68, %62 ], !dbg !1211
  %160 = phi i8 [ %156, %155 ], [ %63, %62 ], !dbg !1192
  call void @llvm.dbg.value(metadata i8 %160, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %159, metadata !1047, metadata !DIExpression()), !dbg !1090
  %161 = add nuw i64 %64, 1, !dbg !1212
  %162 = icmp eq i64 %161, %0, !dbg !1214
  br i1 %162, label %163, label %189, !dbg !1215

; <label>:163:                                    ; preds = %158
  call void @llvm.dbg.value(metadata i64 %65, metadata !1052, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 %67, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %159, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %160, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %65, metadata !1052, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 %67, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %159, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %160, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %65, metadata !1052, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 %67, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %159, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %160, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %67, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %159, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %160, metadata !1043, metadata !DIExpression()), !dbg !1067
  %164 = and i8 %67, 1, !dbg !1216
  %165 = icmp eq i8 %164, 0, !dbg !1216
  br i1 %165, label %51, label %166, !dbg !1219

; <label>:166:                                    ; preds = %163
  %167 = icmp eq i64 %65, 0, !dbg !1220
  br i1 %167, label %173, label %168, !dbg !1223

; <label>:168:                                    ; preds = %166
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1224, !tbaa !647
  %170 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %65, %struct._IO_FILE* %169), !dbg !1224
  %171 = icmp eq i64 %170, %65, !dbg !1227
  br i1 %171, label %173, label %172, !dbg !1228

; <label>:172:                                    ; preds = %168
  tail call fastcc void @write_error() #16, !dbg !1229
  unreachable, !dbg !1229

; <label>:173:                                    ; preds = %168, %166
  call void @llvm.dbg.value(metadata i64 0, metadata !1052, metadata !DIExpression()), !dbg !1131
  %174 = load i1, i1* @line_delim, align 1
  %175 = select i1 %174, i8 0, i8 10
  call void @llvm.dbg.value(metadata i8 %175, metadata !948, metadata !DIExpression()) #10, !dbg !1230
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1232, !tbaa !647
  %177 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %176, i64 0, i32 5, !dbg !1232
  %178 = load i8*, i8** %177, align 8, !dbg !1232, !tbaa !963
  %179 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %176, i64 0, i32 6, !dbg !1232
  %180 = load i8*, i8** %179, align 8, !dbg !1232, !tbaa !964
  %181 = icmp ult i8* %178, %180, !dbg !1232
  br i1 %181, label %182, label %184, !dbg !1232, !prof !920

; <label>:182:                                    ; preds = %173
  %183 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !1232
  store i8* %183, i8** %177, align 8, !dbg !1232, !tbaa !963
  store i8 %175, i8* %178, align 1, !dbg !1232, !tbaa !726
  br label %51, !dbg !1234

; <label>:184:                                    ; preds = %173
  %185 = zext i8 %175 to i32, !dbg !1235
  %186 = tail call i32 @__overflow(%struct._IO_FILE* %176, i32 %185) #10, !dbg !1232
  %187 = icmp slt i32 %186, 0, !dbg !1236
  br i1 %187, label %188, label %51, !dbg !1234

; <label>:188:                                    ; preds = %184
  tail call fastcc void @write_error() #15, !dbg !1237
  unreachable, !dbg !1237

; <label>:189:                                    ; preds = %158
  %190 = load i8, i8* %66, align 1, !dbg !1238, !tbaa !726
  %191 = icmp eq i8 %190, 0, !dbg !1241
  br i1 %191, label %195, label %192, !dbg !1242

; <label>:192:                                    ; preds = %189
  %193 = add i64 %65, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %193, metadata !1052, metadata !DIExpression()), !dbg !1131
  %194 = getelementptr inbounds i8, i8* %4, i64 %65, !dbg !1244
  store i8 %190, i8* %194, align 1, !dbg !1245, !tbaa !726
  br label %195, !dbg !1244

; <label>:195:                                    ; preds = %189, %192
  %196 = phi i64 [ %193, %192 ], [ %65, %189 ], !dbg !1246
  call void @llvm.dbg.value(metadata i64 %196, metadata !1052, metadata !DIExpression()), !dbg !1131
  %197 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %197, metadata !1051, metadata !DIExpression()), !dbg !1138
  %198 = load i8*, i8** @delim_end, align 8, !dbg !1249, !tbaa !647
  %199 = icmp eq i8* %197, %198, !dbg !1250
  %200 = load i8*, i8** @delims, align 8, !dbg !1251
  %201 = select i1 %199, i8* %200, i8* %197, !dbg !1252
  br label %269, !dbg !1252

; <label>:202:                                    ; preds = %100, %130
  %203 = phi i32 [ -1, %130 ], [ %101, %100 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1049, metadata !DIExpression()), !dbg !1130
  %204 = add nuw i64 %64, 1, !dbg !1253
  %205 = icmp eq i64 %204, %0, !dbg !1254
  br i1 %205, label %250, label %206, !dbg !1255

; <label>:206:                                    ; preds = %202
  %207 = load i1, i1* @line_delim, align 1
  %208 = select i1 %207, i32 0, i32 10, !dbg !1256
  %209 = icmp ne i32 %203, %208, !dbg !1259
  %210 = icmp ne i32 %203, -1, !dbg !1260
  %211 = and i1 %210, %209, !dbg !1261
  br i1 %211, label %212, label %227, !dbg !1261

; <label>:212:                                    ; preds = %206
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1262, !tbaa !647
  %214 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %213, i64 0, i32 5, !dbg !1262
  %215 = load i8*, i8** %214, align 8, !dbg !1262, !tbaa !963
  %216 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %213, i64 0, i32 6, !dbg !1262
  %217 = load i8*, i8** %216, align 8, !dbg !1262, !tbaa !964
  %218 = icmp ult i8* %215, %217, !dbg !1262
  br i1 %218, label %219, label %222, !dbg !1262, !prof !920

; <label>:219:                                    ; preds = %212
  %220 = trunc i32 %203 to i8, !dbg !1265
  call void @llvm.dbg.value(metadata i8 %220, metadata !948, metadata !DIExpression()) #10, !dbg !1266
  %221 = getelementptr inbounds i8, i8* %215, i64 1, !dbg !1262
  store i8* %221, i8** %214, align 8, !dbg !1262, !tbaa !963
  store i8 %220, i8* %215, align 1, !dbg !1262, !tbaa !726
  br label %227, !dbg !1267

; <label>:222:                                    ; preds = %212
  %223 = and i32 %203, 255, !dbg !1268
  %224 = tail call i32 @__overflow(%struct._IO_FILE* %213, i32 %223) #10, !dbg !1262
  %225 = icmp slt i32 %224, 0, !dbg !1269
  br i1 %225, label %226, label %227, !dbg !1267

; <label>:226:                                    ; preds = %222
  tail call fastcc void @write_error() #15, !dbg !1270
  unreachable, !dbg !1270

; <label>:227:                                    ; preds = %222, %219, %206
  %228 = load i8, i8* %66, align 1, !dbg !1271, !tbaa !726
  %229 = icmp eq i8 %228, 0, !dbg !1273
  br i1 %229, label %244, label %230, !dbg !1274

; <label>:230:                                    ; preds = %227
  call void @llvm.dbg.value(metadata i8 %228, metadata !948, metadata !DIExpression()) #10, !dbg !1275
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1277, !tbaa !647
  %232 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %231, i64 0, i32 5, !dbg !1277
  %233 = load i8*, i8** %232, align 8, !dbg !1277, !tbaa !963
  %234 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %231, i64 0, i32 6, !dbg !1277
  %235 = load i8*, i8** %234, align 8, !dbg !1277, !tbaa !964
  %236 = icmp ult i8* %233, %235, !dbg !1277
  br i1 %236, label %237, label %239, !dbg !1277, !prof !920

; <label>:237:                                    ; preds = %230
  %238 = getelementptr inbounds i8, i8* %233, i64 1, !dbg !1277
  store i8* %238, i8** %232, align 8, !dbg !1277, !tbaa !963
  store i8 %228, i8* %233, align 1, !dbg !1277, !tbaa !726
  br label %244, !dbg !1279

; <label>:239:                                    ; preds = %230
  %240 = zext i8 %228 to i32, !dbg !1280
  %241 = tail call i32 @__overflow(%struct._IO_FILE* %231, i32 %240) #10, !dbg !1277
  %242 = icmp slt i32 %241, 0, !dbg !1281
  br i1 %242, label %243, label %244, !dbg !1279

; <label>:243:                                    ; preds = %239
  tail call fastcc void @write_error() #15, !dbg !1282
  unreachable, !dbg !1282

; <label>:244:                                    ; preds = %239, %237, %227
  %245 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %245, metadata !1051, metadata !DIExpression()), !dbg !1138
  %246 = load i8*, i8** @delim_end, align 8, !dbg !1285, !tbaa !647
  %247 = icmp eq i8* %245, %246, !dbg !1286
  %248 = load i8*, i8** @delims, align 8, !dbg !1287
  %249 = select i1 %247, i8* %248, i8* %245, !dbg !1288
  br label %269, !dbg !1288

; <label>:250:                                    ; preds = %202
  %251 = icmp eq i32 %203, -1, !dbg !1289
  %252 = load i1, i1* @line_delim, align 1
  %253 = select i1 %252, i32 0, i32 10, !dbg !1290
  %254 = select i1 %251, i32 %253, i32 %203, !dbg !1291
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1292, !tbaa !647
  %256 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %255, i64 0, i32 5, !dbg !1292
  %257 = load i8*, i8** %256, align 8, !dbg !1292, !tbaa !963
  %258 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %255, i64 0, i32 6, !dbg !1292
  %259 = load i8*, i8** %258, align 8, !dbg !1292, !tbaa !964
  %260 = icmp ult i8* %257, %259, !dbg !1292
  br i1 %260, label %261, label %264, !dbg !1292, !prof !920

; <label>:261:                                    ; preds = %250
  %262 = trunc i32 %254 to i8, !dbg !1295
  call void @llvm.dbg.value(metadata i8 %262, metadata !948, metadata !DIExpression()) #10, !dbg !1296
  call void @llvm.dbg.value(metadata i8 %262, metadata !1060, metadata !DIExpression()), !dbg !1297
  %263 = getelementptr inbounds i8, i8* %257, i64 1, !dbg !1292
  store i8* %263, i8** %256, align 8, !dbg !1292, !tbaa !963
  store i8 %262, i8* %257, align 1, !dbg !1292, !tbaa !726
  br label %269, !dbg !1298

; <label>:264:                                    ; preds = %250
  %265 = and i32 %254, 255, !dbg !1299
  %266 = tail call i32 @__overflow(%struct._IO_FILE* %255, i32 %265) #10, !dbg !1292
  %267 = icmp slt i32 %266, 0, !dbg !1300
  br i1 %267, label %268, label %269, !dbg !1298

; <label>:268:                                    ; preds = %264
  tail call fastcc void @write_error() #15, !dbg !1301
  unreachable, !dbg !1301

; <label>:269:                                    ; preds = %264, %261, %244, %195
  %270 = phi i64 [ %204, %264 ], [ %204, %261 ], [ %204, %244 ], [ %161, %195 ], !dbg !1302
  %271 = phi i64 [ %68, %264 ], [ %68, %261 ], [ %68, %244 ], [ %159, %195 ], !dbg !1303
  %272 = phi i8 [ 1, %264 ], [ 1, %261 ], [ 1, %244 ], [ %67, %195 ], !dbg !1304
  %273 = phi i8* [ %66, %264 ], [ %66, %261 ], [ %249, %244 ], [ %201, %195 ], !dbg !1304
  %274 = phi i64 [ %99, %264 ], [ %99, %261 ], [ %99, %244 ], [ %196, %195 ], !dbg !1305
  %275 = phi i8 [ %63, %264 ], [ %63, %261 ], [ %63, %244 ], [ %160, %195 ], !dbg !1207
  call void @llvm.dbg.value(metadata i8 %275, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %270, metadata !1053, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %274, metadata !1052, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %273, metadata !1051, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8 %272, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %271, metadata !1047, metadata !DIExpression()), !dbg !1090
  %276 = icmp ult i64 %270, %0, !dbg !1306
  %277 = icmp ne i64 %271, 0, !dbg !1133
  %278 = and i1 %277, %276, !dbg !1133
  br i1 %278, label %62, label %51, !dbg !1134, !llvm.loop !1307

; <label>:279:                                    ; preds = %51, %8
  %280 = phi i8 [ 1, %8 ], [ %53, %51 ], !dbg !1067
  call void @llvm.dbg.value(metadata i8 %280, metadata !1043, metadata !DIExpression()), !dbg !1067
  tail call void @free(i8* %10) #10, !dbg !1309
  tail call void @free(i8* %4) #10, !dbg !1310
  %281 = and i8 %280, 1, !dbg !1311
  %282 = icmp ne i8 %281, 0, !dbg !1311
  ret i1 %282, !dbg !1312
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @write_error() unnamed_addr #0 !dbg !1313 {
  %1 = tail call i32* @__errno_location() #17, !dbg !1314
  %2 = load i32, i32* %1, align 4, !dbg !1314, !tbaa !737
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !1314
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %2, i8* %3) #10, !dbg !1314
  unreachable, !dbg !1314
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1317, metadata !DIExpression()), !dbg !1318
  store i8* %0, i8** @file_name, align 8, !dbg !1319, !tbaa !647
  ret void, !dbg !1320
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1321 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1325, metadata !DIExpression()), !dbg !1326
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1327, !tbaa !1328
  ret void, !dbg !1330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1331 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1336, !tbaa !647
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1337
  %3 = icmp eq i32 %2, 0, !dbg !1338
  br i1 %3, label %22, label %4, !dbg !1339

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1340, !tbaa !1328, !range !1341
  %6 = icmp eq i8 %5, 0, !dbg !1340
  br i1 %6, label %11, label %7, !dbg !1342

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1343
  %9 = load i32, i32* %8, align 4, !dbg !1343, !tbaa !737
  %10 = icmp eq i32 %9, 32, !dbg !1344
  br i1 %10, label %22, label %11, !dbg !1345

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %12, metadata !1333, metadata !DIExpression()), !dbg !1347
  %13 = load i8*, i8** @file_name, align 8, !dbg !1348, !tbaa !647
  %14 = icmp eq i8* %13, null, !dbg !1348
  %15 = tail call i32* @__errno_location() #17, !dbg !1350
  %16 = load i32, i32* %15, align 4, !dbg !1350, !tbaa !737
  br i1 %14, label %19, label %17, !dbg !1351

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1352
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.49, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1353
  br label %20, !dbg !1353

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.50, i64 0, i64 0), i8* %12) #10, !dbg !1354
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1355, !tbaa !737
  tail call void @_exit(i32 %21) #15, !dbg !1356
  unreachable, !dbg !1356

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1357, !tbaa !647
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1359
  %25 = icmp eq i32 %24, 0, !dbg !1360
  br i1 %25, label %28, label %26, !dbg !1361

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1362, !tbaa !737
  tail call void @_exit(i32 %27) #15, !dbg !1363
  unreachable, !dbg !1363

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1364
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1365 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1373, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %1, metadata !1374, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %2, metadata !1375, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %3, metadata !1376, metadata !DIExpression()), !dbg !1382
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1383
  call void @llvm.dbg.value(metadata i32 %5, metadata !1377, metadata !DIExpression()), !dbg !1383
  ret void, !dbg !1384
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1385 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1423, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 %1, metadata !1424, metadata !DIExpression()), !dbg !1426
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1427
  br i1 %3, label %7, label %4, !dbg !1429

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %5, metadata !1373, metadata !DIExpression()) #10, !dbg !1431
  call void @llvm.dbg.value(metadata i64 0, metadata !1374, metadata !DIExpression()) #10, !dbg !1433
  call void @llvm.dbg.value(metadata i64 0, metadata !1375, metadata !DIExpression()) #10, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %1, metadata !1376, metadata !DIExpression()) #10, !dbg !1435
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %6, metadata !1377, metadata !DIExpression()) #10, !dbg !1436
  br label %7, !dbg !1437

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1441, metadata !DIExpression()), !dbg !1444
  %2 = icmp eq i8* %0, null, !dbg !1445
  br i1 %2, label %3, label %6, !dbg !1447

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1448, !tbaa !647
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1450
  tail call void @abort() #15, !dbg !1451
  unreachable, !dbg !1451

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %7, metadata !1442, metadata !DIExpression()), !dbg !1453
  %8 = icmp eq i8* %7, null, !dbg !1454
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1455
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %10, metadata !1443, metadata !DIExpression()), !dbg !1457
  %11 = ptrtoint i8* %10 to i64, !dbg !1458
  %12 = ptrtoint i8* %0 to i64, !dbg !1458
  %13 = sub i64 %11, %12, !dbg !1458
  %14 = icmp sgt i64 %13, 6, !dbg !1460
  br i1 %14, label %15, label %24, !dbg !1461

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1462
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.60, i64 0, i64 0), i64 7) #14, !dbg !1463
  %18 = icmp eq i32 %17, 0, !dbg !1464
  br i1 %18, label %19, label %24, !dbg !1465

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1441, metadata !DIExpression()), !dbg !1444
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.61, i64 0, i64 0), i64 3) #14, !dbg !1466
  %21 = icmp eq i32 %20, 0, !dbg !1469
  br i1 %21, label %22, label %24, !dbg !1470

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1471
  call void @llvm.dbg.value(metadata i8* %23, metadata !1441, metadata !DIExpression()), !dbg !1444
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1473, !tbaa !647
  br label %24, !dbg !1474

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1441, metadata !DIExpression()), !dbg !1444
  store i8* %25, i8** @program_name, align 8, !dbg !1475, !tbaa !647
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1476, !tbaa !647
  ret void, !dbg !1477
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1478 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1483, metadata !DIExpression()), !dbg !1486
  %2 = tail call i32* @__errno_location() #17, !dbg !1487
  %3 = load i32, i32* %2, align 4, !dbg !1487, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %3, metadata !1484, metadata !DIExpression()), !dbg !1488
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1489
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1489
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1489
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1490
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1490
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1485, metadata !DIExpression()), !dbg !1491
  store i32 %3, i32* %2, align 4, !dbg !1492, !tbaa !737
  ret %struct.quoting_options* %8, !dbg !1493
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1494 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1500, metadata !DIExpression()), !dbg !1501
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1502
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1502
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1503
  %5 = load i32, i32* %4, align 8, !dbg !1503, !tbaa !1504
  ret i32 %5, !dbg !1506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1507 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1511, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %1, metadata !1512, metadata !DIExpression()), !dbg !1514
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1515
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1515
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1516
  store i32 %1, i32* %5, align 8, !dbg !1517, !tbaa !1504
  ret void, !dbg !1518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1519 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1523, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 %1, metadata !1524, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 %2, metadata !1525, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %1, metadata !1526, metadata !DIExpression()), !dbg !1534
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1535
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1535
  %6 = lshr i8 %1, 5, !dbg !1536
  %7 = zext i8 %6 to i64, !dbg !1536
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1537
  call void @llvm.dbg.value(metadata i32* %8, metadata !1527, metadata !DIExpression()), !dbg !1538
  %9 = and i8 %1, 31, !dbg !1539
  %10 = zext i8 %9 to i32, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %10, metadata !1529, metadata !DIExpression()), !dbg !1540
  %11 = load i32, i32* %8, align 4, !dbg !1541, !tbaa !737
  %12 = lshr i32 %11, %10, !dbg !1542
  %13 = and i32 %12, 1, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %13, metadata !1530, metadata !DIExpression()), !dbg !1544
  %14 = and i32 %2, 1, !dbg !1545
  %15 = xor i32 %13, %14, !dbg !1546
  %16 = shl i32 %15, %10, !dbg !1547
  %17 = xor i32 %16, %11, !dbg !1548
  store i32 %17, i32* %8, align 4, !dbg !1548, !tbaa !737
  ret i32 %13, !dbg !1549
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1550 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1554, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i32 %1, metadata !1555, metadata !DIExpression()), !dbg !1558
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1559
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1561
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1554, metadata !DIExpression()), !dbg !1557
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1562
  %6 = load i32, i32* %5, align 4, !dbg !1562, !tbaa !1563
  call void @llvm.dbg.value(metadata i32 %6, metadata !1556, metadata !DIExpression()), !dbg !1564
  store i32 %1, i32* %5, align 4, !dbg !1565, !tbaa !1563
  ret i32 %6, !dbg !1566
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1567 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1571, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %1, metadata !1572, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %2, metadata !1573, metadata !DIExpression()), !dbg !1576
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1577
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1579
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()), !dbg !1574
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1580
  store i32 10, i32* %6, align 8, !dbg !1581, !tbaa !1504
  %7 = icmp ne i8* %1, null, !dbg !1582
  %8 = icmp ne i8* %2, null, !dbg !1584
  %9 = and i1 %7, %8, !dbg !1585
  br i1 %9, label %11, label %10, !dbg !1585

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1586
  unreachable, !dbg !1586

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1587
  store i8* %1, i8** %12, align 8, !dbg !1588, !tbaa !1589
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1590
  store i8* %2, i8** %13, align 8, !dbg !1591, !tbaa !1592
  ret void, !dbg !1593
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %1, metadata !1599, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %2, metadata !1600, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %3, metadata !1601, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1602, metadata !DIExpression()), !dbg !1610
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1611
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1611
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1603, metadata !DIExpression()), !dbg !1612
  %8 = tail call i32* @__errno_location() #17, !dbg !1613
  %9 = load i32, i32* %8, align 4, !dbg !1613, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %9, metadata !1604, metadata !DIExpression()), !dbg !1614
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1615
  %11 = load i32, i32* %10, align 8, !dbg !1615, !tbaa !1504
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1616
  %13 = load i32, i32* %12, align 4, !dbg !1616, !tbaa !1563
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1617
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1618
  %16 = load i8*, i8** %15, align 8, !dbg !1618, !tbaa !1589
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1619
  %18 = load i8*, i8** %17, align 8, !dbg !1619, !tbaa !1592
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %19, metadata !1605, metadata !DIExpression()), !dbg !1621
  store i32 %9, i32* %8, align 4, !dbg !1622, !tbaa !737
  ret i64 %19, !dbg !1623
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1624 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1630, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %1, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %2, metadata !1632, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i64 %3, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %4, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %5, metadata !1635, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32* %6, metadata !1636, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %7, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %8, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* null, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 0, metadata !1643, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1707
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1708
  %14 = icmp eq i64 %13, 1, !dbg !1709
  %15 = lshr i32 %5, 1, !dbg !1710
  %16 = trunc i32 %15 to i8, !dbg !1710
  %17 = and i8 %16, 1, !dbg !1710
  call void @llvm.dbg.value(metadata i8 %17, metadata !1646, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1713
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1714

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1704
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1705
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1706
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1707
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1715
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1711
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1712
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1713
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %39, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %38, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %37, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %36, metadata !1646, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %35, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 %34, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %33, metadata !1643, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8* %32, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %31, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8* %30, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %29, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %28, metadata !1634, metadata !DIExpression()), !dbg !1698
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
  ], !dbg !1717

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1646, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %36, metadata !1646, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 5, metadata !1634, metadata !DIExpression()), !dbg !1698
  br label %93, !dbg !1718

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1646, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 5, metadata !1634, metadata !DIExpression()), !dbg !1698
  %43 = and i8 %36, 1, !dbg !1719
  %44 = icmp eq i8 %43, 0, !dbg !1719
  br i1 %44, label %45, label %93, !dbg !1718

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1721
  br i1 %46, label %93, label %47, !dbg !1724

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1721, !tbaa !726
  br label %93, !dbg !1721

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %28), !dbg !1725
  call void @llvm.dbg.value(metadata i8* %49, metadata !1637, metadata !DIExpression()), !dbg !1701
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %28), !dbg !1729
  call void @llvm.dbg.value(metadata i8* %50, metadata !1638, metadata !DIExpression()), !dbg !1702
  br label %51, !dbg !1730

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %52, metadata !1637, metadata !DIExpression()), !dbg !1701
  %54 = and i8 %36, 1, !dbg !1731
  %55 = icmp eq i8 %54, 0, !dbg !1731
  br i1 %55, label %56, label %71, !dbg !1733

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1703
  %57 = load i8, i8* %52, align 1, !dbg !1734, !tbaa !726
  %58 = icmp eq i8 %57, 0, !dbg !1737
  br i1 %58, label %71, label %59, !dbg !1737

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %62, metadata !1640, metadata !DIExpression()), !dbg !1703
  %63 = icmp ult i64 %62, %40, !dbg !1738
  br i1 %63, label %64, label %66, !dbg !1741

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1738
  store i8 %60, i8* %65, align 1, !dbg !1738, !tbaa !726
  br label %66, !dbg !1738

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1741
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1742
  call void @llvm.dbg.value(metadata i8* %68, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %67, metadata !1640, metadata !DIExpression()), !dbg !1703
  %69 = load i8, i8* %68, align 1, !dbg !1734, !tbaa !726
  %70 = icmp eq i8 %69, 0, !dbg !1737
  br i1 %70, label %71, label %59, !dbg !1737, !llvm.loop !1743

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1703
  call void @llvm.dbg.value(metadata i64 %72, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %53, metadata !1642, metadata !DIExpression()), !dbg !1705
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %73, metadata !1643, metadata !DIExpression()), !dbg !1706
  br label %93, !dbg !1746

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1707
  br label %75, !dbg !1747

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1715
  call void @llvm.dbg.value(metadata i8 %76, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 1, metadata !1646, metadata !DIExpression()), !dbg !1710
  br label %77, !dbg !1748

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1707
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1715
  call void @llvm.dbg.value(metadata i8 %79, metadata !1646, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %78, metadata !1644, metadata !DIExpression()), !dbg !1707
  %80 = and i8 %79, 1, !dbg !1749
  %81 = icmp eq i8 %80, 0, !dbg !1749
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1751
  br label %83, !dbg !1751

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1752
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1710
  call void @llvm.dbg.value(metadata i8 %85, metadata !1646, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %84, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 2, metadata !1634, metadata !DIExpression()), !dbg !1698
  %86 = and i8 %85, 1, !dbg !1753
  %87 = icmp eq i8 %86, 0, !dbg !1753
  br i1 %87, label %88, label %93, !dbg !1755

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1756
  br i1 %89, label %93, label %90, !dbg !1759

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1756, !tbaa !726
  br label %93, !dbg !1756

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1710
  br label %93, !dbg !1760

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1761
  unreachable, !dbg !1761

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1703
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ], !dbg !1715
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1715
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1715
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %101, metadata !1646, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %99, metadata !1643, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %97, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %94, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1763
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
  br label %121, !dbg !1764

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1765
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1703
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1704
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1711
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1712
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1713
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %125, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %122, metadata !1639, metadata !DIExpression()), !dbg !1763
  %130 = icmp eq i64 %125, -1, !dbg !1766
  br i1 %130, label %131, label %135, !dbg !1767

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1768
  %133 = load i8, i8* %132, align 1, !dbg !1768, !tbaa !726
  %134 = icmp eq i8 %133, 0, !dbg !1769
  br i1 %134, label %617, label %137, !dbg !1770

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1771
  br i1 %136, label %617, label %137, !dbg !1770

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1655, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 0, metadata !1656, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 0, metadata !1657, metadata !DIExpression()), !dbg !1774
  br i1 %107, label %138, label %153, !dbg !1775

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1777
  %140 = and i1 %108, %130, !dbg !1778
  br i1 %140, label %141, label %143, !dbg !1778

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %142, metadata !1633, metadata !DIExpression()), !dbg !1697
  br label %143, !dbg !1780

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1633, metadata !DIExpression()), !dbg !1697
  %145 = icmp ugt i64 %139, %144, !dbg !1781
  br i1 %145, label %153, label %146, !dbg !1782

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1783
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1784
  %149 = icmp ne i32 %148, 0, !dbg !1785
  %150 = or i1 %149, %110, !dbg !1786
  %151 = xor i1 %149, true, !dbg !1786
  %152 = zext i1 %151 to i8, !dbg !1786
  br i1 %150, label %153, label %661, !dbg !1786

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1787
  call void @llvm.dbg.value(metadata i8 %155, metadata !1655, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %154, metadata !1633, metadata !DIExpression()), !dbg !1697
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1788
  %157 = load i8, i8* %156, align 1, !dbg !1788, !tbaa !726
  call void @llvm.dbg.value(metadata i8 %157, metadata !1650, metadata !DIExpression()), !dbg !1789
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
  ], !dbg !1790

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1791

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1792

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1656, metadata !DIExpression()), !dbg !1773
  %161 = and i8 %126, 1, !dbg !1796
  %162 = icmp eq i8 %161, 0, !dbg !1796
  %163 = and i1 %114, %162, !dbg !1796
  br i1 %163, label %164, label %180, !dbg !1796

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1798
  br i1 %165, label %166, label %168, !dbg !1802

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1798
  store i8 39, i8* %167, align 1, !dbg !1798, !tbaa !726
  br label %168, !dbg !1798

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %169, metadata !1640, metadata !DIExpression()), !dbg !1703
  %170 = icmp ult i64 %169, %129, !dbg !1803
  br i1 %170, label %171, label %173, !dbg !1806

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1803
  store i8 36, i8* %172, align 1, !dbg !1803, !tbaa !726
  br label %173, !dbg !1803

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %174, metadata !1640, metadata !DIExpression()), !dbg !1703
  %175 = icmp ult i64 %174, %129, !dbg !1807
  br i1 %175, label %176, label %178, !dbg !1810

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1807
  store i8 39, i8* %177, align 1, !dbg !1807, !tbaa !726
  br label %178, !dbg !1807

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %179, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 1, metadata !1647, metadata !DIExpression()), !dbg !1711
  br label %180, !dbg !1811

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1762
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %182, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %181, metadata !1640, metadata !DIExpression()), !dbg !1703
  %183 = icmp ult i64 %181, %129, !dbg !1812
  br i1 %183, label %184, label %186, !dbg !1815

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1812
  store i8 92, i8* %185, align 1, !dbg !1812, !tbaa !726
  br label %186, !dbg !1812

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %187, metadata !1640, metadata !DIExpression()), !dbg !1703
  br i1 %104, label %188, label %478, !dbg !1816

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1818
  %190 = icmp ult i64 %189, %154, !dbg !1819
  br i1 %190, label %191, label %467, !dbg !1820

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1821
  %193 = load i8, i8* %192, align 1, !dbg !1821, !tbaa !726
  %194 = add i8 %193, -48, !dbg !1822
  %195 = icmp ult i8 %194, 10, !dbg !1822
  br i1 %195, label %196, label %467, !dbg !1822

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1823
  br i1 %197, label %198, label %200, !dbg !1827

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1823
  store i8 48, i8* %199, align 1, !dbg !1823, !tbaa !726
  br label %200, !dbg !1823

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %201, metadata !1640, metadata !DIExpression()), !dbg !1703
  %202 = icmp ult i64 %201, %129, !dbg !1828
  br i1 %202, label %203, label %205, !dbg !1831

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1828
  store i8 48, i8* %204, align 1, !dbg !1828, !tbaa !726
  br label %205, !dbg !1828

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %206, metadata !1640, metadata !DIExpression()), !dbg !1703
  br label %467, !dbg !1832

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1833

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1834

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1835

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1837

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1839
  %213 = icmp ult i64 %212, %154, !dbg !1840
  br i1 %213, label %214, label %467, !dbg !1841

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1842
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1843
  %217 = load i8, i8* %216, align 1, !dbg !1843, !tbaa !726
  %218 = icmp eq i8 %217, 63, !dbg !1844
  br i1 %218, label %219, label %467, !dbg !1845

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1846
  %221 = load i8, i8* %220, align 1, !dbg !1846, !tbaa !726
  %222 = sext i8 %221 to i32, !dbg !1846
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
  ], !dbg !1847

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1848

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1650, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %212, metadata !1639, metadata !DIExpression()), !dbg !1763
  %225 = icmp ult i64 %123, %129, !dbg !1850
  br i1 %225, label %226, label %228, !dbg !1853

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1850
  store i8 63, i8* %227, align 1, !dbg !1850, !tbaa !726
  br label %228, !dbg !1850

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %229, metadata !1640, metadata !DIExpression()), !dbg !1703
  %230 = icmp ult i64 %229, %129, !dbg !1854
  br i1 %230, label %231, label %233, !dbg !1857

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1854
  store i8 34, i8* %232, align 1, !dbg !1854, !tbaa !726
  br label %233, !dbg !1854

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %234, metadata !1640, metadata !DIExpression()), !dbg !1703
  %235 = icmp ult i64 %234, %129, !dbg !1858
  br i1 %235, label %236, label %238, !dbg !1861

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1858
  store i8 34, i8* %237, align 1, !dbg !1858, !tbaa !726
  br label %238, !dbg !1858

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %239, metadata !1640, metadata !DIExpression()), !dbg !1703
  %240 = icmp ult i64 %239, %129, !dbg !1862
  br i1 %240, label %241, label %243, !dbg !1865

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1862
  store i8 63, i8* %242, align 1, !dbg !1862, !tbaa !726
  br label %243, !dbg !1862

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %244, metadata !1640, metadata !DIExpression()), !dbg !1703
  br label %467, !dbg !1866

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1654, metadata !DIExpression()), !dbg !1867
  br label %255, !dbg !1868

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1654, metadata !DIExpression()), !dbg !1867
  br label %255, !dbg !1869

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1654, metadata !DIExpression()), !dbg !1867
  br label %253, !dbg !1870

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1654, metadata !DIExpression()), !dbg !1867
  br label %253, !dbg !1871

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1654, metadata !DIExpression()), !dbg !1867
  br label %255, !dbg !1872

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1654, metadata !DIExpression()), !dbg !1867
  br i1 %114, label %251, label %252, !dbg !1873

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1874

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1877

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %254, metadata !1654, metadata !DIExpression()), !dbg !1867
  br i1 %113, label %255, label %661, !dbg !1880

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %256, metadata !1654, metadata !DIExpression()), !dbg !1867
  br i1 %103, label %524, label %478, !dbg !1882

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1883
  br i1 %258, label %259, label %264, !dbg !1885

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1886, !tbaa !726
  %261 = icmp ne i8 %260, 0, !dbg !1887
  %262 = icmp ne i64 %122, 0, !dbg !1888
  %263 = or i1 %262, %261, !dbg !1890
  br i1 %263, label %467, label %270, !dbg !1890

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1891
  %266 = icmp ne i64 %122, 0, !dbg !1888
  %267 = or i1 %266, %265, !dbg !1885
  br i1 %267, label %467, label %270, !dbg !1885

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1888
  br i1 %269, label %270, label %467, !dbg !1892

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1657, metadata !DIExpression()), !dbg !1774
  br label %271, !dbg !1893

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %272, metadata !1657, metadata !DIExpression()), !dbg !1774
  br i1 %113, label %467, label %661, !dbg !1894

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 1, metadata !1657, metadata !DIExpression()), !dbg !1774
  br i1 %114, label %274, label %467, !dbg !1896

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1897

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1900
  %277 = icmp ne i64 %124, 0, !dbg !1902
  %278 = or i1 %277, %276, !dbg !1903
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1903
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %280, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %279, metadata !1641, metadata !DIExpression()), !dbg !1704
  %281 = icmp ult i64 %123, %280, !dbg !1904
  br i1 %281, label %282, label %284, !dbg !1907

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1904
  store i8 39, i8* %283, align 1, !dbg !1904, !tbaa !726
  br label %284, !dbg !1904

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %285, metadata !1640, metadata !DIExpression()), !dbg !1703
  %286 = icmp ult i64 %285, %280, !dbg !1908
  br i1 %286, label %287, label %289, !dbg !1911

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1908
  store i8 92, i8* %288, align 1, !dbg !1908, !tbaa !726
  br label %289, !dbg !1908

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %290, metadata !1640, metadata !DIExpression()), !dbg !1703
  %291 = icmp ult i64 %290, %280, !dbg !1912
  br i1 %291, label %292, label %294, !dbg !1915

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1912
  store i8 39, i8* %293, align 1, !dbg !1912, !tbaa !726
  br label %294, !dbg !1912

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %295, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1711
  br label %467, !dbg !1916

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1917

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1658, metadata !DIExpression()), !dbg !1918
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1919
  %299 = load i16*, i16** %298, align 8, !dbg !1919, !tbaa !647
  %300 = zext i8 %157 to i64, !dbg !1919
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1919
  %302 = load i16, i16* %301, align 2, !dbg !1919, !tbaa !1921
  %303 = lshr i16 %302, 14, !dbg !1922
  %304 = trunc i16 %303 to i8, !dbg !1922
  %305 = and i8 %304, 1, !dbg !1922
  call void @llvm.dbg.value(metadata i8 %305, metadata !1661, metadata !DIExpression()), !dbg !1923
  br label %359, !dbg !1924

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1925
  store i64 0, i64* %10, align 8, !dbg !1926
  call void @llvm.dbg.value(metadata i64 0, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 1, metadata !1661, metadata !DIExpression()), !dbg !1923
  %307 = icmp eq i64 %154, -1, !dbg !1927
  br i1 %307, label %308, label %310, !dbg !1929

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %309, metadata !1633, metadata !DIExpression()), !dbg !1697
  br label %310, !dbg !1931

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1932
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  br label %312, !dbg !1933

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1934
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1935
  call void @llvm.dbg.value(metadata i8 %314, metadata !1661, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1936
  %315 = add i64 %313, %122, !dbg !1937
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1938
  %317 = sub i64 %311, %315, !dbg !1939
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1662, metadata !DIExpression(DW_OP_deref)), !dbg !1940
  call void @llvm.dbg.value(metadata i32* %12, metadata !1680, metadata !DIExpression(DW_OP_deref)), !dbg !1941
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %318, metadata !1683, metadata !DIExpression()), !dbg !1943
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1944

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  %320 = icmp ugt i64 %311, %315, !dbg !1945
  br i1 %320, label %321, label %344, !dbg !1947

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1658, metadata !DIExpression()), !dbg !1918
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1948
  %325 = load i8, i8* %324, align 1, !dbg !1948, !tbaa !726
  %326 = icmp eq i8 %325, 0, !dbg !1947
  br i1 %326, label %344, label %327, !dbg !1949

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %328, metadata !1658, metadata !DIExpression()), !dbg !1918
  %329 = add i64 %328, %122, !dbg !1951
  %330 = icmp ult i64 %329, %311, !dbg !1945
  br i1 %330, label %321, label %344, !dbg !1947, !llvm.loop !1952

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1953
  %333 = and i1 %116, %332, !dbg !1956
  call void @llvm.dbg.value(metadata i64 1, metadata !1684, metadata !DIExpression()), !dbg !1957
  br i1 %333, label %334, label %347, !dbg !1956

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1684, metadata !DIExpression()), !dbg !1957
  %336 = add i64 %335, %315, !dbg !1958
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1959
  %338 = load i8, i8* %337, align 1, !dbg !1959, !tbaa !726
  %339 = sext i8 %338 to i32, !dbg !1959
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1960

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %341, metadata !1684, metadata !DIExpression()), !dbg !1957
  %342 = icmp ult i64 %341, %318, !dbg !1953
  br i1 %342, label %334, label %347, !dbg !1962, !llvm.loop !1963

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 %314, metadata !1661, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %313, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 %314, metadata !1661, metadata !DIExpression()), !dbg !1923
  br label %344, !dbg !1965

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1661, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %352, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1965
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1966, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %348, metadata !1680, metadata !DIExpression()), !dbg !1941
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1968
  %350 = icmp eq i32 %349, 0, !dbg !1968
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1969
  call void @llvm.dbg.value(metadata i8 %351, metadata !1661, metadata !DIExpression()), !dbg !1923
  %352 = add i64 %318, %313, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %352, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 %351, metadata !1661, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %352, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1965
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1662, metadata !DIExpression(DW_OP_deref)), !dbg !1940
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1971
  %354 = icmp eq i32 %353, 0, !dbg !1972
  br i1 %354, label %312, label %355, !dbg !1973, !llvm.loop !1974

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1976
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 2, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 2, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 2, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 2, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 2, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %94, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %94, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %94, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %94, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %94, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %311, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 %351, metadata !1661, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %352, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1965
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1976
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1977
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1978
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1978
  call void @llvm.dbg.value(metadata i8 %362, metadata !1661, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %361, metadata !1658, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %360, metadata !1633, metadata !DIExpression()), !dbg !1697
  %363 = and i8 %362, 1, !dbg !1979
  %364 = icmp ne i8 %363, 0, !dbg !1979
  call void @llvm.dbg.value(metadata i8 %363, metadata !1657, metadata !DIExpression()), !dbg !1774
  %365 = icmp ult i64 %361, 2, !dbg !1980
  %366 = or i1 %364, %115, !dbg !1981
  %367 = and i1 %365, %366, !dbg !1982
  br i1 %367, label %467, label %368, !dbg !1982

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %369, metadata !1691, metadata !DIExpression()), !dbg !1984
  br label %370, !dbg !1985

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1986
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1990
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1711
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1986
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1992
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1773
  call void @llvm.dbg.value(metadata i8 %376, metadata !1656, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %375, metadata !1655, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 %374, metadata !1650, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %373, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %372, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %371, metadata !1639, metadata !DIExpression()), !dbg !1763
  br i1 %366, label %423, label %377, !dbg !1996

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1997

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1656, metadata !DIExpression()), !dbg !1773
  %379 = and i8 %373, 1, !dbg !2000
  %380 = icmp eq i8 %379, 0, !dbg !2000
  %381 = and i1 %114, %380, !dbg !2000
  br i1 %381, label %382, label %398, !dbg !2000

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2002
  br i1 %383, label %384, label %386, !dbg !2006

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2002
  store i8 39, i8* %385, align 1, !dbg !2002, !tbaa !726
  br label %386, !dbg !2002

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %387, metadata !1640, metadata !DIExpression()), !dbg !1703
  %388 = icmp ult i64 %387, %129, !dbg !2007
  br i1 %388, label %389, label %391, !dbg !2010

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2007
  store i8 36, i8* %390, align 1, !dbg !2007, !tbaa !726
  br label %391, !dbg !2007

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %392, metadata !1640, metadata !DIExpression()), !dbg !1703
  %393 = icmp ult i64 %392, %129, !dbg !2011
  br i1 %393, label %394, label %396, !dbg !2014

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2011
  store i8 39, i8* %395, align 1, !dbg !2011, !tbaa !726
  br label %396, !dbg !2011

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %397, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 1, metadata !1647, metadata !DIExpression()), !dbg !1711
  br label %398, !dbg !2015

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1762
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %400, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %399, metadata !1640, metadata !DIExpression()), !dbg !1703
  %401 = icmp ult i64 %399, %129, !dbg !2016
  br i1 %401, label %402, label %404, !dbg !2019

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2016
  store i8 92, i8* %403, align 1, !dbg !2016, !tbaa !726
  br label %404, !dbg !2016

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %405, metadata !1640, metadata !DIExpression()), !dbg !1703
  %406 = icmp ult i64 %405, %129, !dbg !2020
  br i1 %406, label %407, label %411, !dbg !2023

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2020
  %409 = or i8 %408, 48, !dbg !2020
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2020
  store i8 %409, i8* %410, align 1, !dbg !2020, !tbaa !726
  br label %411, !dbg !2020

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %412, metadata !1640, metadata !DIExpression()), !dbg !1703
  %413 = icmp ult i64 %412, %129, !dbg !2024
  br i1 %413, label %414, label %419, !dbg !2027

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2024
  %416 = and i8 %415, 7, !dbg !2024
  %417 = or i8 %416, 48, !dbg !2024
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2024
  store i8 %417, i8* %418, align 1, !dbg !2024, !tbaa !726
  br label %419, !dbg !2024

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %420, metadata !1640, metadata !DIExpression()), !dbg !1703
  %421 = and i8 %374, 7, !dbg !2028
  %422 = or i8 %421, 48, !dbg !2029
  call void @llvm.dbg.value(metadata i8 %422, metadata !1650, metadata !DIExpression()), !dbg !1789
  br label %432, !dbg !2030

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2031
  %425 = icmp eq i8 %424, 0, !dbg !2031
  br i1 %425, label %432, label %426, !dbg !2032

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2033
  br i1 %427, label %428, label %430, !dbg !2036

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2033
  store i8 92, i8* %429, align 1, !dbg !2033, !tbaa !726
  br label %430, !dbg !2033

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %431, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1655, metadata !DIExpression()), !dbg !1772
  br label %432, !dbg !2037

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2038
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1711
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2039
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2040
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2042
  call void @llvm.dbg.value(metadata i8 %437, metadata !1656, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %436, metadata !1655, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 %435, metadata !1650, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %434, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %433, metadata !1640, metadata !DIExpression()), !dbg !1703
  %438 = add i64 %371, 1, !dbg !2043
  %439 = icmp ugt i64 %369, %438, !dbg !2045
  br i1 %439, label %440, label %562, !dbg !2046

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2047
  %442 = icmp ne i8 %441, 0, !dbg !2047
  %443 = and i8 %437, 1, !dbg !2047
  %444 = icmp eq i8 %443, 0, !dbg !2047
  %445 = and i1 %442, %444, !dbg !2047
  br i1 %445, label %446, label %457, !dbg !2047

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2050
  br i1 %447, label %448, label %450, !dbg !2054

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2050
  store i8 39, i8* %449, align 1, !dbg !2050, !tbaa !726
  br label %450, !dbg !2050

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %451, metadata !1640, metadata !DIExpression()), !dbg !1703
  %452 = icmp ult i64 %451, %129, !dbg !2055
  br i1 %452, label %453, label %455, !dbg !2058

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2055
  store i8 39, i8* %454, align 1, !dbg !2055, !tbaa !726
  br label %455, !dbg !2055

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %456, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1711
  br label %457, !dbg !2059

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2060
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %459, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %458, metadata !1640, metadata !DIExpression()), !dbg !1703
  %460 = icmp ult i64 %458, %129, !dbg !2061
  br i1 %460, label %461, label %463, !dbg !2063

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2061
  store i8 %435, i8* %462, align 1, !dbg !2061, !tbaa !726
  br label %463, !dbg !2061

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %464, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %438, metadata !1639, metadata !DIExpression()), !dbg !1763
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2064
  %466 = load i8, i8* %465, align 1, !dbg !2064, !tbaa !726
  call void @llvm.dbg.value(metadata i8 %466, metadata !1650, metadata !DIExpression()), !dbg !1789
  br label %370, !dbg !2065, !llvm.loop !2066

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2069
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1762
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1704
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2070
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1762
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1762
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1787
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1787
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1787
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %476, metadata !1657, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %475, metadata !1656, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %155, metadata !1655, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 %474, metadata !1650, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %473, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %472, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %471, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %470, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %469, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %468, metadata !1639, metadata !DIExpression()), !dbg !1763
  br i1 %105, label %489, label %478, !dbg !2071

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
  br i1 %112, label %490, label %512, !dbg !2073

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2074

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
  %501 = lshr i8 %494, 5, !dbg !2075
  %502 = zext i8 %501 to i64, !dbg !2075
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2076
  %504 = load i32, i32* %503, align 4, !dbg !2076, !tbaa !737
  %505 = and i8 %494, 31, !dbg !2077
  %506 = zext i8 %505 to i32, !dbg !2077
  %507 = shl i32 1, %506, !dbg !2078
  %508 = and i32 %504, %507, !dbg !2078
  %509 = icmp eq i32 %508, 0, !dbg !2078
  %510 = icmp eq i8 %155, 0, !dbg !2079
  %511 = and i1 %510, %509, !dbg !2080
  br i1 %511, label %562, label %524, !dbg !2080

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
  %523 = icmp eq i8 %155, 0, !dbg !2079
  br i1 %523, label %562, label %524, !dbg !2081

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2082
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1762
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1704
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2070
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1711
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1712
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2083
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1787
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %532, metadata !1657, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %531, metadata !1650, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %530, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %529, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %528, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %527, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %526, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %525, metadata !1639, metadata !DIExpression()), !dbg !1763
  br i1 %110, label %534, label %661, !dbg !2086

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1656, metadata !DIExpression()), !dbg !1773
  %535 = and i8 %529, 1, !dbg !2088
  %536 = icmp eq i8 %535, 0, !dbg !2088
  %537 = and i1 %114, %536, !dbg !2088
  br i1 %537, label %538, label %554, !dbg !2088

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2090
  br i1 %539, label %540, label %542, !dbg !2094

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2090
  store i8 39, i8* %541, align 1, !dbg !2090, !tbaa !726
  br label %542, !dbg !2090

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %543, metadata !1640, metadata !DIExpression()), !dbg !1703
  %544 = icmp ult i64 %543, %533, !dbg !2095
  br i1 %544, label %545, label %547, !dbg !2098

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2095
  store i8 36, i8* %546, align 1, !dbg !2095, !tbaa !726
  br label %547, !dbg !2095

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %548, metadata !1640, metadata !DIExpression()), !dbg !1703
  %549 = icmp ult i64 %548, %533, !dbg !2099
  br i1 %549, label %550, label %552, !dbg !2102

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2099
  store i8 39, i8* %551, align 1, !dbg !2099, !tbaa !726
  br label %552, !dbg !2099

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %553, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 1, metadata !1647, metadata !DIExpression()), !dbg !1711
  br label %554, !dbg !2103

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2060
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %556, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %555, metadata !1640, metadata !DIExpression()), !dbg !1703
  %557 = icmp ult i64 %555, %533, !dbg !2104
  br i1 %557, label %558, label %560, !dbg !2107

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2104
  store i8 92, i8* %559, align 1, !dbg !2104, !tbaa !726
  br label %560, !dbg !2104

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %561, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %572, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %571, metadata !1657, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %570, metadata !1656, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %569, metadata !1650, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %568, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %567, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %566, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %565, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %564, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %563, metadata !1639, metadata !DIExpression()), !dbg !1763
  br label %589, !dbg !2108

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2082
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1762
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1704
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2070
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1711
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1712
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2111
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1787
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1787
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %571, metadata !1657, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %570, metadata !1656, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %569, metadata !1650, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %568, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %567, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %566, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %565, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %564, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %563, metadata !1639, metadata !DIExpression()), !dbg !1763
  %573 = and i8 %567, 1, !dbg !2108
  %574 = icmp ne i8 %573, 0, !dbg !2108
  %575 = and i8 %570, 1, !dbg !2108
  %576 = icmp eq i8 %575, 0, !dbg !2108
  %577 = and i1 %574, %576, !dbg !2108
  br i1 %577, label %578, label %589, !dbg !2108

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2112
  br i1 %579, label %580, label %582, !dbg !2116

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2112
  store i8 39, i8* %581, align 1, !dbg !2112, !tbaa !726
  br label %582, !dbg !2112

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %583, metadata !1640, metadata !DIExpression()), !dbg !1703
  %584 = icmp ult i64 %583, %572, !dbg !2117
  br i1 %584, label %585, label %587, !dbg !2120

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2117
  store i8 39, i8* %586, align 1, !dbg !2117, !tbaa !726
  br label %587, !dbg !2117

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %588, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1711
  br label %589, !dbg !2121

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2060
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %598, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %597, metadata !1640, metadata !DIExpression()), !dbg !1703
  %599 = icmp ult i64 %597, %590, !dbg !2122
  br i1 %599, label %600, label %602, !dbg !2125

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2122
  store i8 %592, i8* %601, align 1, !dbg !2122, !tbaa !726
  br label %602, !dbg !2122

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %603, metadata !1640, metadata !DIExpression()), !dbg !1703
  %604 = and i8 %591, 1, !dbg !2126
  %605 = icmp eq i8 %604, 0, !dbg !2126
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2128
  call void @llvm.dbg.value(metadata i8 %606, metadata !1649, metadata !DIExpression()), !dbg !1713
  br label %607, !dbg !2129

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2082
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1762
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1704
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2070
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1711
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1762
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1713
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 %614, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %613, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %612, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %611, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %610, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %609, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %608, metadata !1639, metadata !DIExpression()), !dbg !1763
  %616 = add i64 %608, 1, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %616, metadata !1639, metadata !DIExpression()), !dbg !1763
  br label %121, !dbg !2131, !llvm.loop !2132

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %618, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %618, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %125, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %125, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %126, metadata !1647, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %127, metadata !1648, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %128, metadata !1649, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  %619 = icmp eq i64 %123, 0, !dbg !2134
  %620 = and i1 %114, %619, !dbg !2136
  %621 = xor i1 %620, true, !dbg !2136
  %622 = or i1 %110, %621, !dbg !2136
  br i1 %622, label %623, label %661, !dbg !2136

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2137
  %625 = xor i1 %624, true, !dbg !2137
  %626 = and i8 %127, 1, !dbg !2139
  %627 = icmp eq i8 %626, 0, !dbg !2139
  %628 = or i1 %627, %625, !dbg !2137
  br i1 %628, label %638, label %629, !dbg !2137

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2140
  %631 = icmp eq i8 %630, 0, !dbg !2140
  br i1 %631, label %634, label %632, !dbg !2143

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %618, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %618, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %618, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %618, metadata !1633, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %95, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %96, metadata !1638, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %124, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %125, metadata !1633, metadata !DIExpression()), !dbg !1697
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2144
  br label %671, !dbg !2145

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2146
  %636 = icmp ne i64 %124, 0, !dbg !2148
  %637 = and i1 %636, %635, !dbg !2149
  br i1 %637, label %27, label %638, !dbg !2149

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %129, metadata !1631, metadata !DIExpression()), !dbg !1695
  %639 = icmp ne i8* %98, null, !dbg !2150
  %640 = and i1 %639, %110, !dbg !2152
  br i1 %640, label %641, label %656, !dbg !2152

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %123, metadata !1640, metadata !DIExpression()), !dbg !1703
  %642 = load i8, i8* %98, align 1, !dbg !2153, !tbaa !726
  %643 = icmp eq i8 %642, 0, !dbg !2156
  br i1 %643, label %656, label %644, !dbg !2156

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %647, metadata !1640, metadata !DIExpression()), !dbg !1703
  %648 = icmp ult i64 %647, %129, !dbg !2157
  br i1 %648, label %649, label %651, !dbg !2160

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2157
  store i8 %645, i8* %650, align 1, !dbg !2157, !tbaa !726
  br label %651, !dbg !2157

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2160
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2161
  call void @llvm.dbg.value(metadata i8* %653, metadata !1642, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %652, metadata !1640, metadata !DIExpression()), !dbg !1703
  %654 = load i8, i8* %653, align 1, !dbg !2153, !tbaa !726
  %655 = icmp eq i8 %654, 0, !dbg !2156
  br i1 %655, label %656, label %644, !dbg !2156, !llvm.loop !2162

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1703
  call void @llvm.dbg.value(metadata i64 %657, metadata !1640, metadata !DIExpression()), !dbg !1703
  %658 = icmp ult i64 %657, %129, !dbg !2164
  br i1 %658, label %659, label %671, !dbg !2166

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2167
  store i8 0, i8* %660, align 1, !dbg !2168, !tbaa !726
  br label %671, !dbg !2167

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1631, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %663, metadata !1633, metadata !DIExpression()), !dbg !1697
  %665 = icmp ne i32 %662, 2, !dbg !2169
  %666 = icmp eq i8 %102, 0, !dbg !2171
  %667 = or i1 %665, %666, !dbg !2172
  call void @llvm.dbg.value(metadata i32 4, metadata !1634, metadata !DIExpression()), !dbg !1698
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %668, metadata !1634, metadata !DIExpression()), !dbg !1698
  %669 = and i32 %5, -3, !dbg !2173
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2174
  br label %671, !dbg !2175

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2176
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2181, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 %1, metadata !2182, metadata !DIExpression()), !dbg !2186
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2187
  call void @llvm.dbg.value(metadata i8* %3, metadata !2183, metadata !DIExpression()), !dbg !2188
  %4 = icmp eq i8* %3, %0, !dbg !2189
  br i1 %4, label %5, label %71, !dbg !2191

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2192
  call void @llvm.dbg.value(metadata i8* %6, metadata !2184, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %6, metadata !2194, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8* null, metadata !2200, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i8 85, metadata !2201, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 84, metadata !2202, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 70, metadata !2203, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 45, metadata !2204, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 56, metadata !2205, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8 0, metadata !2209, metadata !DIExpression()), !dbg !2222
  %7 = load i8, i8* %6, align 1, !dbg !2223, !tbaa !726
  %8 = and i8 %7, -33, !dbg !2223
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2223

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2225, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* null, metadata !2230, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 84, metadata !2231, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8 70, metadata !2232, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 45, metadata !2233, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 56, metadata !2234, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2236, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2237, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 0, metadata !2238, metadata !DIExpression()), !dbg !2251
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2252
  %11 = load i8, i8* %10, align 1, !dbg !2252, !tbaa !726
  %12 = and i8 %11, -33, !dbg !2252
  %13 = icmp eq i8 %12, 84, !dbg !2252
  br i1 %13, label %14, label %68, !dbg !2252

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2254, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* null, metadata !2259, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8 70, metadata !2260, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 45, metadata !2261, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 56, metadata !2262, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 0, metadata !2263, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2264, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8 0, metadata !2266, metadata !DIExpression()), !dbg !2278
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2279
  %16 = load i8, i8* %15, align 1, !dbg !2279, !tbaa !726
  %17 = and i8 %16, -33, !dbg !2279
  %18 = icmp eq i8 %17, 70, !dbg !2279
  br i1 %18, label %19, label %68, !dbg !2279

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2281, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* null, metadata !2286, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8 45, metadata !2287, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 56, metadata !2288, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 0, metadata !2289, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2303
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2304
  %21 = load i8, i8* %20, align 1, !dbg !2304, !tbaa !726
  %22 = icmp eq i8 %21, 45, !dbg !2304
  br i1 %22, label %23, label %68, !dbg !2306

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2307, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8* null, metadata !2312, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8 56, metadata !2313, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8 0, metadata !2314, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2315, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 0, metadata !2316, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2317, metadata !DIExpression()), !dbg !2327
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2328
  %25 = load i8, i8* %24, align 1, !dbg !2328, !tbaa !726
  %26 = icmp eq i8 %25, 56, !dbg !2328
  br i1 %26, label %27, label %68, !dbg !2330

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2331, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* null, metadata !2336, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2337, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2338, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2349
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2350
  %29 = load i8, i8* %28, align 1, !dbg !2350, !tbaa !726
  %30 = icmp eq i8 %29, 0, !dbg !2350
  br i1 %30, label %31, label %68, !dbg !2352

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2353, !tbaa !726
  %33 = icmp eq i8 %32, 96, !dbg !2354
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !2353
  br label %71, !dbg !2355

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2225, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* null, metadata !2230, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 66, metadata !2231, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 49, metadata !2232, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 56, metadata !2233, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 48, metadata !2234, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 51, metadata !2235, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 48, metadata !2236, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8 0, metadata !2237, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 0, metadata !2238, metadata !DIExpression()), !dbg !2368
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2369
  %37 = load i8, i8* %36, align 1, !dbg !2369, !tbaa !726
  %38 = and i8 %37, -33, !dbg !2369
  %39 = icmp eq i8 %38, 66, !dbg !2369
  br i1 %39, label %40, label %68, !dbg !2369

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2254, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8* null, metadata !2259, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 49, metadata !2260, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 56, metadata !2261, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 48, metadata !2262, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8 51, metadata !2263, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 48, metadata !2264, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 0, metadata !2266, metadata !DIExpression()), !dbg !2379
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2380
  %42 = load i8, i8* %41, align 1, !dbg !2380, !tbaa !726
  %43 = icmp eq i8 %42, 49, !dbg !2380
  br i1 %43, label %44, label %68, !dbg !2381

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2281, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8* null, metadata !2286, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 56, metadata !2287, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 48, metadata !2288, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 51, metadata !2289, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 48, metadata !2290, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2390
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2391
  %46 = load i8, i8* %45, align 1, !dbg !2391, !tbaa !726
  %47 = icmp eq i8 %46, 56, !dbg !2391
  br i1 %47, label %48, label %68, !dbg !2392

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2307, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* null, metadata !2312, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 48, metadata !2313, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i8 51, metadata !2314, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 48, metadata !2315, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 0, metadata !2316, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2317, metadata !DIExpression()), !dbg !2400
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2401
  %50 = load i8, i8* %49, align 1, !dbg !2401, !tbaa !726
  %51 = icmp eq i8 %50, 48, !dbg !2401
  br i1 %51, label %52, label %68, !dbg !2402

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2331, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* null, metadata !2336, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 51, metadata !2337, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 48, metadata !2338, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2409
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2410
  %54 = load i8, i8* %53, align 1, !dbg !2410, !tbaa !726
  %55 = icmp eq i8 %54, 51, !dbg !2410
  br i1 %55, label %56, label %68, !dbg !2411

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2412, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* null, metadata !2417, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 48, metadata !2418, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8 0, metadata !2419, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2420, metadata !DIExpression()), !dbg !2428
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2429
  %58 = load i8, i8* %57, align 1, !dbg !2429, !tbaa !726
  %59 = icmp eq i8 %58, 48, !dbg !2429
  br i1 %59, label %60, label %68, !dbg !2431

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2432, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8* null, metadata !2437, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2438, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 0, metadata !2439, metadata !DIExpression()), !dbg !2446
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2447
  %62 = load i8, i8* %61, align 1, !dbg !2447, !tbaa !726
  %63 = icmp eq i8 %62, 0, !dbg !2447
  br i1 %63, label %64, label %68, !dbg !2449

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2450, !tbaa !726
  %66 = icmp eq i8 %65, 96, !dbg !2451
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !2450
  br label %71, !dbg !2452

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2453
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !2454
  br label %71, !dbg !2455

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2456
  ret i8* %72, !dbg !2457
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2458 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2462, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %1, metadata !2463, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %0, metadata !2468, metadata !DIExpression()) #10, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %1, metadata !2473, metadata !DIExpression()) #10, !dbg !2483
  call void @llvm.dbg.value(metadata i64* null, metadata !2474, metadata !DIExpression()) #10, !dbg !2484
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2475, metadata !DIExpression()) #10, !dbg !2485
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2486
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2476, metadata !DIExpression()) #10, !dbg !2487
  %6 = tail call i32* @__errno_location() #17, !dbg !2488
  %7 = load i32, i32* %6, align 4, !dbg !2488, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %7, metadata !2477, metadata !DIExpression()) #10, !dbg !2489
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2490
  %9 = load i32, i32* %8, align 4, !dbg !2490, !tbaa !1563
  %10 = or i32 %9, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %10, metadata !2478, metadata !DIExpression()) #10, !dbg !2492
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2493
  %12 = load i32, i32* %11, align 8, !dbg !2493, !tbaa !1504
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2494
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2495
  %15 = load i8*, i8** %14, align 8, !dbg !2495, !tbaa !1589
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2496
  %17 = load i8*, i8** %16, align 8, !dbg !2496, !tbaa !1592
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2497
  %19 = add i64 %18, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %19, metadata !2479, metadata !DIExpression()) #10, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %19, metadata !2500, metadata !DIExpression()) #10, !dbg !2505
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2507
  call void @llvm.dbg.value(metadata i8* %20, metadata !2480, metadata !DIExpression()) #10, !dbg !2508
  %21 = load i32, i32* %11, align 8, !dbg !2509, !tbaa !1504
  %22 = load i8*, i8** %14, align 8, !dbg !2510, !tbaa !1589
  %23 = load i8*, i8** %16, align 8, !dbg !2511, !tbaa !1592
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2512
  store i32 %7, i32* %6, align 4, !dbg !2513, !tbaa !737
  ret i8* %20, !dbg !2514
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2469 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2468, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %1, metadata !2473, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i64* %2, metadata !2474, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2475, metadata !DIExpression()), !dbg !2518
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2519
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2476, metadata !DIExpression()), !dbg !2520
  %7 = tail call i32* @__errno_location() #17, !dbg !2521
  %8 = load i32, i32* %7, align 4, !dbg !2521, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %8, metadata !2477, metadata !DIExpression()), !dbg !2522
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2523
  %10 = load i32, i32* %9, align 4, !dbg !2523, !tbaa !1563
  %11 = icmp ne i64* %2, null, !dbg !2524
  %12 = xor i1 %11, true, !dbg !2524
  %13 = zext i1 %12 to i32, !dbg !2524
  %14 = or i32 %10, %13, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %14, metadata !2478, metadata !DIExpression()), !dbg !2526
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2527
  %16 = load i32, i32* %15, align 8, !dbg !2527, !tbaa !1504
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2528
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2529
  %19 = load i8*, i8** %18, align 8, !dbg !2529, !tbaa !1589
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2530
  %21 = load i8*, i8** %20, align 8, !dbg !2530, !tbaa !1592
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2531
  %23 = add i64 %22, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %23, metadata !2479, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %23, metadata !2500, metadata !DIExpression()) #10, !dbg !2534
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2536
  call void @llvm.dbg.value(metadata i8* %24, metadata !2480, metadata !DIExpression()), !dbg !2537
  %25 = load i32, i32* %15, align 8, !dbg !2538, !tbaa !1504
  %26 = load i8*, i8** %18, align 8, !dbg !2539, !tbaa !1589
  %27 = load i8*, i8** %20, align 8, !dbg !2540, !tbaa !1592
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2541
  store i32 %8, i32* %7, align 4, !dbg !2542, !tbaa !737
  br i1 %11, label %29, label %30, !dbg !2543

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2544, !tbaa !2546
  br label %30, !dbg !2547

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2548
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2549 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2553, !tbaa !647
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2551, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 1, metadata !2552, metadata !DIExpression()), !dbg !2555
  %2 = load i32, i32* @nslots, align 4, !dbg !2556, !tbaa !737
  %3 = icmp sgt i32 %2, 1, !dbg !2559
  br i1 %3, label %4, label %12, !dbg !2560

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2552, metadata !DIExpression()), !dbg !2555
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2561
  %7 = load i8*, i8** %6, align 8, !dbg !2561, !tbaa !2562
  tail call void @free(i8* %7) #10, !dbg !2564
  %8 = add nuw nsw i64 %5, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i32 undef, metadata !2552, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2555
  %9 = load i32, i32* @nslots, align 4, !dbg !2556, !tbaa !737
  %10 = sext i32 %9 to i64, !dbg !2559
  %11 = icmp slt i64 %8, %10, !dbg !2559
  br i1 %11, label %4, label %12, !dbg !2560, !llvm.loop !2566

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2568
  %14 = load i8*, i8** %13, align 8, !dbg !2568, !tbaa !2562
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2570
  br i1 %15, label %17, label %16, !dbg !2571

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2572
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2574, !tbaa !2575
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2576, !tbaa !2562
  br label %17, !dbg !2577

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2578
  br i1 %18, label %21, label %19, !dbg !2580

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2581
  tail call void @free(i8* %20) #10, !dbg !2583
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2584, !tbaa !647
  br label %21, !dbg !2585

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2586, !tbaa !737
  ret void, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2588 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2592, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8* %1, metadata !2593, metadata !DIExpression()), !dbg !2595
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2596
  ret i8* %3, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2598 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %1, metadata !2603, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %2, metadata !2604, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2605, metadata !DIExpression()), !dbg !2620
  %5 = tail call i32* @__errno_location() #17, !dbg !2621
  %6 = load i32, i32* %5, align 4, !dbg !2621, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %6, metadata !2606, metadata !DIExpression()), !dbg !2622
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2623, !tbaa !647
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2607, metadata !DIExpression()), !dbg !2624
  %8 = icmp slt i32 %0, 0, !dbg !2625
  br i1 %8, label %9, label %10, !dbg !2627

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2628
  unreachable, !dbg !2628

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2629, !tbaa !737
  %12 = icmp sgt i32 %11, %0, !dbg !2630
  br i1 %12, label %34, label %13, !dbg !2631

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2632
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2611, metadata !DIExpression()), !dbg !2633
  %15 = icmp eq i32 %0, 2147483647, !dbg !2634
  br i1 %15, label %16, label %17, !dbg !2636

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2637
  unreachable, !dbg !2637

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2638
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2638
  %20 = add nsw i32 %0, 1, !dbg !2639
  %21 = sext i32 %20 to i64, !dbg !2640
  %22 = shl nsw i64 %21, 4, !dbg !2641
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2642
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2607, metadata !DIExpression()), !dbg !2624
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2643, !tbaa !647
  br i1 %14, label %25, label %26, !dbg !2644

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2645, !tbaa.struct !2647
  br label %26, !dbg !2648

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2649, !tbaa !737
  %28 = sext i32 %27 to i64, !dbg !2650
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2650
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2651
  %31 = sub nsw i32 %20, %27, !dbg !2652
  %32 = sext i32 %31 to i64, !dbg !2653
  %33 = shl nsw i64 %32, 4, !dbg !2654
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2651
  store i32 %20, i32* @nslots, align 4, !dbg !2655, !tbaa !737
  br label %34, !dbg !2656

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2657
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2607, metadata !DIExpression()), !dbg !2624
  %36 = sext i32 %0 to i64, !dbg !2658
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2659
  %38 = load i64, i64* %37, align 8, !dbg !2659, !tbaa !2575
  call void @llvm.dbg.value(metadata i64 %38, metadata !2612, metadata !DIExpression()), !dbg !2660
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2661
  %40 = load i8*, i8** %39, align 8, !dbg !2661, !tbaa !2562
  call void @llvm.dbg.value(metadata i8* %40, metadata !2614, metadata !DIExpression()), !dbg !2662
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2663
  %42 = load i32, i32* %41, align 4, !dbg !2663, !tbaa !1563
  %43 = or i32 %42, 1, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %43, metadata !2615, metadata !DIExpression()), !dbg !2665
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2666
  %45 = load i32, i32* %44, align 8, !dbg !2666, !tbaa !1504
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2667
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2668
  %48 = load i8*, i8** %47, align 8, !dbg !2668, !tbaa !1589
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2669
  %50 = load i8*, i8** %49, align 8, !dbg !2669, !tbaa !1592
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2670
  call void @llvm.dbg.value(metadata i64 %51, metadata !2616, metadata !DIExpression()), !dbg !2671
  %52 = icmp ugt i64 %38, %51, !dbg !2672
  br i1 %52, label %63, label %53, !dbg !2674

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %54, metadata !2612, metadata !DIExpression()), !dbg !2660
  store i64 %54, i64* %37, align 8, !dbg !2677, !tbaa !2575
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2678
  br i1 %55, label %57, label %56, !dbg !2680

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2681
  br label %57, !dbg !2681

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2500, metadata !DIExpression()) #10, !dbg !2682
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %58, metadata !2614, metadata !DIExpression()), !dbg !2662
  store i8* %58, i8** %39, align 8, !dbg !2685, !tbaa !2562
  %59 = load i32, i32* %44, align 8, !dbg !2686, !tbaa !1504
  %60 = load i8*, i8** %47, align 8, !dbg !2687, !tbaa !1589
  %61 = load i8*, i8** %49, align 8, !dbg !2688, !tbaa !1592
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2689
  br label %63, !dbg !2690

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8* %64, metadata !2614, metadata !DIExpression()), !dbg !2662
  store i32 %6, i32* %5, align 4, !dbg !2692, !tbaa !737
  ret i8* %64, !dbg !2693
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2694 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %1, metadata !2699, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %2, metadata !2700, metadata !DIExpression()), !dbg !2703
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2704
  ret i8* %4, !dbg !2705
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2706 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2710, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32 0, metadata !2592, metadata !DIExpression()) #10, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()) #10, !dbg !2714
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2715
  ret i8* %2, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2717 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %1, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()) #10, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()) #10, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()) #10, !dbg !2728
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2729
  ret i8* %3, !dbg !2730
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2731 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2735, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %1, metadata !2736, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %2, metadata !2737, metadata !DIExpression()), !dbg !2741
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %1, metadata !2744, metadata !DIExpression()) #10, !dbg !2750
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2752, !alias.scope !2753
  %6 = icmp eq i32 %1, 10, !dbg !2756
  br i1 %6, label %7, label %8, !dbg !2758

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2759, !noalias !2753
  unreachable, !dbg !2759

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2760
  store i32 %1, i32* %9, align 8, !dbg !2761, !tbaa !1504, !alias.scope !2753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2743
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2749, metadata !DIExpression(DW_OP_deref)), !dbg !2752
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2762
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2763
  ret i8* %10, !dbg !2764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2765 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2769, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 %1, metadata !2770, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %2, metadata !2771, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %3, metadata !2772, metadata !DIExpression()), !dbg !2777
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2778
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2773, metadata !DIExpression(DW_OP_deref)), !dbg !2779
  call void @llvm.dbg.value(metadata i32 %1, metadata !2744, metadata !DIExpression()) #10, !dbg !2780
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2782, !alias.scope !2783
  %7 = icmp eq i32 %1, 10, !dbg !2786
  br i1 %7, label %8, label %9, !dbg !2787

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2788, !noalias !2783
  unreachable, !dbg !2788

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2789
  store i32 %1, i32* %10, align 8, !dbg !2790, !tbaa !1504, !alias.scope !2783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2773, metadata !DIExpression(DW_OP_deref)), !dbg !2779
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2749, metadata !DIExpression(DW_OP_deref)), !dbg !2782
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2791
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2792
  ret i8* %11, !dbg !2793
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2794 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2798, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8* %1, metadata !2799, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 0, metadata !2735, metadata !DIExpression()) #10, !dbg !2802
  call void @llvm.dbg.value(metadata i32 %0, metadata !2736, metadata !DIExpression()) #10, !dbg !2804
  call void @llvm.dbg.value(metadata i8* %1, metadata !2737, metadata !DIExpression()) #10, !dbg !2805
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2806
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2806
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2738, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %0, metadata !2744, metadata !DIExpression()) #10, !dbg !2808
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2810, !alias.scope !2811
  %5 = icmp eq i32 %0, 10, !dbg !2814
  br i1 %5, label %6, label %7, !dbg !2815

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2816, !noalias !2811
  unreachable, !dbg !2816

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2817
  store i32 %0, i32* %8, align 8, !dbg !2818, !tbaa !1504, !alias.scope !2811
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2738, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2807
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2749, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2810
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2819
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2820
  ret i8* %9, !dbg !2821
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2822 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %1, metadata !2827, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %2, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 0, metadata !2769, metadata !DIExpression()) #10, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %0, metadata !2770, metadata !DIExpression()) #10, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %1, metadata !2771, metadata !DIExpression()) #10, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %2, metadata !2772, metadata !DIExpression()) #10, !dbg !2836
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2837
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2773, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %0, metadata !2744, metadata !DIExpression()) #10, !dbg !2839
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2841, !alias.scope !2842
  %6 = icmp eq i32 %0, 10, !dbg !2845
  br i1 %6, label %7, label %8, !dbg !2846

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2847, !noalias !2842
  unreachable, !dbg !2847

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2848
  store i32 %0, i32* %9, align 8, !dbg !2849, !tbaa !1504, !alias.scope !2842
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2773, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2749, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2841
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2850
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2851
  ret i8* %10, !dbg !2852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2853 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %1, metadata !2858, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 %2, metadata !2859, metadata !DIExpression()), !dbg !2863
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2864
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2864
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2865, !tbaa.struct !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2860, metadata !DIExpression(DW_OP_deref)), !dbg !2867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1523, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 %2, metadata !1524, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 1, metadata !1525, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 %2, metadata !1526, metadata !DIExpression()), !dbg !2872
  %6 = lshr i8 %2, 5, !dbg !2873
  %7 = zext i8 %6 to i64, !dbg !2873
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2874
  call void @llvm.dbg.value(metadata i32* %8, metadata !1527, metadata !DIExpression()), !dbg !2875
  %9 = and i8 %2, 31, !dbg !2876
  %10 = zext i8 %9 to i32, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %10, metadata !1529, metadata !DIExpression()), !dbg !2877
  %11 = load i32, i32* %8, align 4, !dbg !2878, !tbaa !737
  %12 = lshr i32 %11, %10, !dbg !2879
  %13 = and i32 %12, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i32 %13, metadata !1530, metadata !DIExpression()), !dbg !2881
  %14 = xor i32 %13, 1, !dbg !2882
  %15 = shl i32 %14, %10, !dbg !2883
  %16 = xor i32 %15, %11, !dbg !2884
  store i32 %16, i32* %8, align 4, !dbg !2884, !tbaa !737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2860, metadata !DIExpression(DW_OP_deref)), !dbg !2867
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2885
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2886
  ret i8* %17, !dbg !2887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2888 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2892, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 %1, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2896
  call void @llvm.dbg.value(metadata i64 -1, metadata !2858, metadata !DIExpression()) #10, !dbg !2898
  call void @llvm.dbg.value(metadata i8 %1, metadata !2859, metadata !DIExpression()) #10, !dbg !2899
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2900
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2900
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2901, !tbaa.struct !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2860, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2902
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1523, metadata !DIExpression()) #10, !dbg !2903
  call void @llvm.dbg.value(metadata i8 %1, metadata !1524, metadata !DIExpression()) #10, !dbg !2905
  call void @llvm.dbg.value(metadata i32 1, metadata !1525, metadata !DIExpression()) #10, !dbg !2906
  call void @llvm.dbg.value(metadata i8 %1, metadata !1526, metadata !DIExpression()) #10, !dbg !2907
  %5 = lshr i8 %1, 5, !dbg !2908
  %6 = zext i8 %5 to i64, !dbg !2908
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2909
  call void @llvm.dbg.value(metadata i32* %7, metadata !1527, metadata !DIExpression()) #10, !dbg !2910
  %8 = and i8 %1, 31, !dbg !2911
  %9 = zext i8 %8 to i32, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %9, metadata !1529, metadata !DIExpression()) #10, !dbg !2912
  %10 = load i32, i32* %7, align 4, !dbg !2913, !tbaa !737
  %11 = lshr i32 %10, %9, !dbg !2914
  %12 = and i32 %11, 1, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %12, metadata !1530, metadata !DIExpression()) #10, !dbg !2916
  %13 = xor i32 %12, 1, !dbg !2917
  %14 = shl i32 %13, %9, !dbg !2918
  %15 = xor i32 %14, %10, !dbg !2919
  store i32 %15, i32* %7, align 4, !dbg !2919, !tbaa !737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2860, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2902
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2921
  ret i8* %16, !dbg !2922
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2923 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %0, metadata !2892, metadata !DIExpression()) #10, !dbg !2927
  call void @llvm.dbg.value(metadata i8 58, metadata !2893, metadata !DIExpression()) #10, !dbg !2929
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2930
  call void @llvm.dbg.value(metadata i64 -1, metadata !2858, metadata !DIExpression()) #10, !dbg !2932
  call void @llvm.dbg.value(metadata i8 58, metadata !2859, metadata !DIExpression()) #10, !dbg !2933
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2934
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2935, !tbaa.struct !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2860, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2936
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1523, metadata !DIExpression()) #10, !dbg !2937
  call void @llvm.dbg.value(metadata i8 58, metadata !1524, metadata !DIExpression()) #10, !dbg !2939
  call void @llvm.dbg.value(metadata i32 1, metadata !1525, metadata !DIExpression()) #10, !dbg !2940
  call void @llvm.dbg.value(metadata i8 58, metadata !1526, metadata !DIExpression()) #10, !dbg !2941
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2942
  call void @llvm.dbg.value(metadata i32* %4, metadata !1527, metadata !DIExpression()) #10, !dbg !2943
  call void @llvm.dbg.value(metadata i32 26, metadata !1529, metadata !DIExpression()) #10, !dbg !2944
  %5 = load i32, i32* %4, align 4, !dbg !2945, !tbaa !737
  %6 = or i32 %5, 67108864, !dbg !2946
  store i32 %6, i32* %4, align 4, !dbg !2946, !tbaa !737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2860, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2936
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2948
  ret i8* %7, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2950 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2858, metadata !DIExpression()) #10, !dbg !2958
  call void @llvm.dbg.value(metadata i8 58, metadata !2859, metadata !DIExpression()) #10, !dbg !2959
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2961, !tbaa.struct !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2860, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1523, metadata !DIExpression()) #10, !dbg !2963
  call void @llvm.dbg.value(metadata i8 58, metadata !1524, metadata !DIExpression()) #10, !dbg !2965
  call void @llvm.dbg.value(metadata i32 1, metadata !1525, metadata !DIExpression()) #10, !dbg !2966
  call void @llvm.dbg.value(metadata i8 58, metadata !1526, metadata !DIExpression()) #10, !dbg !2967
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2968
  call void @llvm.dbg.value(metadata i32* %5, metadata !1527, metadata !DIExpression()) #10, !dbg !2969
  call void @llvm.dbg.value(metadata i32 26, metadata !1529, metadata !DIExpression()) #10, !dbg !2970
  %6 = load i32, i32* %5, align 4, !dbg !2971, !tbaa !737
  %7 = or i32 %6, 67108864, !dbg !2972
  store i32 %7, i32* %5, align 4, !dbg !2972, !tbaa !737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2860, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2962
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2974
  ret i8* %8, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2976 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2982
  call void @llvm.dbg.value(metadata i32 %0, metadata !2978, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32 %1, metadata !2979, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()), !dbg !2986
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2987
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2987
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2988
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2988
  call void @llvm.dbg.value(metadata i32 %1, metadata !2744, metadata !DIExpression()) #10, !dbg !2989
  call void @llvm.dbg.value(metadata i32 0, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2982
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2982, !alias.scope !2990
  %8 = icmp eq i32 %1, 10, !dbg !2993
  br i1 %8, label %9, label %10, !dbg !2994

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2995, !noalias !2990
  unreachable, !dbg !2995

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2982
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2988
  store i32 %1, i32* %11, align 8, !dbg !2988
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2988
  %13 = bitcast i32* %12 to i8*, !dbg !2988
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2988
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2988
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2981, metadata !DIExpression(DW_OP_deref)), !dbg !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1523, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 58, metadata !1524, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 1, metadata !1525, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8 58, metadata !1526, metadata !DIExpression()), !dbg !3001
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3002
  call void @llvm.dbg.value(metadata i32* %14, metadata !1527, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i32 26, metadata !1529, metadata !DIExpression()), !dbg !3004
  %15 = load i32, i32* %14, align 4, !dbg !3005, !tbaa !737
  %16 = or i32 %15, 67108864, !dbg !3006
  store i32 %16, i32* %14, align 4, !dbg !3006, !tbaa !737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2981, metadata !DIExpression(DW_OP_deref)), !dbg !2996
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3008
  ret i8* %17, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3010 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3014, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !3015, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* %2, metadata !3016, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8* %3, metadata !3017, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i32 %0, metadata !3022, metadata !DIExpression()) #10, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %1, metadata !3027, metadata !DIExpression()) #10, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %2, metadata !3028, metadata !DIExpression()) #10, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %3, metadata !3029, metadata !DIExpression()) #10, !dbg !3036
  call void @llvm.dbg.value(metadata i64 -1, metadata !3030, metadata !DIExpression()) #10, !dbg !3037
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3038
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3039, !tbaa.struct !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3031, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()) #10, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %1, metadata !1572, metadata !DIExpression()) #10, !dbg !3043
  call void @llvm.dbg.value(metadata i8* %2, metadata !1573, metadata !DIExpression()) #10, !dbg !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()) #10, !dbg !3041
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3045
  store i32 10, i32* %7, align 8, !dbg !3046, !tbaa !1504
  %8 = icmp ne i8* %1, null, !dbg !3047
  %9 = icmp ne i8* %2, null, !dbg !3048
  %10 = and i1 %8, %9, !dbg !3049
  br i1 %10, label %12, label %11, !dbg !3049

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3050
  unreachable, !dbg !3050

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3051
  store i8* %1, i8** %13, align 8, !dbg !3052, !tbaa !1589
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3053
  store i8* %2, i8** %14, align 8, !dbg !3054, !tbaa !1592
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3031, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3040
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3055
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3056
  ret i8* %15, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3023 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3022, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8* %1, metadata !3027, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %2, metadata !3028, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %3, metadata !3029, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %4, metadata !3030, metadata !DIExpression()), !dbg !3062
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3063
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3064, !tbaa.struct !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3031, metadata !DIExpression(DW_OP_deref)), !dbg !3065
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1571, metadata !DIExpression()) #10, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %1, metadata !1572, metadata !DIExpression()) #10, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %2, metadata !1573, metadata !DIExpression()) #10, !dbg !3069
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1571, metadata !DIExpression()) #10, !dbg !3066
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3070
  store i32 10, i32* %8, align 8, !dbg !3071, !tbaa !1504
  %9 = icmp ne i8* %1, null, !dbg !3072
  %10 = icmp ne i8* %2, null, !dbg !3073
  %11 = and i1 %9, %10, !dbg !3074
  br i1 %11, label %13, label %12, !dbg !3074

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3075
  unreachable, !dbg !3075

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3076
  store i8* %1, i8** %14, align 8, !dbg !3077, !tbaa !1589
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3078
  store i8* %2, i8** %15, align 8, !dbg !3079, !tbaa !1592
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3031, metadata !DIExpression(DW_OP_deref)), !dbg !3065
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3080
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3081
  ret i8* %16, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3083 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8* %1, metadata !3088, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %2, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 0, metadata !3014, metadata !DIExpression()) #10, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %0, metadata !3015, metadata !DIExpression()) #10, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %1, metadata !3016, metadata !DIExpression()) #10, !dbg !3096
  call void @llvm.dbg.value(metadata i8* %2, metadata !3017, metadata !DIExpression()) #10, !dbg !3097
  call void @llvm.dbg.value(metadata i32 0, metadata !3022, metadata !DIExpression()) #10, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()) #10, !dbg !3100
  call void @llvm.dbg.value(metadata i8* %1, metadata !3028, metadata !DIExpression()) #10, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %2, metadata !3029, metadata !DIExpression()) #10, !dbg !3102
  call void @llvm.dbg.value(metadata i64 -1, metadata !3030, metadata !DIExpression()) #10, !dbg !3103
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3104
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3105, !tbaa.struct !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3031, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3106
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1571, metadata !DIExpression()) #10, !dbg !3107
  call void @llvm.dbg.value(metadata i8* %0, metadata !1572, metadata !DIExpression()) #10, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %1, metadata !1573, metadata !DIExpression()) #10, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1571, metadata !DIExpression()) #10, !dbg !3107
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3111
  store i32 10, i32* %6, align 8, !dbg !3112, !tbaa !1504
  %7 = icmp ne i8* %0, null, !dbg !3113
  %8 = icmp ne i8* %1, null, !dbg !3114
  %9 = and i1 %7, %8, !dbg !3115
  br i1 %9, label %11, label %10, !dbg !3115

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3116
  unreachable, !dbg !3116

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3117
  store i8* %0, i8** %12, align 8, !dbg !3118, !tbaa !1589
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3119
  store i8* %1, i8** %13, align 8, !dbg !3120, !tbaa !1592
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3031, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3106
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3121
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3122
  ret i8* %14, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3124 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3128, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %1, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8* %2, metadata !3130, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %3, metadata !3131, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 0, metadata !3022, metadata !DIExpression()) #10, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()) #10, !dbg !3138
  call void @llvm.dbg.value(metadata i8* %1, metadata !3028, metadata !DIExpression()) #10, !dbg !3139
  call void @llvm.dbg.value(metadata i8* %2, metadata !3029, metadata !DIExpression()) #10, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %3, metadata !3030, metadata !DIExpression()) #10, !dbg !3141
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3142
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3143, !tbaa.struct !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3031, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()) #10, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %0, metadata !1572, metadata !DIExpression()) #10, !dbg !3147
  call void @llvm.dbg.value(metadata i8* %1, metadata !1573, metadata !DIExpression()) #10, !dbg !3148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()) #10, !dbg !3145
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3149
  store i32 10, i32* %7, align 8, !dbg !3150, !tbaa !1504
  %8 = icmp ne i8* %0, null, !dbg !3151
  %9 = icmp ne i8* %1, null, !dbg !3152
  %10 = and i1 %8, %9, !dbg !3153
  br i1 %10, label %12, label %11, !dbg !3153

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3154
  unreachable, !dbg !3154

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3155
  store i8* %0, i8** %13, align 8, !dbg !3156, !tbaa !1589
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3157
  store i8* %1, i8** %14, align 8, !dbg !3158, !tbaa !1592
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3031, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3144
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3160
  ret i8* %15, !dbg !3161
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3162 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3166, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %1, metadata !3167, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %2, metadata !3168, metadata !DIExpression()), !dbg !3171
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3172
  ret i8* %4, !dbg !3173
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %1, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 0, metadata !3166, metadata !DIExpression()) #10, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()) #10, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3168, metadata !DIExpression()) #10, !dbg !3185
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3186
  ret i8* %3, !dbg !3187
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3192, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i8* %1, metadata !3193, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32 %0, metadata !3166, metadata !DIExpression()) #10, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %1, metadata !3167, metadata !DIExpression()) #10, !dbg !3198
  call void @llvm.dbg.value(metadata i64 -1, metadata !3168, metadata !DIExpression()) #10, !dbg !3199
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3200
  ret i8* %3, !dbg !3201
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3202 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()) #10, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %0, metadata !3193, metadata !DIExpression()) #10, !dbg !3210
  call void @llvm.dbg.value(metadata i32 0, metadata !3166, metadata !DIExpression()) #10, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()) #10, !dbg !3213
  call void @llvm.dbg.value(metadata i64 -1, metadata !3168, metadata !DIExpression()) #10, !dbg !3214
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3215
  ret i8* %2, !dbg !3216
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3217 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3256, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %1, metadata !3257, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8* %2, metadata !3258, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %3, metadata !3259, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8** %4, metadata !3260, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %5, metadata !3261, metadata !DIExpression()), !dbg !3267
  %7 = icmp eq i8* %1, null, !dbg !3268
  br i1 %7, label %10, label %8, !dbg !3270

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3271
  br label %12, !dbg !3271

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3272
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i32 5) #10, !dbg !3273
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3273
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.86, i64 0, i64 0), i32 5) #10, !dbg !3274
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3274
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
  ], !dbg !3275

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3276
  unreachable, !dbg !3276

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.87, i64 0, i64 0), i32 5) #10, !dbg !3278
  %20 = load i8*, i8** %4, align 8, !dbg !3278, !tbaa !647
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3278
  br label %146, !dbg !3279

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.88, i64 0, i64 0), i32 5) #10, !dbg !3280
  %24 = load i8*, i8** %4, align 8, !dbg !3280, !tbaa !647
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3280
  %26 = load i8*, i8** %25, align 8, !dbg !3280, !tbaa !647
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3280
  br label %146, !dbg !3281

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.89, i64 0, i64 0), i32 5) #10, !dbg !3282
  %30 = load i8*, i8** %4, align 8, !dbg !3282, !tbaa !647
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3282
  %32 = load i8*, i8** %31, align 8, !dbg !3282, !tbaa !647
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3282
  %34 = load i8*, i8** %33, align 8, !dbg !3282, !tbaa !647
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3282
  br label %146, !dbg !3283

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.90, i64 0, i64 0), i32 5) #10, !dbg !3284
  %38 = load i8*, i8** %4, align 8, !dbg !3284, !tbaa !647
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3284
  %40 = load i8*, i8** %39, align 8, !dbg !3284, !tbaa !647
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3284
  %42 = load i8*, i8** %41, align 8, !dbg !3284, !tbaa !647
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3284
  %44 = load i8*, i8** %43, align 8, !dbg !3284, !tbaa !647
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3284
  br label %146, !dbg !3285

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.91, i64 0, i64 0), i32 5) #10, !dbg !3286
  %48 = load i8*, i8** %4, align 8, !dbg !3286, !tbaa !647
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3286
  %50 = load i8*, i8** %49, align 8, !dbg !3286, !tbaa !647
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3286
  %52 = load i8*, i8** %51, align 8, !dbg !3286, !tbaa !647
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3286
  %54 = load i8*, i8** %53, align 8, !dbg !3286, !tbaa !647
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3286
  %56 = load i8*, i8** %55, align 8, !dbg !3286, !tbaa !647
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3286
  br label %146, !dbg !3287

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.92, i64 0, i64 0), i32 5) #10, !dbg !3288
  %60 = load i8*, i8** %4, align 8, !dbg !3288, !tbaa !647
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3288
  %62 = load i8*, i8** %61, align 8, !dbg !3288, !tbaa !647
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3288
  %64 = load i8*, i8** %63, align 8, !dbg !3288, !tbaa !647
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3288
  %66 = load i8*, i8** %65, align 8, !dbg !3288, !tbaa !647
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3288
  %68 = load i8*, i8** %67, align 8, !dbg !3288, !tbaa !647
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3288
  %70 = load i8*, i8** %69, align 8, !dbg !3288, !tbaa !647
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3288
  br label %146, !dbg !3289

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.93, i64 0, i64 0), i32 5) #10, !dbg !3290
  %74 = load i8*, i8** %4, align 8, !dbg !3290, !tbaa !647
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3290
  %76 = load i8*, i8** %75, align 8, !dbg !3290, !tbaa !647
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3290
  %78 = load i8*, i8** %77, align 8, !dbg !3290, !tbaa !647
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3290
  %80 = load i8*, i8** %79, align 8, !dbg !3290, !tbaa !647
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3290
  %82 = load i8*, i8** %81, align 8, !dbg !3290, !tbaa !647
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3290
  %84 = load i8*, i8** %83, align 8, !dbg !3290, !tbaa !647
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3290
  %86 = load i8*, i8** %85, align 8, !dbg !3290, !tbaa !647
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3290
  br label %146, !dbg !3291

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.94, i64 0, i64 0), i32 5) #10, !dbg !3292
  %90 = load i8*, i8** %4, align 8, !dbg !3292, !tbaa !647
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3292
  %92 = load i8*, i8** %91, align 8, !dbg !3292, !tbaa !647
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3292
  %94 = load i8*, i8** %93, align 8, !dbg !3292, !tbaa !647
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3292
  %96 = load i8*, i8** %95, align 8, !dbg !3292, !tbaa !647
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3292
  %98 = load i8*, i8** %97, align 8, !dbg !3292, !tbaa !647
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3292
  %100 = load i8*, i8** %99, align 8, !dbg !3292, !tbaa !647
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3292
  %102 = load i8*, i8** %101, align 8, !dbg !3292, !tbaa !647
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3292
  %104 = load i8*, i8** %103, align 8, !dbg !3292, !tbaa !647
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3292
  br label %146, !dbg !3293

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.95, i64 0, i64 0), i32 5) #10, !dbg !3294
  %108 = load i8*, i8** %4, align 8, !dbg !3294, !tbaa !647
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3294
  %110 = load i8*, i8** %109, align 8, !dbg !3294, !tbaa !647
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3294
  %112 = load i8*, i8** %111, align 8, !dbg !3294, !tbaa !647
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3294
  %114 = load i8*, i8** %113, align 8, !dbg !3294, !tbaa !647
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3294
  %116 = load i8*, i8** %115, align 8, !dbg !3294, !tbaa !647
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3294
  %118 = load i8*, i8** %117, align 8, !dbg !3294, !tbaa !647
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3294
  %120 = load i8*, i8** %119, align 8, !dbg !3294, !tbaa !647
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3294
  %122 = load i8*, i8** %121, align 8, !dbg !3294, !tbaa !647
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3294
  %124 = load i8*, i8** %123, align 8, !dbg !3294, !tbaa !647
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3294
  br label %146, !dbg !3295

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.96, i64 0, i64 0), i32 5) #10, !dbg !3296
  %128 = load i8*, i8** %4, align 8, !dbg !3296, !tbaa !647
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3296
  %130 = load i8*, i8** %129, align 8, !dbg !3296, !tbaa !647
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3296
  %132 = load i8*, i8** %131, align 8, !dbg !3296, !tbaa !647
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3296
  %134 = load i8*, i8** %133, align 8, !dbg !3296, !tbaa !647
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3296
  %136 = load i8*, i8** %135, align 8, !dbg !3296, !tbaa !647
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3296
  %138 = load i8*, i8** %137, align 8, !dbg !3296, !tbaa !647
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3296
  %140 = load i8*, i8** %139, align 8, !dbg !3296, !tbaa !647
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3296
  %142 = load i8*, i8** %141, align 8, !dbg !3296, !tbaa !647
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3296
  %144 = load i8*, i8** %143, align 8, !dbg !3296, !tbaa !647
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3296
  br label %146, !dbg !3297

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3299 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3303, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %1, metadata !3304, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %2, metadata !3305, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8* %3, metadata !3306, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8** %4, metadata !3307, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 0, metadata !3308, metadata !DIExpression()), !dbg !3314
  br label %6, !dbg !3315

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3308, metadata !DIExpression()), !dbg !3314
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3319
  %9 = load i8*, i8** %8, align 8, !dbg !3319, !tbaa !647
  %10 = icmp eq i8* %9, null, !dbg !3320
  %11 = add i64 %7, 1, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %11, metadata !3308, metadata !DIExpression()), !dbg !3314
  br i1 %10, label %12, label %6, !dbg !3320, !llvm.loop !3322

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3308, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %7, metadata !3308, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %7, metadata !3308, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %7, metadata !3308, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %7, metadata !3308, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %7, metadata !3308, metadata !DIExpression()), !dbg !3314
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3324
  ret void, !dbg !3325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3326 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3337, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8* %1, metadata !3338, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8* %2, metadata !3339, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i8* %3, metadata !3340, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3341, metadata !DIExpression()), !dbg !3349
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3350
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3350
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3343, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 0, metadata !3342, metadata !DIExpression()), !dbg !3352
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3342, metadata !DIExpression()), !dbg !3352
  %11 = load i32, i32* %8, align 8, !dbg !3353
  %12 = icmp ult i32 %11, 41, !dbg !3353
  br i1 %12, label %13, label %18, !dbg !3353

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3353
  %15 = sext i32 %11 to i64, !dbg !3353
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3353
  %17 = add i32 %11, 8, !dbg !3353
  store i32 %17, i32* %8, align 8, !dbg !3353
  br label %21, !dbg !3353

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3353
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3353
  store i8* %20, i8** %10, align 8, !dbg !3353
  br label %21, !dbg !3353

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3353
  %25 = load i8*, i8** %24, align 8, !dbg !3353
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3356
  store i8* %25, i8** %26, align 16, !dbg !3357, !tbaa !647
  %27 = icmp eq i8* %25, null, !dbg !3358
  br i1 %27, label %30, label %28, !dbg !3359

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 1, metadata !3342, metadata !DIExpression()), !dbg !3352
  %29 = icmp ult i32 %22, 41, !dbg !3353
  br i1 %29, label %35, label %32, !dbg !3353

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3360
  call void @llvm.dbg.value(metadata i64 %31, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %31, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3361
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3362
  ret void, !dbg !3362

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3353
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3353
  store i8* %34, i8** %10, align 8, !dbg !3353
  br label %40, !dbg !3353

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3353
  %37 = sext i32 %22 to i64, !dbg !3353
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3353
  %39 = add i32 %22, 8, !dbg !3353
  store i32 %39, i32* %8, align 8, !dbg !3353
  br label %40, !dbg !3353

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3353
  %44 = load i8*, i8** %43, align 8, !dbg !3353
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3356
  store i8* %44, i8** %45, align 8, !dbg !3357, !tbaa !647
  %46 = icmp eq i8* %44, null, !dbg !3358
  br i1 %46, label %30, label %47, !dbg !3359

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 2, metadata !3342, metadata !DIExpression()), !dbg !3352
  %48 = icmp ult i32 %41, 41, !dbg !3353
  br i1 %48, label %52, label %49, !dbg !3353

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3353
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3353
  store i8* %51, i8** %10, align 8, !dbg !3353
  br label %57, !dbg !3353

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3353
  %54 = sext i32 %41 to i64, !dbg !3353
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3353
  %56 = add i32 %41, 8, !dbg !3353
  store i32 %56, i32* %8, align 8, !dbg !3353
  br label %57, !dbg !3353

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3353
  %61 = load i8*, i8** %60, align 8, !dbg !3353
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3356
  store i8* %61, i8** %62, align 16, !dbg !3357, !tbaa !647
  %63 = icmp eq i8* %61, null, !dbg !3358
  br i1 %63, label %30, label %64, !dbg !3359

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 3, metadata !3342, metadata !DIExpression()), !dbg !3352
  %65 = icmp ult i32 %58, 41, !dbg !3353
  br i1 %65, label %69, label %66, !dbg !3353

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3353
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3353
  store i8* %68, i8** %10, align 8, !dbg !3353
  br label %74, !dbg !3353

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3353
  %71 = sext i32 %58 to i64, !dbg !3353
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3353
  %73 = add i32 %58, 8, !dbg !3353
  store i32 %73, i32* %8, align 8, !dbg !3353
  br label %74, !dbg !3353

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3353
  %78 = load i8*, i8** %77, align 8, !dbg !3353
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3356
  store i8* %78, i8** %79, align 8, !dbg !3357, !tbaa !647
  %80 = icmp eq i8* %78, null, !dbg !3358
  br i1 %80, label %30, label %81, !dbg !3359

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 4, metadata !3342, metadata !DIExpression()), !dbg !3352
  %82 = icmp ult i32 %75, 41, !dbg !3353
  br i1 %82, label %86, label %83, !dbg !3353

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3353
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3353
  store i8* %85, i8** %10, align 8, !dbg !3353
  br label %91, !dbg !3353

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3353
  %88 = sext i32 %75 to i64, !dbg !3353
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3353
  %90 = add i32 %75, 8, !dbg !3353
  store i32 %90, i32* %8, align 8, !dbg !3353
  br label %91, !dbg !3353

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3353
  %95 = load i8*, i8** %94, align 8, !dbg !3353
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3356
  store i8* %95, i8** %96, align 16, !dbg !3357, !tbaa !647
  %97 = icmp eq i8* %95, null, !dbg !3358
  br i1 %97, label %30, label %98, !dbg !3359

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 5, metadata !3342, metadata !DIExpression()), !dbg !3352
  %99 = icmp ult i32 %92, 41, !dbg !3353
  br i1 %99, label %103, label %100, !dbg !3353

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3353
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3353
  store i8* %102, i8** %10, align 8, !dbg !3353
  br label %108, !dbg !3353

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3353
  %105 = sext i32 %92 to i64, !dbg !3353
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3353
  %107 = add i32 %92, 8, !dbg !3353
  store i32 %107, i32* %8, align 8, !dbg !3353
  br label %108, !dbg !3353

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3353
  %111 = load i8*, i8** %110, align 8, !dbg !3353
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3356
  store i8* %111, i8** %112, align 8, !dbg !3357, !tbaa !647
  %113 = icmp eq i8* %111, null, !dbg !3358
  br i1 %113, label %30, label %114, !dbg !3359

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 6, metadata !3342, metadata !DIExpression()), !dbg !3352
  %115 = load i8*, i8** %10, align 8, !dbg !3353
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3353
  store i8* %116, i8** %10, align 8, !dbg !3353
  %117 = bitcast i8* %115 to i8**, !dbg !3353
  %118 = load i8*, i8** %117, align 8, !dbg !3353
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3356
  store i8* %118, i8** %119, align 16, !dbg !3357, !tbaa !647
  %120 = icmp eq i8* %118, null, !dbg !3358
  br i1 %120, label %30, label %121, !dbg !3359

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 7, metadata !3342, metadata !DIExpression()), !dbg !3352
  %122 = load i8*, i8** %10, align 8, !dbg !3353
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3353
  store i8* %123, i8** %10, align 8, !dbg !3353
  %124 = bitcast i8* %122 to i8**, !dbg !3353
  %125 = load i8*, i8** %124, align 8, !dbg !3353
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3356
  store i8* %125, i8** %126, align 8, !dbg !3357, !tbaa !647
  %127 = icmp eq i8* %125, null, !dbg !3358
  br i1 %127, label %30, label %128, !dbg !3359

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 8, metadata !3342, metadata !DIExpression()), !dbg !3352
  %129 = load i8*, i8** %10, align 8, !dbg !3353
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3353
  store i8* %130, i8** %10, align 8, !dbg !3353
  %131 = bitcast i8* %129 to i8**, !dbg !3353
  %132 = load i8*, i8** %131, align 8, !dbg !3353
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3356
  store i8* %132, i8** %133, align 16, !dbg !3357, !tbaa !647
  %134 = icmp eq i8* %132, null, !dbg !3358
  br i1 %134, label %30, label %135, !dbg !3359

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3342, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 9, metadata !3342, metadata !DIExpression()), !dbg !3352
  %136 = load i8*, i8** %10, align 8, !dbg !3353
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3353
  store i8* %137, i8** %10, align 8, !dbg !3353
  %138 = bitcast i8* %136 to i8**, !dbg !3353
  %139 = load i8*, i8** %138, align 8, !dbg !3353
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3356
  store i8* %139, i8** %140, align 8, !dbg !3357, !tbaa !647
  %141 = icmp eq i8* %139, null, !dbg !3358
  %142 = select i1 %141, i64 9, i64 10, !dbg !3359
  br label %30, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3363 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3367, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %1, metadata !3368, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i8* %2, metadata !3369, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8* %3, metadata !3370, metadata !DIExpression()), !dbg !3380
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3381
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3381
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3371, metadata !DIExpression()), !dbg !3382
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3383
  call void @llvm.va_start(i8* nonnull %6), !dbg !3383
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3384
  call void @llvm.va_end(i8* nonnull %6), !dbg !3385
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3386
  ret void, !dbg !3386
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3387 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.99, i64 0, i64 0), i32 5) #10, !dbg !3388
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.100, i64 0, i64 0)) #10, !dbg !3388
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.101, i64 0, i64 0), i32 5) #10, !dbg !3389
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.102, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.103, i64 0, i64 0)) #10, !dbg !3389
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.104, i64 0, i64 0), i32 5) #10, !dbg !3390
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3390, !tbaa !647
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3390
  ret void, !dbg !3391
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3392 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3394, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %1, metadata !3395, metadata !DIExpression()), !dbg !3397
  %3 = udiv i64 9223372036854775807, %1, !dbg !3398
  %4 = icmp ult i64 %3, %0, !dbg !3398
  br i1 %4, label %5, label %6, !dbg !3400

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3401
  unreachable, !dbg !3401

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %7, metadata !3403, metadata !DIExpression()) #10, !dbg !3410
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %8, metadata !3409, metadata !DIExpression()) #10, !dbg !3413
  %9 = icmp eq i8* %8, null, !dbg !3414
  %10 = icmp ne i64 %7, 0, !dbg !3416
  %11 = and i1 %10, %9, !dbg !3417
  br i1 %11, label %12, label %13, !dbg !3417

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3418
  unreachable, !dbg !3418

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3419
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3420
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %2, metadata !3409, metadata !DIExpression()), !dbg !3422
  %3 = icmp eq i8* %2, null, !dbg !3423
  %4 = icmp ne i64 %0, 0, !dbg !3424
  %5 = and i1 %4, %3, !dbg !3425
  br i1 %5, label %6, label %7, !dbg !3425

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3426
  unreachable, !dbg !3426

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3427
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3428 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3432, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %2, metadata !3434, metadata !DIExpression()), !dbg !3437
  %4 = udiv i64 9223372036854775807, %2, !dbg !3438
  %5 = icmp ult i64 %4, %1, !dbg !3438
  br i1 %5, label %6, label %7, !dbg !3440

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3441
  unreachable, !dbg !3441

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %0, metadata !3443, metadata !DIExpression()) #10, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %8, metadata !3448, metadata !DIExpression()) #10, !dbg !3451
  %9 = icmp eq i64 %8, 0, !dbg !3452
  %10 = icmp ne i8* %0, null, !dbg !3454
  %11 = and i1 %10, %9, !dbg !3455
  br i1 %11, label %12, label %13, !dbg !3455

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3456
  br label %19, !dbg !3458

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %14, metadata !3443, metadata !DIExpression()) #10, !dbg !3449
  %15 = icmp eq i8* %14, null, !dbg !3460
  %16 = icmp ne i64 %8, 0, !dbg !3462
  %17 = and i1 %16, %15, !dbg !3463
  br i1 %17, label %18, label %19, !dbg !3463

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3464
  unreachable, !dbg !3464

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3465
  ret i8* %20, !dbg !3466
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3444 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3443, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3448, metadata !DIExpression()), !dbg !3468
  %3 = icmp eq i64 %1, 0, !dbg !3469
  %4 = icmp ne i8* %0, null, !dbg !3470
  %5 = and i1 %4, %3, !dbg !3471
  br i1 %5, label %6, label %7, !dbg !3471

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3472
  br label %13, !dbg !3473

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %8, metadata !3443, metadata !DIExpression()), !dbg !3467
  %9 = icmp eq i8* %8, null, !dbg !3475
  %10 = icmp ne i64 %1, 0, !dbg !3476
  %11 = and i1 %10, %9, !dbg !3477
  br i1 %11, label %12, label %13, !dbg !3477

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3478
  unreachable, !dbg !3478

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3479
  ret i8* %14, !dbg !3480
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !195, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64* %1, metadata !196, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %2, metadata !197, metadata !DIExpression()), !dbg !3483
  %4 = load i64, i64* %1, align 8, !dbg !3484, !tbaa !2546
  call void @llvm.dbg.value(metadata i64 %4, metadata !198, metadata !DIExpression()), !dbg !3485
  %5 = icmp eq i8* %0, null, !dbg !3486
  br i1 %5, label %6, label %20, !dbg !3488

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3489
  br i1 %7, label %8, label %13, !dbg !3492

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %9, metadata !198, metadata !DIExpression()), !dbg !3485
  %10 = icmp ugt i64 %2, 128, !dbg !3495
  %11 = zext i1 %10 to i64, !dbg !3495
  %12 = add nuw nsw i64 %9, %11, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %12, metadata !198, metadata !DIExpression()), !dbg !3485
  br label %13, !dbg !3497

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3498
  call void @llvm.dbg.value(metadata i64 %14, metadata !198, metadata !DIExpression()), !dbg !3485
  %15 = udiv i64 9223372036854775807, %2, !dbg !3499
  %16 = icmp ult i64 %15, %14, !dbg !3499
  br i1 %16, label %19, label %17, !dbg !3501

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !198, metadata !DIExpression()), !dbg !3485
  store i64 %14, i64* %1, align 8, !dbg !3502, !tbaa !2546
  %18 = mul i64 %14, %2, !dbg !3503
  call void @llvm.dbg.value(metadata i8* %0, metadata !3443, metadata !DIExpression()) #10, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %28, metadata !3448, metadata !DIExpression()) #10, !dbg !3506
  br label %31, !dbg !3507

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3508
  unreachable, !dbg !3508

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3509
  %22 = icmp ugt i64 %21, %4, !dbg !3512
  br i1 %22, label %24, label %23, !dbg !3513

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3514
  unreachable, !dbg !3514

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3515
  %26 = add i64 %4, 1, !dbg !3516
  %27 = add i64 %26, %25, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %27, metadata !198, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %27, metadata !198, metadata !DIExpression()), !dbg !3485
  store i64 %27, i64* %1, align 8, !dbg !3502, !tbaa !2546
  %28 = mul i64 %27, %2, !dbg !3503
  call void @llvm.dbg.value(metadata i8* %0, metadata !3443, metadata !DIExpression()) #10, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %28, metadata !3448, metadata !DIExpression()) #10, !dbg !3506
  %29 = icmp eq i64 %28, 0, !dbg !3518
  br i1 %29, label %30, label %31, !dbg !3507

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3519
  br label %38, !dbg !3520

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %33, metadata !3443, metadata !DIExpression()) #10, !dbg !3504
  %34 = icmp eq i8* %33, null, !dbg !3522
  %35 = icmp ne i64 %32, 0, !dbg !3523
  %36 = and i1 %35, %34, !dbg !3524
  br i1 %36, label %37, label %38, !dbg !3524

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3525
  unreachable, !dbg !3525

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3526
  ret i8* %39, !dbg !3527
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3528 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()) #10, !dbg !3532
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %2, metadata !3409, metadata !DIExpression()) #10, !dbg !3535
  %3 = icmp eq i8* %2, null, !dbg !3536
  %4 = icmp ne i64 %0, 0, !dbg !3537
  %5 = and i1 %4, %3, !dbg !3538
  br i1 %5, label %6, label %7, !dbg !3538

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3539
  unreachable, !dbg !3539

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3541 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3545, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64* %1, metadata !3546, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8* %0, metadata !195, metadata !DIExpression()) #10, !dbg !3549
  call void @llvm.dbg.value(metadata i64* %1, metadata !196, metadata !DIExpression()) #10, !dbg !3551
  call void @llvm.dbg.value(metadata i64 1, metadata !197, metadata !DIExpression()) #10, !dbg !3552
  %3 = load i64, i64* %1, align 8, !dbg !3553, !tbaa !2546
  call void @llvm.dbg.value(metadata i64 %3, metadata !198, metadata !DIExpression()) #10, !dbg !3554
  %4 = icmp eq i8* %0, null, !dbg !3555
  br i1 %4, label %5, label %12, !dbg !3556

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3557
  br i1 %6, label %9, label %7, !dbg !3558

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !198, metadata !DIExpression()) #10, !dbg !3554
  %8 = icmp slt i64 %3, 0, !dbg !3559
  br i1 %8, label %11, label %9, !dbg !3560

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !198, metadata !DIExpression()) #10, !dbg !3554
  store i64 %10, i64* %1, align 8, !dbg !3561, !tbaa !2546
  call void @llvm.dbg.value(metadata i8* %0, metadata !3443, metadata !DIExpression()) #10, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %18, metadata !3448, metadata !DIExpression()) #10, !dbg !3564
  br label %21, !dbg !3565

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3566
  unreachable, !dbg !3566

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3567
  br i1 %13, label %15, label %14, !dbg !3568

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3569
  unreachable, !dbg !3569

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3570
  %17 = add i64 %3, 1, !dbg !3571
  %18 = add i64 %17, %16, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %18, metadata !198, metadata !DIExpression()) #10, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %18, metadata !198, metadata !DIExpression()) #10, !dbg !3554
  store i64 %18, i64* %1, align 8, !dbg !3561, !tbaa !2546
  call void @llvm.dbg.value(metadata i8* %0, metadata !3443, metadata !DIExpression()) #10, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %18, metadata !3448, metadata !DIExpression()) #10, !dbg !3564
  %19 = icmp eq i64 %18, 0, !dbg !3573
  br i1 %19, label %20, label %21, !dbg !3565

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3574
  br label %28, !dbg !3575

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %23, metadata !3443, metadata !DIExpression()) #10, !dbg !3562
  %24 = icmp eq i8* %23, null, !dbg !3577
  %25 = icmp ne i64 %22, 0, !dbg !3578
  %26 = and i1 %25, %24, !dbg !3579
  br i1 %26, label %27, label %28, !dbg !3579

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3580
  unreachable, !dbg !3580

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3581
  ret i8* %29, !dbg !3582
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3583 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()) #10, !dbg !3587
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %2, metadata !3409, metadata !DIExpression()) #10, !dbg !3590
  %3 = icmp eq i8* %2, null, !dbg !3591
  %4 = icmp ne i64 %0, 0, !dbg !3592
  %5 = and i1 %4, %3, !dbg !3593
  br i1 %5, label %6, label %7, !dbg !3593

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3594
  unreachable, !dbg !3594

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3595
  ret i8* %2, !dbg !3596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3597 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %1, metadata !3600, metadata !DIExpression()), !dbg !3603
  %3 = udiv i64 9223372036854775807, %1, !dbg !3604
  %4 = icmp ult i64 %3, %0, !dbg !3604
  br i1 %4, label %8, label %5, !dbg !3606

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %6, metadata !3601, metadata !DIExpression()), !dbg !3608
  %7 = icmp eq i8* %6, null, !dbg !3609
  br i1 %7, label %8, label %9, !dbg !3610

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3611
  unreachable, !dbg !3611

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3612
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3613 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()) #10, !dbg !3623
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %3, metadata !3409, metadata !DIExpression()) #10, !dbg !3626
  %4 = icmp eq i8* %3, null, !dbg !3627
  %5 = icmp ne i64 %1, 0, !dbg !3628
  %6 = and i1 %5, %4, !dbg !3629
  br i1 %6, label %7, label %8, !dbg !3629

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3630
  unreachable, !dbg !3630

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3631
  ret i8* %3, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3633 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3635, metadata !DIExpression()), !dbg !3636
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3637
  %3 = add i64 %2, 1, !dbg !3638
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #10, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %3, metadata !3620, metadata !DIExpression()) #10, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %3, metadata !3403, metadata !DIExpression()) #10, !dbg !3642
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %4, metadata !3409, metadata !DIExpression()) #10, !dbg !3645
  %5 = icmp eq i8* %4, null, !dbg !3646
  %6 = icmp ne i64 %3, 0, !dbg !3647
  %7 = and i1 %6, %5, !dbg !3648
  br i1 %7, label %8, label %9, !dbg !3648

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3649
  unreachable, !dbg !3649

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3650
  ret i8* %4, !dbg !3651
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3652 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3654, !tbaa !737
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.117, i64 0, i64 0), i32 5) #10, !dbg !3655
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i64 0, i64 0), i8* %2) #10, !dbg !3656
  tail call void @abort() #15, !dbg !3657
  unreachable, !dbg !3657
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3658 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3661, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3668
  %3 = icmp eq i64 %0, 0, !dbg !3669
  %4 = icmp eq i64 %1, 0, !dbg !3670
  %5 = or i1 %3, %4, !dbg !3671
  br i1 %5, label %12, label %6, !dbg !3671

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %7, metadata !3664, metadata !DIExpression()), !dbg !3673
  %8 = udiv i64 %7, %1, !dbg !3674
  %9 = icmp eq i64 %8, %0, !dbg !3676
  br i1 %9, label %12, label %10, !dbg !3677

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3678
  store i32 12, i32* %11, align 4, !dbg !3680, !tbaa !737
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3661, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %13, metadata !3662, metadata !DIExpression()), !dbg !3668
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3681
  call void @llvm.dbg.value(metadata i8* %15, metadata !3663, metadata !DIExpression()), !dbg !3682
  br label %16, !dbg !3683

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3684
  ret i8* %17, !dbg !3685
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3686 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3725, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3726, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 0, metadata !3728, metadata !DIExpression()), !dbg !3731
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3732
  call void @llvm.dbg.value(metadata i32 %2, metadata !3727, metadata !DIExpression()), !dbg !3733
  %3 = icmp slt i32 %2, 0, !dbg !3734
  br i1 %3, label %4, label %6, !dbg !3736

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3737
  br label %24, !dbg !3738

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3739
  %8 = icmp eq i32 %7, 0, !dbg !3739
  br i1 %8, label %13, label %9, !dbg !3741

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3742
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3743
  %12 = icmp eq i64 %11, -1, !dbg !3744
  br i1 %12, label %16, label %13, !dbg !3745

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3746
  %15 = icmp eq i32 %14, 0, !dbg !3746
  br i1 %15, label %16, label %18, !dbg !3747

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3726, metadata !DIExpression()), !dbg !3730
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3748
  call void @llvm.dbg.value(metadata i32 %21, metadata !3728, metadata !DIExpression()), !dbg !3731
  br label %24, !dbg !3749

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3750
  %20 = load i32, i32* %19, align 4, !dbg !3750, !tbaa !737
  call void @llvm.dbg.value(metadata i32 %20, metadata !3726, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 %20, metadata !3726, metadata !DIExpression()), !dbg !3730
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3748
  call void @llvm.dbg.value(metadata i32 %21, metadata !3728, metadata !DIExpression()), !dbg !3731
  %22 = icmp eq i32 %20, 0, !dbg !3751
  br i1 %22, label %24, label %23, !dbg !3749

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3753, !tbaa !737
  call void @llvm.dbg.value(metadata i32 -1, metadata !3728, metadata !DIExpression()), !dbg !3731
  br label %24, !dbg !3755

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3756
  ret i32 %25, !dbg !3757
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3758 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3797, metadata !DIExpression()), !dbg !3798
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3799
  br i1 %2, label %6, label %3, !dbg !3801

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3802
  %5 = icmp eq i32 %4, 0, !dbg !3802
  br i1 %5, label %6, label %8, !dbg !3803

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3804
  br label %17, !dbg !3805

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3806, metadata !DIExpression()) #10, !dbg !3811
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3813
  %10 = load i32, i32* %9, align 8, !dbg !3813, !tbaa !1011
  %11 = and i32 %10, 256, !dbg !3815
  %12 = icmp eq i32 %11, 0, !dbg !3815
  br i1 %12, label %15, label %13, !dbg !3816

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3817
  br label %15, !dbg !3817

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3818
  br label %17, !dbg !3819

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3820
  ret i32 %18, !dbg !3821
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3822 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3861, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %1, metadata !3862, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 %2, metadata !3863, metadata !DIExpression()), !dbg !3869
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3870
  %5 = load i8*, i8** %4, align 8, !dbg !3870, !tbaa !919
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3871
  %7 = load i8*, i8** %6, align 8, !dbg !3871, !tbaa !915
  %8 = icmp eq i8* %5, %7, !dbg !3872
  br i1 %8, label %9, label %28, !dbg !3873

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3874
  %11 = load i8*, i8** %10, align 8, !dbg !3874, !tbaa !963
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3875
  %13 = load i8*, i8** %12, align 8, !dbg !3875, !tbaa !3876
  %14 = icmp eq i8* %11, %13, !dbg !3877
  br i1 %14, label %15, label %28, !dbg !3878

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3879
  %17 = load i8*, i8** %16, align 8, !dbg !3879, !tbaa !3880
  %18 = icmp eq i8* %17, null, !dbg !3881
  br i1 %18, label %19, label %28, !dbg !3882

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3883
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3884
  call void @llvm.dbg.value(metadata i64 %21, metadata !3864, metadata !DIExpression()), !dbg !3885
  %22 = icmp eq i64 %21, -1, !dbg !3886
  br i1 %22, label %30, label %23, !dbg !3888

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3889
  %25 = load i32, i32* %24, align 8, !dbg !3890, !tbaa !1011
  %26 = and i32 %25, -17, !dbg !3890
  store i32 %26, i32* %24, align 8, !dbg !3890, !tbaa !1011
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3891
  store i64 %21, i64* %27, align 8, !dbg !3892, !tbaa !3893
  br label %30, !dbg !3894

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3895
  br label %30, !dbg !3896

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3897
  ret i32 %31, !dbg !3898
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3899 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3916, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i8* %1, metadata !3917, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %2, metadata !3918, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3919, metadata !DIExpression()), !dbg !3928
  %6 = bitcast i32* %5 to i8*, !dbg !3929
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3929
  %7 = icmp eq i32* %0, null, !dbg !3930
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3932
  call void @llvm.dbg.value(metadata i32* %8, metadata !3916, metadata !DIExpression()), !dbg !3925
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3933
  call void @llvm.dbg.value(metadata i64 %9, metadata !3920, metadata !DIExpression()), !dbg !3934
  %10 = icmp ugt i64 %9, -3, !dbg !3935
  %11 = icmp ne i64 %2, 0, !dbg !3936
  %12 = and i1 %11, %10, !dbg !3937
  br i1 %12, label %13, label %18, !dbg !3937

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3938
  br i1 %14, label %18, label %15, !dbg !3939

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3940, !tbaa !726
  call void @llvm.dbg.value(metadata i8 %16, metadata !3922, metadata !DIExpression()), !dbg !3941
  %17 = zext i8 %16 to i32, !dbg !3942
  store i32 %17, i32* %8, align 4, !dbg !3943, !tbaa !737
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3944
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3945
  ret i64 %19, !dbg !3945
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3946 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3985, metadata !DIExpression()), !dbg !3990
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3991
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3992, metadata !DIExpression()), !dbg !3995
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3997
  %4 = load i32, i32* %3, align 8, !dbg !3997, !tbaa !1011
  %5 = and i32 %4, 32, !dbg !3997
  %6 = icmp eq i32 %5, 0, !dbg !3998
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3999
  %8 = icmp ne i32 %7, 0, !dbg !4000
  br i1 %6, label %9, label %19, !dbg !4001

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4003
  %11 = xor i1 %8, true, !dbg !4004
  %12 = or i1 %10, %11, !dbg !4004
  %13 = sext i1 %8 to i32, !dbg !4004
  br i1 %12, label %22, label %14, !dbg !4004

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4005
  %16 = load i32, i32* %15, align 4, !dbg !4005, !tbaa !737
  %17 = icmp ne i32 %16, 9, !dbg !4006
  %18 = sext i1 %17 to i32, !dbg !4007
  br label %22, !dbg !4007

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4008

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4010
  store i32 0, i32* %21, align 4, !dbg !4012, !tbaa !737
  br label %22, !dbg !4010

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4013
  ret i32 %23, !dbg !4014
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i8 1, metadata !4021, metadata !DIExpression()), !dbg !4024
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4025
  call void @llvm.dbg.value(metadata i8* %2, metadata !4022, metadata !DIExpression()), !dbg !4026
  %3 = icmp eq i8* %2, null, !dbg !4027
  br i1 %3, label %11, label %4, !dbg !4029

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i64 0, i64 0)) #14, !dbg !4030
  %6 = icmp eq i32 %5, 0, !dbg !4035
  br i1 %6, label %10, label %7, !dbg !4036

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0)) #14, !dbg !4037
  %9 = icmp eq i32 %8, 0, !dbg !4038
  br i1 %9, label %10, label %11, !dbg !4039

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4021, metadata !DIExpression()), !dbg !4024
  br label %11, !dbg !4040

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4042 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %1, metadata !4047, metadata !DIExpression()), !dbg !4049
  %2 = icmp eq i8* %1, null, !dbg !4050
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %1, !dbg !4052
  call void @llvm.dbg.value(metadata i8* %3, metadata !4047, metadata !DIExpression()), !dbg !4049
  %4 = load i8, i8* %3, align 1, !dbg !4053, !tbaa !726
  %5 = icmp eq i8 %4, 0, !dbg !4057
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.138, i64 0, i64 0), i8* %3, !dbg !4058
  call void @llvm.dbg.value(metadata i8* %6, metadata !4047, metadata !DIExpression()), !dbg !4049
  ret i8* %6, !dbg !4059
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!2, !70, !76, !84, !174, !91, !98, !177, !167, !185, !202, !204, !206, !208, !210, !212, !215, !217, !219}
!llvm.ident = !{!608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608, !608}
!llvm.module.flags = !{!609, !610, !611, !612, !613}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 59, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !38)
!3 = !DIFile(filename: "src/paste.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !{!30, !32, !33, !34, !35}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 62, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !{!39, !40, !43, !45, !62, !64}
!39 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "serial_merge", scope: !2, file: !3, line: 63, type: !42, isLocal: true, isDefinition: true)
!42 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "delims", scope: !2, file: !3, line: 66, type: !30, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1536, elements: !60)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !50, line: 50, size: 256, elements: !51)
!50 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!51 = !{!52, !55, !57, !59}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !49, file: !50, line: 52, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !49, file: !50, line: 55, baseType: !56, size: 32, offset: 64)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !49, file: !50, line: 56, baseType: !58, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !49, file: !50, line: 57, baseType: !56, size: 32, offset: 192)
!60 = !{!61}
!61 = !DISubrange(count: 6)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 71, type: !34, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "delim_end", scope: !2, file: !3, line: 69, type: !53, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!67 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "Version", scope: !70, file: !71, line: 2, type: !53, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, globals: !73)
!71 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!72 = !{}
!73 = !{!68}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "file_name", scope: !76, file: !81, line: 46, type: !53, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, globals: !78)
!77 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!78 = !{!74, !79}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !76, file: !81, line: 56, type: !42, isLocal: true, isDefinition: true)
!81 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "exit_failure", scope: !84, file: !87, line: 24, type: !88, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, globals: !86)
!85 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!86 = !{!82}
!87 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!88 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "program_name", scope: !91, file: !95, line: 33, type: !53, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !93, globals: !94)
!92 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!93 = !{!32, !30}
!94 = !{!89}
!95 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !98, file: !126, line: 85, type: !161, isLocal: false, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !100, retainedTypes: !121, globals: !123)
!99 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!100 = !{!5, !101, !106}
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 46, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!109 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!121 = !{!56, !122, !35, !30}
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !{!96, !124, !131, !143, !145, !150, !157, !159}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !98, file: !126, line: 101, type: !127, isLocal: false, isDefinition: true)
!126 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 320, elements: !129)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!129 = !{!130}
!130 = !DISubrange(count: 10)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !98, file: !126, line: 1052, type: !133, isLocal: false, isDefinition: true)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !126, line: 65, size: 448, elements: !134)
!134 = !{!135, !136, !137, !141, !142}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !133, file: !126, line: 68, baseType: !5, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !126, line: 71, baseType: !56, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !133, file: !126, line: 75, baseType: !138, size: 256, offset: 64)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !133, file: !126, line: 78, baseType: !53, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !133, file: !126, line: 81, baseType: !53, size: 64, offset: 384)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !98, file: !126, line: 116, type: !133, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "slot0", scope: !98, file: !126, line: 842, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 256)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "slotvec", scope: !98, file: !126, line: 845, type: !152, isLocal: true, isDefinition: true)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !126, line: 834, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !153, file: !126, line: 836, baseType: !35, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !153, file: !126, line: 837, baseType: !30, size: 64, offset: 64)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "nslots", scope: !98, file: !126, line: 843, type: !56, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "slotvec0", scope: !98, file: !126, line: 844, type: !153, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 704, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!163 = !{!164}
!164 = !DISubrange(count: 11)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !167, file: !170, line: 26, type: !171, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, globals: !169)
!168 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!169 = !{!165}
!170 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 376, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 47)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !176)
!175 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!176 = !{!20}
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !179, retainedTypes: !184)
!178 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!179 = !{!180}
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 41, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!182 = !{!183}
!183 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!184 = !{!32}
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !187, retainedTypes: !201)
!186 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!187 = !{!188}
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !190, file: !189, line: 186, baseType: !7, size: 32, elements: !199)
!189 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!190 = distinct !DISubprogram(name: "x2nrealloc", scope: !189, file: !189, line: 174, type: !191, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !194)
!191 = !DISubroutineType(types: !192)
!192 = !{!32, !32, !193, !35}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!194 = !{!195, !196, !197, !198}
!195 = !DILocalVariable(name: "p", arg: 1, scope: !190, file: !189, line: 174, type: !32)
!196 = !DILocalVariable(name: "pn", arg: 2, scope: !190, file: !189, line: 174, type: !193)
!197 = !DILocalVariable(name: "s", arg: 3, scope: !190, file: !189, line: 174, type: !35)
!198 = !DILocalVariable(name: "n", scope: !190, file: !189, line: 176, type: !35)
!199 = !{!200}
!200 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!201 = !{!35, !30, !32}
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72)
!203 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !184)
!205 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72)
!207 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !184)
!209 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !184)
!211 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !214)
!213 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!214 = !{!35}
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72)
!216 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72)
!218 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !184)
!220 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!221 = !{!222}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !223, line: 41, baseType: !7, size: 32, elements: !224)
!223 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!225 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!226 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!227 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!228 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!229 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!230 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!231 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!232 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!233 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!234 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!235 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!236 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!237 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!238 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!239 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!240 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!251 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!252 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!263 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!264 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!265 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!266 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!267 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!268 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!269 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!270 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!271 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!272 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!273 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!274 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!333 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!336 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!337 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!420 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!493 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!494 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!495 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!496 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!497 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!498 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!499 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!500 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!501 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!502 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!503 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!504 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!505 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!506 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!507 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!509 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!510 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!511 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!512 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!513 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!514 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!540 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!541 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!542 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!543 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!544 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!549 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!550 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!551 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!552 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!608 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!609 = !{i32 2, !"Dwarf Version", i32 4}
!610 = !{i32 2, !"Debug Info Version", i32 3}
!611 = !{i32 1, !"wchar_size", i32 4}
!612 = !{i32 7, !"PIC Level", i32 2}
!613 = !{i32 7, !"PIE Level", i32 2}
!614 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 430, type: !615, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !56}
!617 = !{!618}
!618 = !DILocalVariable(name: "status", arg: 1, scope: !614, file: !3, line: 430, type: !56)
!619 = !DILocalVariable(name: "infomap", scope: !620, file: !621, line: 632, type: !635)
!620 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !621, file: !621, line: 630, type: !622, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !624)
!621 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!622 = !DISubroutineType(types: !623)
!623 = !{null, !53}
!624 = !{!625, !619, !626, !627, !634}
!625 = !DILocalVariable(name: "program", arg: 1, scope: !620, file: !621, line: 630, type: !53)
!626 = !DILocalVariable(name: "node", scope: !620, file: !621, line: 642, type: !53)
!627 = !DILocalVariable(name: "map_prog", scope: !620, file: !621, line: 643, type: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !620, file: !621, line: 632, size: 128, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !630, file: !621, line: 632, baseType: !53, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !621, line: 632, baseType: !53, size: 64, offset: 64)
!634 = !DILocalVariable(name: "lc_messages", scope: !620, file: !621, line: 655, type: !53)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 896, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 7)
!638 = !DILocation(line: 632, column: 67, scope: !620, inlinedAt: !639)
!639 = distinct !DILocation(line: 458, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 435, column: 5)
!641 = distinct !DILexicalBlock(scope: !614, file: !3, line: 432, column: 7)
!642 = !DILocation(line: 430, column: 12, scope: !614)
!643 = !DILocation(line: 432, column: 14, scope: !641)
!644 = !DILocation(line: 432, column: 7, scope: !614)
!645 = !DILocation(line: 433, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !3, line: 433, column: 5)
!647 = !{!648, !648, i64 0}
!648 = !{!"any pointer", !649, i64 0}
!649 = !{!"omnipotent char", !650, i64 0}
!650 = !{!"Simple C/C++ TBAA"}
!651 = !DILocation(line: 436, column: 7, scope: !640)
!652 = !DILocation(line: 440, column: 7, scope: !640)
!653 = !DILocation(line: 580, column: 3, scope: !654, inlinedAt: !657)
!654 = distinct !DISubprogram(name: "emit_stdin_note", scope: !621, file: !621, line: 578, type: !655, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!655 = !DISubroutineType(types: !656)
!656 = !{null}
!657 = distinct !DILocation(line: 445, column: 7, scope: !640)
!658 = !DILocation(line: 587, column: 3, scope: !659, inlinedAt: !660)
!659 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !621, file: !621, line: 585, type: !655, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!660 = distinct !DILocation(line: 446, column: 7, scope: !640)
!661 = !DILocation(line: 448, column: 7, scope: !640)
!662 = !DILocation(line: 452, column: 7, scope: !640)
!663 = !DILocation(line: 455, column: 7, scope: !640)
!664 = !DILocation(line: 456, column: 7, scope: !640)
!665 = !DILocation(line: 632, column: 3, scope: !620, inlinedAt: !639)
!666 = !DILocation(line: 643, column: 36, scope: !620, inlinedAt: !639)
!667 = !DILocation(line: 643, column: 25, scope: !620, inlinedAt: !639)
!668 = !DILocation(line: 645, column: 33, scope: !620, inlinedAt: !639)
!669 = !DILocation(line: 645, column: 3, scope: !620, inlinedAt: !639)
!670 = !DILocation(line: 646, column: 13, scope: !620, inlinedAt: !639)
!671 = !DILocation(line: 645, column: 20, scope: !620, inlinedAt: !639)
!672 = !{!673, !648, i64 0}
!673 = !{!"infomap", !648, i64 0, !648, i64 8}
!674 = !DILocation(line: 645, column: 10, scope: !620, inlinedAt: !639)
!675 = !DILocation(line: 645, column: 28, scope: !620, inlinedAt: !639)
!676 = distinct !{!676, !677, !678}
!677 = !DILocation(line: 645, column: 3, scope: !620)
!678 = !DILocation(line: 646, column: 13, scope: !620)
!679 = !DILocation(line: 648, column: 17, scope: !680, inlinedAt: !639)
!680 = distinct !DILexicalBlock(scope: !620, file: !621, line: 648, column: 7)
!681 = !{!673, !648, i64 8}
!682 = !DILocation(line: 648, column: 7, scope: !680, inlinedAt: !639)
!683 = !DILocation(line: 648, column: 7, scope: !620, inlinedAt: !639)
!684 = !DILocation(line: 642, column: 15, scope: !620, inlinedAt: !639)
!685 = !DILocation(line: 651, column: 3, scope: !620, inlinedAt: !639)
!686 = !DILocation(line: 655, column: 29, scope: !620, inlinedAt: !639)
!687 = !DILocation(line: 655, column: 15, scope: !620, inlinedAt: !639)
!688 = !DILocation(line: 656, column: 7, scope: !689, inlinedAt: !639)
!689 = distinct !DILexicalBlock(scope: !620, file: !621, line: 656, column: 7)
!690 = !DILocation(line: 656, column: 19, scope: !689, inlinedAt: !639)
!691 = !DILocation(line: 656, column: 22, scope: !689, inlinedAt: !639)
!692 = !DILocation(line: 656, column: 7, scope: !620, inlinedAt: !639)
!693 = !DILocation(line: 662, column: 7, scope: !694, inlinedAt: !639)
!694 = distinct !DILexicalBlock(scope: !689, file: !621, line: 657, column: 5)
!695 = !DILocation(line: 664, column: 5, scope: !694, inlinedAt: !639)
!696 = !DILocation(line: 665, column: 3, scope: !620, inlinedAt: !639)
!697 = !DILocation(line: 667, column: 3, scope: !620, inlinedAt: !639)
!698 = !DILocation(line: 669, column: 1, scope: !620, inlinedAt: !639)
!699 = !DILocation(line: 460, column: 3, scope: !614)
!700 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 464, type: !701, isLocal: false, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!56, !56, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!704 = !{!705, !706, !707, !708, !709, !710}
!705 = !DILocalVariable(name: "argc", arg: 1, scope: !700, file: !3, line: 464, type: !56)
!706 = !DILocalVariable(name: "argv", arg: 2, scope: !700, file: !3, line: 464, type: !703)
!707 = !DILocalVariable(name: "optc", scope: !700, file: !3, line: 466, type: !56)
!708 = !DILocalVariable(name: "delim_arg", scope: !700, file: !3, line: 467, type: !53)
!709 = !DILocalVariable(name: "nfiles", scope: !700, file: !3, line: 506, type: !56)
!710 = !DILocalVariable(name: "ok", scope: !700, file: !3, line: 522, type: !42)
!711 = !DILocation(line: 464, column: 11, scope: !700)
!712 = !DILocation(line: 464, column: 24, scope: !700)
!713 = !DILocation(line: 470, column: 21, scope: !700)
!714 = !DILocation(line: 470, column: 3, scope: !700)
!715 = !DILocation(line: 471, column: 3, scope: !700)
!716 = !DILocation(line: 472, column: 3, scope: !700)
!717 = !DILocation(line: 473, column: 3, scope: !700)
!718 = !DILocation(line: 475, column: 3, scope: !700)
!719 = !DILocation(line: 480, column: 3, scope: !700)
!720 = !DILocation(line: 480, column: 18, scope: !700)
!721 = !DILocation(line: 467, column: 15, scope: !700)
!722 = !DILocation(line: 466, column: 7, scope: !700)
!723 = !DILocation(line: 486, column: 24, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 483, column: 9)
!725 = distinct !DILexicalBlock(scope: !700, file: !3, line: 481, column: 5)
!726 = !{!649, !649, i64 0}
!727 = !DILocation(line: 486, column: 34, scope: !724)
!728 = !DILocation(line: 487, column: 11, scope: !724)
!729 = distinct !{!729, !719, !730}
!730 = !DILocation(line: 504, column: 5, scope: !700)
!731 = !DILocation(line: 491, column: 11, scope: !724)
!732 = !DILocation(line: 495, column: 11, scope: !724)
!733 = !DILocation(line: 497, column: 9, scope: !724)
!734 = !DILocation(line: 499, column: 9, scope: !724)
!735 = !DILocation(line: 502, column: 11, scope: !724)
!736 = !DILocation(line: 506, column: 23, scope: !700)
!737 = !{!738, !738, i64 0}
!738 = !{!"int", !649, i64 0}
!739 = !DILocation(line: 506, column: 21, scope: !700)
!740 = !DILocation(line: 506, column: 7, scope: !700)
!741 = !DILocation(line: 507, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !700, file: !3, line: 507, column: 7)
!743 = !DILocation(line: 507, column: 7, scope: !700)
!744 = !DILocation(line: 509, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !3, line: 508, column: 5)
!746 = !DILocation(line: 509, column: 20, scope: !745)
!747 = !DILocation(line: 511, column: 5, scope: !745)
!748 = !DILocation(line: 0, scope: !700)
!749 = !DILocalVariable(name: "strptr", arg: 1, scope: !750, file: !3, line: 92, type: !53)
!750 = distinct !DISubprogram(name: "collapse_escapes", scope: !3, file: !3, line: 92, type: !751, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!56, !53}
!753 = !{!749, !754, !755}
!754 = !DILocalVariable(name: "strout", scope: !750, file: !3, line: 94, type: !30)
!755 = !DILocalVariable(name: "backslash_at_end", scope: !750, file: !3, line: 95, type: !42)
!756 = !DILocation(line: 92, column: 31, scope: !750, inlinedAt: !757)
!757 = distinct !DILocation(line: 513, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !700, file: !3, line: 513, column: 7)
!759 = !DILocation(line: 94, column: 18, scope: !750, inlinedAt: !757)
!760 = !DILocation(line: 94, column: 9, scope: !750, inlinedAt: !757)
!761 = !DILocation(line: 95, column: 8, scope: !750, inlinedAt: !757)
!762 = !DILocation(line: 97, column: 10, scope: !750, inlinedAt: !757)
!763 = !DILocation(line: 99, column: 10, scope: !750, inlinedAt: !757)
!764 = !DILocation(line: 99, column: 3, scope: !750, inlinedAt: !757)
!765 = !DILocation(line: 101, column: 19, scope: !766, inlinedAt: !757)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 101, column: 11)
!767 = distinct !DILexicalBlock(scope: !750, file: !3, line: 100, column: 5)
!768 = !DILocation(line: 0, scope: !769, inlinedAt: !757)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 104, column: 9)
!770 = !DILocation(line: 101, column: 11, scope: !767, inlinedAt: !757)
!771 = !DILocation(line: 102, column: 19, scope: !766, inlinedAt: !757)
!772 = !DILocation(line: 102, column: 9, scope: !766, inlinedAt: !757)
!773 = !DILocation(line: 105, column: 19, scope: !769, inlinedAt: !757)
!774 = !DILocation(line: 105, column: 11, scope: !769, inlinedAt: !757)
!775 = !DILocation(line: 113, column: 15, scope: !776, inlinedAt: !757)
!776 = distinct !DILexicalBlock(scope: !769, file: !3, line: 106, column: 13)
!777 = !DILocation(line: 117, column: 15, scope: !776, inlinedAt: !757)
!778 = !DILocation(line: 121, column: 15, scope: !776, inlinedAt: !757)
!779 = !DILocation(line: 125, column: 15, scope: !776, inlinedAt: !757)
!780 = !DILocation(line: 129, column: 15, scope: !776, inlinedAt: !757)
!781 = !DILocation(line: 133, column: 15, scope: !776, inlinedAt: !757)
!782 = !DILocation(line: 137, column: 15, scope: !776, inlinedAt: !757)
!783 = !DILocation(line: 145, column: 15, scope: !776, inlinedAt: !757)
!784 = !DILocation(line: 0, scope: !758)
!785 = !DILocation(line: 147, column: 17, scope: !769, inlinedAt: !757)
!786 = !DILocation(line: 0, scope: !776, inlinedAt: !757)
!787 = distinct !{!787, !788, !789}
!788 = !DILocation(line: 99, column: 3, scope: !750)
!789 = !DILocation(line: 149, column: 5, scope: !750)
!790 = !DILocation(line: 153, column: 13, scope: !750, inlinedAt: !757)
!791 = !DILocation(line: 517, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !758, file: !3, line: 514, column: 5)
!793 = !DILocation(line: 522, column: 15, scope: !700)
!794 = !DILocation(line: 523, column: 15, scope: !700)
!795 = !DILocation(line: 523, column: 29, scope: !700)
!796 = !DILocation(line: 523, column: 24, scope: !700)
!797 = !DILocation(line: 522, column: 14, scope: !700)
!798 = !{i1 (i64, i8**)* @paste_parallel, i1 (i64, i8**)* @paste_serial}
!799 = !DILocation(line: 525, column: 9, scope: !700)
!800 = !DILocation(line: 525, column: 3, scope: !700)
!801 = !DILocation(line: 527, column: 23, scope: !802)
!802 = distinct !DILexicalBlock(scope: !700, file: !3, line: 527, column: 7)
!803 = !DILocation(line: 527, column: 34, scope: !802)
!804 = !DILocation(line: 527, column: 26, scope: !802)
!805 = !DILocation(line: 527, column: 41, scope: !802)
!806 = !DILocation(line: 527, column: 7, scope: !700)
!807 = !DILocation(line: 528, column: 5, scope: !802)
!808 = !DILocation(line: 529, column: 10, scope: !700)
!809 = !DILocation(line: 529, column: 3, scope: !700)
!810 = distinct !DISubprogram(name: "paste_serial", scope: !3, file: !3, line: 348, type: !811, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!42, !35, !703}
!813 = !{!814, !815, !816, !817, !818, !819, !820, !876, !880}
!814 = !DILocalVariable(name: "nfiles", arg: 1, scope: !810, file: !3, line: 348, type: !35)
!815 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !810, file: !3, line: 348, type: !703)
!816 = !DILocalVariable(name: "ok", scope: !810, file: !3, line: 350, type: !42)
!817 = !DILocalVariable(name: "charnew", scope: !810, file: !3, line: 351, type: !56)
!818 = !DILocalVariable(name: "charold", scope: !810, file: !3, line: 351, type: !56)
!819 = !DILocalVariable(name: "delimptr", scope: !810, file: !3, line: 352, type: !53)
!820 = !DILocalVariable(name: "fileptr", scope: !810, file: !3, line: 353, type: !821)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !823, line: 7, baseType: !824)
!823 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !825, line: 49, size: 1728, elements: !826)
!825 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !842, !844, !845, !846, !850, !851, !853, !857, !860, !862, !865, !868, !869, !870, !871, !872}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !824, file: !825, line: 51, baseType: !56, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !824, file: !825, line: 54, baseType: !30, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !824, file: !825, line: 55, baseType: !30, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !824, file: !825, line: 56, baseType: !30, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !824, file: !825, line: 57, baseType: !30, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !824, file: !825, line: 58, baseType: !30, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !824, file: !825, line: 59, baseType: !30, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !824, file: !825, line: 60, baseType: !30, size: 64, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !824, file: !825, line: 61, baseType: !30, size: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !824, file: !825, line: 64, baseType: !30, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !824, file: !825, line: 65, baseType: !30, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !824, file: !825, line: 66, baseType: !30, size: 64, offset: 704)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !824, file: !825, line: 68, baseType: !840, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !825, line: 36, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !824, file: !825, line: 70, baseType: !843, size: 64, offset: 832)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !824, file: !825, line: 72, baseType: !56, size: 32, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !824, file: !825, line: 73, baseType: !56, size: 32, offset: 928)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !824, file: !825, line: 74, baseType: !847, size: 64, offset: 960)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !848, line: 150, baseType: !849)
!848 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!849 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !824, file: !825, line: 77, baseType: !122, size: 16, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !824, file: !825, line: 78, baseType: !852, size: 8, offset: 1040)
!852 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !824, file: !825, line: 79, baseType: !854, size: 8, offset: 1048)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 1)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !824, file: !825, line: 81, baseType: !858, size: 64, offset: 1088)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !825, line: 43, baseType: null)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !824, file: !825, line: 89, baseType: !861, size: 64, offset: 1152)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !848, line: 151, baseType: !849)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !824, file: !825, line: 91, baseType: !863, size: 64, offset: 1216)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !825, line: 37, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !824, file: !825, line: 92, baseType: !866, size: 64, offset: 1280)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !825, line: 38, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !824, file: !825, line: 93, baseType: !843, size: 64, offset: 1344)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !824, file: !825, line: 94, baseType: !32, size: 64, offset: 1408)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !824, file: !825, line: 95, baseType: !35, size: 64, offset: 1472)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !824, file: !825, line: 96, baseType: !56, size: 32, offset: 1536)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !824, file: !825, line: 98, baseType: !873, size: 160, offset: 1568)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 20)
!876 = !DILocalVariable(name: "saved_errno", scope: !877, file: !3, line: 357, type: !56)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 356, column: 5)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 355, column: 3)
!879 = distinct !DILexicalBlock(scope: !810, file: !3, line: 355, column: 3)
!880 = !DILocalVariable(name: "is_stdin", scope: !877, file: !3, line: 358, type: !42)
!881 = !DILocation(line: 348, column: 22, scope: !810)
!882 = !DILocation(line: 348, column: 37, scope: !810)
!883 = !DILocation(line: 350, column: 8, scope: !810)
!884 = !DILocation(line: 355, column: 3, scope: !879)
!885 = !DILocation(line: 358, column: 23, scope: !877)
!886 = !DILocation(line: 359, column: 11, scope: !877)
!887 = !DILocation(line: 362, column: 21, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 360, column: 9)
!889 = distinct !DILexicalBlock(scope: !877, file: !3, line: 359, column: 11)
!890 = !DILocation(line: 353, column: 9, scope: !810)
!891 = !DILocation(line: 363, column: 9, scope: !888)
!892 = !DILocation(line: 366, column: 21, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !3, line: 365, column: 9)
!894 = !DILocation(line: 367, column: 23, scope: !895)
!895 = distinct !DILexicalBlock(scope: !893, file: !3, line: 367, column: 15)
!896 = !DILocation(line: 367, column: 15, scope: !893)
!897 = !DILocation(line: 369, column: 25, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !3, line: 368, column: 13)
!899 = !DILocation(line: 369, column: 38, scope: !898)
!900 = !DILocation(line: 369, column: 15, scope: !898)
!901 = !DILocation(line: 371, column: 15, scope: !898)
!902 = !DILocation(line: 373, column: 11, scope: !893)
!903 = !DILocation(line: 0, scope: !893)
!904 = !DILocation(line: 376, column: 18, scope: !877)
!905 = !DILocation(line: 352, column: 15, scope: !810)
!906 = !DILocalVariable(name: "__fp", arg: 1, scope: !907, file: !908, line: 66, type: !821)
!907 = distinct !DISubprogram(name: "getc_unlocked", scope: !908, file: !908, line: 66, type: !909, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !911)
!908 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!909 = !DISubroutineType(types: !910)
!910 = !{!56, !821}
!911 = !{!906}
!912 = !DILocation(line: 66, column: 22, scope: !907, inlinedAt: !913)
!913 = distinct !DILocation(line: 378, column: 17, scope: !877)
!914 = !DILocation(line: 68, column: 10, scope: !907, inlinedAt: !913)
!915 = !{!916, !648, i64 8}
!916 = !{!"_IO_FILE", !738, i64 0, !648, i64 8, !648, i64 16, !648, i64 24, !648, i64 32, !648, i64 40, !648, i64 48, !648, i64 56, !648, i64 64, !648, i64 72, !648, i64 80, !648, i64 88, !648, i64 96, !648, i64 104, !738, i64 112, !738, i64 116, !917, i64 120, !918, i64 128, !649, i64 130, !649, i64 131, !648, i64 136, !917, i64 144, !648, i64 152, !648, i64 160, !648, i64 168, !648, i64 176, !917, i64 184, !738, i64 192, !649, i64 196}
!917 = !{!"long", !649, i64 0}
!918 = !{!"short", !649, i64 0}
!919 = !{!916, !648, i64 16}
!920 = !{!"branch_weights", i32 2000, i32 1}
!921 = !DILocation(line: 351, column: 16, scope: !810)
!922 = !DILocation(line: 379, column: 21, scope: !877)
!923 = !DILocation(line: 357, column: 11, scope: !877)
!924 = !DILocation(line: 380, column: 11, scope: !877)
!925 = !DILocation(line: 380, column: 19, scope: !926)
!926 = distinct !DILexicalBlock(scope: !877, file: !3, line: 380, column: 11)
!927 = !DILocation(line: 410, column: 22, scope: !928)
!928 = distinct !DILexicalBlock(scope: !877, file: !3, line: 410, column: 11)
!929 = !DILocation(line: 410, column: 11, scope: !877)
!930 = !DILocation(line: 68, column: 10, scope: !907, inlinedAt: !931)
!931 = distinct !DILocation(line: 388, column: 29, scope: !932)
!932 = distinct !DILexicalBlock(scope: !926, file: !3, line: 381, column: 9)
!933 = !DILocation(line: 0, scope: !934)
!934 = distinct !DILexicalBlock(scope: !932, file: !3, line: 389, column: 13)
!935 = !DILocation(line: 66, column: 22, scope: !907, inlinedAt: !931)
!936 = !DILocation(line: 351, column: 7, scope: !810)
!937 = !DILocation(line: 388, column: 11, scope: !932)
!938 = !DILocation(line: 388, column: 45, scope: !932)
!939 = !DILocation(line: 391, column: 30, scope: !940)
!940 = distinct !DILexicalBlock(scope: !934, file: !3, line: 391, column: 19)
!941 = !DILocation(line: 391, column: 27, scope: !940)
!942 = !DILocation(line: 391, column: 19, scope: !934)
!943 = !DILocation(line: 393, column: 23, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 393, column: 23)
!945 = distinct !DILexicalBlock(scope: !940, file: !3, line: 392, column: 17)
!946 = !DILocation(line: 393, column: 33, scope: !944)
!947 = !DILocation(line: 393, column: 23, scope: !945)
!948 = !DILocalVariable(name: "c", arg: 1, scope: !949, file: !3, line: 169, type: !31)
!949 = distinct !DISubprogram(name: "xputchar", scope: !3, file: !3, line: 169, type: !950, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !31}
!952 = !{!948}
!953 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !954)
!954 = distinct !DILocation(line: 394, column: 21, scope: !944)
!955 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !961)
!956 = distinct !DISubprogram(name: "putchar_unlocked", scope: !908, file: !908, line: 108, type: !957, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !959)
!957 = !DISubroutineType(types: !958)
!958 = !{!56, !56}
!959 = !{!960}
!960 = !DILocalVariable(name: "__c", arg: 1, scope: !956, file: !908, line: 108, type: !56)
!961 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !954)
!962 = distinct !DILexicalBlock(scope: !949, file: !3, line: 171, column: 7)
!963 = !{!916, !648, i64 40}
!964 = !{!916, !648, i64 48}
!965 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !954)
!966 = !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !954)
!967 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !954)
!968 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !954)
!969 = !DILocation(line: 396, column: 23, scope: !970)
!970 = distinct !DILexicalBlock(scope: !945, file: !3, line: 396, column: 23)
!971 = !DILocation(line: 396, column: 37, scope: !970)
!972 = !DILocation(line: 396, column: 34, scope: !970)
!973 = !DILocation(line: 397, column: 32, scope: !970)
!974 = !DILocation(line: 396, column: 23, scope: !945)
!975 = distinct !{!975, !937, !976}
!976 = !DILocation(line: 403, column: 13, scope: !932)
!977 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !978)
!978 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !979)
!979 = distinct !DILocation(line: 400, column: 17, scope: !940)
!980 = !DILocation(line: 400, column: 27, scope: !940)
!981 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !979)
!982 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !979)
!983 = !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !979)
!984 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !979)
!985 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !979)
!986 = !DILocation(line: 404, column: 25, scope: !932)
!987 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !988)
!988 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !989)
!989 = distinct !DILocation(line: 407, column: 11, scope: !932)
!990 = !DILocation(line: 407, column: 21, scope: !932)
!991 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !989)
!992 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !989)
!993 = !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !989)
!994 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !989)
!995 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !989)
!996 = !DILocation(line: 410, column: 19, scope: !928)
!997 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !998)
!998 = distinct !DILocation(line: 411, column: 9, scope: !928)
!999 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !998)
!1001 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !998)
!1002 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !998)
!1003 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !998)
!1004 = !DILocalVariable(name: "__stream", arg: 1, scope: !1005, file: !908, line: 135, type: !821)
!1005 = distinct !DISubprogram(name: "ferror_unlocked", scope: !908, file: !908, line: 135, type: !909, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1006)
!1006 = !{!1004}
!1007 = !DILocation(line: 135, column: 1, scope: !1005, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 413, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !877, file: !3, line: 413, column: 11)
!1010 = !DILocation(line: 137, column: 10, scope: !1005, inlinedAt: !1008)
!1011 = !{!916, !738, i64 0}
!1012 = !DILocation(line: 413, column: 11, scope: !1009)
!1013 = !DILocation(line: 413, column: 11, scope: !877)
!1014 = !DILocation(line: 415, column: 40, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 414, column: 9)
!1016 = !DILocation(line: 415, column: 11, scope: !1015)
!1017 = !DILocation(line: 417, column: 9, scope: !1015)
!1018 = !DILocation(line: 0, scope: !810)
!1019 = !DILocation(line: 418, column: 11, scope: !877)
!1020 = !DILocation(line: 419, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !877, file: !3, line: 418, column: 11)
!1022 = !DILocation(line: 420, column: 16, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 420, column: 16)
!1024 = !DILocation(line: 420, column: 33, scope: !1023)
!1025 = !DILocation(line: 420, column: 16, scope: !1021)
!1026 = !DILocation(line: 422, column: 21, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 421, column: 9)
!1028 = !DILocation(line: 422, column: 34, scope: !1027)
!1029 = !DILocation(line: 422, column: 11, scope: !1027)
!1030 = !DILocation(line: 424, column: 9, scope: !1027)
!1031 = !DILocation(line: 0, scope: !898)
!1032 = !DILocation(line: 355, column: 24, scope: !878)
!1033 = !DILocation(line: 355, column: 35, scope: !878)
!1034 = distinct !{!1034, !884, !1035}
!1035 = !DILocation(line: 425, column: 5, scope: !879)
!1036 = !DILocation(line: 0, scope: !1015)
!1037 = !DILocation(line: 426, column: 10, scope: !810)
!1038 = !DILocation(line: 426, column: 3, scope: !810)
!1039 = distinct !DISubprogram(name: "paste_parallel", scope: !3, file: !3, line: 180, type: !811, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1047, !1048, !1049, !1051, !1052, !1053, !1055, !1058, !1059, !1060}
!1041 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1039, file: !3, line: 180, type: !35)
!1042 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1039, file: !3, line: 180, type: !703)
!1043 = !DILocalVariable(name: "ok", scope: !1039, file: !3, line: 182, type: !42)
!1044 = !DILocalVariable(name: "delbuf", scope: !1039, file: !3, line: 187, type: !30)
!1045 = !DILocalVariable(name: "fileptr", scope: !1039, file: !3, line: 191, type: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!1047 = !DILocalVariable(name: "files_open", scope: !1039, file: !3, line: 194, type: !35)
!1048 = !DILocalVariable(name: "opened_stdin", scope: !1039, file: !3, line: 197, type: !42)
!1049 = !DILocalVariable(name: "somedone", scope: !1050, file: !3, line: 231, type: !42)
!1050 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 229, column: 5)
!1051 = !DILocalVariable(name: "delimptr", scope: !1050, file: !3, line: 232, type: !53)
!1052 = !DILocalVariable(name: "delims_saved", scope: !1050, file: !3, line: 233, type: !35)
!1053 = !DILocalVariable(name: "i", scope: !1054, file: !3, line: 235, type: !35)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 235, column: 7)
!1055 = !DILocalVariable(name: "chr", scope: !1056, file: !3, line: 237, type: !56)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 236, column: 9)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 235, column: 7)
!1058 = !DILocalVariable(name: "err", scope: !1056, file: !3, line: 238, type: !56)
!1059 = !DILocalVariable(name: "sometodo", scope: !1056, file: !3, line: 239, type: !42)
!1060 = !DILocalVariable(name: "c", scope: !1061, file: !3, line: 332, type: !31)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 329, column: 17)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 319, column: 19)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 314, column: 13)
!1064 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 263, column: 15)
!1065 = !DILocation(line: 180, column: 24, scope: !1039)
!1066 = !DILocation(line: 180, column: 39, scope: !1039)
!1067 = !DILocation(line: 182, column: 8, scope: !1039)
!1068 = !DILocation(line: 187, column: 34, scope: !1039)
!1069 = !DILocation(line: 187, column: 18, scope: !1039)
!1070 = !DILocation(line: 187, column: 9, scope: !1039)
!1071 = !DILocation(line: 191, column: 37, scope: !1039)
!1072 = !DILocalVariable(name: "n", arg: 1, scope: !1073, file: !189, line: 99, type: !35)
!1073 = distinct !DISubprogram(name: "xnmalloc", scope: !189, file: !189, line: 99, type: !1074, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!32, !35, !35}
!1076 = !{!1072, !1077}
!1077 = !DILocalVariable(name: "s", arg: 2, scope: !1073, file: !189, line: 99, type: !35)
!1078 = !DILocation(line: 99, column: 18, scope: !1073, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 191, column: 20, scope: !1039)
!1080 = !DILocation(line: 99, column: 28, scope: !1073, inlinedAt: !1079)
!1081 = !DILocation(line: 101, column: 7, scope: !1082, inlinedAt: !1079)
!1082 = distinct !DILexicalBlock(scope: !1073, file: !189, line: 101, column: 7)
!1083 = !DILocation(line: 101, column: 7, scope: !1073, inlinedAt: !1079)
!1084 = !DILocation(line: 102, column: 5, scope: !1082, inlinedAt: !1079)
!1085 = !DILocation(line: 103, column: 21, scope: !1073, inlinedAt: !1079)
!1086 = !DILocation(line: 103, column: 10, scope: !1073, inlinedAt: !1079)
!1087 = !DILocation(line: 191, column: 20, scope: !1039)
!1088 = !DILocation(line: 191, column: 10, scope: !1039)
!1089 = !DILocation(line: 197, column: 8, scope: !1039)
!1090 = !DILocation(line: 194, column: 10, scope: !1039)
!1091 = !DILocation(line: 203, column: 35, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 203, column: 3)
!1093 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 203, column: 3)
!1094 = !DILocation(line: 203, column: 3, scope: !1093)
!1095 = !DILocation(line: 205, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 205, column: 11)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 204, column: 5)
!1098 = !DILocation(line: 205, column: 11, scope: !1097)
!1099 = !DILocation(line: 208, column: 33, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 206, column: 9)
!1101 = !DILocation(line: 208, column: 11, scope: !1100)
!1102 = !DILocation(line: 208, column: 31, scope: !1100)
!1103 = !DILocation(line: 209, column: 9, scope: !1100)
!1104 = !DILocation(line: 212, column: 33, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 211, column: 9)
!1106 = !DILocation(line: 212, column: 11, scope: !1105)
!1107 = !DILocation(line: 212, column: 31, scope: !1105)
!1108 = !DILocation(line: 213, column: 35, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 213, column: 15)
!1110 = !DILocation(line: 213, column: 15, scope: !1105)
!1111 = !DILocation(line: 214, column: 13, scope: !1109)
!1112 = !DILocation(line: 215, column: 20, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 215, column: 20)
!1114 = !DILocation(line: 215, column: 49, scope: !1113)
!1115 = !DILocation(line: 215, column: 20, scope: !1109)
!1116 = !DILocation(line: 217, column: 11, scope: !1105)
!1117 = !DILocation(line: 0, scope: !1113)
!1118 = !DILocation(line: 203, column: 45, scope: !1092)
!1119 = distinct !{!1119, !1094, !1120}
!1120 = !DILocation(line: 219, column: 5, scope: !1093)
!1121 = !DILocation(line: 221, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 221, column: 7)
!1123 = !DILocation(line: 221, column: 20, scope: !1122)
!1124 = !DILocation(line: 221, column: 7, scope: !1039)
!1125 = !DILocation(line: 222, column: 5, scope: !1122)
!1126 = !DILocation(line: 238, column: 15, scope: !1056)
!1127 = !DILocation(line: 237, column: 15, scope: !1056)
!1128 = !DILocation(line: 228, column: 3, scope: !1039)
!1129 = !DILocation(line: 203, column: 19, scope: !1093)
!1130 = !DILocation(line: 231, column: 12, scope: !1050)
!1131 = !DILocation(line: 233, column: 14, scope: !1050)
!1132 = !DILocation(line: 235, column: 19, scope: !1054)
!1133 = !DILocation(line: 235, column: 37, scope: !1057)
!1134 = !DILocation(line: 235, column: 7, scope: !1054)
!1135 = distinct !{!1135, !1128, !1136}
!1136 = !DILocation(line: 337, column: 5, scope: !1039)
!1137 = !DILocation(line: 232, column: 30, scope: !1050)
!1138 = !DILocation(line: 232, column: 19, scope: !1050)
!1139 = !DILocation(line: 241, column: 15, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 241, column: 15)
!1141 = !DILocation(line: 239, column: 16, scope: !1056)
!1142 = !DILocation(line: 241, column: 15, scope: !1056)
!1143 = !DILocation(line: 66, column: 22, scope: !907, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 243, column: 21, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 242, column: 13)
!1146 = !DILocation(line: 68, column: 10, scope: !907, inlinedAt: !1144)
!1147 = !DILocation(line: 244, column: 21, scope: !1145)
!1148 = !DILocation(line: 245, column: 23, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 245, column: 19)
!1150 = !DILocation(line: 245, column: 33, scope: !1149)
!1151 = !DILocation(line: 245, column: 30, scope: !1149)
!1152 = !DILocation(line: 247, column: 23, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 247, column: 23)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 246, column: 17)
!1155 = !DILocation(line: 247, column: 64, scope: !1153)
!1156 = !DILocation(line: 247, column: 23, scope: !1154)
!1157 = !DILocation(line: 248, column: 21, scope: !1153)
!1158 = !DILocation(line: 252, column: 26, scope: !1145)
!1159 = !DILocation(line: 252, column: 15, scope: !1145)
!1160 = !DILocation(line: 255, column: 30, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 255, column: 23)
!1162 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 253, column: 17)
!1163 = !DILocation(line: 255, column: 27, scope: !1161)
!1164 = !DILocation(line: 255, column: 23, scope: !1162)
!1165 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 257, column: 19, scope: !1162)
!1168 = !DILocation(line: 257, column: 29, scope: !1162)
!1169 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !1167)
!1170 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !1167)
!1171 = !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1167)
!1172 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !1167)
!1173 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !1167)
!1174 = !DILocation(line: 66, column: 22, scope: !907, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 258, column: 25, scope: !1162)
!1176 = !DILocation(line: 68, column: 10, scope: !907, inlinedAt: !1175)
!1177 = distinct !{!1177, !1159, !1178}
!1178 = !DILocation(line: 260, column: 17, scope: !1145)
!1179 = !DILocation(line: 135, column: 1, scope: !1005, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 269, column: 23, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 269, column: 23)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 268, column: 17)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 267, column: 19)
!1184 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 264, column: 13)
!1185 = !DILocation(line: 137, column: 10, scope: !1005, inlinedAt: !1180)
!1186 = !DILocation(line: 269, column: 23, scope: !1181)
!1187 = !DILocation(line: 269, column: 23, scope: !1182)
!1188 = !DILocation(line: 271, column: 44, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 270, column: 21)
!1190 = !DILocation(line: 271, column: 23, scope: !1189)
!1191 = !DILocation(line: 273, column: 21, scope: !1189)
!1192 = !DILocation(line: 0, scope: !1039)
!1193 = !DILocation(line: 274, column: 37, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 274, column: 23)
!1195 = !DILocation(line: 274, column: 34, scope: !1194)
!1196 = !DILocation(line: 274, column: 23, scope: !1182)
!1197 = !DILocation(line: 275, column: 21, scope: !1194)
!1198 = !DILocation(line: 276, column: 28, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 276, column: 28)
!1200 = !DILocation(line: 276, column: 48, scope: !1199)
!1201 = !DILocation(line: 276, column: 28, scope: !1194)
!1202 = !DILocation(line: 278, column: 33, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 277, column: 21)
!1204 = !DILocation(line: 278, column: 46, scope: !1203)
!1205 = !DILocation(line: 278, column: 23, scope: !1203)
!1206 = !DILocation(line: 280, column: 21, scope: !1203)
!1207 = !DILocation(line: 0, scope: !1189)
!1208 = !DILocation(line: 282, column: 30, scope: !1182)
!1209 = !DILocation(line: 283, column: 29, scope: !1182)
!1210 = !DILocation(line: 284, column: 17, scope: !1182)
!1211 = !DILocation(line: 0, scope: !1093)
!1212 = !DILocation(line: 286, column: 21, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 286, column: 19)
!1214 = !DILocation(line: 286, column: 25, scope: !1213)
!1215 = !DILocation(line: 286, column: 19, scope: !1184)
!1216 = !DILocation(line: 290, column: 23, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 290, column: 23)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 287, column: 17)
!1219 = !DILocation(line: 290, column: 23, scope: !1218)
!1220 = !DILocation(line: 293, column: 27, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 293, column: 27)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 291, column: 21)
!1223 = !DILocation(line: 293, column: 27, scope: !1222)
!1224 = !DILocation(line: 295, column: 31, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 295, column: 31)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 294, column: 25)
!1227 = !DILocation(line: 296, column: 31, scope: !1225)
!1228 = !DILocation(line: 295, column: 31, scope: !1226)
!1229 = !DILocation(line: 297, column: 29, scope: !1225)
!1230 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 300, column: 23, scope: !1222)
!1232 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1231)
!1234 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !1231)
!1235 = !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1231)
!1236 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !1231)
!1237 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !1231)
!1238 = !DILocation(line: 307, column: 23, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 307, column: 23)
!1240 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 305, column: 17)
!1241 = !DILocation(line: 307, column: 33, scope: !1239)
!1242 = !DILocation(line: 307, column: 23, scope: !1240)
!1243 = !DILocation(line: 308, column: 40, scope: !1239)
!1244 = !DILocation(line: 308, column: 21, scope: !1239)
!1245 = !DILocation(line: 308, column: 44, scope: !1239)
!1246 = !DILocation(line: 0, scope: !1154)
!1247 = !DILocation(line: 309, column: 23, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 309, column: 23)
!1249 = !DILocation(line: 309, column: 37, scope: !1248)
!1250 = !DILocation(line: 309, column: 34, scope: !1248)
!1251 = !DILocation(line: 310, column: 32, scope: !1248)
!1252 = !DILocation(line: 309, column: 23, scope: !1240)
!1253 = !DILocation(line: 319, column: 21, scope: !1062)
!1254 = !DILocation(line: 319, column: 25, scope: !1062)
!1255 = !DILocation(line: 319, column: 19, scope: !1063)
!1256 = !DILocation(line: 321, column: 30, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 321, column: 23)
!1258 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 320, column: 17)
!1259 = !DILocation(line: 321, column: 27, scope: !1257)
!1260 = !DILocation(line: 321, column: 48, scope: !1257)
!1261 = !DILocation(line: 321, column: 41, scope: !1257)
!1262 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 322, column: 21, scope: !1257)
!1265 = !DILocation(line: 322, column: 31, scope: !1257)
!1266 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !1264)
!1267 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !1264)
!1268 = !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1264)
!1269 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !1264)
!1270 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !1264)
!1271 = !DILocation(line: 323, column: 23, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 323, column: 23)
!1273 = !DILocation(line: 323, column: 33, scope: !1272)
!1274 = !DILocation(line: 323, column: 23, scope: !1258)
!1275 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 324, column: 21, scope: !1272)
!1277 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1276)
!1279 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !1276)
!1280 = !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1276)
!1281 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !1276)
!1282 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !1276)
!1283 = !DILocation(line: 325, column: 23, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 325, column: 23)
!1285 = !DILocation(line: 325, column: 37, scope: !1284)
!1286 = !DILocation(line: 325, column: 34, scope: !1284)
!1287 = !DILocation(line: 326, column: 32, scope: !1284)
!1288 = !DILocation(line: 325, column: 23, scope: !1258)
!1289 = !DILocation(line: 332, column: 33, scope: !1061)
!1290 = !DILocation(line: 332, column: 42, scope: !1061)
!1291 = !DILocation(line: 332, column: 29, scope: !1061)
!1292 = !DILocation(line: 110, column: 10, scope: !956, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 333, column: 19, scope: !1061)
!1295 = !DILocation(line: 332, column: 28, scope: !1061)
!1296 = !DILocation(line: 169, column: 16, scope: !949, inlinedAt: !1294)
!1297 = !DILocation(line: 332, column: 24, scope: !1061)
!1298 = !DILocation(line: 171, column: 7, scope: !949, inlinedAt: !1294)
!1299 = !DILocation(line: 171, column: 7, scope: !962, inlinedAt: !1294)
!1300 = !DILocation(line: 171, column: 19, scope: !962, inlinedAt: !1294)
!1301 = !DILocation(line: 172, column: 5, scope: !962, inlinedAt: !1294)
!1302 = !DILocation(line: 235, column: 53, scope: !1057)
!1303 = !DILocation(line: 0, scope: !1182)
!1304 = !DILocation(line: 0, scope: !1050)
!1305 = !DILocation(line: 0, scope: !1226)
!1306 = !DILocation(line: 235, column: 28, scope: !1057)
!1307 = distinct !{!1307, !1134, !1308}
!1308 = !DILocation(line: 336, column: 9, scope: !1054)
!1309 = !DILocation(line: 338, column: 3, scope: !1039)
!1310 = !DILocation(line: 339, column: 3, scope: !1039)
!1311 = !DILocation(line: 340, column: 10, scope: !1039)
!1312 = !DILocation(line: 340, column: 3, scope: !1039)
!1313 = distinct !DISubprogram(name: "write_error", scope: !3, file: !3, line: 161, type: !655, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !72)
!1314 = !DILocation(line: 163, column: 3, scope: !1313)
!1315 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !81, file: !81, line: 51, type: !622, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !1316)
!1316 = !{!1317}
!1317 = !DILocalVariable(name: "file", arg: 1, scope: !1315, file: !81, line: 51, type: !53)
!1318 = !DILocation(line: 51, column: 41, scope: !1315)
!1319 = !DILocation(line: 53, column: 13, scope: !1315)
!1320 = !DILocation(line: 54, column: 1, scope: !1315)
!1321 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !81, file: !81, line: 88, type: !1322, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !1324)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !42}
!1324 = !{!1325}
!1325 = !DILocalVariable(name: "ignore", arg: 1, scope: !1321, file: !81, line: 88, type: !42)
!1326 = !DILocation(line: 88, column: 37, scope: !1321)
!1327 = !DILocation(line: 90, column: 16, scope: !1321)
!1328 = !{!1329, !1329, i64 0}
!1329 = !{!"_Bool", !649, i64 0}
!1330 = !DILocation(line: 91, column: 1, scope: !1321)
!1331 = distinct !DISubprogram(name: "close_stdout", scope: !81, file: !81, line: 117, type: !655, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !76, retainedNodes: !1332)
!1332 = !{!1333}
!1333 = !DILocalVariable(name: "write_error", scope: !1334, file: !81, line: 122, type: !53)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !81, line: 121, column: 5)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !81, line: 119, column: 7)
!1336 = !DILocation(line: 119, column: 21, scope: !1335)
!1337 = !DILocation(line: 119, column: 7, scope: !1335)
!1338 = !DILocation(line: 119, column: 29, scope: !1335)
!1339 = !DILocation(line: 120, column: 7, scope: !1335)
!1340 = !DILocation(line: 120, column: 12, scope: !1335)
!1341 = !{i8 0, i8 2}
!1342 = !DILocation(line: 120, column: 25, scope: !1335)
!1343 = !DILocation(line: 120, column: 28, scope: !1335)
!1344 = !DILocation(line: 120, column: 34, scope: !1335)
!1345 = !DILocation(line: 119, column: 7, scope: !1331)
!1346 = !DILocation(line: 122, column: 33, scope: !1334)
!1347 = !DILocation(line: 122, column: 19, scope: !1334)
!1348 = !DILocation(line: 123, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1334, file: !81, line: 123, column: 11)
!1350 = !DILocation(line: 0, scope: !1349)
!1351 = !DILocation(line: 123, column: 11, scope: !1334)
!1352 = !DILocation(line: 124, column: 36, scope: !1349)
!1353 = !DILocation(line: 124, column: 9, scope: !1349)
!1354 = !DILocation(line: 127, column: 9, scope: !1349)
!1355 = !DILocation(line: 129, column: 14, scope: !1334)
!1356 = !DILocation(line: 129, column: 7, scope: !1334)
!1357 = !DILocation(line: 134, column: 42, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1331, file: !81, line: 134, column: 7)
!1359 = !DILocation(line: 134, column: 28, scope: !1358)
!1360 = !DILocation(line: 134, column: 50, scope: !1358)
!1361 = !DILocation(line: 134, column: 7, scope: !1331)
!1362 = !DILocation(line: 135, column: 12, scope: !1358)
!1363 = !DILocation(line: 135, column: 5, scope: !1358)
!1364 = !DILocation(line: 136, column: 1, scope: !1331)
!1365 = distinct !DISubprogram(name: "fdadvise", scope: !1366, file: !1366, line: 31, type: !1367, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !1372)
!1366 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1367 = !DISubroutineType(types: !1368)
!1368 = !{null, !56, !1369, !1369, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1370, line: 63, baseType: !847)
!1370 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1372 = !{!1373, !1374, !1375, !1376, !1377}
!1373 = !DILocalVariable(name: "fd", arg: 1, scope: !1365, file: !1366, line: 31, type: !56)
!1374 = !DILocalVariable(name: "offset", arg: 2, scope: !1365, file: !1366, line: 31, type: !1369)
!1375 = !DILocalVariable(name: "len", arg: 3, scope: !1365, file: !1366, line: 31, type: !1369)
!1376 = !DILocalVariable(name: "advice", arg: 4, scope: !1365, file: !1366, line: 31, type: !1371)
!1377 = !DILocalVariable(name: "__x", scope: !1378, file: !1366, line: 34, type: !56)
!1378 = distinct !DILexicalBlock(scope: !1365, file: !1366, line: 34, column: 3)
!1379 = !DILocation(line: 31, column: 15, scope: !1365)
!1380 = !DILocation(line: 31, column: 25, scope: !1365)
!1381 = !DILocation(line: 31, column: 39, scope: !1365)
!1382 = !DILocation(line: 31, column: 54, scope: !1365)
!1383 = !DILocation(line: 34, column: 3, scope: !1378)
!1384 = !DILocation(line: 36, column: 1, scope: !1365)
!1385 = distinct !DISubprogram(name: "fadvise", scope: !1366, file: !1366, line: 39, type: !1386, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !1422)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !1388, !1371}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !823, line: 7, baseType: !1390)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !825, line: 49, size: 1728, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1390, file: !825, line: 51, baseType: !56, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1390, file: !825, line: 54, baseType: !30, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1390, file: !825, line: 55, baseType: !30, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1390, file: !825, line: 56, baseType: !30, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1390, file: !825, line: 57, baseType: !30, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1390, file: !825, line: 58, baseType: !30, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1390, file: !825, line: 59, baseType: !30, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1390, file: !825, line: 60, baseType: !30, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1390, file: !825, line: 61, baseType: !30, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1390, file: !825, line: 64, baseType: !30, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1390, file: !825, line: 65, baseType: !30, size: 64, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1390, file: !825, line: 66, baseType: !30, size: 64, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1390, file: !825, line: 68, baseType: !840, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1390, file: !825, line: 70, baseType: !1406, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1390, file: !825, line: 72, baseType: !56, size: 32, offset: 896)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1390, file: !825, line: 73, baseType: !56, size: 32, offset: 928)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1390, file: !825, line: 74, baseType: !847, size: 64, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1390, file: !825, line: 77, baseType: !122, size: 16, offset: 1024)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1390, file: !825, line: 78, baseType: !852, size: 8, offset: 1040)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1390, file: !825, line: 79, baseType: !854, size: 8, offset: 1048)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1390, file: !825, line: 81, baseType: !858, size: 64, offset: 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1390, file: !825, line: 89, baseType: !861, size: 64, offset: 1152)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1390, file: !825, line: 91, baseType: !863, size: 64, offset: 1216)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1390, file: !825, line: 92, baseType: !866, size: 64, offset: 1280)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1390, file: !825, line: 93, baseType: !1406, size: 64, offset: 1344)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1390, file: !825, line: 94, baseType: !32, size: 64, offset: 1408)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1390, file: !825, line: 95, baseType: !35, size: 64, offset: 1472)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1390, file: !825, line: 96, baseType: !56, size: 32, offset: 1536)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1390, file: !825, line: 98, baseType: !873, size: 160, offset: 1568)
!1422 = !{!1423, !1424}
!1423 = !DILocalVariable(name: "fp", arg: 1, scope: !1385, file: !1366, line: 39, type: !1388)
!1424 = !DILocalVariable(name: "advice", arg: 2, scope: !1385, file: !1366, line: 39, type: !1371)
!1425 = !DILocation(line: 39, column: 16, scope: !1385)
!1426 = !DILocation(line: 39, column: 30, scope: !1385)
!1427 = !DILocation(line: 41, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1385, file: !1366, line: 41, column: 7)
!1429 = !DILocation(line: 41, column: 7, scope: !1385)
!1430 = !DILocation(line: 42, column: 15, scope: !1428)
!1431 = !DILocation(line: 31, column: 15, scope: !1365, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 42, column: 5, scope: !1428)
!1433 = !DILocation(line: 31, column: 25, scope: !1365, inlinedAt: !1432)
!1434 = !DILocation(line: 31, column: 39, scope: !1365, inlinedAt: !1432)
!1435 = !DILocation(line: 31, column: 54, scope: !1365, inlinedAt: !1432)
!1436 = !DILocation(line: 34, column: 3, scope: !1378, inlinedAt: !1432)
!1437 = !DILocation(line: 42, column: 5, scope: !1428)
!1438 = !DILocation(line: 43, column: 1, scope: !1385)
!1439 = distinct !DISubprogram(name: "set_program_name", scope: !95, file: !95, line: 39, type: !622, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !91, retainedNodes: !1440)
!1440 = !{!1441, !1442, !1443}
!1441 = !DILocalVariable(name: "argv0", arg: 1, scope: !1439, file: !95, line: 39, type: !53)
!1442 = !DILocalVariable(name: "slash", scope: !1439, file: !95, line: 46, type: !53)
!1443 = !DILocalVariable(name: "base", scope: !1439, file: !95, line: 47, type: !53)
!1444 = !DILocation(line: 39, column: 31, scope: !1439)
!1445 = !DILocation(line: 51, column: 13, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1439, file: !95, line: 51, column: 7)
!1447 = !DILocation(line: 51, column: 7, scope: !1439)
!1448 = !DILocation(line: 55, column: 14, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !95, line: 52, column: 5)
!1450 = !DILocation(line: 54, column: 7, scope: !1449)
!1451 = !DILocation(line: 56, column: 7, scope: !1449)
!1452 = !DILocation(line: 59, column: 11, scope: !1439)
!1453 = !DILocation(line: 46, column: 15, scope: !1439)
!1454 = !DILocation(line: 60, column: 17, scope: !1439)
!1455 = !DILocation(line: 60, column: 33, scope: !1439)
!1456 = !DILocation(line: 60, column: 11, scope: !1439)
!1457 = !DILocation(line: 47, column: 15, scope: !1439)
!1458 = !DILocation(line: 61, column: 12, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1439, file: !95, line: 61, column: 7)
!1460 = !DILocation(line: 61, column: 20, scope: !1459)
!1461 = !DILocation(line: 61, column: 25, scope: !1459)
!1462 = !DILocation(line: 61, column: 42, scope: !1459)
!1463 = !DILocation(line: 61, column: 28, scope: !1459)
!1464 = !DILocation(line: 61, column: 61, scope: !1459)
!1465 = !DILocation(line: 61, column: 7, scope: !1439)
!1466 = !DILocation(line: 64, column: 11, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !95, line: 64, column: 11)
!1468 = distinct !DILexicalBlock(scope: !1459, file: !95, line: 62, column: 5)
!1469 = !DILocation(line: 64, column: 36, scope: !1467)
!1470 = !DILocation(line: 64, column: 11, scope: !1468)
!1471 = !DILocation(line: 66, column: 24, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !95, line: 65, column: 9)
!1473 = !DILocation(line: 70, column: 41, scope: !1472)
!1474 = !DILocation(line: 72, column: 9, scope: !1472)
!1475 = !DILocation(line: 84, column: 16, scope: !1439)
!1476 = !DILocation(line: 90, column: 27, scope: !1439)
!1477 = !DILocation(line: 92, column: 1, scope: !1439)
!1478 = distinct !DISubprogram(name: "clone_quoting_options", scope: !126, file: !126, line: 122, type: !1479, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1482)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1481, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1482 = !{!1483, !1484, !1485}
!1483 = !DILocalVariable(name: "o", arg: 1, scope: !1478, file: !126, line: 122, type: !1481)
!1484 = !DILocalVariable(name: "e", scope: !1478, file: !126, line: 124, type: !56)
!1485 = !DILocalVariable(name: "p", scope: !1478, file: !126, line: 125, type: !1481)
!1486 = !DILocation(line: 122, column: 48, scope: !1478)
!1487 = !DILocation(line: 124, column: 11, scope: !1478)
!1488 = !DILocation(line: 124, column: 7, scope: !1478)
!1489 = !DILocation(line: 125, column: 40, scope: !1478)
!1490 = !DILocation(line: 125, column: 31, scope: !1478)
!1491 = !DILocation(line: 125, column: 27, scope: !1478)
!1492 = !DILocation(line: 127, column: 9, scope: !1478)
!1493 = !DILocation(line: 128, column: 3, scope: !1478)
!1494 = distinct !DISubprogram(name: "get_quoting_style", scope: !126, file: !126, line: 133, type: !1495, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1499)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!5, !1497}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!1499 = !{!1500}
!1500 = !DILocalVariable(name: "o", arg: 1, scope: !1494, file: !126, line: 133, type: !1497)
!1501 = !DILocation(line: 133, column: 50, scope: !1494)
!1502 = !DILocation(line: 135, column: 11, scope: !1494)
!1503 = !DILocation(line: 135, column: 46, scope: !1494)
!1504 = !{!1505, !649, i64 0}
!1505 = !{!"quoting_options", !649, i64 0, !738, i64 4, !649, i64 8, !648, i64 40, !648, i64 48}
!1506 = !DILocation(line: 135, column: 3, scope: !1494)
!1507 = distinct !DISubprogram(name: "set_quoting_style", scope: !126, file: !126, line: 141, type: !1508, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1510)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1481, !5}
!1510 = !{!1511, !1512}
!1511 = !DILocalVariable(name: "o", arg: 1, scope: !1507, file: !126, line: 141, type: !1481)
!1512 = !DILocalVariable(name: "s", arg: 2, scope: !1507, file: !126, line: 141, type: !5)
!1513 = !DILocation(line: 141, column: 44, scope: !1507)
!1514 = !DILocation(line: 141, column: 66, scope: !1507)
!1515 = !DILocation(line: 143, column: 4, scope: !1507)
!1516 = !DILocation(line: 143, column: 39, scope: !1507)
!1517 = !DILocation(line: 143, column: 45, scope: !1507)
!1518 = !DILocation(line: 144, column: 1, scope: !1507)
!1519 = distinct !DISubprogram(name: "set_char_quoting", scope: !126, file: !126, line: 152, type: !1520, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!56, !1481, !31, !56}
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1529, !1530}
!1523 = !DILocalVariable(name: "o", arg: 1, scope: !1519, file: !126, line: 152, type: !1481)
!1524 = !DILocalVariable(name: "c", arg: 2, scope: !1519, file: !126, line: 152, type: !31)
!1525 = !DILocalVariable(name: "i", arg: 3, scope: !1519, file: !126, line: 152, type: !56)
!1526 = !DILocalVariable(name: "uc", scope: !1519, file: !126, line: 154, type: !34)
!1527 = !DILocalVariable(name: "p", scope: !1519, file: !126, line: 155, type: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1529 = !DILocalVariable(name: "shift", scope: !1519, file: !126, line: 157, type: !56)
!1530 = !DILocalVariable(name: "r", scope: !1519, file: !126, line: 158, type: !56)
!1531 = !DILocation(line: 152, column: 43, scope: !1519)
!1532 = !DILocation(line: 152, column: 51, scope: !1519)
!1533 = !DILocation(line: 152, column: 58, scope: !1519)
!1534 = !DILocation(line: 154, column: 17, scope: !1519)
!1535 = !DILocation(line: 156, column: 6, scope: !1519)
!1536 = !DILocation(line: 156, column: 62, scope: !1519)
!1537 = !DILocation(line: 156, column: 57, scope: !1519)
!1538 = !DILocation(line: 155, column: 17, scope: !1519)
!1539 = !DILocation(line: 157, column: 15, scope: !1519)
!1540 = !DILocation(line: 157, column: 7, scope: !1519)
!1541 = !DILocation(line: 158, column: 12, scope: !1519)
!1542 = !DILocation(line: 158, column: 15, scope: !1519)
!1543 = !DILocation(line: 158, column: 25, scope: !1519)
!1544 = !DILocation(line: 158, column: 7, scope: !1519)
!1545 = !DILocation(line: 159, column: 13, scope: !1519)
!1546 = !DILocation(line: 159, column: 18, scope: !1519)
!1547 = !DILocation(line: 159, column: 23, scope: !1519)
!1548 = !DILocation(line: 159, column: 6, scope: !1519)
!1549 = !DILocation(line: 160, column: 3, scope: !1519)
!1550 = distinct !DISubprogram(name: "set_quoting_flags", scope: !126, file: !126, line: 168, type: !1551, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!56, !1481, !56}
!1553 = !{!1554, !1555, !1556}
!1554 = !DILocalVariable(name: "o", arg: 1, scope: !1550, file: !126, line: 168, type: !1481)
!1555 = !DILocalVariable(name: "i", arg: 2, scope: !1550, file: !126, line: 168, type: !56)
!1556 = !DILocalVariable(name: "r", scope: !1550, file: !126, line: 170, type: !56)
!1557 = !DILocation(line: 168, column: 44, scope: !1550)
!1558 = !DILocation(line: 168, column: 51, scope: !1550)
!1559 = !DILocation(line: 171, column: 8, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1550, file: !126, line: 171, column: 7)
!1561 = !DILocation(line: 171, column: 7, scope: !1550)
!1562 = !DILocation(line: 173, column: 10, scope: !1550)
!1563 = !{!1505, !738, i64 4}
!1564 = !DILocation(line: 170, column: 7, scope: !1550)
!1565 = !DILocation(line: 174, column: 12, scope: !1550)
!1566 = !DILocation(line: 175, column: 3, scope: !1550)
!1567 = distinct !DISubprogram(name: "set_custom_quoting", scope: !126, file: !126, line: 179, type: !1568, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1481, !53, !53}
!1570 = !{!1571, !1572, !1573}
!1571 = !DILocalVariable(name: "o", arg: 1, scope: !1567, file: !126, line: 179, type: !1481)
!1572 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1567, file: !126, line: 180, type: !53)
!1573 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1567, file: !126, line: 180, type: !53)
!1574 = !DILocation(line: 179, column: 45, scope: !1567)
!1575 = !DILocation(line: 180, column: 33, scope: !1567)
!1576 = !DILocation(line: 180, column: 57, scope: !1567)
!1577 = !DILocation(line: 182, column: 8, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1567, file: !126, line: 182, column: 7)
!1579 = !DILocation(line: 182, column: 7, scope: !1567)
!1580 = !DILocation(line: 184, column: 6, scope: !1567)
!1581 = !DILocation(line: 184, column: 12, scope: !1567)
!1582 = !DILocation(line: 185, column: 8, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1567, file: !126, line: 185, column: 7)
!1584 = !DILocation(line: 185, column: 23, scope: !1583)
!1585 = !DILocation(line: 185, column: 19, scope: !1583)
!1586 = !DILocation(line: 186, column: 5, scope: !1583)
!1587 = !DILocation(line: 187, column: 6, scope: !1567)
!1588 = !DILocation(line: 187, column: 17, scope: !1567)
!1589 = !{!1505, !648, i64 40}
!1590 = !DILocation(line: 188, column: 6, scope: !1567)
!1591 = !DILocation(line: 188, column: 18, scope: !1567)
!1592 = !{!1505, !648, i64 48}
!1593 = !DILocation(line: 189, column: 1, scope: !1567)
!1594 = distinct !DISubprogram(name: "quotearg_buffer", scope: !126, file: !126, line: 784, type: !1595, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!35, !30, !35, !53, !35, !1497}
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1598 = !DILocalVariable(name: "buffer", arg: 1, scope: !1594, file: !126, line: 784, type: !30)
!1599 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1594, file: !126, line: 784, type: !35)
!1600 = !DILocalVariable(name: "arg", arg: 3, scope: !1594, file: !126, line: 785, type: !53)
!1601 = !DILocalVariable(name: "argsize", arg: 4, scope: !1594, file: !126, line: 785, type: !35)
!1602 = !DILocalVariable(name: "o", arg: 5, scope: !1594, file: !126, line: 786, type: !1497)
!1603 = !DILocalVariable(name: "p", scope: !1594, file: !126, line: 788, type: !1497)
!1604 = !DILocalVariable(name: "e", scope: !1594, file: !126, line: 789, type: !56)
!1605 = !DILocalVariable(name: "r", scope: !1594, file: !126, line: 790, type: !35)
!1606 = !DILocation(line: 784, column: 24, scope: !1594)
!1607 = !DILocation(line: 784, column: 39, scope: !1594)
!1608 = !DILocation(line: 785, column: 30, scope: !1594)
!1609 = !DILocation(line: 785, column: 42, scope: !1594)
!1610 = !DILocation(line: 786, column: 48, scope: !1594)
!1611 = !DILocation(line: 788, column: 37, scope: !1594)
!1612 = !DILocation(line: 788, column: 33, scope: !1594)
!1613 = !DILocation(line: 789, column: 11, scope: !1594)
!1614 = !DILocation(line: 789, column: 7, scope: !1594)
!1615 = !DILocation(line: 791, column: 43, scope: !1594)
!1616 = !DILocation(line: 791, column: 53, scope: !1594)
!1617 = !DILocation(line: 791, column: 60, scope: !1594)
!1618 = !DILocation(line: 792, column: 43, scope: !1594)
!1619 = !DILocation(line: 792, column: 58, scope: !1594)
!1620 = !DILocation(line: 790, column: 14, scope: !1594)
!1621 = !DILocation(line: 790, column: 10, scope: !1594)
!1622 = !DILocation(line: 793, column: 9, scope: !1594)
!1623 = !DILocation(line: 794, column: 3, scope: !1594)
!1624 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !126, file: !126, line: 256, type: !1625, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1629)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!35, !30, !35, !53, !35, !5, !56, !1627, !53, !53}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1654, !1655, !1656, !1657, !1658, !1661, !1662, !1680, !1683, !1684, !1691}
!1630 = !DILocalVariable(name: "buffer", arg: 1, scope: !1624, file: !126, line: 256, type: !30)
!1631 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1624, file: !126, line: 256, type: !35)
!1632 = !DILocalVariable(name: "arg", arg: 3, scope: !1624, file: !126, line: 257, type: !53)
!1633 = !DILocalVariable(name: "argsize", arg: 4, scope: !1624, file: !126, line: 257, type: !35)
!1634 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1624, file: !126, line: 258, type: !5)
!1635 = !DILocalVariable(name: "flags", arg: 6, scope: !1624, file: !126, line: 258, type: !56)
!1636 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1624, file: !126, line: 259, type: !1627)
!1637 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1624, file: !126, line: 260, type: !53)
!1638 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1624, file: !126, line: 261, type: !53)
!1639 = !DILocalVariable(name: "i", scope: !1624, file: !126, line: 263, type: !35)
!1640 = !DILocalVariable(name: "len", scope: !1624, file: !126, line: 264, type: !35)
!1641 = !DILocalVariable(name: "orig_buffersize", scope: !1624, file: !126, line: 265, type: !35)
!1642 = !DILocalVariable(name: "quote_string", scope: !1624, file: !126, line: 266, type: !53)
!1643 = !DILocalVariable(name: "quote_string_len", scope: !1624, file: !126, line: 267, type: !35)
!1644 = !DILocalVariable(name: "backslash_escapes", scope: !1624, file: !126, line: 268, type: !42)
!1645 = !DILocalVariable(name: "unibyte_locale", scope: !1624, file: !126, line: 269, type: !42)
!1646 = !DILocalVariable(name: "elide_outer_quotes", scope: !1624, file: !126, line: 270, type: !42)
!1647 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1624, file: !126, line: 271, type: !42)
!1648 = !DILocalVariable(name: "encountered_single_quote", scope: !1624, file: !126, line: 272, type: !42)
!1649 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1624, file: !126, line: 273, type: !42)
!1650 = !DILocalVariable(name: "c", scope: !1651, file: !126, line: 402, type: !34)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !126, line: 401, column: 5)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !126, line: 400, column: 3)
!1653 = distinct !DILexicalBlock(scope: !1624, file: !126, line: 400, column: 3)
!1654 = !DILocalVariable(name: "esc", scope: !1651, file: !126, line: 403, type: !34)
!1655 = !DILocalVariable(name: "is_right_quote", scope: !1651, file: !126, line: 404, type: !42)
!1656 = !DILocalVariable(name: "escaping", scope: !1651, file: !126, line: 405, type: !42)
!1657 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1651, file: !126, line: 406, type: !42)
!1658 = !DILocalVariable(name: "m", scope: !1659, file: !126, line: 610, type: !35)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 608, column: 11)
!1660 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 426, column: 9)
!1661 = !DILocalVariable(name: "printable", scope: !1659, file: !126, line: 612, type: !42)
!1662 = !DILocalVariable(name: "mbstate", scope: !1663, file: !126, line: 621, type: !1665)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !126, line: 620, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !126, line: 614, column: 17)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1666, line: 6, baseType: !1667)
!1666 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1668, line: 21, baseType: !1669)
!1668 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1668, line: 13, size: 64, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1669, file: !1668, line: 15, baseType: !56, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1669, file: !1668, line: 20, baseType: !1673, size: 32, offset: 32)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !1668, line: 16, size: 32, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1673, file: !1668, line: 18, baseType: !7, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1673, file: !1668, line: 19, baseType: !1677, size: 32)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !1678)
!1678 = !{!1679}
!1679 = !DISubrange(count: 4)
!1680 = !DILocalVariable(name: "w", scope: !1681, file: !126, line: 631, type: !1682)
!1681 = distinct !DILexicalBlock(scope: !1663, file: !126, line: 630, column: 19)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !36, line: 90, baseType: !56)
!1683 = !DILocalVariable(name: "bytes", scope: !1681, file: !126, line: 632, type: !35)
!1684 = !DILocalVariable(name: "j", scope: !1685, file: !126, line: 657, type: !35)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !126, line: 656, column: 27)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !126, line: 654, column: 29)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !126, line: 649, column: 23)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !126, line: 641, column: 30)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !126, line: 636, column: 30)
!1690 = distinct !DILexicalBlock(scope: !1681, file: !126, line: 634, column: 25)
!1691 = !DILocalVariable(name: "ilim", scope: !1692, file: !126, line: 684, type: !35)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !126, line: 681, column: 15)
!1693 = distinct !DILexicalBlock(scope: !1659, file: !126, line: 680, column: 17)
!1694 = !DILocation(line: 256, column: 33, scope: !1624)
!1695 = !DILocation(line: 256, column: 48, scope: !1624)
!1696 = !DILocation(line: 257, column: 39, scope: !1624)
!1697 = !DILocation(line: 257, column: 51, scope: !1624)
!1698 = !DILocation(line: 258, column: 46, scope: !1624)
!1699 = !DILocation(line: 258, column: 65, scope: !1624)
!1700 = !DILocation(line: 259, column: 47, scope: !1624)
!1701 = !DILocation(line: 260, column: 39, scope: !1624)
!1702 = !DILocation(line: 261, column: 39, scope: !1624)
!1703 = !DILocation(line: 264, column: 10, scope: !1624)
!1704 = !DILocation(line: 265, column: 10, scope: !1624)
!1705 = !DILocation(line: 266, column: 15, scope: !1624)
!1706 = !DILocation(line: 267, column: 10, scope: !1624)
!1707 = !DILocation(line: 268, column: 8, scope: !1624)
!1708 = !DILocation(line: 269, column: 25, scope: !1624)
!1709 = !DILocation(line: 269, column: 36, scope: !1624)
!1710 = !DILocation(line: 270, column: 8, scope: !1624)
!1711 = !DILocation(line: 271, column: 8, scope: !1624)
!1712 = !DILocation(line: 272, column: 8, scope: !1624)
!1713 = !DILocation(line: 273, column: 8, scope: !1624)
!1714 = !DILocation(line: 273, column: 3, scope: !1624)
!1715 = !DILocation(line: 0, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1624, file: !126, line: 317, column: 5)
!1717 = !DILocation(line: 316, column: 3, scope: !1624)
!1718 = !DILocation(line: 323, column: 11, scope: !1716)
!1719 = !DILocation(line: 323, column: 12, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !126, line: 323, column: 11)
!1721 = !DILocation(line: 324, column: 9, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !126, line: 324, column: 9)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !126, line: 324, column: 9)
!1724 = !DILocation(line: 324, column: 9, scope: !1723)
!1725 = !DILocation(line: 362, column: 26, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !126, line: 340, column: 11)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !126, line: 339, column: 13)
!1728 = distinct !DILexicalBlock(scope: !1716, file: !126, line: 338, column: 7)
!1729 = !DILocation(line: 363, column: 27, scope: !1726)
!1730 = !DILocation(line: 364, column: 11, scope: !1726)
!1731 = !DILocation(line: 365, column: 14, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !126, line: 365, column: 13)
!1733 = !DILocation(line: 365, column: 13, scope: !1728)
!1734 = !DILocation(line: 366, column: 43, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !126, line: 366, column: 11)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !126, line: 366, column: 11)
!1737 = !DILocation(line: 366, column: 11, scope: !1736)
!1738 = !DILocation(line: 367, column: 13, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !126, line: 367, column: 13)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !126, line: 367, column: 13)
!1741 = !DILocation(line: 367, column: 13, scope: !1740)
!1742 = !DILocation(line: 366, column: 70, scope: !1735)
!1743 = distinct !{!1743, !1737, !1744}
!1744 = !DILocation(line: 367, column: 13, scope: !1736)
!1745 = !DILocation(line: 370, column: 28, scope: !1728)
!1746 = !DILocation(line: 372, column: 7, scope: !1716)
!1747 = !DILocation(line: 376, column: 7, scope: !1716)
!1748 = !DILocation(line: 379, column: 7, scope: !1716)
!1749 = !DILocation(line: 381, column: 12, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1716, file: !126, line: 381, column: 11)
!1751 = !DILocation(line: 381, column: 11, scope: !1716)
!1752 = !DILocation(line: 0, scope: !1750)
!1753 = !DILocation(line: 386, column: 12, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1716, file: !126, line: 386, column: 11)
!1755 = !DILocation(line: 386, column: 11, scope: !1716)
!1756 = !DILocation(line: 387, column: 9, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !126, line: 387, column: 9)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !126, line: 387, column: 9)
!1759 = !DILocation(line: 387, column: 9, scope: !1758)
!1760 = !DILocation(line: 394, column: 7, scope: !1716)
!1761 = !DILocation(line: 397, column: 7, scope: !1716)
!1762 = !DILocation(line: 0, scope: !1624)
!1763 = !DILocation(line: 263, column: 10, scope: !1624)
!1764 = !DILocation(line: 400, column: 8, scope: !1653)
!1765 = !DILocation(line: 0, scope: !1652)
!1766 = !DILocation(line: 400, column: 27, scope: !1652)
!1767 = !DILocation(line: 400, column: 19, scope: !1652)
!1768 = !DILocation(line: 400, column: 41, scope: !1652)
!1769 = !DILocation(line: 400, column: 48, scope: !1652)
!1770 = !DILocation(line: 400, column: 3, scope: !1653)
!1771 = !DILocation(line: 400, column: 60, scope: !1652)
!1772 = !DILocation(line: 404, column: 12, scope: !1651)
!1773 = !DILocation(line: 405, column: 12, scope: !1651)
!1774 = !DILocation(line: 406, column: 12, scope: !1651)
!1775 = !DILocation(line: 409, column: 11, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 408, column: 11)
!1777 = !DILocation(line: 411, column: 17, scope: !1776)
!1778 = !DILocation(line: 412, column: 39, scope: !1776)
!1779 = !DILocation(line: 416, column: 32, scope: !1776)
!1780 = !DILocation(line: 412, column: 19, scope: !1776)
!1781 = !DILocation(line: 412, column: 15, scope: !1776)
!1782 = !DILocation(line: 417, column: 11, scope: !1776)
!1783 = !DILocation(line: 417, column: 26, scope: !1776)
!1784 = !DILocation(line: 417, column: 14, scope: !1776)
!1785 = !DILocation(line: 417, column: 63, scope: !1776)
!1786 = !DILocation(line: 408, column: 11, scope: !1651)
!1787 = !DILocation(line: 0, scope: !1651)
!1788 = !DILocation(line: 424, column: 11, scope: !1651)
!1789 = !DILocation(line: 402, column: 21, scope: !1651)
!1790 = !DILocation(line: 425, column: 7, scope: !1651)
!1791 = !DILocation(line: 428, column: 15, scope: !1660)
!1792 = !DILocation(line: 430, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !126, line: 430, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !126, line: 429, column: 13)
!1795 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 428, column: 15)
!1796 = !DILocation(line: 430, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !126, line: 430, column: 15)
!1798 = !DILocation(line: 430, column: 15, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !126, line: 430, column: 15)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !126, line: 430, column: 15)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !126, line: 430, column: 15)
!1802 = !DILocation(line: 430, column: 15, scope: !1800)
!1803 = !DILocation(line: 430, column: 15, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !126, line: 430, column: 15)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !126, line: 430, column: 15)
!1806 = !DILocation(line: 430, column: 15, scope: !1805)
!1807 = !DILocation(line: 430, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !126, line: 430, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1801, file: !126, line: 430, column: 15)
!1810 = !DILocation(line: 430, column: 15, scope: !1809)
!1811 = !DILocation(line: 430, column: 15, scope: !1801)
!1812 = !DILocation(line: 430, column: 15, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !126, line: 430, column: 15)
!1814 = distinct !DILexicalBlock(scope: !1793, file: !126, line: 430, column: 15)
!1815 = !DILocation(line: 430, column: 15, scope: !1814)
!1816 = !DILocation(line: 438, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1794, file: !126, line: 437, column: 19)
!1818 = !DILocation(line: 438, column: 24, scope: !1817)
!1819 = !DILocation(line: 438, column: 28, scope: !1817)
!1820 = !DILocation(line: 438, column: 38, scope: !1817)
!1821 = !DILocation(line: 438, column: 48, scope: !1817)
!1822 = !DILocation(line: 438, column: 59, scope: !1817)
!1823 = !DILocation(line: 440, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !126, line: 440, column: 19)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !126, line: 440, column: 19)
!1826 = distinct !DILexicalBlock(scope: !1817, file: !126, line: 439, column: 17)
!1827 = !DILocation(line: 440, column: 19, scope: !1825)
!1828 = !DILocation(line: 441, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !126, line: 441, column: 19)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !126, line: 441, column: 19)
!1831 = !DILocation(line: 441, column: 19, scope: !1830)
!1832 = !DILocation(line: 442, column: 17, scope: !1826)
!1833 = !DILocation(line: 449, column: 20, scope: !1795)
!1834 = !DILocation(line: 454, column: 11, scope: !1660)
!1835 = !DILocation(line: 457, column: 19, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 455, column: 13)
!1837 = !DILocation(line: 463, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1836, file: !126, line: 462, column: 19)
!1839 = !DILocation(line: 463, column: 24, scope: !1838)
!1840 = !DILocation(line: 463, column: 28, scope: !1838)
!1841 = !DILocation(line: 463, column: 38, scope: !1838)
!1842 = !DILocation(line: 463, column: 47, scope: !1838)
!1843 = !DILocation(line: 463, column: 41, scope: !1838)
!1844 = !DILocation(line: 463, column: 52, scope: !1838)
!1845 = !DILocation(line: 462, column: 19, scope: !1836)
!1846 = !DILocation(line: 464, column: 25, scope: !1838)
!1847 = !DILocation(line: 464, column: 17, scope: !1838)
!1848 = !DILocation(line: 471, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !126, line: 465, column: 19)
!1850 = !DILocation(line: 475, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !126, line: 475, column: 21)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !126, line: 475, column: 21)
!1853 = !DILocation(line: 475, column: 21, scope: !1852)
!1854 = !DILocation(line: 476, column: 21, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !126, line: 476, column: 21)
!1856 = distinct !DILexicalBlock(scope: !1849, file: !126, line: 476, column: 21)
!1857 = !DILocation(line: 476, column: 21, scope: !1856)
!1858 = !DILocation(line: 477, column: 21, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !126, line: 477, column: 21)
!1860 = distinct !DILexicalBlock(scope: !1849, file: !126, line: 477, column: 21)
!1861 = !DILocation(line: 477, column: 21, scope: !1860)
!1862 = !DILocation(line: 478, column: 21, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !126, line: 478, column: 21)
!1864 = distinct !DILexicalBlock(scope: !1849, file: !126, line: 478, column: 21)
!1865 = !DILocation(line: 478, column: 21, scope: !1864)
!1866 = !DILocation(line: 479, column: 21, scope: !1849)
!1867 = !DILocation(line: 403, column: 21, scope: !1651)
!1868 = !DILocation(line: 492, column: 31, scope: !1660)
!1869 = !DILocation(line: 493, column: 31, scope: !1660)
!1870 = !DILocation(line: 495, column: 31, scope: !1660)
!1871 = !DILocation(line: 496, column: 31, scope: !1660)
!1872 = !DILocation(line: 497, column: 31, scope: !1660)
!1873 = !DILocation(line: 500, column: 15, scope: !1660)
!1874 = !DILocation(line: 502, column: 19, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !126, line: 501, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 500, column: 15)
!1877 = !DILocation(line: 509, column: 33, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 509, column: 15)
!1879 = !DILocation(line: 0, scope: !1660)
!1880 = !DILocation(line: 514, column: 15, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 513, column: 15)
!1882 = !DILocation(line: 518, column: 15, scope: !1660)
!1883 = !DILocation(line: 526, column: 26, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 526, column: 15)
!1885 = !DILocation(line: 526, column: 15, scope: !1660)
!1886 = !DILocation(line: 526, column: 40, scope: !1884)
!1887 = !DILocation(line: 526, column: 47, scope: !1884)
!1888 = !DILocation(line: 530, column: 17, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 530, column: 15)
!1890 = !DILocation(line: 526, column: 18, scope: !1884)
!1891 = !DILocation(line: 526, column: 65, scope: !1884)
!1892 = !DILocation(line: 530, column: 15, scope: !1660)
!1893 = !DILocation(line: 535, column: 11, scope: !1660)
!1894 = !DILocation(line: 549, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 548, column: 15)
!1896 = !DILocation(line: 556, column: 15, scope: !1660)
!1897 = !DILocation(line: 558, column: 19, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !126, line: 557, column: 13)
!1899 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 556, column: 15)
!1900 = !DILocation(line: 561, column: 19, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1898, file: !126, line: 561, column: 19)
!1902 = !DILocation(line: 561, column: 35, scope: !1901)
!1903 = !DILocation(line: 561, column: 30, scope: !1901)
!1904 = !DILocation(line: 570, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !126, line: 570, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1898, file: !126, line: 570, column: 15)
!1907 = !DILocation(line: 570, column: 15, scope: !1906)
!1908 = !DILocation(line: 571, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !126, line: 571, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1898, file: !126, line: 571, column: 15)
!1911 = !DILocation(line: 571, column: 15, scope: !1910)
!1912 = !DILocation(line: 572, column: 15, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !126, line: 572, column: 15)
!1914 = distinct !DILexicalBlock(scope: !1898, file: !126, line: 572, column: 15)
!1915 = !DILocation(line: 572, column: 15, scope: !1914)
!1916 = !DILocation(line: 574, column: 13, scope: !1898)
!1917 = !DILocation(line: 614, column: 17, scope: !1659)
!1918 = !DILocation(line: 610, column: 20, scope: !1659)
!1919 = !DILocation(line: 617, column: 29, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1664, file: !126, line: 615, column: 15)
!1921 = !{!918, !918, i64 0}
!1922 = !DILocation(line: 617, column: 27, scope: !1920)
!1923 = !DILocation(line: 612, column: 18, scope: !1659)
!1924 = !DILocation(line: 618, column: 15, scope: !1920)
!1925 = !DILocation(line: 621, column: 17, scope: !1663)
!1926 = !DILocation(line: 622, column: 17, scope: !1663)
!1927 = !DILocation(line: 626, column: 29, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1663, file: !126, line: 626, column: 21)
!1929 = !DILocation(line: 626, column: 21, scope: !1663)
!1930 = !DILocation(line: 627, column: 29, scope: !1928)
!1931 = !DILocation(line: 627, column: 19, scope: !1928)
!1932 = !DILocation(line: 0, scope: !1776)
!1933 = !DILocation(line: 629, column: 17, scope: !1663)
!1934 = !DILocation(line: 624, column: 19, scope: !1663)
!1935 = !DILocation(line: 625, column: 27, scope: !1663)
!1936 = !DILocation(line: 631, column: 21, scope: !1681)
!1937 = !DILocation(line: 632, column: 56, scope: !1681)
!1938 = !DILocation(line: 632, column: 50, scope: !1681)
!1939 = !DILocation(line: 633, column: 53, scope: !1681)
!1940 = !DILocation(line: 621, column: 27, scope: !1663)
!1941 = !DILocation(line: 631, column: 29, scope: !1681)
!1942 = !DILocation(line: 632, column: 36, scope: !1681)
!1943 = !DILocation(line: 632, column: 28, scope: !1681)
!1944 = !DILocation(line: 634, column: 25, scope: !1681)
!1945 = !DILocation(line: 644, column: 38, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1688, file: !126, line: 642, column: 23)
!1947 = !DILocation(line: 644, column: 48, scope: !1946)
!1948 = !DILocation(line: 644, column: 51, scope: !1946)
!1949 = !DILocation(line: 644, column: 25, scope: !1946)
!1950 = !DILocation(line: 645, column: 28, scope: !1946)
!1951 = !DILocation(line: 644, column: 34, scope: !1946)
!1952 = distinct !{!1952, !1949, !1950}
!1953 = !DILocation(line: 658, column: 43, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !126, line: 658, column: 29)
!1955 = distinct !DILexicalBlock(scope: !1685, file: !126, line: 658, column: 29)
!1956 = !DILocation(line: 655, column: 29, scope: !1686)
!1957 = !DILocation(line: 657, column: 36, scope: !1685)
!1958 = !DILocation(line: 659, column: 49, scope: !1954)
!1959 = !DILocation(line: 659, column: 39, scope: !1954)
!1960 = !DILocation(line: 659, column: 31, scope: !1954)
!1961 = !DILocation(line: 658, column: 53, scope: !1954)
!1962 = !DILocation(line: 658, column: 29, scope: !1955)
!1963 = distinct !{!1963, !1962, !1964}
!1964 = !DILocation(line: 667, column: 33, scope: !1955)
!1965 = !DILocation(line: 674, column: 19, scope: !1663)
!1966 = !DILocation(line: 670, column: 41, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1687, file: !126, line: 670, column: 29)
!1968 = !DILocation(line: 670, column: 31, scope: !1967)
!1969 = !DILocation(line: 670, column: 29, scope: !1687)
!1970 = !DILocation(line: 672, column: 27, scope: !1687)
!1971 = !DILocation(line: 675, column: 26, scope: !1663)
!1972 = !DILocation(line: 675, column: 24, scope: !1663)
!1973 = !DILocation(line: 674, column: 19, scope: !1681)
!1974 = distinct !{!1974, !1933, !1975}
!1975 = !DILocation(line: 675, column: 44, scope: !1663)
!1976 = !DILocation(line: 676, column: 15, scope: !1664)
!1977 = !DILocation(line: 0, scope: !1928)
!1978 = !DILocation(line: 0, scope: !1663)
!1979 = !DILocation(line: 678, column: 40, scope: !1659)
!1980 = !DILocation(line: 680, column: 19, scope: !1693)
!1981 = !DILocation(line: 680, column: 45, scope: !1693)
!1982 = !DILocation(line: 680, column: 23, scope: !1693)
!1983 = !DILocation(line: 684, column: 33, scope: !1692)
!1984 = !DILocation(line: 684, column: 24, scope: !1692)
!1985 = !DILocation(line: 686, column: 17, scope: !1692)
!1986 = !DILocation(line: 0, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !126, line: 687, column: 19)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !126, line: 686, column: 17)
!1989 = distinct !DILexicalBlock(scope: !1692, file: !126, line: 686, column: 17)
!1990 = !DILocation(line: 0, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !126, line: 703, column: 21)
!1992 = !DILocation(line: 0, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !126, line: 696, column: 23)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !126, line: 695, column: 30)
!1995 = distinct !DILexicalBlock(scope: !1987, file: !126, line: 688, column: 25)
!1996 = !DILocation(line: 688, column: 43, scope: !1995)
!1997 = !DILocation(line: 690, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !126, line: 690, column: 25)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !126, line: 689, column: 23)
!2000 = !DILocation(line: 690, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !126, line: 690, column: 25)
!2002 = !DILocation(line: 690, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !126, line: 690, column: 25)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !126, line: 690, column: 25)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !126, line: 690, column: 25)
!2006 = !DILocation(line: 690, column: 25, scope: !2004)
!2007 = !DILocation(line: 690, column: 25, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !126, line: 690, column: 25)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !126, line: 690, column: 25)
!2010 = !DILocation(line: 690, column: 25, scope: !2009)
!2011 = !DILocation(line: 690, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !126, line: 690, column: 25)
!2013 = distinct !DILexicalBlock(scope: !2005, file: !126, line: 690, column: 25)
!2014 = !DILocation(line: 690, column: 25, scope: !2013)
!2015 = !DILocation(line: 690, column: 25, scope: !2005)
!2016 = !DILocation(line: 690, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !126, line: 690, column: 25)
!2018 = distinct !DILexicalBlock(scope: !1998, file: !126, line: 690, column: 25)
!2019 = !DILocation(line: 690, column: 25, scope: !2018)
!2020 = !DILocation(line: 691, column: 25, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !126, line: 691, column: 25)
!2022 = distinct !DILexicalBlock(scope: !1999, file: !126, line: 691, column: 25)
!2023 = !DILocation(line: 691, column: 25, scope: !2022)
!2024 = !DILocation(line: 692, column: 25, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !126, line: 692, column: 25)
!2026 = distinct !DILexicalBlock(scope: !1999, file: !126, line: 692, column: 25)
!2027 = !DILocation(line: 692, column: 25, scope: !2026)
!2028 = !DILocation(line: 693, column: 38, scope: !1999)
!2029 = !DILocation(line: 693, column: 33, scope: !1999)
!2030 = !DILocation(line: 694, column: 23, scope: !1999)
!2031 = !DILocation(line: 695, column: 30, scope: !1994)
!2032 = !DILocation(line: 695, column: 30, scope: !1995)
!2033 = !DILocation(line: 697, column: 25, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !126, line: 697, column: 25)
!2035 = distinct !DILexicalBlock(scope: !1993, file: !126, line: 697, column: 25)
!2036 = !DILocation(line: 697, column: 25, scope: !2035)
!2037 = !DILocation(line: 699, column: 23, scope: !1993)
!2038 = !DILocation(line: 0, scope: !2026)
!2039 = !DILocation(line: 0, scope: !1999)
!2040 = !DILocation(line: 0, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1776, file: !126, line: 418, column: 9)
!2042 = !DILocation(line: 0, scope: !1998)
!2043 = !DILocation(line: 700, column: 35, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1987, file: !126, line: 700, column: 25)
!2045 = !DILocation(line: 700, column: 30, scope: !2044)
!2046 = !DILocation(line: 700, column: 25, scope: !1987)
!2047 = !DILocation(line: 702, column: 21, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !126, line: 702, column: 21)
!2049 = distinct !DILexicalBlock(scope: !1987, file: !126, line: 702, column: 21)
!2050 = !DILocation(line: 702, column: 21, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !126, line: 702, column: 21)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !126, line: 702, column: 21)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !126, line: 702, column: 21)
!2054 = !DILocation(line: 702, column: 21, scope: !2052)
!2055 = !DILocation(line: 702, column: 21, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !126, line: 702, column: 21)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !126, line: 702, column: 21)
!2058 = !DILocation(line: 702, column: 21, scope: !2057)
!2059 = !DILocation(line: 702, column: 21, scope: !2053)
!2060 = !DILocation(line: 0, scope: !2035)
!2061 = !DILocation(line: 703, column: 21, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1991, file: !126, line: 703, column: 21)
!2063 = !DILocation(line: 703, column: 21, scope: !1991)
!2064 = !DILocation(line: 704, column: 25, scope: !1987)
!2065 = !DILocation(line: 686, column: 17, scope: !1988)
!2066 = distinct !{!2066, !2067, !2068}
!2067 = !DILocation(line: 686, column: 17, scope: !1989)
!2068 = !DILocation(line: 705, column: 19, scope: !1989)
!2069 = !DILocation(line: 0, scope: !1653)
!2070 = !DILocation(line: 416, column: 30, scope: !1776)
!2071 = !DILocation(line: 712, column: 34, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 712, column: 11)
!2073 = !DILocation(line: 714, column: 14, scope: !2072)
!2074 = !DILocation(line: 715, column: 14, scope: !2072)
!2075 = !DILocation(line: 715, column: 35, scope: !2072)
!2076 = !DILocation(line: 715, column: 17, scope: !2072)
!2077 = !DILocation(line: 715, column: 47, scope: !2072)
!2078 = !DILocation(line: 715, column: 65, scope: !2072)
!2079 = !DILocation(line: 716, column: 15, scope: !2072)
!2080 = !DILocation(line: 716, column: 11, scope: !2072)
!2081 = !DILocation(line: 712, column: 11, scope: !1651)
!2082 = !DILocation(line: 400, column: 10, scope: !1653)
!2083 = !DILocation(line: 0, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !126, line: 519, column: 13)
!2085 = distinct !DILexicalBlock(scope: !1660, file: !126, line: 518, column: 15)
!2086 = !DILocation(line: 720, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 720, column: 7)
!2088 = !DILocation(line: 720, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2087, file: !126, line: 720, column: 7)
!2090 = !DILocation(line: 720, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !126, line: 720, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !126, line: 720, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !126, line: 720, column: 7)
!2094 = !DILocation(line: 720, column: 7, scope: !2092)
!2095 = !DILocation(line: 720, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !126, line: 720, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !126, line: 720, column: 7)
!2098 = !DILocation(line: 720, column: 7, scope: !2097)
!2099 = !DILocation(line: 720, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !126, line: 720, column: 7)
!2101 = distinct !DILexicalBlock(scope: !2093, file: !126, line: 720, column: 7)
!2102 = !DILocation(line: 720, column: 7, scope: !2101)
!2103 = !DILocation(line: 720, column: 7, scope: !2093)
!2104 = !DILocation(line: 720, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !126, line: 720, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2087, file: !126, line: 720, column: 7)
!2107 = !DILocation(line: 720, column: 7, scope: !2106)
!2108 = !DILocation(line: 723, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !126, line: 723, column: 7)
!2110 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 723, column: 7)
!2111 = !DILocation(line: 424, column: 9, scope: !1651)
!2112 = !DILocation(line: 723, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !126, line: 723, column: 7)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !126, line: 723, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !126, line: 723, column: 7)
!2116 = !DILocation(line: 723, column: 7, scope: !2114)
!2117 = !DILocation(line: 723, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !126, line: 723, column: 7)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !126, line: 723, column: 7)
!2120 = !DILocation(line: 723, column: 7, scope: !2119)
!2121 = !DILocation(line: 723, column: 7, scope: !2115)
!2122 = !DILocation(line: 724, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !126, line: 724, column: 7)
!2124 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 724, column: 7)
!2125 = !DILocation(line: 724, column: 7, scope: !2124)
!2126 = !DILocation(line: 726, column: 13, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1651, file: !126, line: 726, column: 11)
!2128 = !DILocation(line: 726, column: 11, scope: !1651)
!2129 = !DILocation(line: 728, column: 5, scope: !1652)
!2130 = !DILocation(line: 400, column: 75, scope: !1652)
!2131 = !DILocation(line: 400, column: 3, scope: !1652)
!2132 = distinct !{!2132, !1770, !2133}
!2133 = !DILocation(line: 728, column: 5, scope: !1653)
!2134 = !DILocation(line: 730, column: 11, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1624, file: !126, line: 730, column: 7)
!2136 = !DILocation(line: 730, column: 16, scope: !2135)
!2137 = !DILocation(line: 738, column: 51, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1624, file: !126, line: 738, column: 7)
!2139 = !DILocation(line: 739, column: 10, scope: !2138)
!2140 = !DILocation(line: 741, column: 11, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !126, line: 741, column: 11)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !126, line: 740, column: 5)
!2143 = !DILocation(line: 741, column: 11, scope: !2142)
!2144 = !DILocation(line: 742, column: 16, scope: !2141)
!2145 = !DILocation(line: 742, column: 9, scope: !2141)
!2146 = !DILocation(line: 746, column: 18, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2141, file: !126, line: 746, column: 16)
!2148 = !DILocation(line: 746, column: 32, scope: !2147)
!2149 = !DILocation(line: 746, column: 29, scope: !2147)
!2150 = !DILocation(line: 755, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1624, file: !126, line: 755, column: 7)
!2152 = !DILocation(line: 755, column: 20, scope: !2151)
!2153 = !DILocation(line: 756, column: 12, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !126, line: 756, column: 5)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !126, line: 756, column: 5)
!2156 = !DILocation(line: 756, column: 5, scope: !2155)
!2157 = !DILocation(line: 757, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !126, line: 757, column: 7)
!2159 = distinct !DILexicalBlock(scope: !2154, file: !126, line: 757, column: 7)
!2160 = !DILocation(line: 757, column: 7, scope: !2159)
!2161 = !DILocation(line: 756, column: 39, scope: !2154)
!2162 = distinct !{!2162, !2156, !2163}
!2163 = !DILocation(line: 757, column: 7, scope: !2155)
!2164 = !DILocation(line: 759, column: 11, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1624, file: !126, line: 759, column: 7)
!2166 = !DILocation(line: 759, column: 7, scope: !1624)
!2167 = !DILocation(line: 760, column: 5, scope: !2165)
!2168 = !DILocation(line: 760, column: 17, scope: !2165)
!2169 = !DILocation(line: 766, column: 21, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !1624, file: !126, line: 766, column: 7)
!2171 = !DILocation(line: 766, column: 54, scope: !2170)
!2172 = !DILocation(line: 766, column: 51, scope: !2170)
!2173 = !DILocation(line: 770, column: 42, scope: !1624)
!2174 = !DILocation(line: 768, column: 10, scope: !1624)
!2175 = !DILocation(line: 768, column: 3, scope: !1624)
!2176 = !DILocation(line: 772, column: 1, scope: !1624)
!2177 = distinct !DISubprogram(name: "gettext_quote", scope: !126, file: !126, line: 207, type: !2178, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!53, !53, !5}
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DILocalVariable(name: "msgid", arg: 1, scope: !2177, file: !126, line: 207, type: !53)
!2182 = !DILocalVariable(name: "s", arg: 2, scope: !2177, file: !126, line: 207, type: !5)
!2183 = !DILocalVariable(name: "translation", scope: !2177, file: !126, line: 209, type: !53)
!2184 = !DILocalVariable(name: "locale_code", scope: !2177, file: !126, line: 210, type: !53)
!2185 = !DILocation(line: 207, column: 28, scope: !2177)
!2186 = !DILocation(line: 207, column: 54, scope: !2177)
!2187 = !DILocation(line: 209, column: 29, scope: !2177)
!2188 = !DILocation(line: 209, column: 15, scope: !2177)
!2189 = !DILocation(line: 212, column: 19, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2177, file: !126, line: 212, column: 7)
!2191 = !DILocation(line: 212, column: 7, scope: !2177)
!2192 = !DILocation(line: 233, column: 17, scope: !2177)
!2193 = !DILocation(line: 210, column: 15, scope: !2177)
!2194 = !DILocalVariable(name: "s1", arg: 1, scope: !2195, file: !2196, line: 160, type: !53)
!2195 = distinct !DISubprogram(name: "strcaseeq0", scope: !2196, file: !2196, line: 160, type: !2197, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2199)
!2196 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!56, !53, !53, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2199 = !{!2194, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2200 = !DILocalVariable(name: "s2", arg: 2, scope: !2195, file: !2196, line: 160, type: !53)
!2201 = !DILocalVariable(name: "s20", arg: 3, scope: !2195, file: !2196, line: 160, type: !31)
!2202 = !DILocalVariable(name: "s21", arg: 4, scope: !2195, file: !2196, line: 160, type: !31)
!2203 = !DILocalVariable(name: "s22", arg: 5, scope: !2195, file: !2196, line: 160, type: !31)
!2204 = !DILocalVariable(name: "s23", arg: 6, scope: !2195, file: !2196, line: 160, type: !31)
!2205 = !DILocalVariable(name: "s24", arg: 7, scope: !2195, file: !2196, line: 160, type: !31)
!2206 = !DILocalVariable(name: "s25", arg: 8, scope: !2195, file: !2196, line: 160, type: !31)
!2207 = !DILocalVariable(name: "s26", arg: 9, scope: !2195, file: !2196, line: 160, type: !31)
!2208 = !DILocalVariable(name: "s27", arg: 10, scope: !2195, file: !2196, line: 160, type: !31)
!2209 = !DILocalVariable(name: "s28", arg: 11, scope: !2195, file: !2196, line: 160, type: !31)
!2210 = !DILocation(line: 160, column: 25, scope: !2195, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 234, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2177, file: !126, line: 234, column: 7)
!2213 = !DILocation(line: 160, column: 41, scope: !2195, inlinedAt: !2211)
!2214 = !DILocation(line: 160, column: 50, scope: !2195, inlinedAt: !2211)
!2215 = !DILocation(line: 160, column: 60, scope: !2195, inlinedAt: !2211)
!2216 = !DILocation(line: 160, column: 70, scope: !2195, inlinedAt: !2211)
!2217 = !DILocation(line: 160, column: 80, scope: !2195, inlinedAt: !2211)
!2218 = !DILocation(line: 160, column: 90, scope: !2195, inlinedAt: !2211)
!2219 = !DILocation(line: 160, column: 100, scope: !2195, inlinedAt: !2211)
!2220 = !DILocation(line: 160, column: 110, scope: !2195, inlinedAt: !2211)
!2221 = !DILocation(line: 160, column: 120, scope: !2195, inlinedAt: !2211)
!2222 = !DILocation(line: 160, column: 130, scope: !2195, inlinedAt: !2211)
!2223 = !DILocation(line: 162, column: 7, scope: !2224, inlinedAt: !2211)
!2224 = distinct !DILexicalBlock(scope: !2195, file: !2196, line: 162, column: 7)
!2225 = !DILocalVariable(name: "s1", arg: 1, scope: !2226, file: !2196, line: 146, type: !53)
!2226 = distinct !DISubprogram(name: "strcaseeq1", scope: !2196, file: !2196, line: 146, type: !2227, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!56, !53, !53, !31, !31, !31, !31, !31, !31, !31, !31}
!2229 = !{!2225, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2230 = !DILocalVariable(name: "s2", arg: 2, scope: !2226, file: !2196, line: 146, type: !53)
!2231 = !DILocalVariable(name: "s21", arg: 3, scope: !2226, file: !2196, line: 146, type: !31)
!2232 = !DILocalVariable(name: "s22", arg: 4, scope: !2226, file: !2196, line: 146, type: !31)
!2233 = !DILocalVariable(name: "s23", arg: 5, scope: !2226, file: !2196, line: 146, type: !31)
!2234 = !DILocalVariable(name: "s24", arg: 6, scope: !2226, file: !2196, line: 146, type: !31)
!2235 = !DILocalVariable(name: "s25", arg: 7, scope: !2226, file: !2196, line: 146, type: !31)
!2236 = !DILocalVariable(name: "s26", arg: 8, scope: !2226, file: !2196, line: 146, type: !31)
!2237 = !DILocalVariable(name: "s27", arg: 9, scope: !2226, file: !2196, line: 146, type: !31)
!2238 = !DILocalVariable(name: "s28", arg: 10, scope: !2226, file: !2196, line: 146, type: !31)
!2239 = !DILocation(line: 146, column: 25, scope: !2226, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 167, column: 16, scope: !2241, inlinedAt: !2211)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !2196, line: 164, column: 11)
!2242 = distinct !DILexicalBlock(scope: !2224, file: !2196, line: 163, column: 5)
!2243 = !DILocation(line: 146, column: 41, scope: !2226, inlinedAt: !2240)
!2244 = !DILocation(line: 146, column: 50, scope: !2226, inlinedAt: !2240)
!2245 = !DILocation(line: 146, column: 60, scope: !2226, inlinedAt: !2240)
!2246 = !DILocation(line: 146, column: 70, scope: !2226, inlinedAt: !2240)
!2247 = !DILocation(line: 146, column: 80, scope: !2226, inlinedAt: !2240)
!2248 = !DILocation(line: 146, column: 90, scope: !2226, inlinedAt: !2240)
!2249 = !DILocation(line: 146, column: 100, scope: !2226, inlinedAt: !2240)
!2250 = !DILocation(line: 146, column: 110, scope: !2226, inlinedAt: !2240)
!2251 = !DILocation(line: 146, column: 120, scope: !2226, inlinedAt: !2240)
!2252 = !DILocation(line: 148, column: 7, scope: !2253, inlinedAt: !2240)
!2253 = distinct !DILexicalBlock(scope: !2226, file: !2196, line: 148, column: 7)
!2254 = !DILocalVariable(name: "s1", arg: 1, scope: !2255, file: !2196, line: 132, type: !53)
!2255 = distinct !DISubprogram(name: "strcaseeq2", scope: !2196, file: !2196, line: 132, type: !2256, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!56, !53, !53, !31, !31, !31, !31, !31, !31, !31}
!2258 = !{!2254, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2259 = !DILocalVariable(name: "s2", arg: 2, scope: !2255, file: !2196, line: 132, type: !53)
!2260 = !DILocalVariable(name: "s22", arg: 3, scope: !2255, file: !2196, line: 132, type: !31)
!2261 = !DILocalVariable(name: "s23", arg: 4, scope: !2255, file: !2196, line: 132, type: !31)
!2262 = !DILocalVariable(name: "s24", arg: 5, scope: !2255, file: !2196, line: 132, type: !31)
!2263 = !DILocalVariable(name: "s25", arg: 6, scope: !2255, file: !2196, line: 132, type: !31)
!2264 = !DILocalVariable(name: "s26", arg: 7, scope: !2255, file: !2196, line: 132, type: !31)
!2265 = !DILocalVariable(name: "s27", arg: 8, scope: !2255, file: !2196, line: 132, type: !31)
!2266 = !DILocalVariable(name: "s28", arg: 9, scope: !2255, file: !2196, line: 132, type: !31)
!2267 = !DILocation(line: 132, column: 25, scope: !2255, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 153, column: 16, scope: !2269, inlinedAt: !2240)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !2196, line: 150, column: 11)
!2270 = distinct !DILexicalBlock(scope: !2253, file: !2196, line: 149, column: 5)
!2271 = !DILocation(line: 132, column: 41, scope: !2255, inlinedAt: !2268)
!2272 = !DILocation(line: 132, column: 50, scope: !2255, inlinedAt: !2268)
!2273 = !DILocation(line: 132, column: 60, scope: !2255, inlinedAt: !2268)
!2274 = !DILocation(line: 132, column: 70, scope: !2255, inlinedAt: !2268)
!2275 = !DILocation(line: 132, column: 80, scope: !2255, inlinedAt: !2268)
!2276 = !DILocation(line: 132, column: 90, scope: !2255, inlinedAt: !2268)
!2277 = !DILocation(line: 132, column: 100, scope: !2255, inlinedAt: !2268)
!2278 = !DILocation(line: 132, column: 110, scope: !2255, inlinedAt: !2268)
!2279 = !DILocation(line: 134, column: 7, scope: !2280, inlinedAt: !2268)
!2280 = distinct !DILexicalBlock(scope: !2255, file: !2196, line: 134, column: 7)
!2281 = !DILocalVariable(name: "s1", arg: 1, scope: !2282, file: !2196, line: 118, type: !53)
!2282 = distinct !DISubprogram(name: "strcaseeq3", scope: !2196, file: !2196, line: 118, type: !2283, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!56, !53, !53, !31, !31, !31, !31, !31, !31}
!2285 = !{!2281, !2286, !2287, !2288, !2289, !2290, !2291, !2292}
!2286 = !DILocalVariable(name: "s2", arg: 2, scope: !2282, file: !2196, line: 118, type: !53)
!2287 = !DILocalVariable(name: "s23", arg: 3, scope: !2282, file: !2196, line: 118, type: !31)
!2288 = !DILocalVariable(name: "s24", arg: 4, scope: !2282, file: !2196, line: 118, type: !31)
!2289 = !DILocalVariable(name: "s25", arg: 5, scope: !2282, file: !2196, line: 118, type: !31)
!2290 = !DILocalVariable(name: "s26", arg: 6, scope: !2282, file: !2196, line: 118, type: !31)
!2291 = !DILocalVariable(name: "s27", arg: 7, scope: !2282, file: !2196, line: 118, type: !31)
!2292 = !DILocalVariable(name: "s28", arg: 8, scope: !2282, file: !2196, line: 118, type: !31)
!2293 = !DILocation(line: 118, column: 25, scope: !2282, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 139, column: 16, scope: !2295, inlinedAt: !2268)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !2196, line: 136, column: 11)
!2296 = distinct !DILexicalBlock(scope: !2280, file: !2196, line: 135, column: 5)
!2297 = !DILocation(line: 118, column: 41, scope: !2282, inlinedAt: !2294)
!2298 = !DILocation(line: 118, column: 50, scope: !2282, inlinedAt: !2294)
!2299 = !DILocation(line: 118, column: 60, scope: !2282, inlinedAt: !2294)
!2300 = !DILocation(line: 118, column: 70, scope: !2282, inlinedAt: !2294)
!2301 = !DILocation(line: 118, column: 80, scope: !2282, inlinedAt: !2294)
!2302 = !DILocation(line: 118, column: 90, scope: !2282, inlinedAt: !2294)
!2303 = !DILocation(line: 118, column: 100, scope: !2282, inlinedAt: !2294)
!2304 = !DILocation(line: 120, column: 7, scope: !2305, inlinedAt: !2294)
!2305 = distinct !DILexicalBlock(scope: !2282, file: !2196, line: 120, column: 7)
!2306 = !DILocation(line: 120, column: 7, scope: !2282, inlinedAt: !2294)
!2307 = !DILocalVariable(name: "s1", arg: 1, scope: !2308, file: !2196, line: 104, type: !53)
!2308 = distinct !DISubprogram(name: "strcaseeq4", scope: !2196, file: !2196, line: 104, type: !2309, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!56, !53, !53, !31, !31, !31, !31, !31}
!2311 = !{!2307, !2312, !2313, !2314, !2315, !2316, !2317}
!2312 = !DILocalVariable(name: "s2", arg: 2, scope: !2308, file: !2196, line: 104, type: !53)
!2313 = !DILocalVariable(name: "s24", arg: 3, scope: !2308, file: !2196, line: 104, type: !31)
!2314 = !DILocalVariable(name: "s25", arg: 4, scope: !2308, file: !2196, line: 104, type: !31)
!2315 = !DILocalVariable(name: "s26", arg: 5, scope: !2308, file: !2196, line: 104, type: !31)
!2316 = !DILocalVariable(name: "s27", arg: 6, scope: !2308, file: !2196, line: 104, type: !31)
!2317 = !DILocalVariable(name: "s28", arg: 7, scope: !2308, file: !2196, line: 104, type: !31)
!2318 = !DILocation(line: 104, column: 25, scope: !2308, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 125, column: 16, scope: !2320, inlinedAt: !2294)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !2196, line: 122, column: 11)
!2321 = distinct !DILexicalBlock(scope: !2305, file: !2196, line: 121, column: 5)
!2322 = !DILocation(line: 104, column: 41, scope: !2308, inlinedAt: !2319)
!2323 = !DILocation(line: 104, column: 50, scope: !2308, inlinedAt: !2319)
!2324 = !DILocation(line: 104, column: 60, scope: !2308, inlinedAt: !2319)
!2325 = !DILocation(line: 104, column: 70, scope: !2308, inlinedAt: !2319)
!2326 = !DILocation(line: 104, column: 80, scope: !2308, inlinedAt: !2319)
!2327 = !DILocation(line: 104, column: 90, scope: !2308, inlinedAt: !2319)
!2328 = !DILocation(line: 106, column: 7, scope: !2329, inlinedAt: !2319)
!2329 = distinct !DILexicalBlock(scope: !2308, file: !2196, line: 106, column: 7)
!2330 = !DILocation(line: 106, column: 7, scope: !2308, inlinedAt: !2319)
!2331 = !DILocalVariable(name: "s1", arg: 1, scope: !2332, file: !2196, line: 90, type: !53)
!2332 = distinct !DISubprogram(name: "strcaseeq5", scope: !2196, file: !2196, line: 90, type: !2333, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!56, !53, !53, !31, !31, !31, !31}
!2335 = !{!2331, !2336, !2337, !2338, !2339, !2340}
!2336 = !DILocalVariable(name: "s2", arg: 2, scope: !2332, file: !2196, line: 90, type: !53)
!2337 = !DILocalVariable(name: "s25", arg: 3, scope: !2332, file: !2196, line: 90, type: !31)
!2338 = !DILocalVariable(name: "s26", arg: 4, scope: !2332, file: !2196, line: 90, type: !31)
!2339 = !DILocalVariable(name: "s27", arg: 5, scope: !2332, file: !2196, line: 90, type: !31)
!2340 = !DILocalVariable(name: "s28", arg: 6, scope: !2332, file: !2196, line: 90, type: !31)
!2341 = !DILocation(line: 90, column: 25, scope: !2332, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 111, column: 16, scope: !2343, inlinedAt: !2319)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !2196, line: 108, column: 11)
!2344 = distinct !DILexicalBlock(scope: !2329, file: !2196, line: 107, column: 5)
!2345 = !DILocation(line: 90, column: 41, scope: !2332, inlinedAt: !2342)
!2346 = !DILocation(line: 90, column: 50, scope: !2332, inlinedAt: !2342)
!2347 = !DILocation(line: 90, column: 60, scope: !2332, inlinedAt: !2342)
!2348 = !DILocation(line: 90, column: 70, scope: !2332, inlinedAt: !2342)
!2349 = !DILocation(line: 90, column: 80, scope: !2332, inlinedAt: !2342)
!2350 = !DILocation(line: 92, column: 7, scope: !2351, inlinedAt: !2342)
!2351 = distinct !DILexicalBlock(scope: !2332, file: !2196, line: 92, column: 7)
!2352 = !DILocation(line: 92, column: 7, scope: !2332, inlinedAt: !2342)
!2353 = !DILocation(line: 235, column: 12, scope: !2212)
!2354 = !DILocation(line: 235, column: 21, scope: !2212)
!2355 = !DILocation(line: 235, column: 5, scope: !2212)
!2356 = !DILocation(line: 146, column: 25, scope: !2226, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 167, column: 16, scope: !2241, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 236, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2177, file: !126, line: 236, column: 7)
!2360 = !DILocation(line: 146, column: 41, scope: !2226, inlinedAt: !2357)
!2361 = !DILocation(line: 146, column: 50, scope: !2226, inlinedAt: !2357)
!2362 = !DILocation(line: 146, column: 60, scope: !2226, inlinedAt: !2357)
!2363 = !DILocation(line: 146, column: 70, scope: !2226, inlinedAt: !2357)
!2364 = !DILocation(line: 146, column: 80, scope: !2226, inlinedAt: !2357)
!2365 = !DILocation(line: 146, column: 90, scope: !2226, inlinedAt: !2357)
!2366 = !DILocation(line: 146, column: 100, scope: !2226, inlinedAt: !2357)
!2367 = !DILocation(line: 146, column: 110, scope: !2226, inlinedAt: !2357)
!2368 = !DILocation(line: 146, column: 120, scope: !2226, inlinedAt: !2357)
!2369 = !DILocation(line: 148, column: 7, scope: !2253, inlinedAt: !2357)
!2370 = !DILocation(line: 132, column: 25, scope: !2255, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 153, column: 16, scope: !2269, inlinedAt: !2357)
!2372 = !DILocation(line: 132, column: 41, scope: !2255, inlinedAt: !2371)
!2373 = !DILocation(line: 132, column: 50, scope: !2255, inlinedAt: !2371)
!2374 = !DILocation(line: 132, column: 60, scope: !2255, inlinedAt: !2371)
!2375 = !DILocation(line: 132, column: 70, scope: !2255, inlinedAt: !2371)
!2376 = !DILocation(line: 132, column: 80, scope: !2255, inlinedAt: !2371)
!2377 = !DILocation(line: 132, column: 90, scope: !2255, inlinedAt: !2371)
!2378 = !DILocation(line: 132, column: 100, scope: !2255, inlinedAt: !2371)
!2379 = !DILocation(line: 132, column: 110, scope: !2255, inlinedAt: !2371)
!2380 = !DILocation(line: 134, column: 7, scope: !2280, inlinedAt: !2371)
!2381 = !DILocation(line: 134, column: 7, scope: !2255, inlinedAt: !2371)
!2382 = !DILocation(line: 118, column: 25, scope: !2282, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 139, column: 16, scope: !2295, inlinedAt: !2371)
!2384 = !DILocation(line: 118, column: 41, scope: !2282, inlinedAt: !2383)
!2385 = !DILocation(line: 118, column: 50, scope: !2282, inlinedAt: !2383)
!2386 = !DILocation(line: 118, column: 60, scope: !2282, inlinedAt: !2383)
!2387 = !DILocation(line: 118, column: 70, scope: !2282, inlinedAt: !2383)
!2388 = !DILocation(line: 118, column: 80, scope: !2282, inlinedAt: !2383)
!2389 = !DILocation(line: 118, column: 90, scope: !2282, inlinedAt: !2383)
!2390 = !DILocation(line: 118, column: 100, scope: !2282, inlinedAt: !2383)
!2391 = !DILocation(line: 120, column: 7, scope: !2305, inlinedAt: !2383)
!2392 = !DILocation(line: 120, column: 7, scope: !2282, inlinedAt: !2383)
!2393 = !DILocation(line: 104, column: 25, scope: !2308, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 125, column: 16, scope: !2320, inlinedAt: !2383)
!2395 = !DILocation(line: 104, column: 41, scope: !2308, inlinedAt: !2394)
!2396 = !DILocation(line: 104, column: 50, scope: !2308, inlinedAt: !2394)
!2397 = !DILocation(line: 104, column: 60, scope: !2308, inlinedAt: !2394)
!2398 = !DILocation(line: 104, column: 70, scope: !2308, inlinedAt: !2394)
!2399 = !DILocation(line: 104, column: 80, scope: !2308, inlinedAt: !2394)
!2400 = !DILocation(line: 104, column: 90, scope: !2308, inlinedAt: !2394)
!2401 = !DILocation(line: 106, column: 7, scope: !2329, inlinedAt: !2394)
!2402 = !DILocation(line: 106, column: 7, scope: !2308, inlinedAt: !2394)
!2403 = !DILocation(line: 90, column: 25, scope: !2332, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 111, column: 16, scope: !2343, inlinedAt: !2394)
!2405 = !DILocation(line: 90, column: 41, scope: !2332, inlinedAt: !2404)
!2406 = !DILocation(line: 90, column: 50, scope: !2332, inlinedAt: !2404)
!2407 = !DILocation(line: 90, column: 60, scope: !2332, inlinedAt: !2404)
!2408 = !DILocation(line: 90, column: 70, scope: !2332, inlinedAt: !2404)
!2409 = !DILocation(line: 90, column: 80, scope: !2332, inlinedAt: !2404)
!2410 = !DILocation(line: 92, column: 7, scope: !2351, inlinedAt: !2404)
!2411 = !DILocation(line: 92, column: 7, scope: !2332, inlinedAt: !2404)
!2412 = !DILocalVariable(name: "s1", arg: 1, scope: !2413, file: !2196, line: 76, type: !53)
!2413 = distinct !DISubprogram(name: "strcaseeq6", scope: !2196, file: !2196, line: 76, type: !2414, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!56, !53, !53, !31, !31, !31}
!2416 = !{!2412, !2417, !2418, !2419, !2420}
!2417 = !DILocalVariable(name: "s2", arg: 2, scope: !2413, file: !2196, line: 76, type: !53)
!2418 = !DILocalVariable(name: "s26", arg: 3, scope: !2413, file: !2196, line: 76, type: !31)
!2419 = !DILocalVariable(name: "s27", arg: 4, scope: !2413, file: !2196, line: 76, type: !31)
!2420 = !DILocalVariable(name: "s28", arg: 5, scope: !2413, file: !2196, line: 76, type: !31)
!2421 = !DILocation(line: 76, column: 25, scope: !2413, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 97, column: 16, scope: !2423, inlinedAt: !2404)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !2196, line: 94, column: 11)
!2424 = distinct !DILexicalBlock(scope: !2351, file: !2196, line: 93, column: 5)
!2425 = !DILocation(line: 76, column: 41, scope: !2413, inlinedAt: !2422)
!2426 = !DILocation(line: 76, column: 50, scope: !2413, inlinedAt: !2422)
!2427 = !DILocation(line: 76, column: 60, scope: !2413, inlinedAt: !2422)
!2428 = !DILocation(line: 76, column: 70, scope: !2413, inlinedAt: !2422)
!2429 = !DILocation(line: 78, column: 7, scope: !2430, inlinedAt: !2422)
!2430 = distinct !DILexicalBlock(scope: !2413, file: !2196, line: 78, column: 7)
!2431 = !DILocation(line: 78, column: 7, scope: !2413, inlinedAt: !2422)
!2432 = !DILocalVariable(name: "s1", arg: 1, scope: !2433, file: !2196, line: 62, type: !53)
!2433 = distinct !DISubprogram(name: "strcaseeq7", scope: !2196, file: !2196, line: 62, type: !2434, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!56, !53, !53, !31, !31}
!2436 = !{!2432, !2437, !2438, !2439}
!2437 = !DILocalVariable(name: "s2", arg: 2, scope: !2433, file: !2196, line: 62, type: !53)
!2438 = !DILocalVariable(name: "s27", arg: 3, scope: !2433, file: !2196, line: 62, type: !31)
!2439 = !DILocalVariable(name: "s28", arg: 4, scope: !2433, file: !2196, line: 62, type: !31)
!2440 = !DILocation(line: 62, column: 25, scope: !2433, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 83, column: 16, scope: !2442, inlinedAt: !2422)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !2196, line: 80, column: 11)
!2443 = distinct !DILexicalBlock(scope: !2430, file: !2196, line: 79, column: 5)
!2444 = !DILocation(line: 62, column: 41, scope: !2433, inlinedAt: !2441)
!2445 = !DILocation(line: 62, column: 50, scope: !2433, inlinedAt: !2441)
!2446 = !DILocation(line: 62, column: 60, scope: !2433, inlinedAt: !2441)
!2447 = !DILocation(line: 64, column: 7, scope: !2448, inlinedAt: !2441)
!2448 = distinct !DILexicalBlock(scope: !2433, file: !2196, line: 64, column: 7)
!2449 = !DILocation(line: 236, column: 7, scope: !2177)
!2450 = !DILocation(line: 237, column: 12, scope: !2359)
!2451 = !DILocation(line: 237, column: 21, scope: !2359)
!2452 = !DILocation(line: 237, column: 5, scope: !2359)
!2453 = !DILocation(line: 239, column: 13, scope: !2177)
!2454 = !DILocation(line: 239, column: 11, scope: !2177)
!2455 = !DILocation(line: 239, column: 3, scope: !2177)
!2456 = !DILocation(line: 0, scope: !2177)
!2457 = !DILocation(line: 240, column: 1, scope: !2177)
!2458 = distinct !DISubprogram(name: "quotearg_alloc", scope: !126, file: !126, line: 799, type: !2459, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!30, !53, !35, !1497}
!2461 = !{!2462, !2463, !2464}
!2462 = !DILocalVariable(name: "arg", arg: 1, scope: !2458, file: !126, line: 799, type: !53)
!2463 = !DILocalVariable(name: "argsize", arg: 2, scope: !2458, file: !126, line: 799, type: !35)
!2464 = !DILocalVariable(name: "o", arg: 3, scope: !2458, file: !126, line: 800, type: !1497)
!2465 = !DILocation(line: 799, column: 29, scope: !2458)
!2466 = !DILocation(line: 799, column: 41, scope: !2458)
!2467 = !DILocation(line: 800, column: 47, scope: !2458)
!2468 = !DILocalVariable(name: "arg", arg: 1, scope: !2469, file: !126, line: 812, type: !53)
!2469 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !126, file: !126, line: 812, type: !2470, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!30, !53, !35, !193, !1497}
!2472 = !{!2468, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2473 = !DILocalVariable(name: "argsize", arg: 2, scope: !2469, file: !126, line: 812, type: !35)
!2474 = !DILocalVariable(name: "size", arg: 3, scope: !2469, file: !126, line: 812, type: !193)
!2475 = !DILocalVariable(name: "o", arg: 4, scope: !2469, file: !126, line: 813, type: !1497)
!2476 = !DILocalVariable(name: "p", scope: !2469, file: !126, line: 815, type: !1497)
!2477 = !DILocalVariable(name: "e", scope: !2469, file: !126, line: 816, type: !56)
!2478 = !DILocalVariable(name: "flags", scope: !2469, file: !126, line: 818, type: !56)
!2479 = !DILocalVariable(name: "bufsize", scope: !2469, file: !126, line: 819, type: !35)
!2480 = !DILocalVariable(name: "buf", scope: !2469, file: !126, line: 823, type: !30)
!2481 = !DILocation(line: 812, column: 33, scope: !2469, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 802, column: 10, scope: !2458)
!2483 = !DILocation(line: 812, column: 45, scope: !2469, inlinedAt: !2482)
!2484 = !DILocation(line: 812, column: 62, scope: !2469, inlinedAt: !2482)
!2485 = !DILocation(line: 813, column: 51, scope: !2469, inlinedAt: !2482)
!2486 = !DILocation(line: 815, column: 37, scope: !2469, inlinedAt: !2482)
!2487 = !DILocation(line: 815, column: 33, scope: !2469, inlinedAt: !2482)
!2488 = !DILocation(line: 816, column: 11, scope: !2469, inlinedAt: !2482)
!2489 = !DILocation(line: 816, column: 7, scope: !2469, inlinedAt: !2482)
!2490 = !DILocation(line: 818, column: 18, scope: !2469, inlinedAt: !2482)
!2491 = !DILocation(line: 818, column: 24, scope: !2469, inlinedAt: !2482)
!2492 = !DILocation(line: 818, column: 7, scope: !2469, inlinedAt: !2482)
!2493 = !DILocation(line: 819, column: 69, scope: !2469, inlinedAt: !2482)
!2494 = !DILocation(line: 820, column: 53, scope: !2469, inlinedAt: !2482)
!2495 = !DILocation(line: 821, column: 49, scope: !2469, inlinedAt: !2482)
!2496 = !DILocation(line: 822, column: 49, scope: !2469, inlinedAt: !2482)
!2497 = !DILocation(line: 819, column: 20, scope: !2469, inlinedAt: !2482)
!2498 = !DILocation(line: 822, column: 62, scope: !2469, inlinedAt: !2482)
!2499 = !DILocation(line: 819, column: 10, scope: !2469, inlinedAt: !2482)
!2500 = !DILocalVariable(name: "n", arg: 1, scope: !2501, file: !189, line: 216, type: !35)
!2501 = distinct !DISubprogram(name: "xcharalloc", scope: !189, file: !189, line: 216, type: !2502, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!30, !35}
!2504 = !{!2500}
!2505 = !DILocation(line: 216, column: 20, scope: !2501, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 823, column: 15, scope: !2469, inlinedAt: !2482)
!2507 = !DILocation(line: 218, column: 10, scope: !2501, inlinedAt: !2506)
!2508 = !DILocation(line: 823, column: 9, scope: !2469, inlinedAt: !2482)
!2509 = !DILocation(line: 824, column: 60, scope: !2469, inlinedAt: !2482)
!2510 = !DILocation(line: 826, column: 32, scope: !2469, inlinedAt: !2482)
!2511 = !DILocation(line: 826, column: 47, scope: !2469, inlinedAt: !2482)
!2512 = !DILocation(line: 824, column: 3, scope: !2469, inlinedAt: !2482)
!2513 = !DILocation(line: 827, column: 9, scope: !2469, inlinedAt: !2482)
!2514 = !DILocation(line: 802, column: 3, scope: !2458)
!2515 = !DILocation(line: 812, column: 33, scope: !2469)
!2516 = !DILocation(line: 812, column: 45, scope: !2469)
!2517 = !DILocation(line: 812, column: 62, scope: !2469)
!2518 = !DILocation(line: 813, column: 51, scope: !2469)
!2519 = !DILocation(line: 815, column: 37, scope: !2469)
!2520 = !DILocation(line: 815, column: 33, scope: !2469)
!2521 = !DILocation(line: 816, column: 11, scope: !2469)
!2522 = !DILocation(line: 816, column: 7, scope: !2469)
!2523 = !DILocation(line: 818, column: 18, scope: !2469)
!2524 = !DILocation(line: 818, column: 27, scope: !2469)
!2525 = !DILocation(line: 818, column: 24, scope: !2469)
!2526 = !DILocation(line: 818, column: 7, scope: !2469)
!2527 = !DILocation(line: 819, column: 69, scope: !2469)
!2528 = !DILocation(line: 820, column: 53, scope: !2469)
!2529 = !DILocation(line: 821, column: 49, scope: !2469)
!2530 = !DILocation(line: 822, column: 49, scope: !2469)
!2531 = !DILocation(line: 819, column: 20, scope: !2469)
!2532 = !DILocation(line: 822, column: 62, scope: !2469)
!2533 = !DILocation(line: 819, column: 10, scope: !2469)
!2534 = !DILocation(line: 216, column: 20, scope: !2501, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 823, column: 15, scope: !2469)
!2536 = !DILocation(line: 218, column: 10, scope: !2501, inlinedAt: !2535)
!2537 = !DILocation(line: 823, column: 9, scope: !2469)
!2538 = !DILocation(line: 824, column: 60, scope: !2469)
!2539 = !DILocation(line: 826, column: 32, scope: !2469)
!2540 = !DILocation(line: 826, column: 47, scope: !2469)
!2541 = !DILocation(line: 824, column: 3, scope: !2469)
!2542 = !DILocation(line: 827, column: 9, scope: !2469)
!2543 = !DILocation(line: 828, column: 7, scope: !2469)
!2544 = !DILocation(line: 829, column: 11, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2469, file: !126, line: 828, column: 7)
!2546 = !{!917, !917, i64 0}
!2547 = !DILocation(line: 829, column: 5, scope: !2545)
!2548 = !DILocation(line: 830, column: 3, scope: !2469)
!2549 = distinct !DISubprogram(name: "quotearg_free", scope: !126, file: !126, line: 848, type: !655, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2550)
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "sv", scope: !2549, file: !126, line: 850, type: !152)
!2552 = !DILocalVariable(name: "i", scope: !2549, file: !126, line: 851, type: !56)
!2553 = !DILocation(line: 850, column: 24, scope: !2549)
!2554 = !DILocation(line: 850, column: 19, scope: !2549)
!2555 = !DILocation(line: 851, column: 7, scope: !2549)
!2556 = !DILocation(line: 852, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !126, line: 852, column: 3)
!2558 = distinct !DILexicalBlock(scope: !2549, file: !126, line: 852, column: 3)
!2559 = !DILocation(line: 852, column: 17, scope: !2557)
!2560 = !DILocation(line: 852, column: 3, scope: !2558)
!2561 = !DILocation(line: 853, column: 17, scope: !2557)
!2562 = !{!2563, !648, i64 8}
!2563 = !{!"slotvec", !917, i64 0, !648, i64 8}
!2564 = !DILocation(line: 853, column: 5, scope: !2557)
!2565 = !DILocation(line: 852, column: 28, scope: !2557)
!2566 = distinct !{!2566, !2560, !2567}
!2567 = !DILocation(line: 853, column: 20, scope: !2558)
!2568 = !DILocation(line: 854, column: 13, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2549, file: !126, line: 854, column: 7)
!2570 = !DILocation(line: 854, column: 17, scope: !2569)
!2571 = !DILocation(line: 854, column: 7, scope: !2549)
!2572 = !DILocation(line: 856, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2569, file: !126, line: 855, column: 5)
!2574 = !DILocation(line: 857, column: 21, scope: !2573)
!2575 = !{!2563, !917, i64 0}
!2576 = !DILocation(line: 858, column: 20, scope: !2573)
!2577 = !DILocation(line: 859, column: 5, scope: !2573)
!2578 = !DILocation(line: 860, column: 10, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2549, file: !126, line: 860, column: 7)
!2580 = !DILocation(line: 860, column: 7, scope: !2549)
!2581 = !DILocation(line: 862, column: 13, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !126, line: 861, column: 5)
!2583 = !DILocation(line: 862, column: 7, scope: !2582)
!2584 = !DILocation(line: 863, column: 15, scope: !2582)
!2585 = !DILocation(line: 864, column: 5, scope: !2582)
!2586 = !DILocation(line: 865, column: 10, scope: !2549)
!2587 = !DILocation(line: 866, column: 1, scope: !2549)
!2588 = distinct !DISubprogram(name: "quotearg_n", scope: !126, file: !126, line: 931, type: !2589, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!30, !56, !53}
!2591 = !{!2592, !2593}
!2592 = !DILocalVariable(name: "n", arg: 1, scope: !2588, file: !126, line: 931, type: !56)
!2593 = !DILocalVariable(name: "arg", arg: 2, scope: !2588, file: !126, line: 931, type: !53)
!2594 = !DILocation(line: 931, column: 17, scope: !2588)
!2595 = !DILocation(line: 931, column: 32, scope: !2588)
!2596 = !DILocation(line: 933, column: 10, scope: !2588)
!2597 = !DILocation(line: 933, column: 3, scope: !2588)
!2598 = distinct !DISubprogram(name: "quotearg_n_options", scope: !126, file: !126, line: 877, type: !2599, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!30, !56, !53, !35, !1497}
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2611, !2612, !2614, !2615, !2616}
!2602 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !126, line: 877, type: !56)
!2603 = !DILocalVariable(name: "arg", arg: 2, scope: !2598, file: !126, line: 877, type: !53)
!2604 = !DILocalVariable(name: "argsize", arg: 3, scope: !2598, file: !126, line: 877, type: !35)
!2605 = !DILocalVariable(name: "options", arg: 4, scope: !2598, file: !126, line: 878, type: !1497)
!2606 = !DILocalVariable(name: "e", scope: !2598, file: !126, line: 880, type: !56)
!2607 = !DILocalVariable(name: "sv", scope: !2598, file: !126, line: 882, type: !152)
!2608 = !DILocalVariable(name: "preallocated", scope: !2609, file: !126, line: 889, type: !42)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !126, line: 888, column: 5)
!2610 = distinct !DILexicalBlock(scope: !2598, file: !126, line: 887, column: 7)
!2611 = !DILocalVariable(name: "nmax", scope: !2609, file: !126, line: 890, type: !56)
!2612 = !DILocalVariable(name: "size", scope: !2613, file: !126, line: 903, type: !35)
!2613 = distinct !DILexicalBlock(scope: !2598, file: !126, line: 902, column: 3)
!2614 = !DILocalVariable(name: "val", scope: !2613, file: !126, line: 904, type: !30)
!2615 = !DILocalVariable(name: "flags", scope: !2613, file: !126, line: 906, type: !56)
!2616 = !DILocalVariable(name: "qsize", scope: !2613, file: !126, line: 907, type: !35)
!2617 = !DILocation(line: 877, column: 25, scope: !2598)
!2618 = !DILocation(line: 877, column: 40, scope: !2598)
!2619 = !DILocation(line: 877, column: 52, scope: !2598)
!2620 = !DILocation(line: 878, column: 51, scope: !2598)
!2621 = !DILocation(line: 880, column: 11, scope: !2598)
!2622 = !DILocation(line: 880, column: 7, scope: !2598)
!2623 = !DILocation(line: 882, column: 24, scope: !2598)
!2624 = !DILocation(line: 882, column: 19, scope: !2598)
!2625 = !DILocation(line: 884, column: 9, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2598, file: !126, line: 884, column: 7)
!2627 = !DILocation(line: 884, column: 7, scope: !2598)
!2628 = !DILocation(line: 885, column: 5, scope: !2626)
!2629 = !DILocation(line: 887, column: 7, scope: !2610)
!2630 = !DILocation(line: 887, column: 14, scope: !2610)
!2631 = !DILocation(line: 887, column: 7, scope: !2598)
!2632 = !DILocation(line: 889, column: 31, scope: !2609)
!2633 = !DILocation(line: 890, column: 11, scope: !2609)
!2634 = !DILocation(line: 892, column: 16, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2609, file: !126, line: 892, column: 11)
!2636 = !DILocation(line: 892, column: 11, scope: !2609)
!2637 = !DILocation(line: 893, column: 9, scope: !2635)
!2638 = !DILocation(line: 895, column: 32, scope: !2609)
!2639 = !DILocation(line: 895, column: 61, scope: !2609)
!2640 = !DILocation(line: 895, column: 58, scope: !2609)
!2641 = !DILocation(line: 895, column: 66, scope: !2609)
!2642 = !DILocation(line: 895, column: 22, scope: !2609)
!2643 = !DILocation(line: 895, column: 15, scope: !2609)
!2644 = !DILocation(line: 896, column: 11, scope: !2609)
!2645 = !DILocation(line: 897, column: 15, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2609, file: !126, line: 896, column: 11)
!2647 = !{i64 0, i64 8, !2546, i64 8, i64 8, !647}
!2648 = !DILocation(line: 897, column: 9, scope: !2646)
!2649 = !DILocation(line: 898, column: 20, scope: !2609)
!2650 = !DILocation(line: 898, column: 18, scope: !2609)
!2651 = !DILocation(line: 898, column: 7, scope: !2609)
!2652 = !DILocation(line: 898, column: 38, scope: !2609)
!2653 = !DILocation(line: 898, column: 31, scope: !2609)
!2654 = !DILocation(line: 898, column: 48, scope: !2609)
!2655 = !DILocation(line: 899, column: 14, scope: !2609)
!2656 = !DILocation(line: 900, column: 5, scope: !2609)
!2657 = !DILocation(line: 0, scope: !2598)
!2658 = !DILocation(line: 903, column: 19, scope: !2613)
!2659 = !DILocation(line: 903, column: 25, scope: !2613)
!2660 = !DILocation(line: 903, column: 12, scope: !2613)
!2661 = !DILocation(line: 904, column: 23, scope: !2613)
!2662 = !DILocation(line: 904, column: 11, scope: !2613)
!2663 = !DILocation(line: 906, column: 26, scope: !2613)
!2664 = !DILocation(line: 906, column: 32, scope: !2613)
!2665 = !DILocation(line: 906, column: 9, scope: !2613)
!2666 = !DILocation(line: 908, column: 55, scope: !2613)
!2667 = !DILocation(line: 909, column: 46, scope: !2613)
!2668 = !DILocation(line: 910, column: 55, scope: !2613)
!2669 = !DILocation(line: 911, column: 55, scope: !2613)
!2670 = !DILocation(line: 907, column: 20, scope: !2613)
!2671 = !DILocation(line: 907, column: 12, scope: !2613)
!2672 = !DILocation(line: 913, column: 14, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2613, file: !126, line: 913, column: 9)
!2674 = !DILocation(line: 913, column: 9, scope: !2613)
!2675 = !DILocation(line: 915, column: 35, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !126, line: 914, column: 7)
!2677 = !DILocation(line: 915, column: 20, scope: !2676)
!2678 = !DILocation(line: 916, column: 17, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2676, file: !126, line: 916, column: 13)
!2680 = !DILocation(line: 916, column: 13, scope: !2676)
!2681 = !DILocation(line: 917, column: 11, scope: !2679)
!2682 = !DILocation(line: 216, column: 20, scope: !2501, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 918, column: 27, scope: !2676)
!2684 = !DILocation(line: 218, column: 10, scope: !2501, inlinedAt: !2683)
!2685 = !DILocation(line: 918, column: 19, scope: !2676)
!2686 = !DILocation(line: 919, column: 69, scope: !2676)
!2687 = !DILocation(line: 921, column: 44, scope: !2676)
!2688 = !DILocation(line: 922, column: 44, scope: !2676)
!2689 = !DILocation(line: 919, column: 9, scope: !2676)
!2690 = !DILocation(line: 923, column: 7, scope: !2676)
!2691 = !DILocation(line: 0, scope: !2613)
!2692 = !DILocation(line: 925, column: 11, scope: !2613)
!2693 = !DILocation(line: 926, column: 5, scope: !2613)
!2694 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !126, file: !126, line: 937, type: !2695, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!30, !56, !53, !35}
!2697 = !{!2698, !2699, !2700}
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2694, file: !126, line: 937, type: !56)
!2699 = !DILocalVariable(name: "arg", arg: 2, scope: !2694, file: !126, line: 937, type: !53)
!2700 = !DILocalVariable(name: "argsize", arg: 3, scope: !2694, file: !126, line: 937, type: !35)
!2701 = !DILocation(line: 937, column: 21, scope: !2694)
!2702 = !DILocation(line: 937, column: 36, scope: !2694)
!2703 = !DILocation(line: 937, column: 48, scope: !2694)
!2704 = !DILocation(line: 939, column: 10, scope: !2694)
!2705 = !DILocation(line: 939, column: 3, scope: !2694)
!2706 = distinct !DISubprogram(name: "quotearg", scope: !126, file: !126, line: 943, type: !2707, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!30, !53}
!2709 = !{!2710}
!2710 = !DILocalVariable(name: "arg", arg: 1, scope: !2706, file: !126, line: 943, type: !53)
!2711 = !DILocation(line: 943, column: 23, scope: !2706)
!2712 = !DILocation(line: 931, column: 17, scope: !2588, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 945, column: 10, scope: !2706)
!2714 = !DILocation(line: 931, column: 32, scope: !2588, inlinedAt: !2713)
!2715 = !DILocation(line: 933, column: 10, scope: !2588, inlinedAt: !2713)
!2716 = !DILocation(line: 945, column: 3, scope: !2706)
!2717 = distinct !DISubprogram(name: "quotearg_mem", scope: !126, file: !126, line: 949, type: !2718, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!30, !53, !35}
!2720 = !{!2721, !2722}
!2721 = !DILocalVariable(name: "arg", arg: 1, scope: !2717, file: !126, line: 949, type: !53)
!2722 = !DILocalVariable(name: "argsize", arg: 2, scope: !2717, file: !126, line: 949, type: !35)
!2723 = !DILocation(line: 949, column: 27, scope: !2717)
!2724 = !DILocation(line: 949, column: 39, scope: !2717)
!2725 = !DILocation(line: 937, column: 21, scope: !2694, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 951, column: 10, scope: !2717)
!2727 = !DILocation(line: 937, column: 36, scope: !2694, inlinedAt: !2726)
!2728 = !DILocation(line: 937, column: 48, scope: !2694, inlinedAt: !2726)
!2729 = !DILocation(line: 939, column: 10, scope: !2694, inlinedAt: !2726)
!2730 = !DILocation(line: 951, column: 3, scope: !2717)
!2731 = distinct !DISubprogram(name: "quotearg_n_style", scope: !126, file: !126, line: 955, type: !2732, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!30, !56, !5, !53}
!2734 = !{!2735, !2736, !2737, !2738}
!2735 = !DILocalVariable(name: "n", arg: 1, scope: !2731, file: !126, line: 955, type: !56)
!2736 = !DILocalVariable(name: "s", arg: 2, scope: !2731, file: !126, line: 955, type: !5)
!2737 = !DILocalVariable(name: "arg", arg: 3, scope: !2731, file: !126, line: 955, type: !53)
!2738 = !DILocalVariable(name: "o", scope: !2731, file: !126, line: 957, type: !1498)
!2739 = !DILocation(line: 955, column: 23, scope: !2731)
!2740 = !DILocation(line: 955, column: 45, scope: !2731)
!2741 = !DILocation(line: 955, column: 60, scope: !2731)
!2742 = !DILocation(line: 957, column: 3, scope: !2731)
!2743 = !DILocation(line: 957, column: 32, scope: !2731)
!2744 = !DILocalVariable(name: "style", arg: 1, scope: !2745, file: !126, line: 193, type: !5)
!2745 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !126, file: !126, line: 193, type: !2746, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2748)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!133, !5}
!2748 = !{!2744, !2749}
!2749 = !DILocalVariable(name: "o", scope: !2745, file: !126, line: 195, type: !133)
!2750 = !DILocation(line: 193, column: 48, scope: !2745, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 957, column: 36, scope: !2731)
!2752 = !DILocation(line: 195, column: 26, scope: !2745, inlinedAt: !2751)
!2753 = !{!2754}
!2754 = distinct !{!2754, !2755, !"quoting_options_from_style: argument 0"}
!2755 = distinct !{!2755, !"quoting_options_from_style"}
!2756 = !DILocation(line: 196, column: 13, scope: !2757, inlinedAt: !2751)
!2757 = distinct !DILexicalBlock(scope: !2745, file: !126, line: 196, column: 7)
!2758 = !DILocation(line: 196, column: 7, scope: !2745, inlinedAt: !2751)
!2759 = !DILocation(line: 197, column: 5, scope: !2757, inlinedAt: !2751)
!2760 = !DILocation(line: 198, column: 5, scope: !2745, inlinedAt: !2751)
!2761 = !DILocation(line: 198, column: 11, scope: !2745, inlinedAt: !2751)
!2762 = !DILocation(line: 958, column: 10, scope: !2731)
!2763 = !DILocation(line: 959, column: 1, scope: !2731)
!2764 = !DILocation(line: 958, column: 3, scope: !2731)
!2765 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !126, file: !126, line: 962, type: !2766, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!30, !56, !5, !53, !35}
!2768 = !{!2769, !2770, !2771, !2772, !2773}
!2769 = !DILocalVariable(name: "n", arg: 1, scope: !2765, file: !126, line: 962, type: !56)
!2770 = !DILocalVariable(name: "s", arg: 2, scope: !2765, file: !126, line: 962, type: !5)
!2771 = !DILocalVariable(name: "arg", arg: 3, scope: !2765, file: !126, line: 963, type: !53)
!2772 = !DILocalVariable(name: "argsize", arg: 4, scope: !2765, file: !126, line: 963, type: !35)
!2773 = !DILocalVariable(name: "o", scope: !2765, file: !126, line: 965, type: !1498)
!2774 = !DILocation(line: 962, column: 27, scope: !2765)
!2775 = !DILocation(line: 962, column: 49, scope: !2765)
!2776 = !DILocation(line: 963, column: 35, scope: !2765)
!2777 = !DILocation(line: 963, column: 47, scope: !2765)
!2778 = !DILocation(line: 965, column: 3, scope: !2765)
!2779 = !DILocation(line: 965, column: 32, scope: !2765)
!2780 = !DILocation(line: 193, column: 48, scope: !2745, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 965, column: 36, scope: !2765)
!2782 = !DILocation(line: 195, column: 26, scope: !2745, inlinedAt: !2781)
!2783 = !{!2784}
!2784 = distinct !{!2784, !2785, !"quoting_options_from_style: argument 0"}
!2785 = distinct !{!2785, !"quoting_options_from_style"}
!2786 = !DILocation(line: 196, column: 13, scope: !2757, inlinedAt: !2781)
!2787 = !DILocation(line: 196, column: 7, scope: !2745, inlinedAt: !2781)
!2788 = !DILocation(line: 197, column: 5, scope: !2757, inlinedAt: !2781)
!2789 = !DILocation(line: 198, column: 5, scope: !2745, inlinedAt: !2781)
!2790 = !DILocation(line: 198, column: 11, scope: !2745, inlinedAt: !2781)
!2791 = !DILocation(line: 966, column: 10, scope: !2765)
!2792 = !DILocation(line: 967, column: 1, scope: !2765)
!2793 = !DILocation(line: 966, column: 3, scope: !2765)
!2794 = distinct !DISubprogram(name: "quotearg_style", scope: !126, file: !126, line: 970, type: !2795, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!30, !5, !53}
!2797 = !{!2798, !2799}
!2798 = !DILocalVariable(name: "s", arg: 1, scope: !2794, file: !126, line: 970, type: !5)
!2799 = !DILocalVariable(name: "arg", arg: 2, scope: !2794, file: !126, line: 970, type: !53)
!2800 = !DILocation(line: 970, column: 36, scope: !2794)
!2801 = !DILocation(line: 970, column: 51, scope: !2794)
!2802 = !DILocation(line: 955, column: 23, scope: !2731, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 972, column: 10, scope: !2794)
!2804 = !DILocation(line: 955, column: 45, scope: !2731, inlinedAt: !2803)
!2805 = !DILocation(line: 955, column: 60, scope: !2731, inlinedAt: !2803)
!2806 = !DILocation(line: 957, column: 3, scope: !2731, inlinedAt: !2803)
!2807 = !DILocation(line: 957, column: 32, scope: !2731, inlinedAt: !2803)
!2808 = !DILocation(line: 193, column: 48, scope: !2745, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 957, column: 36, scope: !2731, inlinedAt: !2803)
!2810 = !DILocation(line: 195, column: 26, scope: !2745, inlinedAt: !2809)
!2811 = !{!2812}
!2812 = distinct !{!2812, !2813, !"quoting_options_from_style: argument 0"}
!2813 = distinct !{!2813, !"quoting_options_from_style"}
!2814 = !DILocation(line: 196, column: 13, scope: !2757, inlinedAt: !2809)
!2815 = !DILocation(line: 196, column: 7, scope: !2745, inlinedAt: !2809)
!2816 = !DILocation(line: 197, column: 5, scope: !2757, inlinedAt: !2809)
!2817 = !DILocation(line: 198, column: 5, scope: !2745, inlinedAt: !2809)
!2818 = !DILocation(line: 198, column: 11, scope: !2745, inlinedAt: !2809)
!2819 = !DILocation(line: 958, column: 10, scope: !2731, inlinedAt: !2803)
!2820 = !DILocation(line: 959, column: 1, scope: !2731, inlinedAt: !2803)
!2821 = !DILocation(line: 972, column: 3, scope: !2794)
!2822 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !126, file: !126, line: 976, type: !2823, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!30, !5, !53, !35}
!2825 = !{!2826, !2827, !2828}
!2826 = !DILocalVariable(name: "s", arg: 1, scope: !2822, file: !126, line: 976, type: !5)
!2827 = !DILocalVariable(name: "arg", arg: 2, scope: !2822, file: !126, line: 976, type: !53)
!2828 = !DILocalVariable(name: "argsize", arg: 3, scope: !2822, file: !126, line: 976, type: !35)
!2829 = !DILocation(line: 976, column: 40, scope: !2822)
!2830 = !DILocation(line: 976, column: 55, scope: !2822)
!2831 = !DILocation(line: 976, column: 67, scope: !2822)
!2832 = !DILocation(line: 962, column: 27, scope: !2765, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 978, column: 10, scope: !2822)
!2834 = !DILocation(line: 962, column: 49, scope: !2765, inlinedAt: !2833)
!2835 = !DILocation(line: 963, column: 35, scope: !2765, inlinedAt: !2833)
!2836 = !DILocation(line: 963, column: 47, scope: !2765, inlinedAt: !2833)
!2837 = !DILocation(line: 965, column: 3, scope: !2765, inlinedAt: !2833)
!2838 = !DILocation(line: 965, column: 32, scope: !2765, inlinedAt: !2833)
!2839 = !DILocation(line: 193, column: 48, scope: !2745, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 965, column: 36, scope: !2765, inlinedAt: !2833)
!2841 = !DILocation(line: 195, column: 26, scope: !2745, inlinedAt: !2840)
!2842 = !{!2843}
!2843 = distinct !{!2843, !2844, !"quoting_options_from_style: argument 0"}
!2844 = distinct !{!2844, !"quoting_options_from_style"}
!2845 = !DILocation(line: 196, column: 13, scope: !2757, inlinedAt: !2840)
!2846 = !DILocation(line: 196, column: 7, scope: !2745, inlinedAt: !2840)
!2847 = !DILocation(line: 197, column: 5, scope: !2757, inlinedAt: !2840)
!2848 = !DILocation(line: 198, column: 5, scope: !2745, inlinedAt: !2840)
!2849 = !DILocation(line: 198, column: 11, scope: !2745, inlinedAt: !2840)
!2850 = !DILocation(line: 966, column: 10, scope: !2765, inlinedAt: !2833)
!2851 = !DILocation(line: 967, column: 1, scope: !2765, inlinedAt: !2833)
!2852 = !DILocation(line: 978, column: 3, scope: !2822)
!2853 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !126, file: !126, line: 982, type: !2854, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!30, !53, !35, !31}
!2856 = !{!2857, !2858, !2859, !2860}
!2857 = !DILocalVariable(name: "arg", arg: 1, scope: !2853, file: !126, line: 982, type: !53)
!2858 = !DILocalVariable(name: "argsize", arg: 2, scope: !2853, file: !126, line: 982, type: !35)
!2859 = !DILocalVariable(name: "ch", arg: 3, scope: !2853, file: !126, line: 982, type: !31)
!2860 = !DILocalVariable(name: "options", scope: !2853, file: !126, line: 984, type: !133)
!2861 = !DILocation(line: 982, column: 32, scope: !2853)
!2862 = !DILocation(line: 982, column: 44, scope: !2853)
!2863 = !DILocation(line: 982, column: 58, scope: !2853)
!2864 = !DILocation(line: 984, column: 3, scope: !2853)
!2865 = !DILocation(line: 985, column: 13, scope: !2853)
!2866 = !{i64 0, i64 4, !726, i64 4, i64 4, !737, i64 8, i64 32, !726, i64 40, i64 8, !647, i64 48, i64 8, !647}
!2867 = !DILocation(line: 984, column: 26, scope: !2853)
!2868 = !DILocation(line: 152, column: 43, scope: !1519, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 986, column: 3, scope: !2853)
!2870 = !DILocation(line: 152, column: 51, scope: !1519, inlinedAt: !2869)
!2871 = !DILocation(line: 152, column: 58, scope: !1519, inlinedAt: !2869)
!2872 = !DILocation(line: 154, column: 17, scope: !1519, inlinedAt: !2869)
!2873 = !DILocation(line: 156, column: 62, scope: !1519, inlinedAt: !2869)
!2874 = !DILocation(line: 156, column: 57, scope: !1519, inlinedAt: !2869)
!2875 = !DILocation(line: 155, column: 17, scope: !1519, inlinedAt: !2869)
!2876 = !DILocation(line: 157, column: 15, scope: !1519, inlinedAt: !2869)
!2877 = !DILocation(line: 157, column: 7, scope: !1519, inlinedAt: !2869)
!2878 = !DILocation(line: 158, column: 12, scope: !1519, inlinedAt: !2869)
!2879 = !DILocation(line: 158, column: 15, scope: !1519, inlinedAt: !2869)
!2880 = !DILocation(line: 158, column: 25, scope: !1519, inlinedAt: !2869)
!2881 = !DILocation(line: 158, column: 7, scope: !1519, inlinedAt: !2869)
!2882 = !DILocation(line: 159, column: 18, scope: !1519, inlinedAt: !2869)
!2883 = !DILocation(line: 159, column: 23, scope: !1519, inlinedAt: !2869)
!2884 = !DILocation(line: 159, column: 6, scope: !1519, inlinedAt: !2869)
!2885 = !DILocation(line: 987, column: 10, scope: !2853)
!2886 = !DILocation(line: 988, column: 1, scope: !2853)
!2887 = !DILocation(line: 987, column: 3, scope: !2853)
!2888 = distinct !DISubprogram(name: "quotearg_char", scope: !126, file: !126, line: 991, type: !2889, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!30, !53, !31}
!2891 = !{!2892, !2893}
!2892 = !DILocalVariable(name: "arg", arg: 1, scope: !2888, file: !126, line: 991, type: !53)
!2893 = !DILocalVariable(name: "ch", arg: 2, scope: !2888, file: !126, line: 991, type: !31)
!2894 = !DILocation(line: 991, column: 28, scope: !2888)
!2895 = !DILocation(line: 991, column: 38, scope: !2888)
!2896 = !DILocation(line: 982, column: 32, scope: !2853, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 993, column: 10, scope: !2888)
!2898 = !DILocation(line: 982, column: 44, scope: !2853, inlinedAt: !2897)
!2899 = !DILocation(line: 982, column: 58, scope: !2853, inlinedAt: !2897)
!2900 = !DILocation(line: 984, column: 3, scope: !2853, inlinedAt: !2897)
!2901 = !DILocation(line: 985, column: 13, scope: !2853, inlinedAt: !2897)
!2902 = !DILocation(line: 984, column: 26, scope: !2853, inlinedAt: !2897)
!2903 = !DILocation(line: 152, column: 43, scope: !1519, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 986, column: 3, scope: !2853, inlinedAt: !2897)
!2905 = !DILocation(line: 152, column: 51, scope: !1519, inlinedAt: !2904)
!2906 = !DILocation(line: 152, column: 58, scope: !1519, inlinedAt: !2904)
!2907 = !DILocation(line: 154, column: 17, scope: !1519, inlinedAt: !2904)
!2908 = !DILocation(line: 156, column: 62, scope: !1519, inlinedAt: !2904)
!2909 = !DILocation(line: 156, column: 57, scope: !1519, inlinedAt: !2904)
!2910 = !DILocation(line: 155, column: 17, scope: !1519, inlinedAt: !2904)
!2911 = !DILocation(line: 157, column: 15, scope: !1519, inlinedAt: !2904)
!2912 = !DILocation(line: 157, column: 7, scope: !1519, inlinedAt: !2904)
!2913 = !DILocation(line: 158, column: 12, scope: !1519, inlinedAt: !2904)
!2914 = !DILocation(line: 158, column: 15, scope: !1519, inlinedAt: !2904)
!2915 = !DILocation(line: 158, column: 25, scope: !1519, inlinedAt: !2904)
!2916 = !DILocation(line: 158, column: 7, scope: !1519, inlinedAt: !2904)
!2917 = !DILocation(line: 159, column: 18, scope: !1519, inlinedAt: !2904)
!2918 = !DILocation(line: 159, column: 23, scope: !1519, inlinedAt: !2904)
!2919 = !DILocation(line: 159, column: 6, scope: !1519, inlinedAt: !2904)
!2920 = !DILocation(line: 987, column: 10, scope: !2853, inlinedAt: !2897)
!2921 = !DILocation(line: 988, column: 1, scope: !2853, inlinedAt: !2897)
!2922 = !DILocation(line: 993, column: 3, scope: !2888)
!2923 = distinct !DISubprogram(name: "quotearg_colon", scope: !126, file: !126, line: 997, type: !2707, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2924)
!2924 = !{!2925}
!2925 = !DILocalVariable(name: "arg", arg: 1, scope: !2923, file: !126, line: 997, type: !53)
!2926 = !DILocation(line: 997, column: 29, scope: !2923)
!2927 = !DILocation(line: 991, column: 28, scope: !2888, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 999, column: 10, scope: !2923)
!2929 = !DILocation(line: 991, column: 38, scope: !2888, inlinedAt: !2928)
!2930 = !DILocation(line: 982, column: 32, scope: !2853, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 993, column: 10, scope: !2888, inlinedAt: !2928)
!2932 = !DILocation(line: 982, column: 44, scope: !2853, inlinedAt: !2931)
!2933 = !DILocation(line: 982, column: 58, scope: !2853, inlinedAt: !2931)
!2934 = !DILocation(line: 984, column: 3, scope: !2853, inlinedAt: !2931)
!2935 = !DILocation(line: 985, column: 13, scope: !2853, inlinedAt: !2931)
!2936 = !DILocation(line: 984, column: 26, scope: !2853, inlinedAt: !2931)
!2937 = !DILocation(line: 152, column: 43, scope: !1519, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 986, column: 3, scope: !2853, inlinedAt: !2931)
!2939 = !DILocation(line: 152, column: 51, scope: !1519, inlinedAt: !2938)
!2940 = !DILocation(line: 152, column: 58, scope: !1519, inlinedAt: !2938)
!2941 = !DILocation(line: 154, column: 17, scope: !1519, inlinedAt: !2938)
!2942 = !DILocation(line: 156, column: 57, scope: !1519, inlinedAt: !2938)
!2943 = !DILocation(line: 155, column: 17, scope: !1519, inlinedAt: !2938)
!2944 = !DILocation(line: 157, column: 7, scope: !1519, inlinedAt: !2938)
!2945 = !DILocation(line: 158, column: 12, scope: !1519, inlinedAt: !2938)
!2946 = !DILocation(line: 159, column: 6, scope: !1519, inlinedAt: !2938)
!2947 = !DILocation(line: 987, column: 10, scope: !2853, inlinedAt: !2931)
!2948 = !DILocation(line: 988, column: 1, scope: !2853, inlinedAt: !2931)
!2949 = !DILocation(line: 999, column: 3, scope: !2923)
!2950 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !126, file: !126, line: 1003, type: !2718, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2951)
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !126, line: 1003, type: !53)
!2953 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !126, line: 1003, type: !35)
!2954 = !DILocation(line: 1003, column: 33, scope: !2950)
!2955 = !DILocation(line: 1003, column: 45, scope: !2950)
!2956 = !DILocation(line: 982, column: 32, scope: !2853, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 1005, column: 10, scope: !2950)
!2958 = !DILocation(line: 982, column: 44, scope: !2853, inlinedAt: !2957)
!2959 = !DILocation(line: 982, column: 58, scope: !2853, inlinedAt: !2957)
!2960 = !DILocation(line: 984, column: 3, scope: !2853, inlinedAt: !2957)
!2961 = !DILocation(line: 985, column: 13, scope: !2853, inlinedAt: !2957)
!2962 = !DILocation(line: 984, column: 26, scope: !2853, inlinedAt: !2957)
!2963 = !DILocation(line: 152, column: 43, scope: !1519, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 986, column: 3, scope: !2853, inlinedAt: !2957)
!2965 = !DILocation(line: 152, column: 51, scope: !1519, inlinedAt: !2964)
!2966 = !DILocation(line: 152, column: 58, scope: !1519, inlinedAt: !2964)
!2967 = !DILocation(line: 154, column: 17, scope: !1519, inlinedAt: !2964)
!2968 = !DILocation(line: 156, column: 57, scope: !1519, inlinedAt: !2964)
!2969 = !DILocation(line: 155, column: 17, scope: !1519, inlinedAt: !2964)
!2970 = !DILocation(line: 157, column: 7, scope: !1519, inlinedAt: !2964)
!2971 = !DILocation(line: 158, column: 12, scope: !1519, inlinedAt: !2964)
!2972 = !DILocation(line: 159, column: 6, scope: !1519, inlinedAt: !2964)
!2973 = !DILocation(line: 987, column: 10, scope: !2853, inlinedAt: !2957)
!2974 = !DILocation(line: 988, column: 1, scope: !2853, inlinedAt: !2957)
!2975 = !DILocation(line: 1005, column: 3, scope: !2950)
!2976 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !126, file: !126, line: 1009, type: !2732, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !2977)
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !126, line: 1009, type: !56)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2976, file: !126, line: 1009, type: !5)
!2980 = !DILocalVariable(name: "arg", arg: 3, scope: !2976, file: !126, line: 1009, type: !53)
!2981 = !DILocalVariable(name: "options", scope: !2976, file: !126, line: 1011, type: !133)
!2982 = !DILocation(line: 195, column: 26, scope: !2745, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1012, column: 13, scope: !2976)
!2984 = !DILocation(line: 1009, column: 29, scope: !2976)
!2985 = !DILocation(line: 1009, column: 51, scope: !2976)
!2986 = !DILocation(line: 1009, column: 66, scope: !2976)
!2987 = !DILocation(line: 1011, column: 3, scope: !2976)
!2988 = !DILocation(line: 1012, column: 13, scope: !2976)
!2989 = !DILocation(line: 193, column: 48, scope: !2745, inlinedAt: !2983)
!2990 = !{!2991}
!2991 = distinct !{!2991, !2992, !"quoting_options_from_style: argument 0"}
!2992 = distinct !{!2992, !"quoting_options_from_style"}
!2993 = !DILocation(line: 196, column: 13, scope: !2757, inlinedAt: !2983)
!2994 = !DILocation(line: 196, column: 7, scope: !2745, inlinedAt: !2983)
!2995 = !DILocation(line: 197, column: 5, scope: !2757, inlinedAt: !2983)
!2996 = !DILocation(line: 1011, column: 26, scope: !2976)
!2997 = !DILocation(line: 152, column: 43, scope: !1519, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 1013, column: 3, scope: !2976)
!2999 = !DILocation(line: 152, column: 51, scope: !1519, inlinedAt: !2998)
!3000 = !DILocation(line: 152, column: 58, scope: !1519, inlinedAt: !2998)
!3001 = !DILocation(line: 154, column: 17, scope: !1519, inlinedAt: !2998)
!3002 = !DILocation(line: 156, column: 57, scope: !1519, inlinedAt: !2998)
!3003 = !DILocation(line: 155, column: 17, scope: !1519, inlinedAt: !2998)
!3004 = !DILocation(line: 157, column: 7, scope: !1519, inlinedAt: !2998)
!3005 = !DILocation(line: 158, column: 12, scope: !1519, inlinedAt: !2998)
!3006 = !DILocation(line: 159, column: 6, scope: !1519, inlinedAt: !2998)
!3007 = !DILocation(line: 1014, column: 10, scope: !2976)
!3008 = !DILocation(line: 1015, column: 1, scope: !2976)
!3009 = !DILocation(line: 1014, column: 3, scope: !2976)
!3010 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !126, file: !126, line: 1018, type: !3011, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!30, !56, !53, !53, !53}
!3013 = !{!3014, !3015, !3016, !3017}
!3014 = !DILocalVariable(name: "n", arg: 1, scope: !3010, file: !126, line: 1018, type: !56)
!3015 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3010, file: !126, line: 1018, type: !53)
!3016 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3010, file: !126, line: 1019, type: !53)
!3017 = !DILocalVariable(name: "arg", arg: 4, scope: !3010, file: !126, line: 1019, type: !53)
!3018 = !DILocation(line: 1018, column: 24, scope: !3010)
!3019 = !DILocation(line: 1018, column: 39, scope: !3010)
!3020 = !DILocation(line: 1019, column: 32, scope: !3010)
!3021 = !DILocation(line: 1019, column: 57, scope: !3010)
!3022 = !DILocalVariable(name: "n", arg: 1, scope: !3023, file: !126, line: 1026, type: !56)
!3023 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !126, file: !126, line: 1026, type: !3024, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!30, !56, !53, !53, !53, !35}
!3026 = !{!3022, !3027, !3028, !3029, !3030, !3031}
!3027 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3023, file: !126, line: 1026, type: !53)
!3028 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3023, file: !126, line: 1027, type: !53)
!3029 = !DILocalVariable(name: "arg", arg: 4, scope: !3023, file: !126, line: 1028, type: !53)
!3030 = !DILocalVariable(name: "argsize", arg: 5, scope: !3023, file: !126, line: 1028, type: !35)
!3031 = !DILocalVariable(name: "o", scope: !3023, file: !126, line: 1030, type: !133)
!3032 = !DILocation(line: 1026, column: 28, scope: !3023, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 1021, column: 10, scope: !3010)
!3034 = !DILocation(line: 1026, column: 43, scope: !3023, inlinedAt: !3033)
!3035 = !DILocation(line: 1027, column: 36, scope: !3023, inlinedAt: !3033)
!3036 = !DILocation(line: 1028, column: 36, scope: !3023, inlinedAt: !3033)
!3037 = !DILocation(line: 1028, column: 48, scope: !3023, inlinedAt: !3033)
!3038 = !DILocation(line: 1030, column: 3, scope: !3023, inlinedAt: !3033)
!3039 = !DILocation(line: 1030, column: 30, scope: !3023, inlinedAt: !3033)
!3040 = !DILocation(line: 1030, column: 26, scope: !3023, inlinedAt: !3033)
!3041 = !DILocation(line: 179, column: 45, scope: !1567, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 1031, column: 3, scope: !3023, inlinedAt: !3033)
!3043 = !DILocation(line: 180, column: 33, scope: !1567, inlinedAt: !3042)
!3044 = !DILocation(line: 180, column: 57, scope: !1567, inlinedAt: !3042)
!3045 = !DILocation(line: 184, column: 6, scope: !1567, inlinedAt: !3042)
!3046 = !DILocation(line: 184, column: 12, scope: !1567, inlinedAt: !3042)
!3047 = !DILocation(line: 185, column: 8, scope: !1583, inlinedAt: !3042)
!3048 = !DILocation(line: 185, column: 23, scope: !1583, inlinedAt: !3042)
!3049 = !DILocation(line: 185, column: 19, scope: !1583, inlinedAt: !3042)
!3050 = !DILocation(line: 186, column: 5, scope: !1583, inlinedAt: !3042)
!3051 = !DILocation(line: 187, column: 6, scope: !1567, inlinedAt: !3042)
!3052 = !DILocation(line: 187, column: 17, scope: !1567, inlinedAt: !3042)
!3053 = !DILocation(line: 188, column: 6, scope: !1567, inlinedAt: !3042)
!3054 = !DILocation(line: 188, column: 18, scope: !1567, inlinedAt: !3042)
!3055 = !DILocation(line: 1032, column: 10, scope: !3023, inlinedAt: !3033)
!3056 = !DILocation(line: 1033, column: 1, scope: !3023, inlinedAt: !3033)
!3057 = !DILocation(line: 1021, column: 3, scope: !3010)
!3058 = !DILocation(line: 1026, column: 28, scope: !3023)
!3059 = !DILocation(line: 1026, column: 43, scope: !3023)
!3060 = !DILocation(line: 1027, column: 36, scope: !3023)
!3061 = !DILocation(line: 1028, column: 36, scope: !3023)
!3062 = !DILocation(line: 1028, column: 48, scope: !3023)
!3063 = !DILocation(line: 1030, column: 3, scope: !3023)
!3064 = !DILocation(line: 1030, column: 30, scope: !3023)
!3065 = !DILocation(line: 1030, column: 26, scope: !3023)
!3066 = !DILocation(line: 179, column: 45, scope: !1567, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1031, column: 3, scope: !3023)
!3068 = !DILocation(line: 180, column: 33, scope: !1567, inlinedAt: !3067)
!3069 = !DILocation(line: 180, column: 57, scope: !1567, inlinedAt: !3067)
!3070 = !DILocation(line: 184, column: 6, scope: !1567, inlinedAt: !3067)
!3071 = !DILocation(line: 184, column: 12, scope: !1567, inlinedAt: !3067)
!3072 = !DILocation(line: 185, column: 8, scope: !1583, inlinedAt: !3067)
!3073 = !DILocation(line: 185, column: 23, scope: !1583, inlinedAt: !3067)
!3074 = !DILocation(line: 185, column: 19, scope: !1583, inlinedAt: !3067)
!3075 = !DILocation(line: 186, column: 5, scope: !1583, inlinedAt: !3067)
!3076 = !DILocation(line: 187, column: 6, scope: !1567, inlinedAt: !3067)
!3077 = !DILocation(line: 187, column: 17, scope: !1567, inlinedAt: !3067)
!3078 = !DILocation(line: 188, column: 6, scope: !1567, inlinedAt: !3067)
!3079 = !DILocation(line: 188, column: 18, scope: !1567, inlinedAt: !3067)
!3080 = !DILocation(line: 1032, column: 10, scope: !3023)
!3081 = !DILocation(line: 1033, column: 1, scope: !3023)
!3082 = !DILocation(line: 1032, column: 3, scope: !3023)
!3083 = distinct !DISubprogram(name: "quotearg_custom", scope: !126, file: !126, line: 1036, type: !3084, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!30, !53, !53, !53}
!3086 = !{!3087, !3088, !3089}
!3087 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3083, file: !126, line: 1036, type: !53)
!3088 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3083, file: !126, line: 1036, type: !53)
!3089 = !DILocalVariable(name: "arg", arg: 3, scope: !3083, file: !126, line: 1037, type: !53)
!3090 = !DILocation(line: 1036, column: 30, scope: !3083)
!3091 = !DILocation(line: 1036, column: 54, scope: !3083)
!3092 = !DILocation(line: 1037, column: 30, scope: !3083)
!3093 = !DILocation(line: 1018, column: 24, scope: !3010, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 1039, column: 10, scope: !3083)
!3095 = !DILocation(line: 1018, column: 39, scope: !3010, inlinedAt: !3094)
!3096 = !DILocation(line: 1019, column: 32, scope: !3010, inlinedAt: !3094)
!3097 = !DILocation(line: 1019, column: 57, scope: !3010, inlinedAt: !3094)
!3098 = !DILocation(line: 1026, column: 28, scope: !3023, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 1021, column: 10, scope: !3010, inlinedAt: !3094)
!3100 = !DILocation(line: 1026, column: 43, scope: !3023, inlinedAt: !3099)
!3101 = !DILocation(line: 1027, column: 36, scope: !3023, inlinedAt: !3099)
!3102 = !DILocation(line: 1028, column: 36, scope: !3023, inlinedAt: !3099)
!3103 = !DILocation(line: 1028, column: 48, scope: !3023, inlinedAt: !3099)
!3104 = !DILocation(line: 1030, column: 3, scope: !3023, inlinedAt: !3099)
!3105 = !DILocation(line: 1030, column: 30, scope: !3023, inlinedAt: !3099)
!3106 = !DILocation(line: 1030, column: 26, scope: !3023, inlinedAt: !3099)
!3107 = !DILocation(line: 179, column: 45, scope: !1567, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 1031, column: 3, scope: !3023, inlinedAt: !3099)
!3109 = !DILocation(line: 180, column: 33, scope: !1567, inlinedAt: !3108)
!3110 = !DILocation(line: 180, column: 57, scope: !1567, inlinedAt: !3108)
!3111 = !DILocation(line: 184, column: 6, scope: !1567, inlinedAt: !3108)
!3112 = !DILocation(line: 184, column: 12, scope: !1567, inlinedAt: !3108)
!3113 = !DILocation(line: 185, column: 8, scope: !1583, inlinedAt: !3108)
!3114 = !DILocation(line: 185, column: 23, scope: !1583, inlinedAt: !3108)
!3115 = !DILocation(line: 185, column: 19, scope: !1583, inlinedAt: !3108)
!3116 = !DILocation(line: 186, column: 5, scope: !1583, inlinedAt: !3108)
!3117 = !DILocation(line: 187, column: 6, scope: !1567, inlinedAt: !3108)
!3118 = !DILocation(line: 187, column: 17, scope: !1567, inlinedAt: !3108)
!3119 = !DILocation(line: 188, column: 6, scope: !1567, inlinedAt: !3108)
!3120 = !DILocation(line: 188, column: 18, scope: !1567, inlinedAt: !3108)
!3121 = !DILocation(line: 1032, column: 10, scope: !3023, inlinedAt: !3099)
!3122 = !DILocation(line: 1033, column: 1, scope: !3023, inlinedAt: !3099)
!3123 = !DILocation(line: 1039, column: 3, scope: !3083)
!3124 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !126, file: !126, line: 1043, type: !3125, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!30, !53, !53, !53, !35}
!3127 = !{!3128, !3129, !3130, !3131}
!3128 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3124, file: !126, line: 1043, type: !53)
!3129 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3124, file: !126, line: 1043, type: !53)
!3130 = !DILocalVariable(name: "arg", arg: 3, scope: !3124, file: !126, line: 1044, type: !53)
!3131 = !DILocalVariable(name: "argsize", arg: 4, scope: !3124, file: !126, line: 1044, type: !35)
!3132 = !DILocation(line: 1043, column: 34, scope: !3124)
!3133 = !DILocation(line: 1043, column: 58, scope: !3124)
!3134 = !DILocation(line: 1044, column: 34, scope: !3124)
!3135 = !DILocation(line: 1044, column: 46, scope: !3124)
!3136 = !DILocation(line: 1026, column: 28, scope: !3023, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 1046, column: 10, scope: !3124)
!3138 = !DILocation(line: 1026, column: 43, scope: !3023, inlinedAt: !3137)
!3139 = !DILocation(line: 1027, column: 36, scope: !3023, inlinedAt: !3137)
!3140 = !DILocation(line: 1028, column: 36, scope: !3023, inlinedAt: !3137)
!3141 = !DILocation(line: 1028, column: 48, scope: !3023, inlinedAt: !3137)
!3142 = !DILocation(line: 1030, column: 3, scope: !3023, inlinedAt: !3137)
!3143 = !DILocation(line: 1030, column: 30, scope: !3023, inlinedAt: !3137)
!3144 = !DILocation(line: 1030, column: 26, scope: !3023, inlinedAt: !3137)
!3145 = !DILocation(line: 179, column: 45, scope: !1567, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 1031, column: 3, scope: !3023, inlinedAt: !3137)
!3147 = !DILocation(line: 180, column: 33, scope: !1567, inlinedAt: !3146)
!3148 = !DILocation(line: 180, column: 57, scope: !1567, inlinedAt: !3146)
!3149 = !DILocation(line: 184, column: 6, scope: !1567, inlinedAt: !3146)
!3150 = !DILocation(line: 184, column: 12, scope: !1567, inlinedAt: !3146)
!3151 = !DILocation(line: 185, column: 8, scope: !1583, inlinedAt: !3146)
!3152 = !DILocation(line: 185, column: 23, scope: !1583, inlinedAt: !3146)
!3153 = !DILocation(line: 185, column: 19, scope: !1583, inlinedAt: !3146)
!3154 = !DILocation(line: 186, column: 5, scope: !1583, inlinedAt: !3146)
!3155 = !DILocation(line: 187, column: 6, scope: !1567, inlinedAt: !3146)
!3156 = !DILocation(line: 187, column: 17, scope: !1567, inlinedAt: !3146)
!3157 = !DILocation(line: 188, column: 6, scope: !1567, inlinedAt: !3146)
!3158 = !DILocation(line: 188, column: 18, scope: !1567, inlinedAt: !3146)
!3159 = !DILocation(line: 1032, column: 10, scope: !3023, inlinedAt: !3137)
!3160 = !DILocation(line: 1033, column: 1, scope: !3023, inlinedAt: !3137)
!3161 = !DILocation(line: 1046, column: 3, scope: !3124)
!3162 = distinct !DISubprogram(name: "quote_n_mem", scope: !126, file: !126, line: 1061, type: !3163, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!53, !56, !53, !35}
!3165 = !{!3166, !3167, !3168}
!3166 = !DILocalVariable(name: "n", arg: 1, scope: !3162, file: !126, line: 1061, type: !56)
!3167 = !DILocalVariable(name: "arg", arg: 2, scope: !3162, file: !126, line: 1061, type: !53)
!3168 = !DILocalVariable(name: "argsize", arg: 3, scope: !3162, file: !126, line: 1061, type: !35)
!3169 = !DILocation(line: 1061, column: 18, scope: !3162)
!3170 = !DILocation(line: 1061, column: 33, scope: !3162)
!3171 = !DILocation(line: 1061, column: 45, scope: !3162)
!3172 = !DILocation(line: 1063, column: 10, scope: !3162)
!3173 = !DILocation(line: 1063, column: 3, scope: !3162)
!3174 = distinct !DISubprogram(name: "quote_mem", scope: !126, file: !126, line: 1067, type: !3175, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!53, !53, !35}
!3177 = !{!3178, !3179}
!3178 = !DILocalVariable(name: "arg", arg: 1, scope: !3174, file: !126, line: 1067, type: !53)
!3179 = !DILocalVariable(name: "argsize", arg: 2, scope: !3174, file: !126, line: 1067, type: !35)
!3180 = !DILocation(line: 1067, column: 24, scope: !3174)
!3181 = !DILocation(line: 1067, column: 36, scope: !3174)
!3182 = !DILocation(line: 1061, column: 18, scope: !3162, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1069, column: 10, scope: !3174)
!3184 = !DILocation(line: 1061, column: 33, scope: !3162, inlinedAt: !3183)
!3185 = !DILocation(line: 1061, column: 45, scope: !3162, inlinedAt: !3183)
!3186 = !DILocation(line: 1063, column: 10, scope: !3162, inlinedAt: !3183)
!3187 = !DILocation(line: 1069, column: 3, scope: !3174)
!3188 = distinct !DISubprogram(name: "quote_n", scope: !126, file: !126, line: 1073, type: !3189, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!53, !56, !53}
!3191 = !{!3192, !3193}
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3188, file: !126, line: 1073, type: !56)
!3193 = !DILocalVariable(name: "arg", arg: 2, scope: !3188, file: !126, line: 1073, type: !53)
!3194 = !DILocation(line: 1073, column: 14, scope: !3188)
!3195 = !DILocation(line: 1073, column: 29, scope: !3188)
!3196 = !DILocation(line: 1061, column: 18, scope: !3162, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 1075, column: 10, scope: !3188)
!3198 = !DILocation(line: 1061, column: 33, scope: !3162, inlinedAt: !3197)
!3199 = !DILocation(line: 1061, column: 45, scope: !3162, inlinedAt: !3197)
!3200 = !DILocation(line: 1063, column: 10, scope: !3162, inlinedAt: !3197)
!3201 = !DILocation(line: 1075, column: 3, scope: !3188)
!3202 = distinct !DISubprogram(name: "quote", scope: !126, file: !126, line: 1079, type: !3203, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!53, !53}
!3205 = !{!3206}
!3206 = !DILocalVariable(name: "arg", arg: 1, scope: !3202, file: !126, line: 1079, type: !53)
!3207 = !DILocation(line: 1079, column: 20, scope: !3202)
!3208 = !DILocation(line: 1073, column: 14, scope: !3188, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 1081, column: 10, scope: !3202)
!3210 = !DILocation(line: 1073, column: 29, scope: !3188, inlinedAt: !3209)
!3211 = !DILocation(line: 1061, column: 18, scope: !3162, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 1075, column: 10, scope: !3188, inlinedAt: !3209)
!3213 = !DILocation(line: 1061, column: 33, scope: !3162, inlinedAt: !3212)
!3214 = !DILocation(line: 1061, column: 45, scope: !3162, inlinedAt: !3212)
!3215 = !DILocation(line: 1063, column: 10, scope: !3162, inlinedAt: !3212)
!3216 = !DILocation(line: 1081, column: 3, scope: !3202)
!3217 = distinct !DISubprogram(name: "version_etc_arn", scope: !181, file: !181, line: 62, type: !3218, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3255)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !3220, !53, !53, !53, !3254, !35}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !823, line: 7, baseType: !3222)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !825, line: 49, size: 1728, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3222, file: !825, line: 51, baseType: !56, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3222, file: !825, line: 54, baseType: !30, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3222, file: !825, line: 55, baseType: !30, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3222, file: !825, line: 56, baseType: !30, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3222, file: !825, line: 57, baseType: !30, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3222, file: !825, line: 58, baseType: !30, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3222, file: !825, line: 59, baseType: !30, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3222, file: !825, line: 60, baseType: !30, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3222, file: !825, line: 61, baseType: !30, size: 64, offset: 512)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3222, file: !825, line: 64, baseType: !30, size: 64, offset: 576)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3222, file: !825, line: 65, baseType: !30, size: 64, offset: 640)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3222, file: !825, line: 66, baseType: !30, size: 64, offset: 704)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3222, file: !825, line: 68, baseType: !840, size: 64, offset: 768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3222, file: !825, line: 70, baseType: !3238, size: 64, offset: 832)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3222, file: !825, line: 72, baseType: !56, size: 32, offset: 896)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3222, file: !825, line: 73, baseType: !56, size: 32, offset: 928)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3222, file: !825, line: 74, baseType: !847, size: 64, offset: 960)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3222, file: !825, line: 77, baseType: !122, size: 16, offset: 1024)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3222, file: !825, line: 78, baseType: !852, size: 8, offset: 1040)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3222, file: !825, line: 79, baseType: !854, size: 8, offset: 1048)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3222, file: !825, line: 81, baseType: !858, size: 64, offset: 1088)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3222, file: !825, line: 89, baseType: !861, size: 64, offset: 1152)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3222, file: !825, line: 91, baseType: !863, size: 64, offset: 1216)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3222, file: !825, line: 92, baseType: !866, size: 64, offset: 1280)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3222, file: !825, line: 93, baseType: !3238, size: 64, offset: 1344)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3222, file: !825, line: 94, baseType: !32, size: 64, offset: 1408)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3222, file: !825, line: 95, baseType: !35, size: 64, offset: 1472)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3222, file: !825, line: 96, baseType: !56, size: 32, offset: 1536)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3222, file: !825, line: 98, baseType: !873, size: 160, offset: 1568)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261}
!3256 = !DILocalVariable(name: "stream", arg: 1, scope: !3217, file: !181, line: 62, type: !3220)
!3257 = !DILocalVariable(name: "command_name", arg: 2, scope: !3217, file: !181, line: 63, type: !53)
!3258 = !DILocalVariable(name: "package", arg: 3, scope: !3217, file: !181, line: 63, type: !53)
!3259 = !DILocalVariable(name: "version", arg: 4, scope: !3217, file: !181, line: 64, type: !53)
!3260 = !DILocalVariable(name: "authors", arg: 5, scope: !3217, file: !181, line: 65, type: !3254)
!3261 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3217, file: !181, line: 65, type: !35)
!3262 = !DILocation(line: 62, column: 24, scope: !3217)
!3263 = !DILocation(line: 63, column: 30, scope: !3217)
!3264 = !DILocation(line: 63, column: 56, scope: !3217)
!3265 = !DILocation(line: 64, column: 30, scope: !3217)
!3266 = !DILocation(line: 65, column: 39, scope: !3217)
!3267 = !DILocation(line: 65, column: 55, scope: !3217)
!3268 = !DILocation(line: 67, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3217, file: !181, line: 67, column: 7)
!3270 = !DILocation(line: 67, column: 7, scope: !3217)
!3271 = !DILocation(line: 68, column: 5, scope: !3269)
!3272 = !DILocation(line: 70, column: 5, scope: !3269)
!3273 = !DILocation(line: 84, column: 3, scope: !3217)
!3274 = !DILocation(line: 86, column: 3, scope: !3217)
!3275 = !DILocation(line: 95, column: 3, scope: !3217)
!3276 = !DILocation(line: 99, column: 7, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3217, file: !181, line: 96, column: 5)
!3278 = !DILocation(line: 102, column: 7, scope: !3277)
!3279 = !DILocation(line: 103, column: 7, scope: !3277)
!3280 = !DILocation(line: 106, column: 7, scope: !3277)
!3281 = !DILocation(line: 107, column: 7, scope: !3277)
!3282 = !DILocation(line: 110, column: 7, scope: !3277)
!3283 = !DILocation(line: 112, column: 7, scope: !3277)
!3284 = !DILocation(line: 117, column: 7, scope: !3277)
!3285 = !DILocation(line: 119, column: 7, scope: !3277)
!3286 = !DILocation(line: 124, column: 7, scope: !3277)
!3287 = !DILocation(line: 126, column: 7, scope: !3277)
!3288 = !DILocation(line: 131, column: 7, scope: !3277)
!3289 = !DILocation(line: 134, column: 7, scope: !3277)
!3290 = !DILocation(line: 139, column: 7, scope: !3277)
!3291 = !DILocation(line: 142, column: 7, scope: !3277)
!3292 = !DILocation(line: 147, column: 7, scope: !3277)
!3293 = !DILocation(line: 151, column: 7, scope: !3277)
!3294 = !DILocation(line: 156, column: 7, scope: !3277)
!3295 = !DILocation(line: 160, column: 7, scope: !3277)
!3296 = !DILocation(line: 167, column: 7, scope: !3277)
!3297 = !DILocation(line: 171, column: 7, scope: !3277)
!3298 = !DILocation(line: 173, column: 1, scope: !3217)
!3299 = distinct !DISubprogram(name: "version_etc_ar", scope: !181, file: !181, line: 180, type: !3300, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !3220, !53, !53, !53, !3254}
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308}
!3303 = !DILocalVariable(name: "stream", arg: 1, scope: !3299, file: !181, line: 180, type: !3220)
!3304 = !DILocalVariable(name: "command_name", arg: 2, scope: !3299, file: !181, line: 181, type: !53)
!3305 = !DILocalVariable(name: "package", arg: 3, scope: !3299, file: !181, line: 181, type: !53)
!3306 = !DILocalVariable(name: "version", arg: 4, scope: !3299, file: !181, line: 182, type: !53)
!3307 = !DILocalVariable(name: "authors", arg: 5, scope: !3299, file: !181, line: 182, type: !3254)
!3308 = !DILocalVariable(name: "n_authors", scope: !3299, file: !181, line: 184, type: !35)
!3309 = !DILocation(line: 180, column: 23, scope: !3299)
!3310 = !DILocation(line: 181, column: 29, scope: !3299)
!3311 = !DILocation(line: 181, column: 55, scope: !3299)
!3312 = !DILocation(line: 182, column: 29, scope: !3299)
!3313 = !DILocation(line: 182, column: 59, scope: !3299)
!3314 = !DILocation(line: 184, column: 10, scope: !3299)
!3315 = !DILocation(line: 186, column: 8, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3299, file: !181, line: 186, column: 3)
!3317 = !DILocation(line: 0, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3316, file: !181, line: 186, column: 3)
!3319 = !DILocation(line: 186, column: 23, scope: !3318)
!3320 = !DILocation(line: 186, column: 3, scope: !3316)
!3321 = !DILocation(line: 186, column: 52, scope: !3318)
!3322 = distinct !{!3322, !3320, !3323}
!3323 = !DILocation(line: 187, column: 5, scope: !3316)
!3324 = !DILocation(line: 188, column: 3, scope: !3299)
!3325 = !DILocation(line: 189, column: 1, scope: !3299)
!3326 = distinct !DISubprogram(name: "version_etc_va", scope: !181, file: !181, line: 196, type: !3327, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3336)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3220, !53, !53, !53, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !178, line: 189, size: 192, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3330, file: !178, line: 189, baseType: !7, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3330, file: !178, line: 189, baseType: !7, size: 32, offset: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3330, file: !178, line: 189, baseType: !32, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3330, file: !178, line: 189, baseType: !32, size: 64, offset: 128)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343}
!3337 = !DILocalVariable(name: "stream", arg: 1, scope: !3326, file: !181, line: 196, type: !3220)
!3338 = !DILocalVariable(name: "command_name", arg: 2, scope: !3326, file: !181, line: 197, type: !53)
!3339 = !DILocalVariable(name: "package", arg: 3, scope: !3326, file: !181, line: 197, type: !53)
!3340 = !DILocalVariable(name: "version", arg: 4, scope: !3326, file: !181, line: 198, type: !53)
!3341 = !DILocalVariable(name: "authors", arg: 5, scope: !3326, file: !181, line: 198, type: !3329)
!3342 = !DILocalVariable(name: "n_authors", scope: !3326, file: !181, line: 200, type: !35)
!3343 = !DILocalVariable(name: "authtab", scope: !3326, file: !181, line: 201, type: !3344)
!3344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 640, elements: !129)
!3345 = !DILocation(line: 196, column: 23, scope: !3326)
!3346 = !DILocation(line: 197, column: 29, scope: !3326)
!3347 = !DILocation(line: 197, column: 55, scope: !3326)
!3348 = !DILocation(line: 198, column: 29, scope: !3326)
!3349 = !DILocation(line: 198, column: 46, scope: !3326)
!3350 = !DILocation(line: 201, column: 3, scope: !3326)
!3351 = !DILocation(line: 201, column: 15, scope: !3326)
!3352 = !DILocation(line: 200, column: 10, scope: !3326)
!3353 = !DILocation(line: 205, column: 35, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !181, line: 203, column: 3)
!3355 = distinct !DILexicalBlock(scope: !3326, file: !181, line: 203, column: 3)
!3356 = !DILocation(line: 205, column: 14, scope: !3354)
!3357 = !DILocation(line: 205, column: 33, scope: !3354)
!3358 = !DILocation(line: 205, column: 67, scope: !3354)
!3359 = !DILocation(line: 203, column: 3, scope: !3355)
!3360 = !DILocation(line: 0, scope: !3354)
!3361 = !DILocation(line: 208, column: 3, scope: !3326)
!3362 = !DILocation(line: 210, column: 1, scope: !3326)
!3363 = distinct !DISubprogram(name: "version_etc", scope: !181, file: !181, line: 227, type: !3364, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3220, !53, !53, !53, null}
!3366 = !{!3367, !3368, !3369, !3370, !3371}
!3367 = !DILocalVariable(name: "stream", arg: 1, scope: !3363, file: !181, line: 227, type: !3220)
!3368 = !DILocalVariable(name: "command_name", arg: 2, scope: !3363, file: !181, line: 228, type: !53)
!3369 = !DILocalVariable(name: "package", arg: 3, scope: !3363, file: !181, line: 228, type: !53)
!3370 = !DILocalVariable(name: "version", arg: 4, scope: !3363, file: !181, line: 229, type: !53)
!3371 = !DILocalVariable(name: "authors", scope: !3363, file: !181, line: 231, type: !3372)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1370, line: 52, baseType: !3373)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3374, line: 48, baseType: !3375)
!3374 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !178, line: 231, baseType: !3376)
!3376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3330, size: 192, elements: !855)
!3377 = !DILocation(line: 227, column: 20, scope: !3363)
!3378 = !DILocation(line: 228, column: 26, scope: !3363)
!3379 = !DILocation(line: 228, column: 52, scope: !3363)
!3380 = !DILocation(line: 229, column: 26, scope: !3363)
!3381 = !DILocation(line: 231, column: 3, scope: !3363)
!3382 = !DILocation(line: 231, column: 11, scope: !3363)
!3383 = !DILocation(line: 233, column: 3, scope: !3363)
!3384 = !DILocation(line: 234, column: 3, scope: !3363)
!3385 = !DILocation(line: 235, column: 3, scope: !3363)
!3386 = !DILocation(line: 236, column: 1, scope: !3363)
!3387 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !181, file: !181, line: 239, type: !655, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !72)
!3388 = !DILocation(line: 245, column: 3, scope: !3387)
!3389 = !DILocation(line: 251, column: 3, scope: !3387)
!3390 = !DILocation(line: 256, column: 3, scope: !3387)
!3391 = !DILocation(line: 258, column: 1, scope: !3387)
!3392 = distinct !DISubprogram(name: "xnmalloc", scope: !189, file: !189, line: 99, type: !1074, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3393)
!3393 = !{!3394, !3395}
!3394 = !DILocalVariable(name: "n", arg: 1, scope: !3392, file: !189, line: 99, type: !35)
!3395 = !DILocalVariable(name: "s", arg: 2, scope: !3392, file: !189, line: 99, type: !35)
!3396 = !DILocation(line: 99, column: 18, scope: !3392)
!3397 = !DILocation(line: 99, column: 28, scope: !3392)
!3398 = !DILocation(line: 101, column: 7, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3392, file: !189, line: 101, column: 7)
!3400 = !DILocation(line: 101, column: 7, scope: !3392)
!3401 = !DILocation(line: 102, column: 5, scope: !3399)
!3402 = !DILocation(line: 103, column: 21, scope: !3392)
!3403 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !3405, line: 39, type: !35)
!3404 = distinct !DISubprogram(name: "xmalloc", scope: !3405, file: !3405, line: 39, type: !3406, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3408)
!3405 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!32, !35}
!3408 = !{!3403, !3409}
!3409 = !DILocalVariable(name: "p", scope: !3404, file: !3405, line: 41, type: !32)
!3410 = !DILocation(line: 39, column: 17, scope: !3404, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 103, column: 10, scope: !3392)
!3412 = !DILocation(line: 41, column: 13, scope: !3404, inlinedAt: !3411)
!3413 = !DILocation(line: 41, column: 9, scope: !3404, inlinedAt: !3411)
!3414 = !DILocation(line: 42, column: 8, scope: !3415, inlinedAt: !3411)
!3415 = distinct !DILexicalBlock(scope: !3404, file: !3405, line: 42, column: 7)
!3416 = !DILocation(line: 42, column: 15, scope: !3415, inlinedAt: !3411)
!3417 = !DILocation(line: 42, column: 10, scope: !3415, inlinedAt: !3411)
!3418 = !DILocation(line: 43, column: 5, scope: !3415, inlinedAt: !3411)
!3419 = !DILocation(line: 103, column: 3, scope: !3392)
!3420 = !DILocation(line: 39, column: 17, scope: !3404)
!3421 = !DILocation(line: 41, column: 13, scope: !3404)
!3422 = !DILocation(line: 41, column: 9, scope: !3404)
!3423 = !DILocation(line: 42, column: 8, scope: !3415)
!3424 = !DILocation(line: 42, column: 15, scope: !3415)
!3425 = !DILocation(line: 42, column: 10, scope: !3415)
!3426 = !DILocation(line: 43, column: 5, scope: !3415)
!3427 = !DILocation(line: 44, column: 3, scope: !3404)
!3428 = distinct !DISubprogram(name: "xnrealloc", scope: !189, file: !189, line: 112, type: !3429, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!32, !32, !35, !35}
!3431 = !{!3432, !3433, !3434}
!3432 = !DILocalVariable(name: "p", arg: 1, scope: !3428, file: !189, line: 112, type: !32)
!3433 = !DILocalVariable(name: "n", arg: 2, scope: !3428, file: !189, line: 112, type: !35)
!3434 = !DILocalVariable(name: "s", arg: 3, scope: !3428, file: !189, line: 112, type: !35)
!3435 = !DILocation(line: 112, column: 18, scope: !3428)
!3436 = !DILocation(line: 112, column: 28, scope: !3428)
!3437 = !DILocation(line: 112, column: 38, scope: !3428)
!3438 = !DILocation(line: 114, column: 7, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3428, file: !189, line: 114, column: 7)
!3440 = !DILocation(line: 114, column: 7, scope: !3428)
!3441 = !DILocation(line: 115, column: 5, scope: !3439)
!3442 = !DILocation(line: 116, column: 25, scope: !3428)
!3443 = !DILocalVariable(name: "p", arg: 1, scope: !3444, file: !3405, line: 51, type: !32)
!3444 = distinct !DISubprogram(name: "xrealloc", scope: !3405, file: !3405, line: 51, type: !3445, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!32, !32, !35}
!3447 = !{!3443, !3448}
!3448 = !DILocalVariable(name: "n", arg: 2, scope: !3444, file: !3405, line: 51, type: !35)
!3449 = !DILocation(line: 51, column: 17, scope: !3444, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 116, column: 10, scope: !3428)
!3451 = !DILocation(line: 51, column: 27, scope: !3444, inlinedAt: !3450)
!3452 = !DILocation(line: 53, column: 8, scope: !3453, inlinedAt: !3450)
!3453 = distinct !DILexicalBlock(scope: !3444, file: !3405, line: 53, column: 7)
!3454 = !DILocation(line: 53, column: 13, scope: !3453, inlinedAt: !3450)
!3455 = !DILocation(line: 53, column: 10, scope: !3453, inlinedAt: !3450)
!3456 = !DILocation(line: 57, column: 7, scope: !3457, inlinedAt: !3450)
!3457 = distinct !DILexicalBlock(scope: !3453, file: !3405, line: 54, column: 5)
!3458 = !DILocation(line: 58, column: 7, scope: !3457, inlinedAt: !3450)
!3459 = !DILocation(line: 61, column: 7, scope: !3444, inlinedAt: !3450)
!3460 = !DILocation(line: 62, column: 8, scope: !3461, inlinedAt: !3450)
!3461 = distinct !DILexicalBlock(scope: !3444, file: !3405, line: 62, column: 7)
!3462 = !DILocation(line: 62, column: 13, scope: !3461, inlinedAt: !3450)
!3463 = !DILocation(line: 62, column: 10, scope: !3461, inlinedAt: !3450)
!3464 = !DILocation(line: 63, column: 5, scope: !3461, inlinedAt: !3450)
!3465 = !DILocation(line: 0, scope: !3444, inlinedAt: !3450)
!3466 = !DILocation(line: 116, column: 3, scope: !3428)
!3467 = !DILocation(line: 51, column: 17, scope: !3444)
!3468 = !DILocation(line: 51, column: 27, scope: !3444)
!3469 = !DILocation(line: 53, column: 8, scope: !3453)
!3470 = !DILocation(line: 53, column: 13, scope: !3453)
!3471 = !DILocation(line: 53, column: 10, scope: !3453)
!3472 = !DILocation(line: 57, column: 7, scope: !3457)
!3473 = !DILocation(line: 58, column: 7, scope: !3457)
!3474 = !DILocation(line: 61, column: 7, scope: !3444)
!3475 = !DILocation(line: 62, column: 8, scope: !3461)
!3476 = !DILocation(line: 62, column: 13, scope: !3461)
!3477 = !DILocation(line: 62, column: 10, scope: !3461)
!3478 = !DILocation(line: 63, column: 5, scope: !3461)
!3479 = !DILocation(line: 0, scope: !3444)
!3480 = !DILocation(line: 65, column: 1, scope: !3444)
!3481 = !DILocation(line: 174, column: 19, scope: !190)
!3482 = !DILocation(line: 174, column: 30, scope: !190)
!3483 = !DILocation(line: 174, column: 41, scope: !190)
!3484 = !DILocation(line: 176, column: 14, scope: !190)
!3485 = !DILocation(line: 176, column: 10, scope: !190)
!3486 = !DILocation(line: 178, column: 9, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !190, file: !189, line: 178, column: 7)
!3488 = !DILocation(line: 178, column: 7, scope: !190)
!3489 = !DILocation(line: 180, column: 13, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !189, line: 180, column: 11)
!3491 = distinct !DILexicalBlock(scope: !3487, file: !189, line: 179, column: 5)
!3492 = !DILocation(line: 180, column: 11, scope: !3491)
!3493 = !DILocation(line: 188, column: 30, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3490, file: !189, line: 181, column: 9)
!3495 = !DILocation(line: 189, column: 16, scope: !3494)
!3496 = !DILocation(line: 189, column: 13, scope: !3494)
!3497 = !DILocation(line: 190, column: 9, scope: !3494)
!3498 = !DILocation(line: 0, scope: !3494)
!3499 = !DILocation(line: 191, column: 11, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3491, file: !189, line: 191, column: 11)
!3501 = !DILocation(line: 191, column: 11, scope: !3491)
!3502 = !DILocation(line: 206, column: 7, scope: !190)
!3503 = !DILocation(line: 207, column: 25, scope: !190)
!3504 = !DILocation(line: 51, column: 17, scope: !3444, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 207, column: 10, scope: !190)
!3506 = !DILocation(line: 51, column: 27, scope: !3444, inlinedAt: !3505)
!3507 = !DILocation(line: 53, column: 10, scope: !3453, inlinedAt: !3505)
!3508 = !DILocation(line: 192, column: 9, scope: !3500)
!3509 = !DILocation(line: 200, column: 69, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !189, line: 200, column: 11)
!3511 = distinct !DILexicalBlock(scope: !3487, file: !189, line: 195, column: 5)
!3512 = !DILocation(line: 201, column: 11, scope: !3510)
!3513 = !DILocation(line: 200, column: 11, scope: !3511)
!3514 = !DILocation(line: 202, column: 9, scope: !3510)
!3515 = !DILocation(line: 203, column: 14, scope: !3511)
!3516 = !DILocation(line: 203, column: 18, scope: !3511)
!3517 = !DILocation(line: 203, column: 9, scope: !3511)
!3518 = !DILocation(line: 53, column: 8, scope: !3453, inlinedAt: !3505)
!3519 = !DILocation(line: 57, column: 7, scope: !3457, inlinedAt: !3505)
!3520 = !DILocation(line: 58, column: 7, scope: !3457, inlinedAt: !3505)
!3521 = !DILocation(line: 61, column: 7, scope: !3444, inlinedAt: !3505)
!3522 = !DILocation(line: 62, column: 8, scope: !3461, inlinedAt: !3505)
!3523 = !DILocation(line: 62, column: 13, scope: !3461, inlinedAt: !3505)
!3524 = !DILocation(line: 62, column: 10, scope: !3461, inlinedAt: !3505)
!3525 = !DILocation(line: 63, column: 5, scope: !3461, inlinedAt: !3505)
!3526 = !DILocation(line: 0, scope: !3444, inlinedAt: !3505)
!3527 = !DILocation(line: 207, column: 3, scope: !190)
!3528 = distinct !DISubprogram(name: "xcharalloc", scope: !189, file: !189, line: 216, type: !2502, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3529)
!3529 = !{!3530}
!3530 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !189, line: 216, type: !35)
!3531 = !DILocation(line: 216, column: 20, scope: !3528)
!3532 = !DILocation(line: 39, column: 17, scope: !3404, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 218, column: 10, scope: !3528)
!3534 = !DILocation(line: 41, column: 13, scope: !3404, inlinedAt: !3533)
!3535 = !DILocation(line: 41, column: 9, scope: !3404, inlinedAt: !3533)
!3536 = !DILocation(line: 42, column: 8, scope: !3415, inlinedAt: !3533)
!3537 = !DILocation(line: 42, column: 15, scope: !3415, inlinedAt: !3533)
!3538 = !DILocation(line: 42, column: 10, scope: !3415, inlinedAt: !3533)
!3539 = !DILocation(line: 43, column: 5, scope: !3415, inlinedAt: !3533)
!3540 = !DILocation(line: 218, column: 3, scope: !3528)
!3541 = distinct !DISubprogram(name: "x2realloc", scope: !3405, file: !3405, line: 74, type: !3542, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3544)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!32, !32, !193}
!3544 = !{!3545, !3546}
!3545 = !DILocalVariable(name: "p", arg: 1, scope: !3541, file: !3405, line: 74, type: !32)
!3546 = !DILocalVariable(name: "pn", arg: 2, scope: !3541, file: !3405, line: 74, type: !193)
!3547 = !DILocation(line: 74, column: 18, scope: !3541)
!3548 = !DILocation(line: 74, column: 29, scope: !3541)
!3549 = !DILocation(line: 174, column: 19, scope: !190, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 76, column: 10, scope: !3541)
!3551 = !DILocation(line: 174, column: 30, scope: !190, inlinedAt: !3550)
!3552 = !DILocation(line: 174, column: 41, scope: !190, inlinedAt: !3550)
!3553 = !DILocation(line: 176, column: 14, scope: !190, inlinedAt: !3550)
!3554 = !DILocation(line: 176, column: 10, scope: !190, inlinedAt: !3550)
!3555 = !DILocation(line: 178, column: 9, scope: !3487, inlinedAt: !3550)
!3556 = !DILocation(line: 178, column: 7, scope: !190, inlinedAt: !3550)
!3557 = !DILocation(line: 180, column: 13, scope: !3490, inlinedAt: !3550)
!3558 = !DILocation(line: 180, column: 11, scope: !3491, inlinedAt: !3550)
!3559 = !DILocation(line: 191, column: 11, scope: !3500, inlinedAt: !3550)
!3560 = !DILocation(line: 191, column: 11, scope: !3491, inlinedAt: !3550)
!3561 = !DILocation(line: 206, column: 7, scope: !190, inlinedAt: !3550)
!3562 = !DILocation(line: 51, column: 17, scope: !3444, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 207, column: 10, scope: !190, inlinedAt: !3550)
!3564 = !DILocation(line: 51, column: 27, scope: !3444, inlinedAt: !3563)
!3565 = !DILocation(line: 53, column: 10, scope: !3453, inlinedAt: !3563)
!3566 = !DILocation(line: 192, column: 9, scope: !3500, inlinedAt: !3550)
!3567 = !DILocation(line: 201, column: 11, scope: !3510, inlinedAt: !3550)
!3568 = !DILocation(line: 200, column: 11, scope: !3511, inlinedAt: !3550)
!3569 = !DILocation(line: 202, column: 9, scope: !3510, inlinedAt: !3550)
!3570 = !DILocation(line: 203, column: 14, scope: !3511, inlinedAt: !3550)
!3571 = !DILocation(line: 203, column: 18, scope: !3511, inlinedAt: !3550)
!3572 = !DILocation(line: 203, column: 9, scope: !3511, inlinedAt: !3550)
!3573 = !DILocation(line: 53, column: 8, scope: !3453, inlinedAt: !3563)
!3574 = !DILocation(line: 57, column: 7, scope: !3457, inlinedAt: !3563)
!3575 = !DILocation(line: 58, column: 7, scope: !3457, inlinedAt: !3563)
!3576 = !DILocation(line: 61, column: 7, scope: !3444, inlinedAt: !3563)
!3577 = !DILocation(line: 62, column: 8, scope: !3461, inlinedAt: !3563)
!3578 = !DILocation(line: 62, column: 13, scope: !3461, inlinedAt: !3563)
!3579 = !DILocation(line: 62, column: 10, scope: !3461, inlinedAt: !3563)
!3580 = !DILocation(line: 63, column: 5, scope: !3461, inlinedAt: !3563)
!3581 = !DILocation(line: 0, scope: !3444, inlinedAt: !3563)
!3582 = !DILocation(line: 76, column: 3, scope: !3541)
!3583 = distinct !DISubprogram(name: "xzalloc", scope: !3405, file: !3405, line: 84, type: !3406, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3584)
!3584 = !{!3585}
!3585 = !DILocalVariable(name: "s", arg: 1, scope: !3583, file: !3405, line: 84, type: !35)
!3586 = !DILocation(line: 84, column: 17, scope: !3583)
!3587 = !DILocation(line: 39, column: 17, scope: !3404, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 86, column: 18, scope: !3583)
!3589 = !DILocation(line: 41, column: 13, scope: !3404, inlinedAt: !3588)
!3590 = !DILocation(line: 41, column: 9, scope: !3404, inlinedAt: !3588)
!3591 = !DILocation(line: 42, column: 8, scope: !3415, inlinedAt: !3588)
!3592 = !DILocation(line: 42, column: 15, scope: !3415, inlinedAt: !3588)
!3593 = !DILocation(line: 42, column: 10, scope: !3415, inlinedAt: !3588)
!3594 = !DILocation(line: 43, column: 5, scope: !3415, inlinedAt: !3588)
!3595 = !DILocation(line: 86, column: 10, scope: !3583)
!3596 = !DILocation(line: 86, column: 3, scope: !3583)
!3597 = distinct !DISubprogram(name: "xcalloc", scope: !3405, file: !3405, line: 93, type: !1074, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3598)
!3598 = !{!3599, !3600, !3601}
!3599 = !DILocalVariable(name: "n", arg: 1, scope: !3597, file: !3405, line: 93, type: !35)
!3600 = !DILocalVariable(name: "s", arg: 2, scope: !3597, file: !3405, line: 93, type: !35)
!3601 = !DILocalVariable(name: "p", scope: !3597, file: !3405, line: 95, type: !32)
!3602 = !DILocation(line: 93, column: 17, scope: !3597)
!3603 = !DILocation(line: 93, column: 27, scope: !3597)
!3604 = !DILocation(line: 100, column: 7, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3597, file: !3405, line: 100, column: 7)
!3606 = !DILocation(line: 101, column: 7, scope: !3605)
!3607 = !DILocation(line: 101, column: 18, scope: !3605)
!3608 = !DILocation(line: 95, column: 9, scope: !3597)
!3609 = !DILocation(line: 101, column: 16, scope: !3605)
!3610 = !DILocation(line: 100, column: 7, scope: !3597)
!3611 = !DILocation(line: 102, column: 5, scope: !3605)
!3612 = !DILocation(line: 103, column: 3, scope: !3597)
!3613 = distinct !DISubprogram(name: "xmemdup", scope: !3405, file: !3405, line: 111, type: !3614, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3618)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!32, !3616, !35}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3618 = !{!3619, !3620}
!3619 = !DILocalVariable(name: "p", arg: 1, scope: !3613, file: !3405, line: 111, type: !3616)
!3620 = !DILocalVariable(name: "s", arg: 2, scope: !3613, file: !3405, line: 111, type: !35)
!3621 = !DILocation(line: 111, column: 22, scope: !3613)
!3622 = !DILocation(line: 111, column: 32, scope: !3613)
!3623 = !DILocation(line: 39, column: 17, scope: !3404, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 113, column: 18, scope: !3613)
!3625 = !DILocation(line: 41, column: 13, scope: !3404, inlinedAt: !3624)
!3626 = !DILocation(line: 41, column: 9, scope: !3404, inlinedAt: !3624)
!3627 = !DILocation(line: 42, column: 8, scope: !3415, inlinedAt: !3624)
!3628 = !DILocation(line: 42, column: 15, scope: !3415, inlinedAt: !3624)
!3629 = !DILocation(line: 42, column: 10, scope: !3415, inlinedAt: !3624)
!3630 = !DILocation(line: 43, column: 5, scope: !3415, inlinedAt: !3624)
!3631 = !DILocation(line: 113, column: 10, scope: !3613)
!3632 = !DILocation(line: 113, column: 3, scope: !3613)
!3633 = distinct !DISubprogram(name: "xstrdup", scope: !3405, file: !3405, line: 119, type: !2707, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3634)
!3634 = !{!3635}
!3635 = !DILocalVariable(name: "string", arg: 1, scope: !3633, file: !3405, line: 119, type: !53)
!3636 = !DILocation(line: 119, column: 22, scope: !3633)
!3637 = !DILocation(line: 121, column: 27, scope: !3633)
!3638 = !DILocation(line: 121, column: 43, scope: !3633)
!3639 = !DILocation(line: 111, column: 22, scope: !3613, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 121, column: 10, scope: !3633)
!3641 = !DILocation(line: 111, column: 32, scope: !3613, inlinedAt: !3640)
!3642 = !DILocation(line: 39, column: 17, scope: !3404, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 113, column: 18, scope: !3613, inlinedAt: !3640)
!3644 = !DILocation(line: 41, column: 13, scope: !3404, inlinedAt: !3643)
!3645 = !DILocation(line: 41, column: 9, scope: !3404, inlinedAt: !3643)
!3646 = !DILocation(line: 42, column: 8, scope: !3415, inlinedAt: !3643)
!3647 = !DILocation(line: 42, column: 15, scope: !3415, inlinedAt: !3643)
!3648 = !DILocation(line: 42, column: 10, scope: !3415, inlinedAt: !3643)
!3649 = !DILocation(line: 43, column: 5, scope: !3415, inlinedAt: !3643)
!3650 = !DILocation(line: 113, column: 10, scope: !3613, inlinedAt: !3640)
!3651 = !DILocation(line: 121, column: 3, scope: !3633)
!3652 = distinct !DISubprogram(name: "xalloc_die", scope: !3653, file: !3653, line: 32, type: !655, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !202, retainedNodes: !72)
!3653 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3654 = !DILocation(line: 34, column: 10, scope: !3652)
!3655 = !DILocation(line: 34, column: 33, scope: !3652)
!3656 = !DILocation(line: 34, column: 3, scope: !3652)
!3657 = !DILocation(line: 40, column: 3, scope: !3652)
!3658 = distinct !DISubprogram(name: "rpl_calloc", scope: !3659, file: !3659, line: 42, type: !1074, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !204, retainedNodes: !3660)
!3659 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3660 = !{!3661, !3662, !3663, !3664}
!3661 = !DILocalVariable(name: "n", arg: 1, scope: !3658, file: !3659, line: 42, type: !35)
!3662 = !DILocalVariable(name: "s", arg: 2, scope: !3658, file: !3659, line: 42, type: !35)
!3663 = !DILocalVariable(name: "result", scope: !3658, file: !3659, line: 44, type: !32)
!3664 = !DILocalVariable(name: "bytes", scope: !3665, file: !3659, line: 56, type: !35)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !3659, line: 53, column: 5)
!3666 = distinct !DILexicalBlock(scope: !3658, file: !3659, line: 47, column: 7)
!3667 = !DILocation(line: 42, column: 20, scope: !3658)
!3668 = !DILocation(line: 42, column: 30, scope: !3658)
!3669 = !DILocation(line: 47, column: 9, scope: !3666)
!3670 = !DILocation(line: 47, column: 19, scope: !3666)
!3671 = !DILocation(line: 47, column: 14, scope: !3666)
!3672 = !DILocation(line: 56, column: 24, scope: !3665)
!3673 = !DILocation(line: 56, column: 14, scope: !3665)
!3674 = !DILocation(line: 57, column: 17, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3665, file: !3659, line: 57, column: 11)
!3676 = !DILocation(line: 57, column: 21, scope: !3675)
!3677 = !DILocation(line: 57, column: 11, scope: !3665)
!3678 = !DILocation(line: 59, column: 11, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3675, file: !3659, line: 58, column: 9)
!3680 = !DILocation(line: 59, column: 17, scope: !3679)
!3681 = !DILocation(line: 65, column: 12, scope: !3658)
!3682 = !DILocation(line: 44, column: 9, scope: !3658)
!3683 = !DILocation(line: 72, column: 3, scope: !3658)
!3684 = !DILocation(line: 0, scope: !3679)
!3685 = !DILocation(line: 73, column: 1, scope: !3658)
!3686 = distinct !DISubprogram(name: "rpl_fclose", scope: !3687, file: !3687, line: 58, type: !3688, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !206, retainedNodes: !3724)
!3687 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!56, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !823, line: 7, baseType: !3692)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !825, line: 49, size: 1728, elements: !3693)
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3692, file: !825, line: 51, baseType: !56, size: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3692, file: !825, line: 54, baseType: !30, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3692, file: !825, line: 55, baseType: !30, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3692, file: !825, line: 56, baseType: !30, size: 64, offset: 192)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3692, file: !825, line: 57, baseType: !30, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3692, file: !825, line: 58, baseType: !30, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3692, file: !825, line: 59, baseType: !30, size: 64, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3692, file: !825, line: 60, baseType: !30, size: 64, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3692, file: !825, line: 61, baseType: !30, size: 64, offset: 512)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3692, file: !825, line: 64, baseType: !30, size: 64, offset: 576)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3692, file: !825, line: 65, baseType: !30, size: 64, offset: 640)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3692, file: !825, line: 66, baseType: !30, size: 64, offset: 704)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3692, file: !825, line: 68, baseType: !840, size: 64, offset: 768)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3692, file: !825, line: 70, baseType: !3708, size: 64, offset: 832)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3692, file: !825, line: 72, baseType: !56, size: 32, offset: 896)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3692, file: !825, line: 73, baseType: !56, size: 32, offset: 928)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3692, file: !825, line: 74, baseType: !847, size: 64, offset: 960)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3692, file: !825, line: 77, baseType: !122, size: 16, offset: 1024)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3692, file: !825, line: 78, baseType: !852, size: 8, offset: 1040)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3692, file: !825, line: 79, baseType: !854, size: 8, offset: 1048)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3692, file: !825, line: 81, baseType: !858, size: 64, offset: 1088)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3692, file: !825, line: 89, baseType: !861, size: 64, offset: 1152)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3692, file: !825, line: 91, baseType: !863, size: 64, offset: 1216)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3692, file: !825, line: 92, baseType: !866, size: 64, offset: 1280)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3692, file: !825, line: 93, baseType: !3708, size: 64, offset: 1344)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3692, file: !825, line: 94, baseType: !32, size: 64, offset: 1408)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3692, file: !825, line: 95, baseType: !35, size: 64, offset: 1472)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3692, file: !825, line: 96, baseType: !56, size: 32, offset: 1536)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3692, file: !825, line: 98, baseType: !873, size: 160, offset: 1568)
!3724 = !{!3725, !3726, !3727, !3728}
!3725 = !DILocalVariable(name: "fp", arg: 1, scope: !3686, file: !3687, line: 58, type: !3690)
!3726 = !DILocalVariable(name: "saved_errno", scope: !3686, file: !3687, line: 60, type: !56)
!3727 = !DILocalVariable(name: "fd", scope: !3686, file: !3687, line: 61, type: !56)
!3728 = !DILocalVariable(name: "result", scope: !3686, file: !3687, line: 62, type: !56)
!3729 = !DILocation(line: 58, column: 19, scope: !3686)
!3730 = !DILocation(line: 60, column: 7, scope: !3686)
!3731 = !DILocation(line: 62, column: 7, scope: !3686)
!3732 = !DILocation(line: 65, column: 8, scope: !3686)
!3733 = !DILocation(line: 61, column: 7, scope: !3686)
!3734 = !DILocation(line: 66, column: 10, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 66, column: 7)
!3736 = !DILocation(line: 66, column: 7, scope: !3686)
!3737 = !DILocation(line: 67, column: 12, scope: !3735)
!3738 = !DILocation(line: 67, column: 5, scope: !3735)
!3739 = !DILocation(line: 72, column: 9, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 72, column: 7)
!3741 = !DILocation(line: 72, column: 23, scope: !3740)
!3742 = !DILocation(line: 72, column: 33, scope: !3740)
!3743 = !DILocation(line: 72, column: 26, scope: !3740)
!3744 = !DILocation(line: 72, column: 59, scope: !3740)
!3745 = !DILocation(line: 73, column: 7, scope: !3740)
!3746 = !DILocation(line: 73, column: 10, scope: !3740)
!3747 = !DILocation(line: 72, column: 7, scope: !3686)
!3748 = !DILocation(line: 100, column: 12, scope: !3686)
!3749 = !DILocation(line: 105, column: 7, scope: !3686)
!3750 = !DILocation(line: 74, column: 19, scope: !3740)
!3751 = !DILocation(line: 105, column: 19, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 105, column: 7)
!3753 = !DILocation(line: 107, column: 13, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3752, file: !3687, line: 106, column: 5)
!3755 = !DILocation(line: 109, column: 5, scope: !3754)
!3756 = !DILocation(line: 0, scope: !3686)
!3757 = !DILocation(line: 112, column: 1, scope: !3686)
!3758 = distinct !DISubprogram(name: "rpl_fflush", scope: !3759, file: !3759, line: 129, type: !3760, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3796)
!3759 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!56, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !823, line: 7, baseType: !3764)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !825, line: 49, size: 1728, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3764, file: !825, line: 51, baseType: !56, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3764, file: !825, line: 54, baseType: !30, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3764, file: !825, line: 55, baseType: !30, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3764, file: !825, line: 56, baseType: !30, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3764, file: !825, line: 57, baseType: !30, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3764, file: !825, line: 58, baseType: !30, size: 64, offset: 320)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3764, file: !825, line: 59, baseType: !30, size: 64, offset: 384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3764, file: !825, line: 60, baseType: !30, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3764, file: !825, line: 61, baseType: !30, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3764, file: !825, line: 64, baseType: !30, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3764, file: !825, line: 65, baseType: !30, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3764, file: !825, line: 66, baseType: !30, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3764, file: !825, line: 68, baseType: !840, size: 64, offset: 768)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3764, file: !825, line: 70, baseType: !3780, size: 64, offset: 832)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3764, file: !825, line: 72, baseType: !56, size: 32, offset: 896)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3764, file: !825, line: 73, baseType: !56, size: 32, offset: 928)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3764, file: !825, line: 74, baseType: !847, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3764, file: !825, line: 77, baseType: !122, size: 16, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3764, file: !825, line: 78, baseType: !852, size: 8, offset: 1040)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3764, file: !825, line: 79, baseType: !854, size: 8, offset: 1048)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3764, file: !825, line: 81, baseType: !858, size: 64, offset: 1088)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3764, file: !825, line: 89, baseType: !861, size: 64, offset: 1152)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3764, file: !825, line: 91, baseType: !863, size: 64, offset: 1216)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3764, file: !825, line: 92, baseType: !866, size: 64, offset: 1280)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3764, file: !825, line: 93, baseType: !3780, size: 64, offset: 1344)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3764, file: !825, line: 94, baseType: !32, size: 64, offset: 1408)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3764, file: !825, line: 95, baseType: !35, size: 64, offset: 1472)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3764, file: !825, line: 96, baseType: !56, size: 32, offset: 1536)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3764, file: !825, line: 98, baseType: !873, size: 160, offset: 1568)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "stream", arg: 1, scope: !3758, file: !3759, line: 129, type: !3762)
!3798 = !DILocation(line: 129, column: 19, scope: !3758)
!3799 = !DILocation(line: 150, column: 14, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3758, file: !3759, line: 150, column: 7)
!3801 = !DILocation(line: 150, column: 22, scope: !3800)
!3802 = !DILocation(line: 150, column: 27, scope: !3800)
!3803 = !DILocation(line: 150, column: 7, scope: !3758)
!3804 = !DILocation(line: 151, column: 12, scope: !3800)
!3805 = !DILocation(line: 151, column: 5, scope: !3800)
!3806 = !DILocalVariable(name: "fp", arg: 1, scope: !3807, file: !3759, line: 41, type: !3762)
!3807 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3759, file: !3759, line: 41, type: !3808, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !208, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3762}
!3810 = !{!3806}
!3811 = !DILocation(line: 41, column: 48, scope: !3807, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 156, column: 3, scope: !3758)
!3813 = !DILocation(line: 43, column: 11, scope: !3814, inlinedAt: !3812)
!3814 = distinct !DILexicalBlock(scope: !3807, file: !3759, line: 43, column: 7)
!3815 = !DILocation(line: 43, column: 18, scope: !3814, inlinedAt: !3812)
!3816 = !DILocation(line: 43, column: 7, scope: !3807, inlinedAt: !3812)
!3817 = !DILocation(line: 45, column: 5, scope: !3814, inlinedAt: !3812)
!3818 = !DILocation(line: 158, column: 10, scope: !3758)
!3819 = !DILocation(line: 158, column: 3, scope: !3758)
!3820 = !DILocation(line: 0, scope: !3758)
!3821 = !DILocation(line: 232, column: 1, scope: !3758)
!3822 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3823, file: !3823, line: 28, type: !3824, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !210, retainedNodes: !3860)
!3823 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!56, !3826, !1369, !56}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !823, line: 7, baseType: !3828)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !825, line: 49, size: 1728, elements: !3829)
!3829 = !{!3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3828, file: !825, line: 51, baseType: !56, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3828, file: !825, line: 54, baseType: !30, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3828, file: !825, line: 55, baseType: !30, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3828, file: !825, line: 56, baseType: !30, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3828, file: !825, line: 57, baseType: !30, size: 64, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3828, file: !825, line: 58, baseType: !30, size: 64, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3828, file: !825, line: 59, baseType: !30, size: 64, offset: 384)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3828, file: !825, line: 60, baseType: !30, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3828, file: !825, line: 61, baseType: !30, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3828, file: !825, line: 64, baseType: !30, size: 64, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3828, file: !825, line: 65, baseType: !30, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3828, file: !825, line: 66, baseType: !30, size: 64, offset: 704)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3828, file: !825, line: 68, baseType: !840, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3828, file: !825, line: 70, baseType: !3844, size: 64, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3828, file: !825, line: 72, baseType: !56, size: 32, offset: 896)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3828, file: !825, line: 73, baseType: !56, size: 32, offset: 928)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3828, file: !825, line: 74, baseType: !847, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3828, file: !825, line: 77, baseType: !122, size: 16, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3828, file: !825, line: 78, baseType: !852, size: 8, offset: 1040)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3828, file: !825, line: 79, baseType: !854, size: 8, offset: 1048)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3828, file: !825, line: 81, baseType: !858, size: 64, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3828, file: !825, line: 89, baseType: !861, size: 64, offset: 1152)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3828, file: !825, line: 91, baseType: !863, size: 64, offset: 1216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3828, file: !825, line: 92, baseType: !866, size: 64, offset: 1280)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3828, file: !825, line: 93, baseType: !3844, size: 64, offset: 1344)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3828, file: !825, line: 94, baseType: !32, size: 64, offset: 1408)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3828, file: !825, line: 95, baseType: !35, size: 64, offset: 1472)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3828, file: !825, line: 96, baseType: !56, size: 32, offset: 1536)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3828, file: !825, line: 98, baseType: !873, size: 160, offset: 1568)
!3860 = !{!3861, !3862, !3863, !3864}
!3861 = !DILocalVariable(name: "fp", arg: 1, scope: !3822, file: !3823, line: 28, type: !3826)
!3862 = !DILocalVariable(name: "offset", arg: 2, scope: !3822, file: !3823, line: 28, type: !1369)
!3863 = !DILocalVariable(name: "whence", arg: 3, scope: !3822, file: !3823, line: 28, type: !56)
!3864 = !DILocalVariable(name: "pos", scope: !3865, file: !3823, line: 117, type: !1369)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !3823, line: 113, column: 5)
!3866 = distinct !DILexicalBlock(scope: !3822, file: !3823, line: 52, column: 7)
!3867 = !DILocation(line: 28, column: 15, scope: !3822)
!3868 = !DILocation(line: 28, column: 25, scope: !3822)
!3869 = !DILocation(line: 28, column: 37, scope: !3822)
!3870 = !DILocation(line: 52, column: 11, scope: !3866)
!3871 = !DILocation(line: 52, column: 31, scope: !3866)
!3872 = !DILocation(line: 52, column: 24, scope: !3866)
!3873 = !DILocation(line: 53, column: 7, scope: !3866)
!3874 = !DILocation(line: 53, column: 14, scope: !3866)
!3875 = !DILocation(line: 53, column: 35, scope: !3866)
!3876 = !{!916, !648, i64 32}
!3877 = !DILocation(line: 53, column: 28, scope: !3866)
!3878 = !DILocation(line: 54, column: 7, scope: !3866)
!3879 = !DILocation(line: 54, column: 14, scope: !3866)
!3880 = !{!916, !648, i64 72}
!3881 = !DILocation(line: 54, column: 28, scope: !3866)
!3882 = !DILocation(line: 52, column: 7, scope: !3822)
!3883 = !DILocation(line: 117, column: 26, scope: !3865)
!3884 = !DILocation(line: 117, column: 19, scope: !3865)
!3885 = !DILocation(line: 117, column: 13, scope: !3865)
!3886 = !DILocation(line: 118, column: 15, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3865, file: !3823, line: 118, column: 11)
!3888 = !DILocation(line: 118, column: 11, scope: !3865)
!3889 = !DILocation(line: 129, column: 11, scope: !3865)
!3890 = !DILocation(line: 129, column: 18, scope: !3865)
!3891 = !DILocation(line: 130, column: 11, scope: !3865)
!3892 = !DILocation(line: 130, column: 19, scope: !3865)
!3893 = !{!916, !917, i64 144}
!3894 = !DILocation(line: 161, column: 7, scope: !3865)
!3895 = !DILocation(line: 163, column: 10, scope: !3822)
!3896 = !DILocation(line: 163, column: 3, scope: !3822)
!3897 = !DILocation(line: 0, scope: !3822)
!3898 = !DILocation(line: 164, column: 1, scope: !3822)
!3899 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3900, file: !3900, line: 385, type: !3901, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !212, retainedNodes: !3915)
!3900 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!35, !3903, !53, !35, !3904}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1666, line: 6, baseType: !3906)
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1668, line: 21, baseType: !3907)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1668, line: 13, size: 64, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3907, file: !1668, line: 15, baseType: !56, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3907, file: !1668, line: 20, baseType: !3911, size: 32, offset: 32)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3907, file: !1668, line: 16, size: 32, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3911, file: !1668, line: 18, baseType: !7, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3911, file: !1668, line: 19, baseType: !1677, size: 32)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3916 = !DILocalVariable(name: "pwc", arg: 1, scope: !3899, file: !3900, line: 385, type: !3903)
!3917 = !DILocalVariable(name: "s", arg: 2, scope: !3899, file: !3900, line: 385, type: !53)
!3918 = !DILocalVariable(name: "n", arg: 3, scope: !3899, file: !3900, line: 385, type: !35)
!3919 = !DILocalVariable(name: "ps", arg: 4, scope: !3899, file: !3900, line: 385, type: !3904)
!3920 = !DILocalVariable(name: "ret", scope: !3899, file: !3900, line: 387, type: !35)
!3921 = !DILocalVariable(name: "wc", scope: !3899, file: !3900, line: 388, type: !1682)
!3922 = !DILocalVariable(name: "uc", scope: !3923, file: !3900, line: 449, type: !34)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !3900, line: 448, column: 5)
!3924 = distinct !DILexicalBlock(scope: !3899, file: !3900, line: 447, column: 7)
!3925 = !DILocation(line: 385, column: 23, scope: !3899)
!3926 = !DILocation(line: 385, column: 40, scope: !3899)
!3927 = !DILocation(line: 385, column: 50, scope: !3899)
!3928 = !DILocation(line: 385, column: 64, scope: !3899)
!3929 = !DILocation(line: 388, column: 3, scope: !3899)
!3930 = !DILocation(line: 404, column: 9, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3899, file: !3900, line: 404, column: 7)
!3932 = !DILocation(line: 404, column: 7, scope: !3899)
!3933 = !DILocation(line: 439, column: 9, scope: !3899)
!3934 = !DILocation(line: 387, column: 10, scope: !3899)
!3935 = !DILocation(line: 447, column: 19, scope: !3924)
!3936 = !DILocation(line: 447, column: 31, scope: !3924)
!3937 = !DILocation(line: 447, column: 26, scope: !3924)
!3938 = !DILocation(line: 447, column: 41, scope: !3924)
!3939 = !DILocation(line: 447, column: 7, scope: !3899)
!3940 = !DILocation(line: 449, column: 26, scope: !3923)
!3941 = !DILocation(line: 449, column: 21, scope: !3923)
!3942 = !DILocation(line: 450, column: 14, scope: !3923)
!3943 = !DILocation(line: 450, column: 12, scope: !3923)
!3944 = !DILocation(line: 0, scope: !3923)
!3945 = !DILocation(line: 456, column: 1, scope: !3899)
!3946 = distinct !DISubprogram(name: "close_stream", scope: !3947, file: !3947, line: 56, type: !3948, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3984)
!3947 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!56, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !823, line: 7, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !825, line: 49, size: 1728, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3952, file: !825, line: 51, baseType: !56, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3952, file: !825, line: 54, baseType: !30, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3952, file: !825, line: 55, baseType: !30, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3952, file: !825, line: 56, baseType: !30, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3952, file: !825, line: 57, baseType: !30, size: 64, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3952, file: !825, line: 58, baseType: !30, size: 64, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3952, file: !825, line: 59, baseType: !30, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3952, file: !825, line: 60, baseType: !30, size: 64, offset: 448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3952, file: !825, line: 61, baseType: !30, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3952, file: !825, line: 64, baseType: !30, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3952, file: !825, line: 65, baseType: !30, size: 64, offset: 640)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3952, file: !825, line: 66, baseType: !30, size: 64, offset: 704)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3952, file: !825, line: 68, baseType: !840, size: 64, offset: 768)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3952, file: !825, line: 70, baseType: !3968, size: 64, offset: 832)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3952, file: !825, line: 72, baseType: !56, size: 32, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3952, file: !825, line: 73, baseType: !56, size: 32, offset: 928)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3952, file: !825, line: 74, baseType: !847, size: 64, offset: 960)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3952, file: !825, line: 77, baseType: !122, size: 16, offset: 1024)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3952, file: !825, line: 78, baseType: !852, size: 8, offset: 1040)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3952, file: !825, line: 79, baseType: !854, size: 8, offset: 1048)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3952, file: !825, line: 81, baseType: !858, size: 64, offset: 1088)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3952, file: !825, line: 89, baseType: !861, size: 64, offset: 1152)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3952, file: !825, line: 91, baseType: !863, size: 64, offset: 1216)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3952, file: !825, line: 92, baseType: !866, size: 64, offset: 1280)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3952, file: !825, line: 93, baseType: !3968, size: 64, offset: 1344)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3952, file: !825, line: 94, baseType: !32, size: 64, offset: 1408)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3952, file: !825, line: 95, baseType: !35, size: 64, offset: 1472)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3952, file: !825, line: 96, baseType: !56, size: 32, offset: 1536)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3952, file: !825, line: 98, baseType: !873, size: 160, offset: 1568)
!3984 = !{!3985, !3986, !3988, !3989}
!3985 = !DILocalVariable(name: "stream", arg: 1, scope: !3946, file: !3947, line: 56, type: !3950)
!3986 = !DILocalVariable(name: "some_pending", scope: !3946, file: !3947, line: 58, type: !3987)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!3988 = !DILocalVariable(name: "prev_fail", scope: !3946, file: !3947, line: 59, type: !3987)
!3989 = !DILocalVariable(name: "fclose_fail", scope: !3946, file: !3947, line: 60, type: !3987)
!3990 = !DILocation(line: 56, column: 21, scope: !3946)
!3991 = !DILocation(line: 58, column: 30, scope: !3946)
!3992 = !DILocalVariable(name: "__stream", arg: 1, scope: !3993, file: !908, line: 135, type: !3950)
!3993 = distinct !DISubprogram(name: "ferror_unlocked", scope: !908, file: !908, line: 135, type: !3948, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !215, retainedNodes: !3994)
!3994 = !{!3992}
!3995 = !DILocation(line: 135, column: 1, scope: !3993, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 59, column: 27, scope: !3946)
!3997 = !DILocation(line: 137, column: 10, scope: !3993, inlinedAt: !3996)
!3998 = !DILocation(line: 59, column: 43, scope: !3946)
!3999 = !DILocation(line: 60, column: 29, scope: !3946)
!4000 = !DILocation(line: 60, column: 45, scope: !3946)
!4001 = !DILocation(line: 70, column: 17, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3946, file: !3947, line: 70, column: 7)
!4003 = !DILocation(line: 58, column: 50, scope: !3946)
!4004 = !DILocation(line: 70, column: 33, scope: !4002)
!4005 = !DILocation(line: 70, column: 53, scope: !4002)
!4006 = !DILocation(line: 70, column: 59, scope: !4002)
!4007 = !DILocation(line: 70, column: 7, scope: !3946)
!4008 = !DILocation(line: 72, column: 11, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4002, file: !3947, line: 71, column: 5)
!4010 = !DILocation(line: 73, column: 9, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4009, file: !3947, line: 72, column: 11)
!4012 = !DILocation(line: 73, column: 15, scope: !4011)
!4013 = !DILocation(line: 0, scope: !3946)
!4014 = !DILocation(line: 78, column: 1, scope: !3946)
!4015 = distinct !DISubprogram(name: "hard_locale", scope: !4016, file: !4016, line: 38, type: !4017, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !217, retainedNodes: !4019)
!4016 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!42, !56}
!4019 = !{!4020, !4021, !4022}
!4020 = !DILocalVariable(name: "category", arg: 1, scope: !4015, file: !4016, line: 38, type: !56)
!4021 = !DILocalVariable(name: "hard", scope: !4015, file: !4016, line: 40, type: !42)
!4022 = !DILocalVariable(name: "p", scope: !4015, file: !4016, line: 41, type: !53)
!4023 = !DILocation(line: 38, column: 18, scope: !4015)
!4024 = !DILocation(line: 40, column: 8, scope: !4015)
!4025 = !DILocation(line: 41, column: 19, scope: !4015)
!4026 = !DILocation(line: 41, column: 15, scope: !4015)
!4027 = !DILocation(line: 43, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4015, file: !4016, line: 43, column: 7)
!4029 = !DILocation(line: 43, column: 7, scope: !4015)
!4030 = !DILocation(line: 47, column: 15, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !4016, line: 47, column: 15)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !4016, line: 46, column: 9)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !4016, line: 45, column: 11)
!4034 = distinct !DILexicalBlock(scope: !4028, file: !4016, line: 44, column: 5)
!4035 = !DILocation(line: 47, column: 31, scope: !4031)
!4036 = !DILocation(line: 47, column: 36, scope: !4031)
!4037 = !DILocation(line: 47, column: 39, scope: !4031)
!4038 = !DILocation(line: 47, column: 59, scope: !4031)
!4039 = !DILocation(line: 47, column: 15, scope: !4032)
!4040 = !DILocation(line: 48, column: 13, scope: !4031)
!4041 = !DILocation(line: 71, column: 3, scope: !4015)
!4042 = distinct !DISubprogram(name: "locale_charset", scope: !4043, file: !4043, line: 687, type: !4044, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !4046)
!4043 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!53}
!4046 = !{!4047}
!4047 = !DILocalVariable(name: "codeset", scope: !4042, file: !4043, line: 689, type: !53)
!4048 = !DILocation(line: 696, column: 13, scope: !4042)
!4049 = !DILocation(line: 689, column: 15, scope: !4042)
!4050 = !DILocation(line: 754, column: 15, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4042, file: !4043, line: 754, column: 7)
!4052 = !DILocation(line: 754, column: 7, scope: !4042)
!4053 = !DILocation(line: 907, column: 13, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !4043, line: 907, column: 13)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !4043, line: 897, column: 7)
!4056 = distinct !DILexicalBlock(scope: !4042, file: !4043, line: 856, column: 3)
!4057 = !DILocation(line: 907, column: 24, scope: !4054)
!4058 = !DILocation(line: 907, column: 13, scope: !4055)
!4059 = !DILocation(line: 995, column: 3, scope: !4042)
