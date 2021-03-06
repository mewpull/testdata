; ModuleID = 'coreutils-8.30/src/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1
@.str.6 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1
@.str.7 = private unnamed_addr constant [250 x i8] c"\0A  -n STRING            the length of STRING is nonzero\0A  STRING               equivalent to -n STRING\0A  -z STRING            the length of STRING is zero\0A  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A\00", align 1
@.str.8 = private unnamed_addr constant [376 x i8] c"\0A  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1
@.str.9 = private unnamed_addr constant [189 x i8] c"\0A  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1
@.str.10 = private unnamed_addr constant [171 x i8] c"\0A  -b FILE     FILE exists and is block special\0A  -c FILE     FILE exists and is character special\0A  -d FILE     FILE exists and is a directory\0A  -e FILE     FILE exists\0A\00", align 1
@.str.11 = private unnamed_addr constant [275 x i8] c"  -f FILE     FILE exists and is a regular file\0A  -g FILE     FILE exists and is set-group-ID\0A  -G FILE     FILE exists and is owned by the effective group ID\0A  -h FILE     FILE exists and is a symbolic link (same as -L)\0A  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1
@.str.12 = private unnamed_addr constant [289 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A  -O FILE     FILE exists and is owned by the effective user ID\0A  -p FILE     FILE exists and is a named pipe\0A  -r FILE     FILE exists and read permission is granted\0A  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1
@.str.13 = private unnamed_addr constant [287 x i8] c"  -S FILE     FILE exists and is a socket\0A  -t FD       file descriptor FD is opened on a terminal\0A  -u FILE     FILE exists and its set-user-ID bit is set\0A  -w FILE     FILE exists and write permission is granted\0A  -x FILE     FILE exists and execute (or search) permission is granted\0A\00", align 1
@.str.14 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1
@.str.15 = private unnamed_addr constant [122 x i8] c"\0ANOTE: Binary -a and -o are inherently ambiguous.  Use 'test EXPR1 && test\0AEXPR2' or 'test EXPR1 || test EXPR2' instead.\0A\00", align 1
@.str.16 = private unnamed_addr constant [136 x i8] c"\0ANOTE: [ honors the --help and --version options, but test does not.\0Atest treats each of those as it treats any other nonempty STRING.\0A\00", align 1
@.str.17 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@argc = internal unnamed_addr global i32 0, align 4, !dbg !37
@pos = internal unnamed_addr global i32 0, align 4, !dbg !35
@.str.23 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !42
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !48
@.str.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.69 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.70 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !54
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !61
@.str.79 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 16, !dbg !68
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !97
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !104
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !116
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.95 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.96 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.97 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.98 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !123
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !130
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !118
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !132
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.110 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !583 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !588, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 %0, metadata !587, metadata !DIExpression()), !dbg !611
  %3 = icmp eq i32 %0, 0, !dbg !612
  br i1 %3, label %9, label %4, !dbg !613

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !614, !tbaa !616
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #8, !dbg !614
  %7 = load i8*, i8** @program_name, align 8, !dbg !614, !tbaa !616
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #8, !dbg !614
  br label %96, !dbg !614

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #8, !dbg !620
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !616
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !620
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #8, !dbg !621
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !616
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !621
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #8, !dbg !622
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !616
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !622
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #8, !dbg !623
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !616
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !623
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #8, !dbg !624
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !616
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !624
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #8, !dbg !625
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !625, !tbaa !616
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !625
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #8, !dbg !626
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !616
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !626
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #8, !dbg !627
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !616
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !627
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #8, !dbg !628
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !616
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !628
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #8, !dbg !629
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !616
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !629
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #8, !dbg !630
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !616
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !630
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.12, i64 0, i64 0), i32 5) #8, !dbg !631
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !616
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !631
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #8, !dbg !632
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !616
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !632
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #8, !dbg !633
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !616
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !633
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #8, !dbg !634
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !616
  %54 = tail call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53), !dbg !634
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #8, !dbg !635
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !616
  %57 = tail call i32 @fputs_unlocked(i8* %55, %struct._IO_FILE* %56), !dbg !635
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #8, !dbg !636
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #8, !dbg !636
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* %59) #8, !dbg !636
  %61 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !637
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %61) #8, !dbg !637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %61, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #8, !dbg !607
  %62 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !638
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !596, metadata !DIExpression()) #8, !dbg !639
  br label %63, !dbg !640

; <label>:63:                                     ; preds = %68, %9
  %64 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %9 ]
  %65 = phi %struct.infomap* [ %69, %68 ], [ %62, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !596, metadata !DIExpression()) #8, !dbg !639
  %66 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %64) #14, !dbg !640
  %67 = icmp eq i32 %66, 0, !dbg !640
  br i1 %67, label %73, label %68, !dbg !641

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 1, !dbg !642
  call void @llvm.dbg.value(metadata %struct.infomap* %69, metadata !596, metadata !DIExpression()) #8, !dbg !639
  %70 = getelementptr inbounds %struct.infomap, %struct.infomap* %69, i64 0, i32 0, !dbg !643
  %71 = load i8*, i8** %70, align 8, !dbg !643, !tbaa !644
  %72 = icmp eq i8* %71, null, !dbg !646
  br i1 %72, label %73, label %63, !dbg !647, !llvm.loop !648

; <label>:73:                                     ; preds = %68, %63
  %74 = phi %struct.infomap* [ %69, %68 ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %74, metadata !596, metadata !DIExpression()) #8, !dbg !639
  call void @llvm.dbg.value(metadata %struct.infomap* %74, metadata !596, metadata !DIExpression()) #8, !dbg !639
  %75 = getelementptr inbounds %struct.infomap, %struct.infomap* %74, i64 0, i32 1, !dbg !651
  %76 = load i8*, i8** %75, align 8, !dbg !651, !tbaa !653
  %77 = icmp eq i8* %76, null, !dbg !654
  %78 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %76, !dbg !655
  call void @llvm.dbg.value(metadata i8* %78, metadata !595, metadata !DIExpression()) #8, !dbg !656
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #8, !dbg !657
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !657
  %81 = tail call i8* @setlocale(i32 5, i8* null) #8, !dbg !658
  call void @llvm.dbg.value(metadata i8* %81, metadata !603, metadata !DIExpression()) #8, !dbg !659
  %82 = icmp eq i8* %81, null, !dbg !660
  br i1 %82, label %89, label %83, !dbg !662

; <label>:83:                                     ; preds = %73
  %84 = tail call i32 @strncmp(i8* nonnull %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #14, !dbg !663
  %85 = icmp eq i32 %84, 0, !dbg !663
  br i1 %85, label %89, label %86, !dbg !664

; <label>:86:                                     ; preds = %83
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.36, i64 0, i64 0), i32 5) #8, !dbg !665
  %88 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !665
  br label %89, !dbg !667

; <label>:89:                                     ; preds = %73, %83, %86
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 5) #8, !dbg !668
  %91 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !668
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #8, !dbg !669
  %93 = icmp eq i8* %78, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), !dbg !669
  %94 = select i1 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), !dbg !669
  %95 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %92, i8* %78, i8* %94) #8, !dbg !669
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %61) #8, !dbg !670
  br label %96

; <label>:96:                                     ; preds = %89, %4
  tail call void @exit(i32 %0) #15, !dbg !671
  unreachable, !dbg !671
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !672 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !676, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i8** %1, metadata !677, metadata !DIExpression()), !dbg !680
  %3 = load i8*, i8** %1, align 8, !dbg !681, !tbaa !616
  tail call void @set_program_name(i8* %3) #8, !dbg !682
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !683
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !684
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !685
  call void @llvm.dbg.value(metadata i32 2, metadata !686, metadata !DIExpression()), !dbg !689
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !691, !tbaa !693
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #8, !dbg !695
  store i8** %1, i8*** @argv, align 8, !dbg !696, !tbaa !616
  store i32 %0, i32* @argc, align 4, !dbg !697, !tbaa !693
  store i32 1, i32* @pos, align 4, !dbg !698, !tbaa !693
  %8 = icmp slt i32 %0, 2, !dbg !699
  br i1 %8, label %26, label %9, !dbg !701

; <label>:9:                                      ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !702
  %11 = tail call fastcc zeroext i1 @posixtest(i32 %10), !dbg !703
  %12 = load i32, i32* @pos, align 4, !dbg !704, !tbaa !693
  %13 = load i32, i32* @argc, align 4, !dbg !706, !tbaa !693
  %14 = icmp eq i32 %12, %13, !dbg !707
  br i1 %14, label %23, label %15, !dbg !708

; <label>:15:                                     ; preds = %9
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 5) #8, !dbg !709
  %17 = load i8**, i8*** @argv, align 8, !dbg !710, !tbaa !616
  %18 = load i32, i32* @pos, align 4, !dbg !711, !tbaa !693
  %19 = sext i32 %18 to i64, !dbg !710
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19, !dbg !710
  %21 = load i8*, i8** %20, align 8, !dbg !710, !tbaa !616
  %22 = tail call i8* @quote(i8* %21) #8, !dbg !712
  tail call void (i8*, ...) @test_syntax_error(i8* %16, i8* %22) #16, !dbg !713
  unreachable, !dbg !713

; <label>:23:                                     ; preds = %9
  %24 = xor i1 %11, true, !dbg !714
  %25 = zext i1 %24 to i32, !dbg !714
  br label %26, !dbg !714

; <label>:26:                                     ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ], !dbg !715
  ret i32 %27, !dbg !716
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32) unnamed_addr #7 !dbg !717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !721, metadata !DIExpression()), !dbg !723
  switch i32 %0, label %46 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ], !dbg !724

; <label>:2:                                      ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !725, !tbaa !616
  %4 = load i32, i32* @pos, align 4, !dbg !731, !tbaa !693
  %5 = add nsw i32 %4, 1, !dbg !731
  store i32 %5, i32* @pos, align 4, !dbg !731, !tbaa !693
  %6 = sext i32 %4 to i64, !dbg !725
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !725
  %8 = load i8*, i8** %7, align 8, !dbg !725, !tbaa !616
  %9 = load i8, i8* %8, align 1, !dbg !725, !tbaa !732
  %10 = icmp ne i8 %9, 0, !dbg !733
  br label %95, !dbg !734

; <label>:11:                                     ; preds = %1
  %12 = tail call fastcc zeroext i1 @two_arguments(), !dbg !735
  br label %95, !dbg !736

; <label>:13:                                     ; preds = %1
  %14 = tail call fastcc zeroext i1 @three_arguments(), !dbg !737
  br label %95, !dbg !738

; <label>:15:                                     ; preds = %1
  %16 = load i8**, i8*** @argv, align 8, !dbg !739, !tbaa !616
  %17 = load i32, i32* @pos, align 4, !dbg !739, !tbaa !693
  %18 = sext i32 %17 to i64, !dbg !739
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18, !dbg !739
  %20 = load i8*, i8** %19, align 8, !dbg !739, !tbaa !616
  %21 = tail call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !739
  %22 = icmp eq i32 %21, 0, !dbg !739
  br i1 %22, label %23, label %31, !dbg !741

; <label>:23:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !747
  %24 = add nsw i32 %17, 1, !dbg !750
  store i32 %24, i32* @pos, align 4, !dbg !750, !tbaa !693
  %25 = load i32, i32* @argc, align 4, !dbg !751
  %26 = icmp slt i32 %24, %25, !dbg !753
  br i1 %26, label %28, label %27, !dbg !754

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #15, !dbg !755
  unreachable, !dbg !755

; <label>:28:                                     ; preds = %23
  %29 = tail call fastcc zeroext i1 @three_arguments(), !dbg !756
  %30 = xor i1 %29, true, !dbg !757
  br label %95, !dbg !758

; <label>:31:                                     ; preds = %15
  %32 = tail call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #14, !dbg !759
  %33 = icmp eq i32 %32, 0, !dbg !759
  br i1 %33, label %34, label %51, !dbg !761

; <label>:34:                                     ; preds = %31
  %35 = add nsw i32 %17, 3, !dbg !762
  %36 = sext i32 %35 to i64, !dbg !762
  %37 = getelementptr inbounds i8*, i8** %16, i64 %36, !dbg !762
  %38 = load i8*, i8** %37, align 8, !dbg !762, !tbaa !616
  %39 = tail call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #14, !dbg !762
  %40 = icmp eq i32 %39, 0, !dbg !762
  br i1 %40, label %41, label %51, !dbg !763

; <label>:41:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !764
  %42 = add nsw i32 %17, 1, !dbg !767
  store i32 %42, i32* @pos, align 4, !dbg !767, !tbaa !693
  %43 = tail call fastcc zeroext i1 @two_arguments(), !dbg !768
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !769
  %44 = load i32, i32* @pos, align 4, !dbg !771, !tbaa !693
  %45 = add nsw i32 %44, 1, !dbg !771
  store i32 %45, i32* @pos, align 4, !dbg !771, !tbaa !693
  br label %95, !dbg !772

; <label>:46:                                     ; preds = %1
  %47 = icmp slt i32 %0, 1, !dbg !773
  br i1 %47, label %50, label %48, !dbg !775

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* @pos, align 4, !dbg !776, !tbaa !693
  br label %51, !dbg !775

; <label>:50:                                     ; preds = %46
  tail call void @abort() #15, !dbg !780
  unreachable, !dbg !780

; <label>:51:                                     ; preds = %48, %31, %34
  %52 = phi i32 [ %49, %48 ], [ %17, %31 ], [ %17, %34 ], !dbg !776
  %53 = load i32, i32* @argc, align 4, !dbg !781, !tbaa !693
  %54 = icmp slt i32 %52, %53, !dbg !782
  br i1 %54, label %55, label %60, !dbg !783

; <label>:55:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8 1, metadata !784, metadata !DIExpression()) #8, !dbg !787
  %56 = tail call fastcc zeroext i1 @term() #8, !dbg !794
  %57 = load i32, i32* @pos, align 4, !dbg !796, !tbaa !693
  %58 = load i32, i32* @argc, align 4, !dbg !798, !tbaa !693
  %59 = icmp slt i32 %57, %58, !dbg !799
  br i1 %59, label %61, label %81, !dbg !800

; <label>:60:                                     ; preds = %51
  tail call fastcc void @beyond() #15, !dbg !801
  unreachable, !dbg !801

; <label>:61:                                     ; preds = %55, %89
  %62 = phi i32 [ %92, %89 ], [ %57, %55 ]
  %63 = phi i1 [ %91, %89 ], [ %56, %55 ]
  %64 = phi i1 [ %86, %89 ], [ false, %55 ]
  br label %65, !dbg !800

; <label>:65:                                     ; preds = %61, %74
  %66 = phi i32 [ %62, %61 ], [ %78, %74 ]
  %67 = phi i1 [ %63, %61 ], [ %77, %74 ]
  %68 = load i8**, i8*** @argv, align 8, !dbg !802, !tbaa !616
  %69 = sext i32 %66 to i64, !dbg !802
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69, !dbg !802
  %71 = load i8*, i8** %70, align 8, !dbg !802, !tbaa !616
  %72 = tail call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !802
  %73 = icmp eq i32 %72, 0, !dbg !802
  br i1 %73, label %74, label %85, !dbg !803

; <label>:74:                                     ; preds = %65
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()) #8, !dbg !804
  %75 = add nsw i32 %66, 1, !dbg !806
  store i32 %75, i32* @pos, align 4, !dbg !806, !tbaa !693
  %76 = tail call fastcc zeroext i1 @term() #8, !dbg !794
  %77 = and i1 %67, %76, !dbg !807
  %78 = load i32, i32* @pos, align 4, !dbg !796, !tbaa !693
  %79 = load i32, i32* @argc, align 4, !dbg !798, !tbaa !693
  %80 = icmp slt i32 %78, %79, !dbg !799
  br i1 %80, label %65, label %81, !dbg !800, !llvm.loop !808

; <label>:81:                                     ; preds = %89, %74, %55
  %82 = phi i1 [ false, %55 ], [ %64, %74 ], [ %86, %89 ], !dbg !811
  %83 = phi i1 [ %56, %55 ], [ %77, %74 ], [ %91, %89 ], !dbg !807
  %84 = or i1 %82, %83, !dbg !812
  br label %95

; <label>:85:                                     ; preds = %65
  %86 = or i1 %64, %67, !dbg !812
  %87 = tail call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !813
  %88 = icmp eq i32 %87, 0, !dbg !813
  br i1 %88, label %89, label %95, !dbg !815

; <label>:89:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()) #8, !dbg !816
  %90 = add nsw i32 %66, 1, !dbg !818
  store i32 %90, i32* @pos, align 4, !dbg !818, !tbaa !693
  call void @llvm.dbg.value(metadata i8 1, metadata !784, metadata !DIExpression()) #8, !dbg !787
  %91 = tail call fastcc zeroext i1 @term() #8, !dbg !794
  %92 = load i32, i32* @pos, align 4, !dbg !796, !tbaa !693
  %93 = load i32, i32* @argc, align 4, !dbg !798, !tbaa !693
  %94 = icmp slt i32 %92, %93, !dbg !799
  br i1 %94, label %61, label %81, !dbg !800, !llvm.loop !819

; <label>:95:                                     ; preds = %85, %81, %41, %28, %13, %11, %2
  %96 = phi i1 [ %30, %28 ], [ %43, %41 ], [ %14, %13 ], [ %12, %11 ], [ %10, %2 ], [ %84, %81 ], [ %86, %85 ]
  ret i1 %96, !dbg !822
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8*, ...) unnamed_addr #0 !dbg !823 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !827, metadata !DIExpression()), !dbg !843
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !844
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !828, metadata !DIExpression()), !dbg !845
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !846
  call void @llvm.va_start(i8* nonnull %3), !dbg !846
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !847
  call void @exit(i32 2) #15, !dbg !848
  unreachable, !dbg !848
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @two_arguments() unnamed_addr #7 !dbg !849 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !852, !tbaa !616
  %2 = load i32, i32* @pos, align 4, !dbg !852, !tbaa !693
  %3 = sext i32 %2 to i64, !dbg !852
  %4 = getelementptr inbounds i8*, i8** %1, i64 %3, !dbg !852
  %5 = load i8*, i8** %4, align 8, !dbg !852, !tbaa !616
  %6 = tail call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !852
  %7 = icmp eq i32 %6, 0, !dbg !852
  br i1 %7, label %8, label %16, !dbg !854

; <label>:8:                                      ; preds = %0
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !855
  %9 = add nsw i32 %2, 1, !dbg !858
  %10 = add nsw i32 %2, 2, !dbg !859
  store i32 %10, i32* @pos, align 4, !dbg !859, !tbaa !693
  %11 = sext i32 %9 to i64, !dbg !861
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !861
  %13 = load i8*, i8** %12, align 8, !dbg !861, !tbaa !616
  %14 = load i8, i8* %13, align 1, !dbg !861, !tbaa !732
  %15 = icmp eq i8 %14, 0, !dbg !862
  br label %40, !dbg !863

; <label>:16:                                     ; preds = %0
  %17 = load i8, i8* %5, align 1, !dbg !864, !tbaa !732
  %18 = icmp eq i8 %17, 45, !dbg !866
  br i1 %18, label %19, label %39, !dbg !867

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !868
  %21 = load i8, i8* %20, align 1, !dbg !868, !tbaa !732
  %22 = icmp eq i8 %21, 0, !dbg !869
  br i1 %22, label %39, label %23, !dbg !870

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !871
  %25 = load i8, i8* %24, align 1, !dbg !871, !tbaa !732
  %26 = icmp eq i8 %25, 0, !dbg !872
  br i1 %26, label %27, label %39, !dbg !873

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %5, metadata !874, metadata !DIExpression()), !dbg !879
  %28 = sext i8 %21 to i32, !dbg !883
  switch i32 %28, label %31 [
    i32 97, label %29
    i32 98, label %29
    i32 99, label %29
    i32 100, label %29
    i32 101, label %29
    i32 102, label %29
    i32 103, label %29
    i32 104, label %29
    i32 107, label %29
    i32 110, label %29
    i32 111, label %29
    i32 112, label %29
    i32 114, label %29
    i32 115, label %29
    i32 116, label %29
    i32 117, label %29
    i32 119, label %29
    i32 120, label %29
    i32 122, label %29
    i32 71, label %29
    i32 76, label %29
    i32 79, label %29
    i32 83, label %29
    i32 78, label %29
  ], !dbg !884

; <label>:29:                                     ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = tail call fastcc zeroext i1 @unary_operator(), !dbg !885
  br label %40

; <label>:31:                                     ; preds = %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 5) #8, !dbg !886
  %33 = load i8**, i8*** @argv, align 8, !dbg !887, !tbaa !616
  %34 = load i32, i32* @pos, align 4, !dbg !888, !tbaa !693
  %35 = sext i32 %34 to i64, !dbg !887
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35, !dbg !887
  %37 = load i8*, i8** %36, align 8, !dbg !887, !tbaa !616
  %38 = tail call i8* @quote(i8* %37) #8, !dbg !889
  tail call void (i8*, ...) @test_syntax_error(i8* %32, i8* %38) #16, !dbg !890
  unreachable, !dbg !890

; <label>:39:                                     ; preds = %19, %23, %16
  tail call fastcc void @beyond() #16, !dbg !891
  unreachable, !dbg !891

; <label>:40:                                     ; preds = %29, %8
  %41 = phi i1 [ %15, %8 ], [ %30, %29 ]
  ret i1 %41, !dbg !892
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #7 !dbg !893 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !896, !tbaa !616
  %2 = load i32, i32* @pos, align 4, !dbg !898, !tbaa !693
  %3 = add nsw i32 %2, 1, !dbg !899
  %4 = sext i32 %3 to i64, !dbg !896
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !896
  %6 = load i8*, i8** %5, align 8, !dbg !896, !tbaa !616
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !900
  br i1 %7, label %8, label %10, !dbg !901

; <label>:8:                                      ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !902
  br label %95, !dbg !903

; <label>:10:                                     ; preds = %0
  %11 = sext i32 %2 to i64, !dbg !904
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !904
  %13 = load i8*, i8** %12, align 8, !dbg !904, !tbaa !616
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !904
  %15 = icmp eq i32 %14, 0, !dbg !904
  br i1 %15, label %16, label %23, !dbg !906

; <label>:16:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !907
  store i32 %3, i32* @pos, align 4, !dbg !910, !tbaa !693
  %17 = load i32, i32* @argc, align 4, !dbg !911
  %18 = icmp slt i32 %3, %17, !dbg !912
  br i1 %18, label %20, label %19, !dbg !913

; <label>:19:                                     ; preds = %16
  tail call fastcc void @beyond() #15, !dbg !914
  unreachable, !dbg !914

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc zeroext i1 @two_arguments(), !dbg !915
  %22 = xor i1 %21, true, !dbg !916
  br label %95, !dbg !917

; <label>:23:                                     ; preds = %10
  %24 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #14, !dbg !918
  %25 = icmp eq i32 %24, 0, !dbg !918
  br i1 %25, label %26, label %37, !dbg !920

; <label>:26:                                     ; preds = %23
  %27 = add nsw i32 %2, 2, !dbg !921
  %28 = sext i32 %27 to i64, !dbg !921
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !921
  %30 = load i8*, i8** %29, align 8, !dbg !921, !tbaa !616
  %31 = tail call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #14, !dbg !921
  %32 = icmp eq i32 %31, 0, !dbg !921
  br i1 %32, label %33, label %37, !dbg !922

; <label>:33:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !923
  %34 = load i8, i8* %6, align 1, !dbg !926, !tbaa !732
  %35 = icmp ne i8 %34, 0, !dbg !928
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !929
  %36 = add nsw i32 %2, 3, !dbg !931
  store i32 %36, i32* @pos, align 4, !dbg !931, !tbaa !693
  br label %95, !dbg !932

; <label>:37:                                     ; preds = %26, %23
  %38 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !933
  %39 = icmp eq i32 %38, 0, !dbg !933
  br i1 %39, label %43, label %40, !dbg !935

; <label>:40:                                     ; preds = %37
  %41 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !936
  %42 = icmp eq i32 %41, 0, !dbg !936
  br i1 %42, label %43, label %86, !dbg !937

; <label>:43:                                     ; preds = %40, %37
  %44 = load i32, i32* @argc, align 4, !dbg !938, !tbaa !693
  %45 = icmp slt i32 %2, %44, !dbg !940
  br i1 %45, label %46, label %51, !dbg !941

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8 1, metadata !784, metadata !DIExpression()) #8, !dbg !942
  %47 = tail call fastcc zeroext i1 @term() #8, !dbg !945
  %48 = load i32, i32* @pos, align 4, !dbg !946, !tbaa !693
  %49 = load i32, i32* @argc, align 4, !dbg !947, !tbaa !693
  %50 = icmp slt i32 %48, %49, !dbg !948
  br i1 %50, label %52, label %72, !dbg !949

; <label>:51:                                     ; preds = %43
  tail call fastcc void @beyond() #15, !dbg !950
  unreachable, !dbg !950

; <label>:52:                                     ; preds = %46, %80
  %53 = phi i32 [ %83, %80 ], [ %48, %46 ]
  %54 = phi i1 [ %82, %80 ], [ %47, %46 ]
  %55 = phi i1 [ %77, %80 ], [ false, %46 ]
  br label %56, !dbg !949

; <label>:56:                                     ; preds = %52, %65
  %57 = phi i32 [ %53, %52 ], [ %69, %65 ]
  %58 = phi i1 [ %54, %52 ], [ %68, %65 ]
  %59 = load i8**, i8*** @argv, align 8, !dbg !951, !tbaa !616
  %60 = sext i32 %57 to i64, !dbg !951
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60, !dbg !951
  %62 = load i8*, i8** %61, align 8, !dbg !951, !tbaa !616
  %63 = tail call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #14, !dbg !951
  %64 = icmp eq i32 %63, 0, !dbg !951
  br i1 %64, label %65, label %76, !dbg !952

; <label>:65:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()) #8, !dbg !953
  %66 = add nsw i32 %57, 1, !dbg !955
  store i32 %66, i32* @pos, align 4, !dbg !955, !tbaa !693
  %67 = tail call fastcc zeroext i1 @term() #8, !dbg !945
  %68 = and i1 %58, %67, !dbg !956
  %69 = load i32, i32* @pos, align 4, !dbg !946, !tbaa !693
  %70 = load i32, i32* @argc, align 4, !dbg !947, !tbaa !693
  %71 = icmp slt i32 %69, %70, !dbg !948
  br i1 %71, label %56, label %72, !dbg !949, !llvm.loop !808

; <label>:72:                                     ; preds = %80, %65, %46
  %73 = phi i1 [ false, %46 ], [ %55, %65 ], [ %77, %80 ], !dbg !957
  %74 = phi i1 [ %47, %46 ], [ %68, %65 ], [ %82, %80 ], !dbg !956
  %75 = or i1 %73, %74, !dbg !958
  br label %95

; <label>:76:                                     ; preds = %56
  %77 = or i1 %55, %58, !dbg !958
  %78 = tail call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !959
  %79 = icmp eq i32 %78, 0, !dbg !959
  br i1 %79, label %80, label %95, !dbg !960

; <label>:80:                                     ; preds = %76
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()) #8, !dbg !961
  %81 = add nsw i32 %57, 1, !dbg !963
  store i32 %81, i32* @pos, align 4, !dbg !963, !tbaa !693
  call void @llvm.dbg.value(metadata i8 1, metadata !784, metadata !DIExpression()) #8, !dbg !942
  %82 = tail call fastcc zeroext i1 @term() #8, !dbg !945
  %83 = load i32, i32* @pos, align 4, !dbg !946, !tbaa !693
  %84 = load i32, i32* @argc, align 4, !dbg !947, !tbaa !693
  %85 = icmp slt i32 %83, %84, !dbg !948
  br i1 %85, label %52, label %72, !dbg !949, !llvm.loop !819

; <label>:86:                                     ; preds = %40
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i32 5) #8, !dbg !964
  %88 = load i8**, i8*** @argv, align 8, !dbg !965, !tbaa !616
  %89 = load i32, i32* @pos, align 4, !dbg !966, !tbaa !693
  %90 = add nsw i32 %89, 1, !dbg !967
  %91 = sext i32 %90 to i64, !dbg !965
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91, !dbg !965
  %93 = load i8*, i8** %92, align 8, !dbg !965, !tbaa !616
  %94 = tail call i8* @quote(i8* %93) #8, !dbg !968
  tail call void (i8*, ...) @test_syntax_error(i8* %87, i8* %94) #16, !dbg !969
  unreachable, !dbg !969

; <label>:95:                                     ; preds = %76, %72, %20, %33, %8
  %96 = phi i1 [ %9, %8 ], [ %22, %20 ], [ %35, %33 ], [ %75, %72 ], [ %77, %76 ]
  ret i1 %96, !dbg !970
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !971 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i32 5) #8, !dbg !974
  %2 = load i8**, i8*** @argv, align 8, !dbg !975, !tbaa !616
  %3 = load i32, i32* @argc, align 4, !dbg !976, !tbaa !693
  %4 = add nsw i32 %3, -1, !dbg !977
  %5 = sext i32 %4 to i64, !dbg !975
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !975
  %7 = load i8*, i8** %6, align 8, !dbg !975, !tbaa !616
  %8 = tail call i8* @quote(i8* %7) #8, !dbg !978
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #16, !dbg !979
  unreachable, !dbg !979
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #7 !dbg !980 {
  call void @llvm.dbg.value(metadata i8 0, metadata !983, metadata !DIExpression()), !dbg !987
  %1 = load i32, i32* @pos, align 4, !dbg !988, !tbaa !693
  %2 = load i32, i32* @argc, align 4, !dbg !989, !tbaa !693
  %3 = icmp sgt i32 %2, %1, !dbg !990
  br i1 %3, label %4, label %30, !dbg !991

; <label>:4:                                      ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !616
  %6 = sext i32 %1 to i64, !dbg !992
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !992
  %8 = load i8*, i8** %7, align 8, !dbg !992, !tbaa !616
  %9 = load i8, i8* %8, align 1, !dbg !992, !tbaa !732
  %10 = icmp eq i8 %9, 33, !dbg !993
  br i1 %10, label %11, label %31, !dbg !994

; <label>:11:                                     ; preds = %4, %23
  %12 = phi i8 [ %28, %23 ], [ %9, %4 ]
  %13 = phi i8* [ %27, %23 ], [ %8, %4 ]
  %14 = phi i1 [ %24, %23 ], [ false, %4 ]
  %15 = phi i32 [ %20, %23 ], [ %1, %4 ]
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !995
  %17 = load i8, i8* %16, align 1, !dbg !995, !tbaa !732
  %18 = icmp eq i8 %17, 0, !dbg !996
  br i1 %18, label %19, label %102, !dbg !997

; <label>:19:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !998
  %20 = add nsw i32 %15, 1, !dbg !1001
  store i32 %20, i32* @pos, align 4, !dbg !1001, !tbaa !693
  %21 = icmp slt i32 %20, %2, !dbg !1002
  br i1 %21, label %23, label %22, !dbg !1003

; <label>:22:                                     ; preds = %19
  tail call fastcc void @beyond() #15, !dbg !1004
  unreachable, !dbg !1004

; <label>:23:                                     ; preds = %19
  %24 = xor i1 %14, true, !dbg !1005
  %25 = sext i32 %20 to i64, !dbg !992
  %26 = getelementptr inbounds i8*, i8** %5, i64 %25, !dbg !992
  %27 = load i8*, i8** %26, align 8, !dbg !992, !tbaa !616
  %28 = load i8, i8* %27, align 1, !dbg !992, !tbaa !732
  %29 = icmp eq i8 %28, 33, !dbg !993
  br i1 %29, label %11, label %31, !dbg !994

; <label>:30:                                     ; preds = %0
  tail call fastcc void @beyond() #16, !dbg !1006
  unreachable, !dbg !1006

; <label>:31:                                     ; preds = %23, %4
  %32 = phi i32 [ %1, %4 ], [ %20, %23 ]
  %33 = phi i1 [ false, %4 ], [ %24, %23 ]
  %34 = phi i8* [ %8, %4 ], [ %27, %23 ], !dbg !992
  %35 = phi i8 [ %9, %4 ], [ %28, %23 ], !dbg !992
  %36 = icmp eq i8 %35, 40, !dbg !1008
  br i1 %36, label %37, label %102, !dbg !1009

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1010
  %39 = load i8, i8* %38, align 1, !dbg !1010, !tbaa !732
  %40 = icmp eq i8 %39, 0, !dbg !1011
  br i1 %40, label %41, label %102, !dbg !1012

; <label>:41:                                     ; preds = %37
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1013
  %42 = add nsw i32 %32, 1, !dbg !1015
  store i32 %42, i32* @pos, align 4, !dbg !1015, !tbaa !693
  %43 = icmp sgt i32 %2, %42, !dbg !1016
  br i1 %43, label %44, label %51, !dbg !1017

; <label>:44:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i32 1, metadata !984, metadata !DIExpression()), !dbg !1018
  %45 = add i32 %32, 2, !dbg !1019
  %46 = icmp slt i32 %45, %2, !dbg !1022
  br i1 %46, label %47, label %72, !dbg !1023

; <label>:47:                                     ; preds = %44
  %48 = sext i32 %45 to i64, !dbg !1024
  %49 = sext i32 %42 to i64, !dbg !1024
  %50 = sext i32 %2 to i64, !dbg !1024
  br label %52, !dbg !1024

; <label>:51:                                     ; preds = %41
  tail call fastcc void @beyond() #15, !dbg !1025
  unreachable, !dbg !1025

; <label>:52:                                     ; preds = %47, %64
  %53 = phi i64 [ 1, %47 ], [ %65, %64 ]
  %54 = phi i64 [ %48, %47 ], [ %69, %64 ]
  %55 = phi i32 [ 1, %47 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !984, metadata !DIExpression()), !dbg !1018
  %56 = getelementptr inbounds i8*, i8** %5, i64 %54, !dbg !1024
  %57 = load i8*, i8** %56, align 8, !dbg !1024, !tbaa !616
  %58 = tail call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #14, !dbg !1024
  %59 = icmp eq i32 %58, 0, !dbg !1024
  br i1 %59, label %70, label %60, !dbg !1026

; <label>:60:                                     ; preds = %52
  %61 = icmp eq i64 %53, 4, !dbg !1027
  br i1 %61, label %62, label %64, !dbg !1029

; <label>:62:                                     ; preds = %60
  %63 = sub nsw i32 %2, %42, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %63, metadata !984, metadata !DIExpression()), !dbg !1018
  br label %72, !dbg !1032

; <label>:64:                                     ; preds = %60
  %65 = add nuw nsw i64 %53, 1, !dbg !1033
  %66 = add nuw nsw i32 %55, 1, !dbg !1033
  call void @llvm.dbg.value(metadata i32 %66, metadata !984, metadata !DIExpression()), !dbg !1018
  %67 = add nsw i64 %65, %49, !dbg !1019
  %68 = icmp slt i64 %67, %50, !dbg !1022
  %69 = add nsw i64 %54, 1, !dbg !1019
  br i1 %68, label %52, label %72, !dbg !1023, !llvm.loop !1034

; <label>:70:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %53, metadata !984, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i64 %53, metadata !984, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i64 %53, metadata !984, metadata !DIExpression()), !dbg !1018
  %71 = trunc i64 %53 to i32, !dbg !1026
  br label %72, !dbg !1036

; <label>:72:                                     ; preds = %64, %70, %44, %62
  %73 = phi i32 [ %63, %62 ], [ 1, %44 ], [ %71, %70 ], [ %66, %64 ], !dbg !1037
  call void @llvm.dbg.value(metadata i32 %73, metadata !984, metadata !DIExpression()), !dbg !1018
  %74 = tail call fastcc zeroext i1 @posixtest(i32 %73), !dbg !1036
  %75 = load i8**, i8*** @argv, align 8, !dbg !1038, !tbaa !616
  %76 = load i32, i32* @pos, align 4, !dbg !1040, !tbaa !693
  %77 = sext i32 %76 to i64, !dbg !1038
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77, !dbg !1038
  %79 = load i8*, i8** %78, align 8, !dbg !1038, !tbaa !616
  %80 = icmp eq i8* %79, null, !dbg !1041
  br i1 %80, label %81, label %84, !dbg !1042

; <label>:81:                                     ; preds = %72
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #8, !dbg !1043
  %83 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1044
  tail call void (i8*, ...) @test_syntax_error(i8* %82, i8* %83) #16, !dbg !1045
  unreachable, !dbg !1045

; <label>:84:                                     ; preds = %72
  %85 = load i8, i8* %79, align 1, !dbg !1046, !tbaa !732
  %86 = icmp eq i8 %85, 41, !dbg !1048
  br i1 %86, label %87, label %91, !dbg !1049

; <label>:87:                                     ; preds = %84
  %88 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1050
  %89 = load i8, i8* %88, align 1, !dbg !1050, !tbaa !732
  %90 = icmp eq i8 %89, 0, !dbg !1050
  br i1 %90, label %100, label %91, !dbg !1051

; <label>:91:                                     ; preds = %87, %84
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i32 5) #8, !dbg !1052
  %93 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1053
  %94 = load i8**, i8*** @argv, align 8, !dbg !1054, !tbaa !616
  %95 = load i32, i32* @pos, align 4, !dbg !1055, !tbaa !693
  %96 = sext i32 %95 to i64, !dbg !1054
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96, !dbg !1054
  %98 = load i8*, i8** %97, align 8, !dbg !1054, !tbaa !616
  %99 = tail call i8* @quote_n(i32 1, i8* %98) #8, !dbg !1056
  tail call void (i8*, ...) @test_syntax_error(i8* %92, i8* %93, i8* %99) #16, !dbg !1057
  unreachable, !dbg !1057

; <label>:100:                                    ; preds = %87
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !1058
  %101 = add nsw i32 %76, 1, !dbg !1060
  store i32 %101, i32* @pos, align 4, !dbg !1060, !tbaa !693
  br label %155, !dbg !1061

; <label>:102:                                    ; preds = %11, %37, %31
  %103 = phi i32 [ %32, %37 ], [ %32, %31 ], [ %15, %11 ]
  %104 = phi i1 [ %33, %37 ], [ %33, %31 ], [ %14, %11 ]
  %105 = phi i8* [ %34, %37 ], [ %34, %31 ], [ %13, %11 ]
  %106 = phi i8 [ %35, %37 ], [ %35, %31 ], [ %12, %11 ]
  %107 = sub nsw i32 %2, %103, !dbg !1062
  %108 = icmp sgt i32 %107, 3, !dbg !1064
  br i1 %108, label %109, label %120, !dbg !1065

; <label>:109:                                    ; preds = %102
  %110 = tail call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #14, !dbg !1066
  %111 = icmp eq i32 %110, 0, !dbg !1066
  br i1 %111, label %112, label %122, !dbg !1067

; <label>:112:                                    ; preds = %109
  %113 = add nsw i32 %103, 2, !dbg !1068
  %114 = sext i32 %113 to i64, !dbg !1069
  %115 = getelementptr inbounds i8*, i8** %5, i64 %114, !dbg !1069
  %116 = load i8*, i8** %115, align 8, !dbg !1069, !tbaa !616
  %117 = tail call fastcc zeroext i1 @binop(i8* %116), !dbg !1070
  br i1 %117, label %118, label %122, !dbg !1071

; <label>:118:                                    ; preds = %112
  %119 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !1072
  br label %155, !dbg !1073

; <label>:120:                                    ; preds = %102
  %121 = icmp eq i32 %107, 3, !dbg !1074
  br i1 %121, label %122, label %130, !dbg !1076

; <label>:122:                                    ; preds = %109, %112, %120
  %123 = add nsw i32 %103, 1, !dbg !1077
  %124 = sext i32 %123 to i64, !dbg !1078
  %125 = getelementptr inbounds i8*, i8** %5, i64 %124, !dbg !1078
  %126 = load i8*, i8** %125, align 8, !dbg !1078, !tbaa !616
  %127 = tail call fastcc zeroext i1 @binop(i8* %126), !dbg !1079
  br i1 %127, label %128, label %130, !dbg !1080

; <label>:128:                                    ; preds = %122
  %129 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1081
  br label %155, !dbg !1082

; <label>:130:                                    ; preds = %122, %120
  %131 = icmp eq i8 %106, 45, !dbg !1083
  br i1 %131, label %132, label %152, !dbg !1085

; <label>:132:                                    ; preds = %130
  %133 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !1086
  %134 = load i8, i8* %133, align 1, !dbg !1086, !tbaa !732
  %135 = icmp eq i8 %134, 0, !dbg !1086
  br i1 %135, label %152, label %136, !dbg !1087

; <label>:136:                                    ; preds = %132
  %137 = getelementptr inbounds i8, i8* %105, i64 2, !dbg !1088
  %138 = load i8, i8* %137, align 1, !dbg !1088, !tbaa !732
  %139 = icmp eq i8 %138, 0, !dbg !1089
  br i1 %139, label %140, label %152, !dbg !1090

; <label>:140:                                    ; preds = %136
  call void @llvm.dbg.value(metadata i8* undef, metadata !874, metadata !DIExpression()), !dbg !1091
  %141 = sext i8 %134 to i32, !dbg !1095
  switch i32 %141, label %144 [
    i32 97, label %142
    i32 98, label %142
    i32 99, label %142
    i32 100, label %142
    i32 101, label %142
    i32 102, label %142
    i32 103, label %142
    i32 104, label %142
    i32 107, label %142
    i32 110, label %142
    i32 111, label %142
    i32 112, label %142
    i32 114, label %142
    i32 115, label %142
    i32 116, label %142
    i32 117, label %142
    i32 119, label %142
    i32 120, label %142
    i32 122, label %142
    i32 71, label %142
    i32 76, label %142
    i32 79, label %142
    i32 83, label %142
    i32 78, label %142
  ], !dbg !1096

; <label>:142:                                    ; preds = %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140
  %143 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1097
  br label %155, !dbg !1098

; <label>:144:                                    ; preds = %140
  %145 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 5) #8, !dbg !1099
  %146 = load i8**, i8*** @argv, align 8, !dbg !1100, !tbaa !616
  %147 = load i32, i32* @pos, align 4, !dbg !1101, !tbaa !693
  %148 = sext i32 %147 to i64, !dbg !1100
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148, !dbg !1100
  %150 = load i8*, i8** %149, align 8, !dbg !1100, !tbaa !616
  %151 = tail call i8* @quote(i8* %150) #8, !dbg !1102
  tail call void (i8*, ...) @test_syntax_error(i8* %145, i8* %151) #16, !dbg !1103
  unreachable, !dbg !1103

; <label>:152:                                    ; preds = %132, %136, %130
  %153 = icmp ne i8 %106, 0, !dbg !1104
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !1106
  %154 = add nsw i32 %103, 1, !dbg !1108
  store i32 %154, i32* @pos, align 4, !dbg !1108, !tbaa !693
  br label %155

; <label>:155:                                    ; preds = %118, %142, %152, %128, %100
  %156 = phi i1 [ %33, %100 ], [ %104, %118 ], [ %104, %128 ], [ %104, %142 ], [ %104, %152 ]
  %157 = phi i1 [ %74, %100 ], [ %119, %118 ], [ %129, %128 ], [ %143, %142 ], [ %153, %152 ]
  %158 = xor i1 %156, %157, !dbg !1109
  ret i1 %158, !dbg !1110
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc zeroext i1 @binop(i8* nocapture readonly) unnamed_addr #9 !dbg !1111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1113, metadata !DIExpression()), !dbg !1114
  %2 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !1115
  %3 = icmp eq i32 %2, 0, !dbg !1115
  br i1 %3, label %37, label %4, !dbg !1116

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #14, !dbg !1117
  %6 = icmp eq i32 %5, 0, !dbg !1117
  br i1 %6, label %37, label %7, !dbg !1118

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !1119
  %9 = icmp eq i32 %8, 0, !dbg !1119
  br i1 %9, label %37, label %10, !dbg !1120

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !1121
  %12 = icmp eq i32 %11, 0, !dbg !1121
  br i1 %12, label %37, label %13, !dbg !1122

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #14, !dbg !1123
  %15 = icmp eq i32 %14, 0, !dbg !1123
  br i1 %15, label %37, label %16, !dbg !1124

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0)) #14, !dbg !1125
  %18 = icmp eq i32 %17, 0, !dbg !1125
  br i1 %18, label %37, label %19, !dbg !1126

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #14, !dbg !1127
  %21 = icmp eq i32 %20, 0, !dbg !1127
  br i1 %21, label %37, label %22, !dbg !1128

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)) #14, !dbg !1129
  %24 = icmp eq i32 %23, 0, !dbg !1129
  br i1 %24, label %37, label %25, !dbg !1130

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #14, !dbg !1131
  %27 = icmp eq i32 %26, 0, !dbg !1131
  br i1 %27, label %37, label %28, !dbg !1132

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #14, !dbg !1133
  %30 = icmp eq i32 %29, 0, !dbg !1133
  br i1 %30, label %37, label %31, !dbg !1134

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #14, !dbg !1135
  %33 = icmp eq i32 %32, 0, !dbg !1135
  br i1 %33, label %37, label %34, !dbg !1136

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #14, !dbg !1137
  %36 = icmp eq i32 %35, 0, !dbg !1137
  br label %37, !dbg !1136

; <label>:37:                                     ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !1138
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext) unnamed_addr #7 !dbg !1139 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i1 %0, metadata !1143, metadata !DIExpression()), !dbg !1218
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !1219
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #8, !dbg !1219
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !1219
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %11) #8, !dbg !1219
  %12 = load i32, i32* @pos, align 4, !dbg !1220, !tbaa !693
  br i1 %0, label %13, label %15, !dbg !1221

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !1222
  %14 = add nsw i32 %12, 1, !dbg !1225
  store i32 %14, i32* @pos, align 4, !dbg !1225, !tbaa !693
  br label %15, !dbg !1226

; <label>:15:                                     ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !1227
  %17 = add nsw i32 %16, 1, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %17, metadata !1144, metadata !DIExpression()), !dbg !1229
  %18 = load i32, i32* @argc, align 4, !dbg !1230, !tbaa !693
  %19 = add nsw i32 %18, -2, !dbg !1232
  %20 = icmp slt i32 %17, %19, !dbg !1233
  %21 = load i8**, i8*** @argv, align 8, !dbg !1234, !tbaa !616
  br i1 %20, label %22, label %30, !dbg !1235

; <label>:22:                                     ; preds = %15
  %23 = add nsw i32 %16, 2, !dbg !1236
  %24 = sext i32 %23 to i64, !dbg !1236
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !1236
  %26 = load i8*, i8** %25, align 8, !dbg !1236, !tbaa !616
  %27 = tail call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #14, !dbg !1236
  %28 = icmp eq i32 %27, 0, !dbg !1236
  br i1 %28, label %29, label %30, !dbg !1237

; <label>:29:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1185, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i1 false, metadata !742, metadata !DIExpression()), !dbg !1239
  store i32 %17, i32* @pos, align 4, !dbg !1242, !tbaa !693
  br label %30, !dbg !1243

; <label>:30:                                     ; preds = %15, %22, %29
  %31 = phi i32 [ %17, %29 ], [ %16, %22 ], [ %16, %15 ]
  %32 = phi i1 [ true, %29 ], [ false, %22 ], [ false, %15 ]
  %33 = sext i32 %17 to i64, !dbg !1244
  %34 = getelementptr inbounds i8*, i8** %21, i64 %33, !dbg !1244
  %35 = load i8*, i8** %34, align 8, !dbg !1244, !tbaa !616
  %36 = load i8, i8* %35, align 1, !dbg !1244, !tbaa !732
  switch i8 %36, label %265 [
    i8 45, label %37
    i8 61, label %247
  ], !dbg !1245

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1246
  %39 = load i8, i8* %38, align 1, !dbg !1246, !tbaa !732
  switch i8 %39, label %107 [
    i8 108, label %40
    i8 103, label %40
    i8 101, label %43
    i8 110, label %47
  ], !dbg !1247

; <label>:40:                                     ; preds = %37, %37
  %41 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1248
  %42 = load i8, i8* %41, align 1, !dbg !1248, !tbaa !732
  switch i8 %42, label %107 [
    i8 101, label %51
    i8 116, label %51
  ], !dbg !1249

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1250
  %45 = load i8, i8* %44, align 1, !dbg !1250, !tbaa !732
  %46 = icmp eq i8 %45, 113, !dbg !1251
  br i1 %46, label %51, label %107, !dbg !1252

; <label>:47:                                     ; preds = %37
  %48 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1253
  %49 = load i8, i8* %48, align 1, !dbg !1253, !tbaa !732
  %50 = icmp eq i8 %49, 101, !dbg !1254
  br i1 %50, label %51, label %107, !dbg !1255

; <label>:51:                                     ; preds = %40, %40, %47, %43
  %52 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1256
  %53 = load i8, i8* %52, align 1, !dbg !1256, !tbaa !732
  %54 = icmp eq i8 %53, 0, !dbg !1256
  br i1 %54, label %55, label %107, !dbg !1257

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1258
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %56) #8, !dbg !1258
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !1186, metadata !DIExpression()), !dbg !1259
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !1260
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %57) #8, !dbg !1260
  call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !1194, metadata !DIExpression()), !dbg !1261
  %58 = sext i32 %16 to i64, !dbg !1262
  %59 = getelementptr inbounds i8*, i8** %21, i64 %58, !dbg !1262
  %60 = load i8*, i8** %59, align 8, !dbg !1262, !tbaa !616
  br i1 %0, label %61, label %64, !dbg !1263

; <label>:61:                                     ; preds = %55
  %62 = tail call i64 @strlen(i8* %60) #14, !dbg !1264
  %63 = call i8* @umaxtostr(i64 %62, i8* nonnull %56) #8, !dbg !1265
  br label %66, !dbg !1263

; <label>:64:                                     ; preds = %55
  %65 = tail call fastcc i8* @find_int(i8* %60), !dbg !1266
  br label %66, !dbg !1263

; <label>:66:                                     ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ], !dbg !1263
  call void @llvm.dbg.value(metadata i8* %67, metadata !1195, metadata !DIExpression()), !dbg !1267
  %68 = load i8**, i8*** @argv, align 8, !dbg !1262, !tbaa !616
  br i1 %32, label %69, label %76, !dbg !1268

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %16, 3, !dbg !1269
  %71 = sext i32 %70 to i64, !dbg !1270
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71, !dbg !1270
  %73 = load i8*, i8** %72, align 8, !dbg !1270, !tbaa !616
  %74 = call i64 @strlen(i8* %73) #14, !dbg !1271
  %75 = call i8* @umaxtostr(i64 %74, i8* nonnull %57) #8, !dbg !1272
  br label %82, !dbg !1268

; <label>:76:                                     ; preds = %66
  %77 = add nsw i32 %16, 2, !dbg !1273
  %78 = sext i32 %77 to i64, !dbg !1274
  %79 = getelementptr inbounds i8*, i8** %68, i64 %78, !dbg !1274
  %80 = load i8*, i8** %79, align 8, !dbg !1274, !tbaa !616
  %81 = call fastcc i8* @find_int(i8* %80), !dbg !1275
  br label %82, !dbg !1268

; <label>:82:                                     ; preds = %76, %69
  %83 = phi i8* [ %75, %69 ], [ %81, %76 ], !dbg !1268
  call void @llvm.dbg.value(metadata i8* %83, metadata !1196, metadata !DIExpression()), !dbg !1276
  %84 = call i32 @strintcmp(i8* %67, i8* %83) #14, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %84, metadata !1197, metadata !DIExpression()), !dbg !1278
  %85 = load i8**, i8*** @argv, align 8, !dbg !1279, !tbaa !616
  %86 = getelementptr inbounds i8*, i8** %85, i64 %33, !dbg !1279
  %87 = load i8*, i8** %86, align 8, !dbg !1279, !tbaa !616
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !1279
  %89 = load i8, i8* %88, align 1, !dbg !1279, !tbaa !732
  %90 = icmp eq i8 %89, 101, !dbg !1280
  %91 = load i32, i32* @pos, align 4, !dbg !1281, !tbaa !693
  %92 = add nsw i32 %91, 3, !dbg !1281
  store i32 %92, i32* @pos, align 4, !dbg !1281, !tbaa !693
  %93 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1282
  %94 = load i8, i8* %93, align 1, !dbg !1282, !tbaa !732
  switch i8 %94, label %101 [
    i8 108, label %95
    i8 103, label %98
  ], !dbg !1282

; <label>:95:                                     ; preds = %82
  %96 = zext i1 %90 to i32, !dbg !1283
  %97 = icmp slt i32 %84, %96, !dbg !1284
  br label %105, !dbg !1282

; <label>:98:                                     ; preds = %82
  %99 = sext i1 %90 to i32, !dbg !1285
  %100 = icmp sgt i32 %84, %99, !dbg !1286
  br label %105, !dbg !1287

; <label>:101:                                    ; preds = %82
  %102 = icmp ne i32 %84, 0, !dbg !1288
  %103 = xor i1 %102, %90, !dbg !1289
  %104 = xor i1 %103, true, !dbg !1289
  br label %105, !dbg !1287

; <label>:105:                                    ; preds = %98, %101, %95
  %106 = phi i1 [ %97, %95 ], [ %100, %98 ], [ %104, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %57) #8, !dbg !1290
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %56) #8, !dbg !1290
  br label %280

; <label>:107:                                    ; preds = %37, %40, %43, %51, %47
  %108 = sext i8 %39 to i32, !dbg !1291
  switch i32 %108, label %241 [
    i32 110, label %109
    i32 101, label %156
    i32 111, label %195
  ], !dbg !1292

; <label>:109:                                    ; preds = %107
  %110 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1293
  %111 = load i8, i8* %110, align 1, !dbg !1293, !tbaa !732
  %112 = icmp eq i8 %111, 116, !dbg !1294
  br i1 %112, label %113, label %241, !dbg !1295

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1296
  %115 = load i8, i8* %114, align 1, !dbg !1296, !tbaa !732
  %116 = icmp eq i8 %115, 0, !dbg !1296
  br i1 %116, label %117, label %241, !dbg !1297

; <label>:117:                                    ; preds = %113
  %118 = add nsw i32 %31, 3, !dbg !1298
  store i32 %118, i32* @pos, align 4, !dbg !1298, !tbaa !693
  %119 = or i1 %32, %0, !dbg !1299
  br i1 %119, label %120, label %122, !dbg !1299

; <label>:120:                                    ; preds = %117
  %121 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i32 5) #8, !dbg !1301
  tail call void (i8*, ...) @test_syntax_error(i8* %121, i8* null) #16, !dbg !1302
  unreachable, !dbg !1302

; <label>:122:                                    ; preds = %117
  %123 = sext i32 %16 to i64, !dbg !1303
  %124 = getelementptr inbounds i8*, i8** %21, i64 %123, !dbg !1303
  %125 = load i8*, i8** %124, align 8, !dbg !1303, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1199, metadata !DIExpression(DW_OP_deref)), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %125, metadata !1305, metadata !DIExpression()) #8, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1311, metadata !DIExpression()) #8, !dbg !1316
  %126 = bitcast %struct.stat* %4 to i8*, !dbg !1317
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %126) #8, !dbg !1317
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1312, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1318
  call void @llvm.dbg.value(metadata i8* %125, metadata !1319, metadata !DIExpression()) #8, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1326, metadata !DIExpression()) #8, !dbg !1327
  %127 = call i32 @__xstat(i32 1, i8* nonnull %125, %struct.stat* nonnull %4) #8, !dbg !1329
  %128 = icmp eq i32 %127, 0, !dbg !1330
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1312, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1318
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1331, metadata !DIExpression()) #8, !dbg !1339
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !1342
  %130 = load i64, i64* %129, align 8, !dbg !1342
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !1342
  %132 = load i64, i64* %131, align 8, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %126) #8, !dbg !1343
  %133 = load i8**, i8*** @argv, align 8, !dbg !1344, !tbaa !616
  %134 = add nsw i32 %16, 2, !dbg !1345
  %135 = sext i32 %134 to i64, !dbg !1344
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135, !dbg !1344
  %137 = load i8*, i8** %136, align 8, !dbg !1344, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1203, metadata !DIExpression(DW_OP_deref)), !dbg !1346
  call void @llvm.dbg.value(metadata i8* %137, metadata !1305, metadata !DIExpression()) #8, !dbg !1347
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1311, metadata !DIExpression()) #8, !dbg !1349
  %138 = bitcast %struct.stat* %3 to i8*, !dbg !1350
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %138) #8, !dbg !1350
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1312, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %137, metadata !1319, metadata !DIExpression()) #8, !dbg !1352
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1326, metadata !DIExpression()) #8, !dbg !1352
  %139 = call i32 @__xstat(i32 1, i8* nonnull %137, %struct.stat* nonnull %3) #8, !dbg !1354
  %140 = icmp eq i32 %139, 0, !dbg !1355
  br i1 %140, label %142, label %141, !dbg !1356

; <label>:141:                                    ; preds = %122
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %138) #8, !dbg !1357
  br label %280, !dbg !1358

; <label>:142:                                    ; preds = %122
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1312, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1351
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1331, metadata !DIExpression()) #8, !dbg !1359
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !1361
  %144 = load i64, i64* %143, align 8, !dbg !1361
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !1361
  %146 = load i64, i64* %145, align 8, !dbg !1361
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %138) #8, !dbg !1357
  %147 = xor i1 %128, true, !dbg !1358
  %148 = icmp slt i64 %130, %144, !dbg !1362
  %149 = or i1 %148, %147, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %130, metadata !1368, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %132, metadata !1368, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %144, metadata !1369, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1372
  call void @llvm.dbg.value(metadata i64 %146, metadata !1369, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1372
  br i1 %149, label %280, label %150, !dbg !1358

; <label>:150:                                    ; preds = %142
  %151 = icmp sgt i64 %130, %144, !dbg !1373
  br i1 %151, label %280, label %152, !dbg !1375

; <label>:152:                                    ; preds = %150
  %153 = sub nsw i64 %132, %146, !dbg !1376
  %154 = trunc i64 %153 to i32, !dbg !1377
  %155 = icmp sgt i32 %154, 0, !dbg !1378
  br label %280, !dbg !1378

; <label>:156:                                    ; preds = %107
  %157 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1379
  %158 = load i8, i8* %157, align 1, !dbg !1379, !tbaa !732
  %159 = icmp eq i8 %158, 102, !dbg !1381
  br i1 %159, label %160, label %241, !dbg !1382

; <label>:160:                                    ; preds = %156
  %161 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1383
  %162 = load i8, i8* %161, align 1, !dbg !1383, !tbaa !732
  %163 = icmp eq i8 %162, 0, !dbg !1383
  br i1 %163, label %164, label %241, !dbg !1384

; <label>:164:                                    ; preds = %160
  %165 = add nsw i32 %31, 3, !dbg !1385
  store i32 %165, i32* @pos, align 4, !dbg !1385, !tbaa !693
  %166 = or i1 %32, %0, !dbg !1387
  br i1 %166, label %167, label %169, !dbg !1387

; <label>:167:                                    ; preds = %164
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i32 5) #8, !dbg !1389
  tail call void (i8*, ...) @test_syntax_error(i8* %168, i8* null) #16, !dbg !1390
  unreachable, !dbg !1390

; <label>:169:                                    ; preds = %164
  %170 = sext i32 %16 to i64, !dbg !1391
  %171 = getelementptr inbounds i8*, i8** %21, i64 %170, !dbg !1391
  %172 = load i8*, i8** %171, align 8, !dbg !1391, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !1145, metadata !DIExpression(DW_OP_deref)), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %172, metadata !1319, metadata !DIExpression()) #8, !dbg !1393
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !1326, metadata !DIExpression()) #8, !dbg !1393
  %173 = call i32 @__xstat(i32 1, i8* nonnull %172, %struct.stat* nonnull %6) #8, !dbg !1395
  %174 = icmp eq i32 %173, 0, !dbg !1396
  br i1 %174, label %175, label %280, !dbg !1397

; <label>:175:                                    ; preds = %169
  %176 = load i8**, i8*** @argv, align 8, !dbg !1398, !tbaa !616
  %177 = add nsw i32 %16, 2, !dbg !1399
  %178 = sext i32 %177 to i64, !dbg !1398
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178, !dbg !1398
  %180 = load i8*, i8** %179, align 8, !dbg !1398, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1184, metadata !DIExpression(DW_OP_deref)), !dbg !1400
  call void @llvm.dbg.value(metadata i8* %180, metadata !1319, metadata !DIExpression()) #8, !dbg !1401
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1326, metadata !DIExpression()) #8, !dbg !1401
  %181 = call i32 @__xstat(i32 1, i8* nonnull %180, %struct.stat* nonnull %7) #8, !dbg !1403
  %182 = icmp eq i32 %181, 0, !dbg !1404
  br i1 %182, label %183, label %280, !dbg !1405

; <label>:183:                                    ; preds = %175
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !1406
  %185 = load i64, i64* %184, align 8, !dbg !1406, !tbaa !1407
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !1411
  %187 = load i64, i64* %186, align 8, !dbg !1411, !tbaa !1407
  %188 = icmp eq i64 %185, %187, !dbg !1412
  br i1 %188, label %189, label %280, !dbg !1413

; <label>:189:                                    ; preds = %183
  %190 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !1414
  %191 = load i64, i64* %190, align 8, !dbg !1414, !tbaa !1415
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !1416
  %193 = load i64, i64* %192, align 8, !dbg !1416, !tbaa !1415
  %194 = icmp eq i64 %191, %193, !dbg !1417
  br label %280

; <label>:195:                                    ; preds = %107
  %196 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1418
  %197 = load i8, i8* %196, align 1, !dbg !1418, !tbaa !732
  %198 = icmp eq i8 %197, 116, !dbg !1419
  br i1 %198, label %199, label %241, !dbg !1420

; <label>:199:                                    ; preds = %195
  %200 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1421
  %201 = load i8, i8* %200, align 1, !dbg !1421, !tbaa !732
  %202 = icmp eq i8 %201, 0, !dbg !1422
  br i1 %202, label %203, label %241, !dbg !1423

; <label>:203:                                    ; preds = %199
  %204 = add nsw i32 %31, 3, !dbg !1424
  store i32 %204, i32* @pos, align 4, !dbg !1424, !tbaa !693
  %205 = or i1 %32, %0, !dbg !1425
  br i1 %205, label %206, label %208, !dbg !1425

; <label>:206:                                    ; preds = %203
  %207 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i32 5) #8, !dbg !1427
  tail call void (i8*, ...) @test_syntax_error(i8* %207, i8* null) #16, !dbg !1428
  unreachable, !dbg !1428

; <label>:208:                                    ; preds = %203
  %209 = sext i32 %16 to i64, !dbg !1429
  %210 = getelementptr inbounds i8*, i8** %21, i64 %209, !dbg !1429
  %211 = load i8*, i8** %210, align 8, !dbg !1429, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1206, metadata !DIExpression(DW_OP_deref)), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %211, metadata !1305, metadata !DIExpression()) #8, !dbg !1431
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1311, metadata !DIExpression()) #8, !dbg !1433
  %212 = bitcast %struct.stat* %2 to i8*, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %212) #8, !dbg !1434
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1312, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1435
  call void @llvm.dbg.value(metadata i8* %211, metadata !1319, metadata !DIExpression()) #8, !dbg !1436
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1326, metadata !DIExpression()) #8, !dbg !1436
  %213 = call i32 @__xstat(i32 1, i8* nonnull %211, %struct.stat* nonnull %2) #8, !dbg !1438
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1312, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1435
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1331, metadata !DIExpression()) #8, !dbg !1439
  %214 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !1441
  %215 = load i64, i64* %214, align 8, !dbg !1441
  %216 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !1441
  %217 = load i64, i64* %216, align 8, !dbg !1441
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %212) #8, !dbg !1442
  %218 = load i8**, i8*** @argv, align 8, !dbg !1443, !tbaa !616
  %219 = add nsw i32 %16, 2, !dbg !1444
  %220 = sext i32 %219 to i64, !dbg !1443
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220, !dbg !1443
  %222 = load i8*, i8** %221, align 8, !dbg !1443, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1209, metadata !DIExpression(DW_OP_deref)), !dbg !1445
  call void @llvm.dbg.value(metadata i8* %222, metadata !1305, metadata !DIExpression()) #8, !dbg !1446
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1311, metadata !DIExpression()) #8, !dbg !1448
  %223 = bitcast %struct.stat* %5 to i8*, !dbg !1449
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %223) #8, !dbg !1449
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1312, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %222, metadata !1319, metadata !DIExpression()) #8, !dbg !1451
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1326, metadata !DIExpression()) #8, !dbg !1451
  %224 = call i32 @__xstat(i32 1, i8* nonnull %222, %struct.stat* nonnull %5) #8, !dbg !1453
  %225 = icmp eq i32 %224, 0, !dbg !1454
  br i1 %225, label %227, label %226, !dbg !1455

; <label>:226:                                    ; preds = %208
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #8, !dbg !1456
  br label %280, !dbg !1457

; <label>:227:                                    ; preds = %208
  %228 = icmp ne i32 %213, 0, !dbg !1458
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1312, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1450
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1331, metadata !DIExpression()) #8, !dbg !1459
  %229 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !1461
  %230 = load i64, i64* %229, align 8, !dbg !1461
  %231 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !1461
  %232 = load i64, i64* %231, align 8, !dbg !1461
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %223) #8, !dbg !1456
  %233 = icmp slt i64 %215, %230, !dbg !1462
  %234 = or i1 %228, %233, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %215, metadata !1368, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %217, metadata !1368, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %230, metadata !1369, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %232, metadata !1369, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1465
  br i1 %234, label %280, label %235, !dbg !1457

; <label>:235:                                    ; preds = %227
  %236 = icmp sgt i64 %215, %230, !dbg !1466
  br i1 %236, label %280, label %237, !dbg !1467

; <label>:237:                                    ; preds = %235
  %238 = sub nsw i64 %217, %232, !dbg !1468
  %239 = trunc i64 %238 to i32, !dbg !1469
  %240 = icmp slt i32 %239, 0, !dbg !1470
  br label %280, !dbg !1470

; <label>:241:                                    ; preds = %113, %160, %195, %199, %156, %109, %107
  %242 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i32 5) #8, !dbg !1471
  %243 = load i8**, i8*** @argv, align 8, !dbg !1472, !tbaa !616
  %244 = getelementptr inbounds i8*, i8** %243, i64 %33, !dbg !1472
  %245 = load i8*, i8** %244, align 8, !dbg !1472, !tbaa !616
  %246 = tail call i8* @quote(i8* %245) #8, !dbg !1473
  tail call void (i8*, ...) @test_syntax_error(i8* %242, i8* %246) #16, !dbg !1474
  unreachable, !dbg !1474

; <label>:247:                                    ; preds = %30
  %248 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1475
  %249 = load i8, i8* %248, align 1, !dbg !1475, !tbaa !732
  switch i8 %249, label %265 [
    i8 0, label %254
    i8 61, label %250
  ], !dbg !1476

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1477
  %252 = load i8, i8* %251, align 1, !dbg !1477, !tbaa !732
  %253 = icmp eq i8 %252, 0, !dbg !1477
  br i1 %253, label %254, label %265, !dbg !1478

; <label>:254:                                    ; preds = %247, %250
  %255 = sext i32 %31 to i64, !dbg !1479
  %256 = getelementptr inbounds i8*, i8** %21, i64 %255, !dbg !1479
  %257 = load i8*, i8** %256, align 8, !dbg !1479, !tbaa !616
  %258 = add nsw i32 %31, 2, !dbg !1479
  %259 = sext i32 %258 to i64, !dbg !1479
  %260 = getelementptr inbounds i8*, i8** %21, i64 %259, !dbg !1479
  %261 = load i8*, i8** %260, align 8, !dbg !1479, !tbaa !616
  %262 = tail call i32 @strcmp(i8* %257, i8* %261) #14, !dbg !1479
  %263 = icmp eq i32 %262, 0, !dbg !1479
  %264 = add nsw i32 %31, 3, !dbg !1480
  store i32 %264, i32* @pos, align 4, !dbg !1480, !tbaa !693
  br label %280

; <label>:265:                                    ; preds = %247, %30, %250
  %266 = tail call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #14, !dbg !1481
  %267 = icmp eq i32 %266, 0, !dbg !1481
  br i1 %267, label %268, label %279, !dbg !1482

; <label>:268:                                    ; preds = %265
  %269 = sext i32 %31 to i64, !dbg !1483
  %270 = getelementptr inbounds i8*, i8** %21, i64 %269, !dbg !1483
  %271 = load i8*, i8** %270, align 8, !dbg !1483, !tbaa !616
  %272 = add nsw i32 %31, 2, !dbg !1483
  %273 = sext i32 %272 to i64, !dbg !1483
  %274 = getelementptr inbounds i8*, i8** %21, i64 %273, !dbg !1483
  %275 = load i8*, i8** %274, align 8, !dbg !1483, !tbaa !616
  %276 = tail call i32 @strcmp(i8* %271, i8* %275) #14, !dbg !1483
  %277 = icmp ne i32 %276, 0, !dbg !1483
  %278 = add nsw i32 %31, 3, !dbg !1484
  store i32 %278, i32* @pos, align 4, !dbg !1484, !tbaa !693
  br label %280

; <label>:279:                                    ; preds = %265
  tail call void @abort() #15, !dbg !1485
  unreachable, !dbg !1485

; <label>:280:                                    ; preds = %227, %142, %237, %235, %152, %150, %226, %141, %169, %175, %183, %189, %268, %254, %105
  %281 = phi i1 [ %106, %105 ], [ %277, %268 ], [ %263, %254 ], [ false, %183 ], [ false, %175 ], [ false, %169 ], [ %194, %189 ], [ false, %142 ], [ %128, %141 ], [ true, %227 ], [ false, %226 ], [ %155, %152 ], [ true, %150 ], [ %240, %237 ], [ false, %235 ], !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %11) #8, !dbg !1487
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #8, !dbg !1487
  ret i1 %281, !dbg !1487
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #7 !dbg !1488 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !1504
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #8, !dbg !1504
  %3 = load i8**, i8*** @argv, align 8, !dbg !1505, !tbaa !616
  %4 = load i32, i32* @pos, align 4, !dbg !1506, !tbaa !693
  %5 = sext i32 %4 to i64, !dbg !1505
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !1505
  %7 = load i8*, i8** %6, align 8, !dbg !1505, !tbaa !616
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1505
  %9 = load i8, i8* %8, align 1, !dbg !1505, !tbaa !732
  %10 = sext i8 %9 to i32, !dbg !1505
  switch i32 %10, label %336 [
    i32 97, label %11
    i32 101, label %11
    i32 114, label %23
    i32 119, label %35
    i32 120, label %47
    i32 79, label %59
    i32 71, label %82
    i32 102, label %105
    i32 100, label %122
    i32 115, label %139
    i32 83, label %155
    i32 99, label %172
    i32 98, label %189
    i32 112, label %206
    i32 76, label %223
    i32 104, label %223
    i32 117, label %240
    i32 103, label %257
    i32 107, label %274
    i32 116, label %291
    i32 110, label %312
    i32 122, label %324
  ], !dbg !1507

; <label>:11:                                     ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1508
  %12 = add nsw i32 %4, 1, !dbg !1512
  store i32 %12, i32* @pos, align 4, !dbg !1512, !tbaa !693
  %13 = load i32, i32* @argc, align 4, !dbg !1513
  %14 = icmp slt i32 %12, %13, !dbg !1514
  br i1 %14, label %16, label %15, !dbg !1515

; <label>:15:                                     ; preds = %11
  tail call fastcc void @beyond() #15, !dbg !1516
  unreachable, !dbg !1516

; <label>:16:                                     ; preds = %11
  %17 = add nsw i32 %4, 2, !dbg !1517
  store i32 %17, i32* @pos, align 4, !dbg !1517, !tbaa !693
  %18 = sext i32 %12 to i64, !dbg !1518
  %19 = getelementptr inbounds i8*, i8** %3, i64 %18, !dbg !1518
  %20 = load i8*, i8** %19, align 8, !dbg !1518, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %20, metadata !1319, metadata !DIExpression()) #8, !dbg !1520
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1520
  %21 = call i32 @__xstat(i32 1, i8* nonnull %20, %struct.stat* nonnull %1) #8, !dbg !1522
  %22 = icmp eq i32 %21, 0, !dbg !1523
  br label %336, !dbg !1524

; <label>:23:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1525
  %24 = add nsw i32 %4, 1, !dbg !1528
  store i32 %24, i32* @pos, align 4, !dbg !1528, !tbaa !693
  %25 = load i32, i32* @argc, align 4, !dbg !1529
  %26 = icmp slt i32 %24, %25, !dbg !1530
  br i1 %26, label %28, label %27, !dbg !1531

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #15, !dbg !1532
  unreachable, !dbg !1532

; <label>:28:                                     ; preds = %23
  %29 = add nsw i32 %4, 2, !dbg !1533
  store i32 %29, i32* @pos, align 4, !dbg !1533, !tbaa !693
  %30 = sext i32 %24 to i64, !dbg !1534
  %31 = getelementptr inbounds i8*, i8** %3, i64 %30, !dbg !1534
  %32 = load i8*, i8** %31, align 8, !dbg !1534, !tbaa !616
  %33 = tail call i32 @euidaccess(i8* %32, i32 4) #8, !dbg !1535
  %34 = icmp eq i32 %33, 0, !dbg !1536
  br label %336, !dbg !1537

; <label>:35:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1538
  %36 = add nsw i32 %4, 1, !dbg !1541
  store i32 %36, i32* @pos, align 4, !dbg !1541, !tbaa !693
  %37 = load i32, i32* @argc, align 4, !dbg !1542
  %38 = icmp slt i32 %36, %37, !dbg !1543
  br i1 %38, label %40, label %39, !dbg !1544

; <label>:39:                                     ; preds = %35
  tail call fastcc void @beyond() #15, !dbg !1545
  unreachable, !dbg !1545

; <label>:40:                                     ; preds = %35
  %41 = add nsw i32 %4, 2, !dbg !1546
  store i32 %41, i32* @pos, align 4, !dbg !1546, !tbaa !693
  %42 = sext i32 %36 to i64, !dbg !1547
  %43 = getelementptr inbounds i8*, i8** %3, i64 %42, !dbg !1547
  %44 = load i8*, i8** %43, align 8, !dbg !1547, !tbaa !616
  %45 = tail call i32 @euidaccess(i8* %44, i32 2) #8, !dbg !1548
  %46 = icmp eq i32 %45, 0, !dbg !1549
  br label %336, !dbg !1550

; <label>:47:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1551
  %48 = add nsw i32 %4, 1, !dbg !1554
  store i32 %48, i32* @pos, align 4, !dbg !1554, !tbaa !693
  %49 = load i32, i32* @argc, align 4, !dbg !1555
  %50 = icmp slt i32 %48, %49, !dbg !1556
  br i1 %50, label %52, label %51, !dbg !1557

; <label>:51:                                     ; preds = %47
  tail call fastcc void @beyond() #15, !dbg !1558
  unreachable, !dbg !1558

; <label>:52:                                     ; preds = %47
  %53 = add nsw i32 %4, 2, !dbg !1559
  store i32 %53, i32* @pos, align 4, !dbg !1559, !tbaa !693
  %54 = sext i32 %48 to i64, !dbg !1560
  %55 = getelementptr inbounds i8*, i8** %3, i64 %54, !dbg !1560
  %56 = load i8*, i8** %55, align 8, !dbg !1560, !tbaa !616
  %57 = tail call i32 @euidaccess(i8* %56, i32 1) #8, !dbg !1561
  %58 = icmp eq i32 %57, 0, !dbg !1562
  br label %336, !dbg !1563

; <label>:59:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1564
  %60 = add nsw i32 %4, 1, !dbg !1567
  store i32 %60, i32* @pos, align 4, !dbg !1567, !tbaa !693
  %61 = load i32, i32* @argc, align 4, !dbg !1568
  %62 = icmp slt i32 %60, %61, !dbg !1569
  br i1 %62, label %64, label %63, !dbg !1570

; <label>:63:                                     ; preds = %59
  tail call fastcc void @beyond() #15, !dbg !1571
  unreachable, !dbg !1571

; <label>:64:                                     ; preds = %59
  %65 = add nsw i32 %4, 2, !dbg !1572
  store i32 %65, i32* @pos, align 4, !dbg !1572, !tbaa !693
  %66 = sext i32 %60 to i64, !dbg !1573
  %67 = getelementptr inbounds i8*, i8** %3, i64 %66, !dbg !1573
  %68 = load i8*, i8** %67, align 8, !dbg !1573, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %68, metadata !1319, metadata !DIExpression()) #8, !dbg !1575
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1575
  %69 = call i32 @__xstat(i32 1, i8* nonnull %68, %struct.stat* nonnull %1) #8, !dbg !1577
  %70 = icmp eq i32 %69, 0, !dbg !1578
  br i1 %70, label %71, label %336, !dbg !1579

; <label>:71:                                     ; preds = %64
  %72 = tail call i32* @__errno_location() #17, !dbg !1580
  store i32 0, i32* %72, align 4, !dbg !1581, !tbaa !693
  %73 = call i32 @geteuid() #8, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %73, metadata !1491, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 -1, metadata !1496, metadata !DIExpression()), !dbg !1584
  %74 = icmp eq i32 %73, -1, !dbg !1585
  br i1 %74, label %75, label %78, !dbg !1586

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %72, align 4, !dbg !1587, !tbaa !693
  %77 = icmp eq i32 %76, 0, !dbg !1587
  br i1 %77, label %78, label %336, !dbg !1588

; <label>:78:                                     ; preds = %75, %71
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !1589
  %80 = load i32, i32* %79, align 4, !dbg !1589, !tbaa !1590
  %81 = icmp eq i32 %73, %80, !dbg !1591
  br label %336

; <label>:82:                                     ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1592
  %83 = add nsw i32 %4, 1, !dbg !1595
  store i32 %83, i32* @pos, align 4, !dbg !1595, !tbaa !693
  %84 = load i32, i32* @argc, align 4, !dbg !1596
  %85 = icmp slt i32 %83, %84, !dbg !1597
  br i1 %85, label %87, label %86, !dbg !1598

; <label>:86:                                     ; preds = %82
  tail call fastcc void @beyond() #15, !dbg !1599
  unreachable, !dbg !1599

; <label>:87:                                     ; preds = %82
  %88 = add nsw i32 %4, 2, !dbg !1600
  store i32 %88, i32* @pos, align 4, !dbg !1600, !tbaa !693
  %89 = sext i32 %83 to i64, !dbg !1601
  %90 = getelementptr inbounds i8*, i8** %3, i64 %89, !dbg !1601
  %91 = load i8*, i8** %90, align 8, !dbg !1601, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %91, metadata !1319, metadata !DIExpression()) #8, !dbg !1603
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1603
  %92 = call i32 @__xstat(i32 1, i8* nonnull %91, %struct.stat* nonnull %1) #8, !dbg !1605
  %93 = icmp eq i32 %92, 0, !dbg !1606
  br i1 %93, label %94, label %336, !dbg !1607

; <label>:94:                                     ; preds = %87
  %95 = tail call i32* @__errno_location() #17, !dbg !1608
  store i32 0, i32* %95, align 4, !dbg !1609, !tbaa !693
  %96 = call i32 @getegid() #8, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %96, metadata !1497, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 -1, metadata !1500, metadata !DIExpression()), !dbg !1612
  %97 = icmp eq i32 %96, -1, !dbg !1613
  br i1 %97, label %98, label %101, !dbg !1614

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %95, align 4, !dbg !1615, !tbaa !693
  %100 = icmp eq i32 %99, 0, !dbg !1615
  br i1 %100, label %101, label %336, !dbg !1616

; <label>:101:                                    ; preds = %98, %94
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !1617
  %103 = load i32, i32* %102, align 8, !dbg !1617, !tbaa !1618
  %104 = icmp eq i32 %96, %103, !dbg !1619
  br label %336

; <label>:105:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1620
  %106 = add nsw i32 %4, 1, !dbg !1623
  store i32 %106, i32* @pos, align 4, !dbg !1623, !tbaa !693
  %107 = load i32, i32* @argc, align 4, !dbg !1624
  %108 = icmp slt i32 %106, %107, !dbg !1625
  br i1 %108, label %110, label %109, !dbg !1626

; <label>:109:                                    ; preds = %105
  tail call fastcc void @beyond() #15, !dbg !1627
  unreachable, !dbg !1627

; <label>:110:                                    ; preds = %105
  %111 = add nsw i32 %4, 2, !dbg !1628
  store i32 %111, i32* @pos, align 4, !dbg !1628, !tbaa !693
  %112 = sext i32 %106 to i64, !dbg !1629
  %113 = getelementptr inbounds i8*, i8** %3, i64 %112, !dbg !1629
  %114 = load i8*, i8** %113, align 8, !dbg !1629, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %114, metadata !1319, metadata !DIExpression()) #8, !dbg !1630
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1630
  %115 = call i32 @__xstat(i32 1, i8* nonnull %114, %struct.stat* nonnull %1) #8, !dbg !1632
  %116 = icmp eq i32 %115, 0, !dbg !1633
  br i1 %116, label %117, label %336, !dbg !1634

; <label>:117:                                    ; preds = %110
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1635
  %119 = load i32, i32* %118, align 8, !dbg !1635, !tbaa !1636
  %120 = and i32 %119, 61440, !dbg !1635
  %121 = icmp eq i32 %120, 32768, !dbg !1635
  br label %336

; <label>:122:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1637
  %123 = add nsw i32 %4, 1, !dbg !1640
  store i32 %123, i32* @pos, align 4, !dbg !1640, !tbaa !693
  %124 = load i32, i32* @argc, align 4, !dbg !1641
  %125 = icmp slt i32 %123, %124, !dbg !1642
  br i1 %125, label %127, label %126, !dbg !1643

; <label>:126:                                    ; preds = %122
  tail call fastcc void @beyond() #15, !dbg !1644
  unreachable, !dbg !1644

; <label>:127:                                    ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1645
  store i32 %128, i32* @pos, align 4, !dbg !1645, !tbaa !693
  %129 = sext i32 %123 to i64, !dbg !1646
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !1646
  %131 = load i8*, i8** %130, align 8, !dbg !1646, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %131, metadata !1319, metadata !DIExpression()) #8, !dbg !1647
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1647
  %132 = call i32 @__xstat(i32 1, i8* nonnull %131, %struct.stat* nonnull %1) #8, !dbg !1649
  %133 = icmp eq i32 %132, 0, !dbg !1650
  br i1 %133, label %134, label %336, !dbg !1651

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1652
  %136 = load i32, i32* %135, align 8, !dbg !1652, !tbaa !1636
  %137 = and i32 %136, 61440, !dbg !1652
  %138 = icmp eq i32 %137, 16384, !dbg !1652
  br label %336

; <label>:139:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1653
  %140 = add nsw i32 %4, 1, !dbg !1656
  store i32 %140, i32* @pos, align 4, !dbg !1656, !tbaa !693
  %141 = load i32, i32* @argc, align 4, !dbg !1657
  %142 = icmp slt i32 %140, %141, !dbg !1658
  br i1 %142, label %144, label %143, !dbg !1659

; <label>:143:                                    ; preds = %139
  tail call fastcc void @beyond() #15, !dbg !1660
  unreachable, !dbg !1660

; <label>:144:                                    ; preds = %139
  %145 = add nsw i32 %4, 2, !dbg !1661
  store i32 %145, i32* @pos, align 4, !dbg !1661, !tbaa !693
  %146 = sext i32 %140 to i64, !dbg !1662
  %147 = getelementptr inbounds i8*, i8** %3, i64 %146, !dbg !1662
  %148 = load i8*, i8** %147, align 8, !dbg !1662, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %148, metadata !1319, metadata !DIExpression()) #8, !dbg !1663
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1663
  %149 = call i32 @__xstat(i32 1, i8* nonnull %148, %struct.stat* nonnull %1) #8, !dbg !1665
  %150 = icmp eq i32 %149, 0, !dbg !1666
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !1667
  %152 = load i64, i64* %151, align 8, !dbg !1667
  %153 = icmp sgt i64 %152, 0, !dbg !1668
  %154 = and i1 %150, %153, !dbg !1669
  br label %336, !dbg !1670

; <label>:155:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1671
  %156 = add nsw i32 %4, 1, !dbg !1674
  store i32 %156, i32* @pos, align 4, !dbg !1674, !tbaa !693
  %157 = load i32, i32* @argc, align 4, !dbg !1675
  %158 = icmp slt i32 %156, %157, !dbg !1676
  br i1 %158, label %160, label %159, !dbg !1677

; <label>:159:                                    ; preds = %155
  tail call fastcc void @beyond() #15, !dbg !1678
  unreachable, !dbg !1678

; <label>:160:                                    ; preds = %155
  %161 = add nsw i32 %4, 2, !dbg !1679
  store i32 %161, i32* @pos, align 4, !dbg !1679, !tbaa !693
  %162 = sext i32 %156 to i64, !dbg !1680
  %163 = getelementptr inbounds i8*, i8** %3, i64 %162, !dbg !1680
  %164 = load i8*, i8** %163, align 8, !dbg !1680, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %164, metadata !1319, metadata !DIExpression()) #8, !dbg !1681
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1681
  %165 = call i32 @__xstat(i32 1, i8* nonnull %164, %struct.stat* nonnull %1) #8, !dbg !1683
  %166 = icmp eq i32 %165, 0, !dbg !1684
  br i1 %166, label %167, label %336, !dbg !1685

; <label>:167:                                    ; preds = %160
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1686
  %169 = load i32, i32* %168, align 8, !dbg !1686, !tbaa !1636
  %170 = and i32 %169, 61440, !dbg !1686
  %171 = icmp eq i32 %170, 49152, !dbg !1686
  br label %336

; <label>:172:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1687
  %173 = add nsw i32 %4, 1, !dbg !1690
  store i32 %173, i32* @pos, align 4, !dbg !1690, !tbaa !693
  %174 = load i32, i32* @argc, align 4, !dbg !1691
  %175 = icmp slt i32 %173, %174, !dbg !1692
  br i1 %175, label %177, label %176, !dbg !1693

; <label>:176:                                    ; preds = %172
  tail call fastcc void @beyond() #15, !dbg !1694
  unreachable, !dbg !1694

; <label>:177:                                    ; preds = %172
  %178 = add nsw i32 %4, 2, !dbg !1695
  store i32 %178, i32* @pos, align 4, !dbg !1695, !tbaa !693
  %179 = sext i32 %173 to i64, !dbg !1696
  %180 = getelementptr inbounds i8*, i8** %3, i64 %179, !dbg !1696
  %181 = load i8*, i8** %180, align 8, !dbg !1696, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %181, metadata !1319, metadata !DIExpression()) #8, !dbg !1697
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1697
  %182 = call i32 @__xstat(i32 1, i8* nonnull %181, %struct.stat* nonnull %1) #8, !dbg !1699
  %183 = icmp eq i32 %182, 0, !dbg !1700
  br i1 %183, label %184, label %336, !dbg !1701

; <label>:184:                                    ; preds = %177
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1702
  %186 = load i32, i32* %185, align 8, !dbg !1702, !tbaa !1636
  %187 = and i32 %186, 61440, !dbg !1702
  %188 = icmp eq i32 %187, 8192, !dbg !1702
  br label %336

; <label>:189:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1703
  %190 = add nsw i32 %4, 1, !dbg !1706
  store i32 %190, i32* @pos, align 4, !dbg !1706, !tbaa !693
  %191 = load i32, i32* @argc, align 4, !dbg !1707
  %192 = icmp slt i32 %190, %191, !dbg !1708
  br i1 %192, label %194, label %193, !dbg !1709

; <label>:193:                                    ; preds = %189
  tail call fastcc void @beyond() #15, !dbg !1710
  unreachable, !dbg !1710

; <label>:194:                                    ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !1711
  store i32 %195, i32* @pos, align 4, !dbg !1711, !tbaa !693
  %196 = sext i32 %190 to i64, !dbg !1712
  %197 = getelementptr inbounds i8*, i8** %3, i64 %196, !dbg !1712
  %198 = load i8*, i8** %197, align 8, !dbg !1712, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %198, metadata !1319, metadata !DIExpression()) #8, !dbg !1713
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1713
  %199 = call i32 @__xstat(i32 1, i8* nonnull %198, %struct.stat* nonnull %1) #8, !dbg !1715
  %200 = icmp eq i32 %199, 0, !dbg !1716
  br i1 %200, label %201, label %336, !dbg !1717

; <label>:201:                                    ; preds = %194
  %202 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1718
  %203 = load i32, i32* %202, align 8, !dbg !1718, !tbaa !1636
  %204 = and i32 %203, 61440, !dbg !1718
  %205 = icmp eq i32 %204, 24576, !dbg !1718
  br label %336

; <label>:206:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1719
  %207 = add nsw i32 %4, 1, !dbg !1722
  store i32 %207, i32* @pos, align 4, !dbg !1722, !tbaa !693
  %208 = load i32, i32* @argc, align 4, !dbg !1723
  %209 = icmp slt i32 %207, %208, !dbg !1724
  br i1 %209, label %211, label %210, !dbg !1725

; <label>:210:                                    ; preds = %206
  tail call fastcc void @beyond() #15, !dbg !1726
  unreachable, !dbg !1726

; <label>:211:                                    ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !1727
  store i32 %212, i32* @pos, align 4, !dbg !1727, !tbaa !693
  %213 = sext i32 %207 to i64, !dbg !1728
  %214 = getelementptr inbounds i8*, i8** %3, i64 %213, !dbg !1728
  %215 = load i8*, i8** %214, align 8, !dbg !1728, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %215, metadata !1319, metadata !DIExpression()) #8, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1729
  %216 = call i32 @__xstat(i32 1, i8* nonnull %215, %struct.stat* nonnull %1) #8, !dbg !1731
  %217 = icmp eq i32 %216, 0, !dbg !1732
  br i1 %217, label %218, label %336, !dbg !1733

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1734
  %220 = load i32, i32* %219, align 8, !dbg !1734, !tbaa !1636
  %221 = and i32 %220, 61440, !dbg !1734
  %222 = icmp eq i32 %221, 4096, !dbg !1734
  br label %336

; <label>:223:                                    ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1735
  %224 = add nsw i32 %4, 1, !dbg !1738
  store i32 %224, i32* @pos, align 4, !dbg !1738, !tbaa !693
  %225 = load i32, i32* @argc, align 4, !dbg !1739
  %226 = icmp slt i32 %224, %225, !dbg !1740
  br i1 %226, label %228, label %227, !dbg !1741

; <label>:227:                                    ; preds = %223
  tail call fastcc void @beyond() #15, !dbg !1742
  unreachable, !dbg !1742

; <label>:228:                                    ; preds = %223
  %229 = add nsw i32 %4, 2, !dbg !1743
  store i32 %229, i32* @pos, align 4, !dbg !1743, !tbaa !693
  %230 = sext i32 %224 to i64, !dbg !1744
  %231 = getelementptr inbounds i8*, i8** %3, i64 %230, !dbg !1744
  %232 = load i8*, i8** %231, align 8, !dbg !1744, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %232, metadata !1745, metadata !DIExpression()) #8, !dbg !1749
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1748, metadata !DIExpression()) #8, !dbg !1749
  %233 = call i32 @__lxstat(i32 1, i8* nonnull %232, %struct.stat* nonnull %1) #8, !dbg !1751
  %234 = icmp eq i32 %233, 0, !dbg !1752
  br i1 %234, label %235, label %336, !dbg !1753

; <label>:235:                                    ; preds = %228
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1754
  %237 = load i32, i32* %236, align 8, !dbg !1754, !tbaa !1636
  %238 = and i32 %237, 61440, !dbg !1754
  %239 = icmp eq i32 %238, 40960, !dbg !1754
  br label %336

; <label>:240:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1755
  %241 = add nsw i32 %4, 1, !dbg !1758
  store i32 %241, i32* @pos, align 4, !dbg !1758, !tbaa !693
  %242 = load i32, i32* @argc, align 4, !dbg !1759
  %243 = icmp slt i32 %241, %242, !dbg !1760
  br i1 %243, label %245, label %244, !dbg !1761

; <label>:244:                                    ; preds = %240
  tail call fastcc void @beyond() #15, !dbg !1762
  unreachable, !dbg !1762

; <label>:245:                                    ; preds = %240
  %246 = add nsw i32 %4, 2, !dbg !1763
  store i32 %246, i32* @pos, align 4, !dbg !1763, !tbaa !693
  %247 = sext i32 %241 to i64, !dbg !1764
  %248 = getelementptr inbounds i8*, i8** %3, i64 %247, !dbg !1764
  %249 = load i8*, i8** %248, align 8, !dbg !1764, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %249, metadata !1319, metadata !DIExpression()) #8, !dbg !1765
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1765
  %250 = call i32 @__xstat(i32 1, i8* nonnull %249, %struct.stat* nonnull %1) #8, !dbg !1767
  %251 = icmp eq i32 %250, 0, !dbg !1768
  br i1 %251, label %252, label %336, !dbg !1769

; <label>:252:                                    ; preds = %245
  %253 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1770
  %254 = load i32, i32* %253, align 8, !dbg !1770, !tbaa !1636
  %255 = and i32 %254, 2048, !dbg !1771
  %256 = icmp ne i32 %255, 0, !dbg !1769
  br label %336

; <label>:257:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1772
  %258 = add nsw i32 %4, 1, !dbg !1775
  store i32 %258, i32* @pos, align 4, !dbg !1775, !tbaa !693
  %259 = load i32, i32* @argc, align 4, !dbg !1776
  %260 = icmp slt i32 %258, %259, !dbg !1777
  br i1 %260, label %262, label %261, !dbg !1778

; <label>:261:                                    ; preds = %257
  tail call fastcc void @beyond() #15, !dbg !1779
  unreachable, !dbg !1779

; <label>:262:                                    ; preds = %257
  %263 = add nsw i32 %4, 2, !dbg !1780
  store i32 %263, i32* @pos, align 4, !dbg !1780, !tbaa !693
  %264 = sext i32 %258 to i64, !dbg !1781
  %265 = getelementptr inbounds i8*, i8** %3, i64 %264, !dbg !1781
  %266 = load i8*, i8** %265, align 8, !dbg !1781, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %266, metadata !1319, metadata !DIExpression()) #8, !dbg !1782
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1782
  %267 = call i32 @__xstat(i32 1, i8* nonnull %266, %struct.stat* nonnull %1) #8, !dbg !1784
  %268 = icmp eq i32 %267, 0, !dbg !1785
  br i1 %268, label %269, label %336, !dbg !1786

; <label>:269:                                    ; preds = %262
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1787
  %271 = load i32, i32* %270, align 8, !dbg !1787, !tbaa !1636
  %272 = and i32 %271, 1024, !dbg !1788
  %273 = icmp ne i32 %272, 0, !dbg !1786
  br label %336

; <label>:274:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1789
  %275 = add nsw i32 %4, 1, !dbg !1792
  store i32 %275, i32* @pos, align 4, !dbg !1792, !tbaa !693
  %276 = load i32, i32* @argc, align 4, !dbg !1793
  %277 = icmp slt i32 %275, %276, !dbg !1794
  br i1 %277, label %279, label %278, !dbg !1795

; <label>:278:                                    ; preds = %274
  tail call fastcc void @beyond() #15, !dbg !1796
  unreachable, !dbg !1796

; <label>:279:                                    ; preds = %274
  %280 = add nsw i32 %4, 2, !dbg !1797
  store i32 %280, i32* @pos, align 4, !dbg !1797, !tbaa !693
  %281 = sext i32 %275 to i64, !dbg !1798
  %282 = getelementptr inbounds i8*, i8** %3, i64 %281, !dbg !1798
  %283 = load i8*, i8** %282, align 8, !dbg !1798, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1490, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %283, metadata !1319, metadata !DIExpression()) #8, !dbg !1799
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1326, metadata !DIExpression()) #8, !dbg !1799
  %284 = call i32 @__xstat(i32 1, i8* nonnull %283, %struct.stat* nonnull %1) #8, !dbg !1801
  %285 = icmp eq i32 %284, 0, !dbg !1802
  br i1 %285, label %286, label %336, !dbg !1803

; <label>:286:                                    ; preds = %279
  %287 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1804
  %288 = load i32, i32* %287, align 8, !dbg !1804, !tbaa !1636
  %289 = and i32 %288, 512, !dbg !1805
  %290 = icmp ne i32 %289, 0, !dbg !1803
  br label %336

; <label>:291:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1806
  %292 = add nsw i32 %4, 1, !dbg !1809
  store i32 %292, i32* @pos, align 4, !dbg !1809, !tbaa !693
  %293 = load i32, i32* @argc, align 4, !dbg !1810
  %294 = icmp slt i32 %292, %293, !dbg !1811
  br i1 %294, label %296, label %295, !dbg !1812

; <label>:295:                                    ; preds = %291
  tail call fastcc void @beyond() #15, !dbg !1813
  unreachable, !dbg !1813

; <label>:296:                                    ; preds = %291
  %297 = add nsw i32 %4, 2, !dbg !1814
  store i32 %297, i32* @pos, align 4, !dbg !1814, !tbaa !693
  %298 = sext i32 %292 to i64, !dbg !1815
  %299 = getelementptr inbounds i8*, i8** %3, i64 %298, !dbg !1815
  %300 = load i8*, i8** %299, align 8, !dbg !1815, !tbaa !616
  %301 = tail call fastcc i8* @find_int(i8* %300), !dbg !1816
  call void @llvm.dbg.value(metadata i8* %301, metadata !1503, metadata !DIExpression()), !dbg !1817
  %302 = tail call i32* @__errno_location() #17, !dbg !1818
  store i32 0, i32* %302, align 4, !dbg !1819, !tbaa !693
  %303 = tail call i64 @strtol(i8* nocapture %301, i8** null, i32 10) #8, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %303, metadata !1501, metadata !DIExpression()), !dbg !1821
  %304 = load i32, i32* %302, align 4, !dbg !1822, !tbaa !693
  %305 = icmp ne i32 %304, 34, !dbg !1823
  %306 = icmp ult i64 %303, 2147483648, !dbg !1824
  %307 = and i1 %306, %305, !dbg !1824
  br i1 %307, label %308, label %336, !dbg !1824

; <label>:308:                                    ; preds = %296
  %309 = trunc i64 %303 to i32, !dbg !1825
  %310 = tail call i32 @isatty(i32 %309) #8, !dbg !1826
  %311 = icmp ne i32 %310, 0, !dbg !1827
  br label %336

; <label>:312:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1828
  %313 = add nsw i32 %4, 1, !dbg !1831
  store i32 %313, i32* @pos, align 4, !dbg !1831, !tbaa !693
  %314 = load i32, i32* @argc, align 4, !dbg !1832
  %315 = icmp slt i32 %313, %314, !dbg !1833
  br i1 %315, label %317, label %316, !dbg !1834

; <label>:316:                                    ; preds = %312
  tail call fastcc void @beyond() #15, !dbg !1835
  unreachable, !dbg !1835

; <label>:317:                                    ; preds = %312
  %318 = add nsw i32 %4, 2, !dbg !1836
  store i32 %318, i32* @pos, align 4, !dbg !1836, !tbaa !693
  %319 = sext i32 %313 to i64, !dbg !1837
  %320 = getelementptr inbounds i8*, i8** %3, i64 %319, !dbg !1837
  %321 = load i8*, i8** %320, align 8, !dbg !1837, !tbaa !616
  %322 = load i8, i8* %321, align 1, !dbg !1837, !tbaa !732
  %323 = icmp ne i8 %322, 0, !dbg !1838
  br label %336, !dbg !1839

; <label>:324:                                    ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !742, metadata !DIExpression()) #8, !dbg !1840
  %325 = add nsw i32 %4, 1, !dbg !1843
  store i32 %325, i32* @pos, align 4, !dbg !1843, !tbaa !693
  %326 = load i32, i32* @argc, align 4, !dbg !1844
  %327 = icmp slt i32 %325, %326, !dbg !1845
  br i1 %327, label %329, label %328, !dbg !1846

; <label>:328:                                    ; preds = %324
  tail call fastcc void @beyond() #15, !dbg !1847
  unreachable, !dbg !1847

; <label>:329:                                    ; preds = %324
  %330 = add nsw i32 %4, 2, !dbg !1848
  store i32 %330, i32* @pos, align 4, !dbg !1848, !tbaa !693
  %331 = sext i32 %325 to i64, !dbg !1849
  %332 = getelementptr inbounds i8*, i8** %3, i64 %331, !dbg !1849
  %333 = load i8*, i8** %332, align 8, !dbg !1849, !tbaa !616
  %334 = load i8, i8* %333, align 1, !dbg !1849, !tbaa !732
  %335 = icmp eq i8 %334, 0, !dbg !1850
  br label %336, !dbg !1851

; <label>:336:                                    ; preds = %296, %308, %279, %286, %262, %269, %245, %252, %228, %235, %211, %218, %194, %201, %177, %184, %160, %167, %127, %134, %110, %117, %101, %98, %87, %78, %75, %64, %0, %329, %317, %144, %52, %40, %28, %16
  %337 = phi i1 [ %335, %329 ], [ %323, %317 ], [ %154, %144 ], [ %58, %52 ], [ %46, %40 ], [ %34, %28 ], [ %22, %16 ], [ false, %0 ], [ false, %64 ], [ false, %75 ], [ %81, %78 ], [ false, %87 ], [ false, %98 ], [ %104, %101 ], [ false, %110 ], [ %121, %117 ], [ false, %127 ], [ %138, %134 ], [ false, %160 ], [ %171, %167 ], [ false, %177 ], [ %188, %184 ], [ false, %194 ], [ %205, %201 ], [ false, %211 ], [ %222, %218 ], [ false, %228 ], [ %239, %235 ], [ false, %245 ], [ %256, %252 ], [ false, %262 ], [ %273, %269 ], [ false, %279 ], [ %290, %286 ], [ false, %296 ], [ %311, %308 ], !dbg !1852
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #8, !dbg !1853
  ret i1 %337, !dbg !1853
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8*) unnamed_addr #7 !dbg !1854 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1858, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %0, metadata !1859, metadata !DIExpression()), !dbg !1862
  %2 = tail call i16** @__ctype_b_loc() #17, !dbg !1863
  %3 = load i16*, i16** %2, align 8, !tbaa !616
  br label %4, !dbg !1866

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ], !dbg !1867
  call void @llvm.dbg.value(metadata i8* %5, metadata !1859, metadata !DIExpression()), !dbg !1862
  %6 = load i8, i8* %5, align 1, !dbg !1863, !tbaa !732
  %7 = zext i8 %6 to i64, !dbg !1863
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !1863
  %9 = load i16, i16* %8, align 2, !dbg !1863, !tbaa !1868
  %10 = and i16 %9, 1, !dbg !1863
  %11 = icmp eq i16 %10, 0, !dbg !1870
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1871
  call void @llvm.dbg.value(metadata i8* %12, metadata !1859, metadata !DIExpression()), !dbg !1862
  br i1 %11, label %13, label %4, !dbg !1870, !llvm.loop !1872

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %5, metadata !1859, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %5, metadata !1859, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %5, metadata !1859, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %5, metadata !1859, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %5, metadata !1859, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %5, metadata !1859, metadata !DIExpression()), !dbg !1862
  %14 = icmp eq i8 %6, 43, !dbg !1874
  call void @llvm.dbg.value(metadata i8* %12, metadata !1859, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %12, metadata !1860, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8* %5, metadata !1860, metadata !DIExpression()), !dbg !1876
  %15 = icmp eq i8 %6, 45, !dbg !1877
  %16 = zext i1 %15 to i64, !dbg !1879
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !1879
  call void @llvm.dbg.value(metadata i8* %17, metadata !1859, metadata !DIExpression()), !dbg !1862
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !1880
  %19 = select i1 %14, i8* %12, i8* %5, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %19, metadata !1860, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8* %18, metadata !1859, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %18, metadata !1859, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1862
  %20 = load i8, i8* %18, align 1, !dbg !1881, !tbaa !732
  %21 = sext i8 %20 to i32, !dbg !1881
  %22 = add nsw i32 %21, -48, !dbg !1881
  %23 = icmp ult i32 %22, 10, !dbg !1881
  br i1 %23, label %24, label %50, !dbg !1883

; <label>:24:                                     ; preds = %13, %24
  %25 = phi i8* [ %26, %24 ], [ %18, %13 ]
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %26, metadata !1859, metadata !DIExpression()), !dbg !1862
  %27 = load i8, i8* %26, align 1, !dbg !1886, !tbaa !732
  %28 = sext i8 %27 to i32, !dbg !1886
  %29 = add nsw i32 %28, -48, !dbg !1886
  %30 = icmp ult i32 %29, 10, !dbg !1886
  br i1 %30, label %24, label %31, !dbg !1887, !llvm.loop !1888

; <label>:31:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %26, metadata !1859, metadata !DIExpression()), !dbg !1862
  %32 = zext i8 %27 to i64, !dbg !1890
  %33 = getelementptr inbounds i16, i16* %3, i64 %32, !dbg !1890
  %34 = load i16, i16* %33, align 2, !dbg !1890, !tbaa !1868
  %35 = and i16 %34, 1, !dbg !1890
  %36 = icmp eq i16 %35, 0, !dbg !1891
  br i1 %36, label %46, label %37, !dbg !1891

; <label>:37:                                     ; preds = %31, %37
  %38 = phi i8* [ %39, %37 ], [ %26, %31 ]
  call void @llvm.dbg.value(metadata i8* %38, metadata !1859, metadata !DIExpression()), !dbg !1862
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1892
  %40 = load i8, i8* %39, align 1, !dbg !1890, !tbaa !732
  call void @llvm.dbg.value(metadata i8* %39, metadata !1859, metadata !DIExpression()), !dbg !1862
  %41 = zext i8 %40 to i64, !dbg !1890
  %42 = getelementptr inbounds i16, i16* %3, i64 %41, !dbg !1890
  %43 = load i16, i16* %42, align 2, !dbg !1890, !tbaa !1868
  %44 = and i16 %43, 1, !dbg !1890
  %45 = icmp eq i16 %44, 0, !dbg !1891
  br i1 %45, label %46, label %37, !dbg !1891, !llvm.loop !1893

; <label>:46:                                     ; preds = %37, %31
  %47 = phi i8 [ %27, %31 ], [ %40, %37 ], !dbg !1890
  %48 = icmp eq i8 %47, 0, !dbg !1894
  br i1 %48, label %49, label %50, !dbg !1896

; <label>:49:                                     ; preds = %46
  ret i8* %19, !dbg !1897

; <label>:50:                                     ; preds = %46, %13
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 5) #8, !dbg !1898
  %52 = tail call i8* @quote(i8* %0) #8, !dbg !1899
  tail call void (i8*, ...) @test_syntax_error(i8* %51, i8* %52) #16, !dbg !1900
  unreachable, !dbg !1900
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1901 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1903, metadata !DIExpression()), !dbg !1904
  store i8* %0, i8** @file_name, align 8, !dbg !1905, !tbaa !616
  ret void, !dbg !1906
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1907 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1909, metadata !DIExpression()), !dbg !1910
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1911, !tbaa !1912
  ret void, !dbg !1914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1915 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1920, !tbaa !616
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #8, !dbg !1921
  %3 = icmp eq i32 %2, 0, !dbg !1922
  br i1 %3, label %22, label %4, !dbg !1923

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1924, !tbaa !1912, !range !1925
  %6 = icmp eq i8 %5, 0, !dbg !1924
  br i1 %6, label %11, label %7, !dbg !1926

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1927
  %9 = load i32, i32* %8, align 4, !dbg !1927, !tbaa !693
  %10 = icmp eq i32 %9, 32, !dbg !1928
  br i1 %10, label %22, label %11, !dbg !1929

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 5) #8, !dbg !1930
  call void @llvm.dbg.value(metadata i8* %12, metadata !1917, metadata !DIExpression()), !dbg !1931
  %13 = load i8*, i8** @file_name, align 8, !dbg !1932, !tbaa !616
  %14 = icmp eq i8* %13, null, !dbg !1932
  %15 = tail call i32* @__errno_location() #17, !dbg !1934
  %16 = load i32, i32* %15, align 4, !dbg !1934, !tbaa !693
  br i1 %14, label %19, label %17, !dbg !1935

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #8, !dbg !1936
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.69, i64 0, i64 0), i8* %18, i8* %12) #8, !dbg !1937
  br label %20, !dbg !1937

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.70, i64 0, i64 0), i8* %12) #8, !dbg !1938
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1939, !tbaa !693
  tail call void @_exit(i32 %21) #15, !dbg !1940
  unreachable, !dbg !1940

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1941, !tbaa !616
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #8, !dbg !1943
  %25 = icmp eq i32 %24, 0, !dbg !1944
  br i1 %25, label %28, label %26, !dbg !1945

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1946, !tbaa !693
  tail call void @_exit(i32 %27) #15, !dbg !1947
  unreachable, !dbg !1947

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1948
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !1949 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1954, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8* %1, metadata !1955, metadata !DIExpression()), !dbg !1958
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1959
  call void @llvm.dbg.value(metadata i8* %3, metadata !1956, metadata !DIExpression()), !dbg !1960
  store i8 0, i8* %3, align 1, !dbg !1961, !tbaa !732
  br label %4, !dbg !1962

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1963
  call void @llvm.dbg.value(metadata i8* %6, metadata !1956, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %5, metadata !1954, metadata !DIExpression()), !dbg !1957
  %7 = urem i64 %5, 10, !dbg !1966
  %8 = trunc i64 %7 to i8, !dbg !1967
  %9 = or i8 %8, 48, !dbg !1967
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %10, metadata !1956, metadata !DIExpression()), !dbg !1960
  store i8 %9, i8* %10, align 1, !dbg !1969, !tbaa !732
  %11 = udiv i64 %5, 10, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %11, metadata !1954, metadata !DIExpression()), !dbg !1957
  %12 = icmp ugt i64 %5, 9, !dbg !1971
  br i1 %12, label %4, label %13, !dbg !1972, !llvm.loop !1973

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1956, metadata !DIExpression()), !dbg !1960
  ret i8* %10, !dbg !1976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1977 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1979, metadata !DIExpression()), !dbg !1982
  %2 = icmp eq i8* %0, null, !dbg !1983
  br i1 %2, label %3, label %6, !dbg !1985

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1986, !tbaa !616
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1988
  tail call void @abort() #15, !dbg !1989
  unreachable, !dbg !1989

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %7, metadata !1980, metadata !DIExpression()), !dbg !1991
  %8 = icmp eq i8* %7, null, !dbg !1992
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1993
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1994
  call void @llvm.dbg.value(metadata i8* %10, metadata !1981, metadata !DIExpression()), !dbg !1995
  %11 = ptrtoint i8* %10 to i64, !dbg !1996
  %12 = ptrtoint i8* %0 to i64, !dbg !1996
  %13 = sub i64 %11, %12, !dbg !1996
  %14 = icmp sgt i64 %13, 6, !dbg !1998
  br i1 %14, label %15, label %24, !dbg !1999

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2000
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.80, i64 0, i64 0), i64 7) #14, !dbg !2001
  %18 = icmp eq i32 %17, 0, !dbg !2002
  br i1 %18, label %19, label %24, !dbg !2003

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1979, metadata !DIExpression()), !dbg !1982
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i64 3) #14, !dbg !2004
  %21 = icmp eq i32 %20, 0, !dbg !2007
  br i1 %21, label %22, label %24, !dbg !2008

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %23, metadata !1979, metadata !DIExpression()), !dbg !1982
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2011, !tbaa !616
  br label %24, !dbg !2012

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1979, metadata !DIExpression()), !dbg !1982
  store i8* %25, i8** @program_name, align 8, !dbg !2013, !tbaa !616
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2014, !tbaa !616
  ret void, !dbg !2015
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2016 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2021, metadata !DIExpression()), !dbg !2024
  %2 = tail call i32* @__errno_location() #17, !dbg !2025
  %3 = load i32, i32* %2, align 4, !dbg !2025, !tbaa !693
  call void @llvm.dbg.value(metadata i32 %3, metadata !2022, metadata !DIExpression()), !dbg !2026
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2027
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2027
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2027
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #8, !dbg !2028
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2028
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2023, metadata !DIExpression()), !dbg !2029
  store i32 %3, i32* %2, align 4, !dbg !2030, !tbaa !693
  ret %struct.quoting_options* %8, !dbg !2031
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2032 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2038, metadata !DIExpression()), !dbg !2039
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2040
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2040
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2041
  %5 = load i32, i32* %4, align 8, !dbg !2041, !tbaa !2042
  ret i32 %5, !dbg !2044
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2045 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2049, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %1, metadata !2050, metadata !DIExpression()), !dbg !2052
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2053
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2053
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2054
  store i32 %1, i32* %5, align 8, !dbg !2055, !tbaa !2042
  ret void, !dbg !2056
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2057 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2061, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8 %1, metadata !2062, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i32 %2, metadata !2063, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %1, metadata !2064, metadata !DIExpression()), !dbg !2073
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2074
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2074
  %6 = lshr i8 %1, 5, !dbg !2075
  %7 = zext i8 %6 to i64, !dbg !2075
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2076
  call void @llvm.dbg.value(metadata i32* %8, metadata !2066, metadata !DIExpression()), !dbg !2077
  %9 = and i8 %1, 31, !dbg !2078
  %10 = zext i8 %9 to i32, !dbg !2078
  call void @llvm.dbg.value(metadata i32 %10, metadata !2068, metadata !DIExpression()), !dbg !2079
  %11 = load i32, i32* %8, align 4, !dbg !2080, !tbaa !693
  %12 = lshr i32 %11, %10, !dbg !2081
  %13 = and i32 %12, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %13, metadata !2069, metadata !DIExpression()), !dbg !2083
  %14 = and i32 %2, 1, !dbg !2084
  %15 = xor i32 %13, %14, !dbg !2085
  %16 = shl i32 %15, %10, !dbg !2086
  %17 = xor i32 %16, %11, !dbg !2087
  store i32 %17, i32* %8, align 4, !dbg !2087, !tbaa !693
  ret i32 %13, !dbg !2088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2089 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 %1, metadata !2094, metadata !DIExpression()), !dbg !2097
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2098
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2100
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2093, metadata !DIExpression()), !dbg !2096
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2101
  %6 = load i32, i32* %5, align 4, !dbg !2101, !tbaa !2102
  call void @llvm.dbg.value(metadata i32 %6, metadata !2095, metadata !DIExpression()), !dbg !2103
  store i32 %1, i32* %5, align 4, !dbg !2104, !tbaa !2102
  ret i32 %6, !dbg !2105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2106 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %1, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8* %2, metadata !2112, metadata !DIExpression()), !dbg !2115
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2116
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2118
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()), !dbg !2113
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2119
  store i32 10, i32* %6, align 8, !dbg !2120, !tbaa !2042
  %7 = icmp ne i8* %1, null, !dbg !2121
  %8 = icmp ne i8* %2, null, !dbg !2123
  %9 = and i1 %7, %8, !dbg !2124
  br i1 %9, label %11, label %10, !dbg !2124

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2125
  unreachable, !dbg !2125

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2126
  store i8* %1, i8** %12, align 8, !dbg !2127, !tbaa !2128
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2129
  store i8* %2, i8** %13, align 8, !dbg !2130, !tbaa !2131
  ret void, !dbg !2132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2133 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2137, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %1, metadata !2138, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %2, metadata !2139, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %3, metadata !2140, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2141, metadata !DIExpression()), !dbg !2149
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2150
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2142, metadata !DIExpression()), !dbg !2151
  %8 = tail call i32* @__errno_location() #17, !dbg !2152
  %9 = load i32, i32* %8, align 4, !dbg !2152, !tbaa !693
  call void @llvm.dbg.value(metadata i32 %9, metadata !2143, metadata !DIExpression()), !dbg !2153
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2154
  %11 = load i32, i32* %10, align 8, !dbg !2154, !tbaa !2042
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2155
  %13 = load i32, i32* %12, align 4, !dbg !2155, !tbaa !2102
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2156
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2157
  %16 = load i8*, i8** %15, align 8, !dbg !2157, !tbaa !2128
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2158
  %18 = load i8*, i8** %17, align 8, !dbg !2158, !tbaa !2131
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %19, metadata !2144, metadata !DIExpression()), !dbg !2160
  store i32 %9, i32* %8, align 4, !dbg !2161, !tbaa !693
  ret i64 %19, !dbg !2162
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2163 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2169, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %1, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %2, metadata !2171, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %3, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %4, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %5, metadata !2174, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32* %6, metadata !2175, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* %7, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %8, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 0, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 0, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8* null, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 0, metadata !2182, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2183, metadata !DIExpression()), !dbg !2246
  %13 = tail call i64 @__ctype_get_mb_cur_max() #8, !dbg !2247
  %14 = icmp eq i64 %13, 1, !dbg !2248
  %15 = lshr i32 %5, 1, !dbg !2249
  %16 = trunc i32 %15 to i8, !dbg !2249
  %17 = and i8 %16, 1, !dbg !2249
  call void @llvm.dbg.value(metadata i8 %17, metadata !2185, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 1, metadata !2188, metadata !DIExpression()), !dbg !2252
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2253

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2243
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2244
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2245
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2246
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2254
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2250
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2251
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2252
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %39, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %38, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %37, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %36, metadata !2185, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %35, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 %34, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i64 %33, metadata !2182, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %32, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %31, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 0, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %30, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %29, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %28, metadata !2173, metadata !DIExpression()), !dbg !2237
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
  ], !dbg !2256

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8 1, metadata !2185, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %36, metadata !2185, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 5, metadata !2173, metadata !DIExpression()), !dbg !2237
  br label %93, !dbg !2257

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2185, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 5, metadata !2173, metadata !DIExpression()), !dbg !2237
  %43 = and i8 %36, 1, !dbg !2258
  %44 = icmp eq i8 %43, 0, !dbg !2258
  br i1 %44, label %45, label %93, !dbg !2257

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2260
  br i1 %46, label %93, label %47, !dbg !2263

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2260, !tbaa !732
  br label %93, !dbg !2260

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 %28), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %49, metadata !2176, metadata !DIExpression()), !dbg !2240
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 %28), !dbg !2268
  call void @llvm.dbg.value(metadata i8* %50, metadata !2177, metadata !DIExpression()), !dbg !2241
  br label %51, !dbg !2269

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %52, metadata !2176, metadata !DIExpression()), !dbg !2240
  %54 = and i8 %36, 1, !dbg !2270
  %55 = icmp eq i8 %54, 0, !dbg !2270
  br i1 %55, label %56, label %71, !dbg !2272

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 0, metadata !2179, metadata !DIExpression()), !dbg !2242
  %57 = load i8, i8* %52, align 1, !dbg !2273, !tbaa !732
  %58 = icmp eq i8 %57, 0, !dbg !2276
  br i1 %58, label %71, label %59, !dbg !2276

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %62, metadata !2179, metadata !DIExpression()), !dbg !2242
  %63 = icmp ult i64 %62, %40, !dbg !2277
  br i1 %63, label %64, label %66, !dbg !2280

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2277
  store i8 %60, i8* %65, align 1, !dbg !2277, !tbaa !732
  br label %66, !dbg !2277

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2280
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2281
  call void @llvm.dbg.value(metadata i8* %68, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %67, metadata !2179, metadata !DIExpression()), !dbg !2242
  %69 = load i8, i8* %68, align 1, !dbg !2273, !tbaa !732
  %70 = icmp eq i8 %69, 0, !dbg !2276
  br i1 %70, label %71, label %59, !dbg !2276, !llvm.loop !2282

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2242
  call void @llvm.dbg.value(metadata i64 %72, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %53, metadata !2181, metadata !DIExpression()), !dbg !2244
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %73, metadata !2182, metadata !DIExpression()), !dbg !2245
  br label %93, !dbg !2285

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2246
  br label %75, !dbg !2286

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2254
  call void @llvm.dbg.value(metadata i8 %76, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 1, metadata !2185, metadata !DIExpression()), !dbg !2249
  br label %77, !dbg !2287

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2246
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2254
  call void @llvm.dbg.value(metadata i8 %79, metadata !2185, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %78, metadata !2183, metadata !DIExpression()), !dbg !2246
  %80 = and i8 %79, 1, !dbg !2288
  %81 = icmp eq i8 %80, 0, !dbg !2288
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2290
  br label %83, !dbg !2290

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2291
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2249
  call void @llvm.dbg.value(metadata i8 %85, metadata !2185, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %84, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 2, metadata !2173, metadata !DIExpression()), !dbg !2237
  %86 = and i8 %85, 1, !dbg !2292
  %87 = icmp eq i8 %86, 0, !dbg !2292
  br i1 %87, label %88, label %93, !dbg !2294

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2295
  br i1 %89, label %93, label %90, !dbg !2298

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2295, !tbaa !732
  br label %93, !dbg !2295

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2249
  br label %93, !dbg !2299

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2300
  unreachable, !dbg !2300

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2242
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %41 ], !dbg !2254
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2254
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2254
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %101, metadata !2185, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i64 %99, metadata !2182, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %97, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %94, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i64 0, metadata !2178, metadata !DIExpression()), !dbg !2302
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
  br label %121, !dbg !2303

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2304
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2242
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2243
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2250
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2251
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2252
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %125, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %122, metadata !2178, metadata !DIExpression()), !dbg !2302
  %130 = icmp eq i64 %125, -1, !dbg !2305
  br i1 %130, label %131, label %135, !dbg !2306

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2307
  %133 = load i8, i8* %132, align 1, !dbg !2307, !tbaa !732
  %134 = icmp eq i8 %133, 0, !dbg !2308
  br i1 %134, label %617, label %137, !dbg !2309

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2310
  br i1 %136, label %617, label %137, !dbg !2309

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2313
  br i1 %107, label %138, label %153, !dbg !2314

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2316
  %140 = and i1 %108, %130, !dbg !2317
  br i1 %140, label %141, label %143, !dbg !2317

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %142, metadata !2172, metadata !DIExpression()), !dbg !2236
  br label %143, !dbg !2319

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2172, metadata !DIExpression()), !dbg !2236
  %145 = icmp ugt i64 %139, %144, !dbg !2320
  br i1 %145, label %153, label %146, !dbg !2321

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2322
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2323
  %149 = icmp ne i32 %148, 0, !dbg !2324
  %150 = or i1 %149, %110, !dbg !2325
  %151 = xor i1 %149, true, !dbg !2325
  %152 = zext i1 %151 to i8, !dbg !2325
  br i1 %150, label %153, label %661, !dbg !2325

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2326
  call void @llvm.dbg.value(metadata i8 %155, metadata !2194, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %154, metadata !2172, metadata !DIExpression()), !dbg !2236
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2327
  %157 = load i8, i8* %156, align 1, !dbg !2327, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %157, metadata !2189, metadata !DIExpression()), !dbg !2328
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
  ], !dbg !2329

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2330

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2331

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2195, metadata !DIExpression()), !dbg !2312
  %161 = and i8 %126, 1, !dbg !2335
  %162 = icmp eq i8 %161, 0, !dbg !2335
  %163 = and i1 %114, %162, !dbg !2335
  br i1 %163, label %164, label %180, !dbg !2335

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2337
  br i1 %165, label %166, label %168, !dbg !2341

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2337
  store i8 39, i8* %167, align 1, !dbg !2337, !tbaa !732
  br label %168, !dbg !2337

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %169, metadata !2179, metadata !DIExpression()), !dbg !2242
  %170 = icmp ult i64 %169, %129, !dbg !2342
  br i1 %170, label %171, label %173, !dbg !2345

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2342
  store i8 36, i8* %172, align 1, !dbg !2342, !tbaa !732
  br label %173, !dbg !2342

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %174, metadata !2179, metadata !DIExpression()), !dbg !2242
  %175 = icmp ult i64 %174, %129, !dbg !2346
  br i1 %175, label %176, label %178, !dbg !2349

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2346
  store i8 39, i8* %177, align 1, !dbg !2346, !tbaa !732
  br label %178, !dbg !2346

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %179, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 1, metadata !2186, metadata !DIExpression()), !dbg !2250
  br label %180, !dbg !2350

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2301
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %182, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %181, metadata !2179, metadata !DIExpression()), !dbg !2242
  %183 = icmp ult i64 %181, %129, !dbg !2351
  br i1 %183, label %184, label %186, !dbg !2354

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2351
  store i8 92, i8* %185, align 1, !dbg !2351, !tbaa !732
  br label %186, !dbg !2351

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %187, metadata !2179, metadata !DIExpression()), !dbg !2242
  br i1 %104, label %188, label %478, !dbg !2355

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2357
  %190 = icmp ult i64 %189, %154, !dbg !2358
  br i1 %190, label %191, label %467, !dbg !2359

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2360
  %193 = load i8, i8* %192, align 1, !dbg !2360, !tbaa !732
  %194 = add i8 %193, -48, !dbg !2361
  %195 = icmp ult i8 %194, 10, !dbg !2361
  br i1 %195, label %196, label %467, !dbg !2361

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2362
  br i1 %197, label %198, label %200, !dbg !2366

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2362
  store i8 48, i8* %199, align 1, !dbg !2362, !tbaa !732
  br label %200, !dbg !2362

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %201, metadata !2179, metadata !DIExpression()), !dbg !2242
  %202 = icmp ult i64 %201, %129, !dbg !2367
  br i1 %202, label %203, label %205, !dbg !2370

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2367
  store i8 48, i8* %204, align 1, !dbg !2367, !tbaa !732
  br label %205, !dbg !2367

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %206, metadata !2179, metadata !DIExpression()), !dbg !2242
  br label %467, !dbg !2371

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2372

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2373

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2374

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2376

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2378
  %213 = icmp ult i64 %212, %154, !dbg !2379
  br i1 %213, label %214, label %467, !dbg !2380

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2381
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2382
  %217 = load i8, i8* %216, align 1, !dbg !2382, !tbaa !732
  %218 = icmp eq i8 %217, 63, !dbg !2383
  br i1 %218, label %219, label %467, !dbg !2384

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2385
  %221 = load i8, i8* %220, align 1, !dbg !2385, !tbaa !732
  %222 = sext i8 %221 to i32, !dbg !2385
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
  ], !dbg !2386

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2387

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2189, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %212, metadata !2178, metadata !DIExpression()), !dbg !2302
  %225 = icmp ult i64 %123, %129, !dbg !2389
  br i1 %225, label %226, label %228, !dbg !2392

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2389
  store i8 63, i8* %227, align 1, !dbg !2389, !tbaa !732
  br label %228, !dbg !2389

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %229, metadata !2179, metadata !DIExpression()), !dbg !2242
  %230 = icmp ult i64 %229, %129, !dbg !2393
  br i1 %230, label %231, label %233, !dbg !2396

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2393
  store i8 34, i8* %232, align 1, !dbg !2393, !tbaa !732
  br label %233, !dbg !2393

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %234, metadata !2179, metadata !DIExpression()), !dbg !2242
  %235 = icmp ult i64 %234, %129, !dbg !2397
  br i1 %235, label %236, label %238, !dbg !2400

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2397
  store i8 34, i8* %237, align 1, !dbg !2397, !tbaa !732
  br label %238, !dbg !2397

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %239, metadata !2179, metadata !DIExpression()), !dbg !2242
  %240 = icmp ult i64 %239, %129, !dbg !2401
  br i1 %240, label %241, label %243, !dbg !2404

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2401
  store i8 63, i8* %242, align 1, !dbg !2401, !tbaa !732
  br label %243, !dbg !2401

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %244, metadata !2179, metadata !DIExpression()), !dbg !2242
  br label %467, !dbg !2405

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2193, metadata !DIExpression()), !dbg !2406
  br label %255, !dbg !2407

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2193, metadata !DIExpression()), !dbg !2406
  br label %255, !dbg !2408

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2193, metadata !DIExpression()), !dbg !2406
  br label %253, !dbg !2409

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2193, metadata !DIExpression()), !dbg !2406
  br label %253, !dbg !2410

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2193, metadata !DIExpression()), !dbg !2406
  br label %255, !dbg !2411

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2193, metadata !DIExpression()), !dbg !2406
  br i1 %114, label %251, label %252, !dbg !2412

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2413

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2416

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2418
  call void @llvm.dbg.value(metadata i8 %254, metadata !2193, metadata !DIExpression()), !dbg !2406
  br i1 %113, label %255, label %661, !dbg !2419

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2418
  call void @llvm.dbg.value(metadata i8 %256, metadata !2193, metadata !DIExpression()), !dbg !2406
  br i1 %103, label %524, label %478, !dbg !2421

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2422
  br i1 %258, label %259, label %264, !dbg !2424

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2425, !tbaa !732
  %261 = icmp ne i8 %260, 0, !dbg !2426
  %262 = icmp ne i64 %122, 0, !dbg !2427
  %263 = or i1 %262, %261, !dbg !2429
  br i1 %263, label %467, label %270, !dbg !2429

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2430
  %266 = icmp ne i64 %122, 0, !dbg !2427
  %267 = or i1 %266, %265, !dbg !2424
  br i1 %267, label %467, label %270, !dbg !2424

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2427
  br i1 %269, label %270, label %467, !dbg !2431

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2196, metadata !DIExpression()), !dbg !2313
  br label %271, !dbg !2432

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2418
  call void @llvm.dbg.value(metadata i8 %272, metadata !2196, metadata !DIExpression()), !dbg !2313
  br i1 %113, label %467, label %661, !dbg !2433

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 1, metadata !2196, metadata !DIExpression()), !dbg !2313
  br i1 %114, label %274, label %467, !dbg !2435

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2436

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2439
  %277 = icmp ne i64 %124, 0, !dbg !2441
  %278 = or i1 %277, %276, !dbg !2442
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2442
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %280, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %279, metadata !2180, metadata !DIExpression()), !dbg !2243
  %281 = icmp ult i64 %123, %280, !dbg !2443
  br i1 %281, label %282, label %284, !dbg !2446

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2443
  store i8 39, i8* %283, align 1, !dbg !2443, !tbaa !732
  br label %284, !dbg !2443

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %285, metadata !2179, metadata !DIExpression()), !dbg !2242
  %286 = icmp ult i64 %285, %280, !dbg !2447
  br i1 %286, label %287, label %289, !dbg !2450

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2447
  store i8 92, i8* %288, align 1, !dbg !2447, !tbaa !732
  br label %289, !dbg !2447

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %290, metadata !2179, metadata !DIExpression()), !dbg !2242
  %291 = icmp ult i64 %290, %280, !dbg !2451
  br i1 %291, label %292, label %294, !dbg !2454

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2451
  store i8 39, i8* %293, align 1, !dbg !2451, !tbaa !732
  br label %294, !dbg !2451

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %295, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2250
  br label %467, !dbg !2455

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2456

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2197, metadata !DIExpression()), !dbg !2457
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2458
  %299 = load i16*, i16** %298, align 8, !dbg !2458, !tbaa !616
  %300 = zext i8 %157 to i64, !dbg !2458
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2458
  %302 = load i16, i16* %301, align 2, !dbg !2458, !tbaa !1868
  %303 = lshr i16 %302, 14, !dbg !2460
  %304 = trunc i16 %303 to i8, !dbg !2460
  %305 = and i8 %304, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i8 %305, metadata !2200, metadata !DIExpression()), !dbg !2461
  br label %359, !dbg !2462

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #8, !dbg !2463
  store i64 0, i64* %10, align 8, !dbg !2464
  call void @llvm.dbg.value(metadata i64 0, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 1, metadata !2200, metadata !DIExpression()), !dbg !2461
  %307 = icmp eq i64 %154, -1, !dbg !2465
  br i1 %307, label %308, label %310, !dbg !2467

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %309, metadata !2172, metadata !DIExpression()), !dbg !2236
  br label %310, !dbg !2469

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2470
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  br label %312, !dbg !2471

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2472
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2473
  call void @llvm.dbg.value(metadata i8 %314, metadata !2200, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #8, !dbg !2474
  %315 = add i64 %313, %122, !dbg !2475
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2476
  %317 = sub i64 %311, %315, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2201, metadata !DIExpression(DW_OP_deref)), !dbg !2478
  call void @llvm.dbg.value(metadata i32* %12, metadata !2219, metadata !DIExpression(DW_OP_deref)), !dbg !2479
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #8, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %318, metadata !2222, metadata !DIExpression()), !dbg !2481
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2482

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  %320 = icmp ugt i64 %311, %315, !dbg !2483
  br i1 %320, label %321, label %344, !dbg !2485

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2197, metadata !DIExpression()), !dbg !2457
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2486
  %325 = load i8, i8* %324, align 1, !dbg !2486, !tbaa !732
  %326 = icmp eq i8 %325, 0, !dbg !2485
  br i1 %326, label %344, label %327, !dbg !2487

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %328, metadata !2197, metadata !DIExpression()), !dbg !2457
  %329 = add i64 %328, %122, !dbg !2489
  %330 = icmp ult i64 %329, %311, !dbg !2483
  br i1 %330, label %321, label %344, !dbg !2485, !llvm.loop !2490

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2491
  %333 = and i1 %116, %332, !dbg !2494
  call void @llvm.dbg.value(metadata i64 1, metadata !2223, metadata !DIExpression()), !dbg !2495
  br i1 %333, label %334, label %347, !dbg !2494

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2223, metadata !DIExpression()), !dbg !2495
  %336 = add i64 %335, %315, !dbg !2496
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2497
  %338 = load i8, i8* %337, align 1, !dbg !2497, !tbaa !732
  %339 = sext i8 %338 to i32, !dbg !2497
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2498

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %341, metadata !2223, metadata !DIExpression()), !dbg !2495
  %342 = icmp ult i64 %341, %318, !dbg !2491
  br i1 %342, label %334, label %347, !dbg !2500, !llvm.loop !2501

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 %314, metadata !2200, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %313, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 %314, metadata !2200, metadata !DIExpression()), !dbg !2461
  br label %344, !dbg !2503

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2200, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %352, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8, !dbg !2503
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2504, !tbaa !693
  call void @llvm.dbg.value(metadata i32 %348, metadata !2219, metadata !DIExpression()), !dbg !2479
  %349 = call i32 @iswprint(i32 %348) #8, !dbg !2506
  %350 = icmp eq i32 %349, 0, !dbg !2506
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2507
  call void @llvm.dbg.value(metadata i8 %351, metadata !2200, metadata !DIExpression()), !dbg !2461
  %352 = add i64 %318, %313, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %352, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 %351, metadata !2200, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %352, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8, !dbg !2503
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2201, metadata !DIExpression(DW_OP_deref)), !dbg !2478
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2509
  %354 = icmp eq i32 %353, 0, !dbg !2510
  br i1 %354, label %312, label %355, !dbg !2511, !llvm.loop !2512

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #8, !dbg !2514
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 2, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 2, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 2, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 2, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 2, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %94, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %94, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %94, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %94, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %94, metadata !2173, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 %100, metadata !2183, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %311, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 %351, metadata !2200, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %352, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8, !dbg !2503
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #8, !dbg !2514
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2515
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2516
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2516
  call void @llvm.dbg.value(metadata i8 %362, metadata !2200, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %361, metadata !2197, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %360, metadata !2172, metadata !DIExpression()), !dbg !2236
  %363 = and i8 %362, 1, !dbg !2517
  %364 = icmp ne i8 %363, 0, !dbg !2517
  call void @llvm.dbg.value(metadata i8 %363, metadata !2196, metadata !DIExpression()), !dbg !2313
  %365 = icmp ult i64 %361, 2, !dbg !2518
  %366 = or i1 %364, %115, !dbg !2519
  %367 = and i1 %365, %366, !dbg !2520
  br i1 %367, label %467, label %368, !dbg !2520

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %369, metadata !2230, metadata !DIExpression()), !dbg !2522
  br label %370, !dbg !2523

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2524
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2528
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2250
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2524
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2530
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2312
  call void @llvm.dbg.value(metadata i8 %376, metadata !2195, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8 %375, metadata !2194, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %374, metadata !2189, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 %373, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %372, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %371, metadata !2178, metadata !DIExpression()), !dbg !2302
  br i1 %366, label %423, label %377, !dbg !2534

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2535

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2195, metadata !DIExpression()), !dbg !2312
  %379 = and i8 %373, 1, !dbg !2538
  %380 = icmp eq i8 %379, 0, !dbg !2538
  %381 = and i1 %114, %380, !dbg !2538
  br i1 %381, label %382, label %398, !dbg !2538

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2540
  br i1 %383, label %384, label %386, !dbg !2544

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2540
  store i8 39, i8* %385, align 1, !dbg !2540, !tbaa !732
  br label %386, !dbg !2540

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %387, metadata !2179, metadata !DIExpression()), !dbg !2242
  %388 = icmp ult i64 %387, %129, !dbg !2545
  br i1 %388, label %389, label %391, !dbg !2548

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2545
  store i8 36, i8* %390, align 1, !dbg !2545, !tbaa !732
  br label %391, !dbg !2545

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %392, metadata !2179, metadata !DIExpression()), !dbg !2242
  %393 = icmp ult i64 %392, %129, !dbg !2549
  br i1 %393, label %394, label %396, !dbg !2552

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2549
  store i8 39, i8* %395, align 1, !dbg !2549, !tbaa !732
  br label %396, !dbg !2549

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %397, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 1, metadata !2186, metadata !DIExpression()), !dbg !2250
  br label %398, !dbg !2553

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2301
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %400, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %399, metadata !2179, metadata !DIExpression()), !dbg !2242
  %401 = icmp ult i64 %399, %129, !dbg !2554
  br i1 %401, label %402, label %404, !dbg !2557

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2554
  store i8 92, i8* %403, align 1, !dbg !2554, !tbaa !732
  br label %404, !dbg !2554

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %405, metadata !2179, metadata !DIExpression()), !dbg !2242
  %406 = icmp ult i64 %405, %129, !dbg !2558
  br i1 %406, label %407, label %411, !dbg !2561

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2558
  %409 = or i8 %408, 48, !dbg !2558
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2558
  store i8 %409, i8* %410, align 1, !dbg !2558, !tbaa !732
  br label %411, !dbg !2558

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %412, metadata !2179, metadata !DIExpression()), !dbg !2242
  %413 = icmp ult i64 %412, %129, !dbg !2562
  br i1 %413, label %414, label %419, !dbg !2565

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2562
  %416 = and i8 %415, 7, !dbg !2562
  %417 = or i8 %416, 48, !dbg !2562
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2562
  store i8 %417, i8* %418, align 1, !dbg !2562, !tbaa !732
  br label %419, !dbg !2562

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %420, metadata !2179, metadata !DIExpression()), !dbg !2242
  %421 = and i8 %374, 7, !dbg !2566
  %422 = or i8 %421, 48, !dbg !2567
  call void @llvm.dbg.value(metadata i8 %422, metadata !2189, metadata !DIExpression()), !dbg !2328
  br label %432, !dbg !2568

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2569
  %425 = icmp eq i8 %424, 0, !dbg !2569
  br i1 %425, label %432, label %426, !dbg !2570

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2571
  br i1 %427, label %428, label %430, !dbg !2574

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2571
  store i8 92, i8* %429, align 1, !dbg !2571, !tbaa !732
  br label %430, !dbg !2571

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %431, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression()), !dbg !2311
  br label %432, !dbg !2575

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2576
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2250
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2577
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2578
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2580
  call void @llvm.dbg.value(metadata i8 %437, metadata !2195, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8 %436, metadata !2194, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %435, metadata !2189, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 %434, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %433, metadata !2179, metadata !DIExpression()), !dbg !2242
  %438 = add i64 %371, 1, !dbg !2581
  %439 = icmp ugt i64 %369, %438, !dbg !2583
  br i1 %439, label %440, label %562, !dbg !2584

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2585
  %442 = icmp ne i8 %441, 0, !dbg !2585
  %443 = and i8 %437, 1, !dbg !2585
  %444 = icmp eq i8 %443, 0, !dbg !2585
  %445 = and i1 %442, %444, !dbg !2585
  br i1 %445, label %446, label %457, !dbg !2585

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2588
  br i1 %447, label %448, label %450, !dbg !2592

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2588
  store i8 39, i8* %449, align 1, !dbg !2588, !tbaa !732
  br label %450, !dbg !2588

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %451, metadata !2179, metadata !DIExpression()), !dbg !2242
  %452 = icmp ult i64 %451, %129, !dbg !2593
  br i1 %452, label %453, label %455, !dbg !2596

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2593
  store i8 39, i8* %454, align 1, !dbg !2593, !tbaa !732
  br label %455, !dbg !2593

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %456, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2250
  br label %457, !dbg !2597

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2598
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %459, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %458, metadata !2179, metadata !DIExpression()), !dbg !2242
  %460 = icmp ult i64 %458, %129, !dbg !2599
  br i1 %460, label %461, label %463, !dbg !2601

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2599
  store i8 %435, i8* %462, align 1, !dbg !2599, !tbaa !732
  br label %463, !dbg !2599

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %464, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %438, metadata !2178, metadata !DIExpression()), !dbg !2302
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2602
  %466 = load i8, i8* %465, align 1, !dbg !2602, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %466, metadata !2189, metadata !DIExpression()), !dbg !2328
  br label %370, !dbg !2603, !llvm.loop !2604

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2607
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2301
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2243
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2608
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2301
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2301
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2326
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2326
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2326
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %476, metadata !2196, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i8 %475, metadata !2195, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8 %155, metadata !2194, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %474, metadata !2189, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 %473, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %472, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %471, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %470, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %469, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %468, metadata !2178, metadata !DIExpression()), !dbg !2302
  br i1 %105, label %489, label %478, !dbg !2609

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
  br i1 %112, label %490, label %512, !dbg !2611

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2612

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
  %501 = lshr i8 %494, 5, !dbg !2613
  %502 = zext i8 %501 to i64, !dbg !2613
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2614
  %504 = load i32, i32* %503, align 4, !dbg !2614, !tbaa !693
  %505 = and i8 %494, 31, !dbg !2615
  %506 = zext i8 %505 to i32, !dbg !2615
  %507 = shl i32 1, %506, !dbg !2616
  %508 = and i32 %504, %507, !dbg !2616
  %509 = icmp eq i32 %508, 0, !dbg !2616
  %510 = icmp eq i8 %155, 0, !dbg !2617
  %511 = and i1 %510, %509, !dbg !2618
  br i1 %511, label %562, label %524, !dbg !2618

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
  %523 = icmp eq i8 %155, 0, !dbg !2617
  br i1 %523, label %562, label %524, !dbg !2619

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2620
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2301
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2243
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2608
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2250
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2251
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2621
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2326
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %532, metadata !2196, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i8 %531, metadata !2189, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 %530, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %529, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %528, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %527, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %526, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %525, metadata !2178, metadata !DIExpression()), !dbg !2302
  br i1 %110, label %534, label %661, !dbg !2624

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2195, metadata !DIExpression()), !dbg !2312
  %535 = and i8 %529, 1, !dbg !2626
  %536 = icmp eq i8 %535, 0, !dbg !2626
  %537 = and i1 %114, %536, !dbg !2626
  br i1 %537, label %538, label %554, !dbg !2626

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2628
  br i1 %539, label %540, label %542, !dbg !2632

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2628
  store i8 39, i8* %541, align 1, !dbg !2628, !tbaa !732
  br label %542, !dbg !2628

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %543, metadata !2179, metadata !DIExpression()), !dbg !2242
  %544 = icmp ult i64 %543, %533, !dbg !2633
  br i1 %544, label %545, label %547, !dbg !2636

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2633
  store i8 36, i8* %546, align 1, !dbg !2633, !tbaa !732
  br label %547, !dbg !2633

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %548, metadata !2179, metadata !DIExpression()), !dbg !2242
  %549 = icmp ult i64 %548, %533, !dbg !2637
  br i1 %549, label %550, label %552, !dbg !2640

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2637
  store i8 39, i8* %551, align 1, !dbg !2637, !tbaa !732
  br label %552, !dbg !2637

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %553, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 1, metadata !2186, metadata !DIExpression()), !dbg !2250
  br label %554, !dbg !2641

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2598
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %556, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %555, metadata !2179, metadata !DIExpression()), !dbg !2242
  %557 = icmp ult i64 %555, %533, !dbg !2642
  br i1 %557, label %558, label %560, !dbg !2645

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2642
  store i8 92, i8* %559, align 1, !dbg !2642, !tbaa !732
  br label %560, !dbg !2642

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2645
  call void @llvm.dbg.value(metadata i64 %561, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %572, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %571, metadata !2196, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i8 %570, metadata !2195, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8 %569, metadata !2189, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 %568, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %567, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %566, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %565, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %564, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %563, metadata !2178, metadata !DIExpression()), !dbg !2302
  br label %589, !dbg !2646

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2620
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2301
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2243
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2608
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2250
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2251
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2649
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2326
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2326
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %571, metadata !2196, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i8 %570, metadata !2195, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8 %569, metadata !2189, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 %568, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %567, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %566, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %565, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %564, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %563, metadata !2178, metadata !DIExpression()), !dbg !2302
  %573 = and i8 %567, 1, !dbg !2646
  %574 = icmp ne i8 %573, 0, !dbg !2646
  %575 = and i8 %570, 1, !dbg !2646
  %576 = icmp eq i8 %575, 0, !dbg !2646
  %577 = and i1 %574, %576, !dbg !2646
  br i1 %577, label %578, label %589, !dbg !2646

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2650
  br i1 %579, label %580, label %582, !dbg !2654

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2650
  store i8 39, i8* %581, align 1, !dbg !2650, !tbaa !732
  br label %582, !dbg !2650

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %583, metadata !2179, metadata !DIExpression()), !dbg !2242
  %584 = icmp ult i64 %583, %572, !dbg !2655
  br i1 %584, label %585, label %587, !dbg !2658

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2655
  store i8 39, i8* %586, align 1, !dbg !2655, !tbaa !732
  br label %587, !dbg !2655

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %588, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2250
  br label %589, !dbg !2659

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2598
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %598, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %597, metadata !2179, metadata !DIExpression()), !dbg !2242
  %599 = icmp ult i64 %597, %590, !dbg !2660
  br i1 %599, label %600, label %602, !dbg !2663

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2660
  store i8 %592, i8* %601, align 1, !dbg !2660, !tbaa !732
  br label %602, !dbg !2660

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %603, metadata !2179, metadata !DIExpression()), !dbg !2242
  %604 = and i8 %591, 1, !dbg !2664
  %605 = icmp eq i8 %604, 0, !dbg !2664
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2666
  call void @llvm.dbg.value(metadata i8 %606, metadata !2188, metadata !DIExpression()), !dbg !2252
  br label %607, !dbg !2667

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2620
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2301
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2243
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2608
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2250
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2301
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2252
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %614, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %613, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %612, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %611, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %610, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %609, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %608, metadata !2178, metadata !DIExpression()), !dbg !2302
  %616 = add i64 %608, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %616, metadata !2178, metadata !DIExpression()), !dbg !2302
  br label %121, !dbg !2669, !llvm.loop !2670

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %618, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %618, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %125, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %125, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %126, metadata !2186, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %127, metadata !2187, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 %128, metadata !2188, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  %619 = icmp eq i64 %123, 0, !dbg !2672
  %620 = and i1 %114, %619, !dbg !2674
  %621 = xor i1 %620, true, !dbg !2674
  %622 = or i1 %110, %621, !dbg !2674
  br i1 %622, label %623, label %661, !dbg !2674

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2675
  %625 = xor i1 %624, true, !dbg !2675
  %626 = and i8 %127, 1, !dbg !2677
  %627 = icmp eq i8 %626, 0, !dbg !2677
  %628 = or i1 %627, %625, !dbg !2675
  br i1 %628, label %638, label %629, !dbg !2675

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2678
  %631 = icmp eq i8 %630, 0, !dbg !2678
  br i1 %631, label %634, label %632, !dbg !2681

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %618, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %618, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %618, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %618, metadata !2172, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %95, metadata !2176, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %96, metadata !2177, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %124, metadata !2180, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %125, metadata !2172, metadata !DIExpression()), !dbg !2236
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2682
  br label %671, !dbg !2683

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2684
  %636 = icmp ne i64 %124, 0, !dbg !2686
  %637 = and i1 %636, %635, !dbg !2687
  br i1 %637, label %27, label %638, !dbg !2687

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %129, metadata !2170, metadata !DIExpression()), !dbg !2234
  %639 = icmp ne i8* %98, null, !dbg !2688
  %640 = and i1 %639, %110, !dbg !2690
  br i1 %640, label %641, label %656, !dbg !2690

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %123, metadata !2179, metadata !DIExpression()), !dbg !2242
  %642 = load i8, i8* %98, align 1, !dbg !2691, !tbaa !732
  %643 = icmp eq i8 %642, 0, !dbg !2694
  br i1 %643, label %656, label %644, !dbg !2694

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %647, metadata !2179, metadata !DIExpression()), !dbg !2242
  %648 = icmp ult i64 %647, %129, !dbg !2695
  br i1 %648, label %649, label %651, !dbg !2698

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2695
  store i8 %645, i8* %650, align 1, !dbg !2695, !tbaa !732
  br label %651, !dbg !2695

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2698
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %653, metadata !2181, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %652, metadata !2179, metadata !DIExpression()), !dbg !2242
  %654 = load i8, i8* %653, align 1, !dbg !2691, !tbaa !732
  %655 = icmp eq i8 %654, 0, !dbg !2694
  br i1 %655, label %656, label %644, !dbg !2694, !llvm.loop !2700

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2242
  call void @llvm.dbg.value(metadata i64 %657, metadata !2179, metadata !DIExpression()), !dbg !2242
  %658 = icmp ult i64 %657, %129, !dbg !2702
  br i1 %658, label %659, label %671, !dbg !2704

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2705
  store i8 0, i8* %660, align 1, !dbg !2706, !tbaa !732
  br label %671, !dbg !2705

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %663, metadata !2172, metadata !DIExpression()), !dbg !2236
  %665 = icmp ne i32 %662, 2, !dbg !2707
  %666 = icmp eq i8 %102, 0, !dbg !2709
  %667 = or i1 %665, %666, !dbg !2710
  call void @llvm.dbg.value(metadata i32 4, metadata !2173, metadata !DIExpression()), !dbg !2237
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %668, metadata !2173, metadata !DIExpression()), !dbg !2237
  %669 = and i32 %5, -3, !dbg !2711
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2712
  br label %671, !dbg !2713

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2714
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2719, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i32 %1, metadata !2720, metadata !DIExpression()), !dbg !2724
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #8, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %3, metadata !2721, metadata !DIExpression()), !dbg !2726
  %4 = icmp eq i8* %3, %0, !dbg !2727
  br i1 %4, label %5, label %71, !dbg !2729

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #8, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %6, metadata !2722, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %6, metadata !2732, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* null, metadata !2738, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 85, metadata !2739, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 84, metadata !2740, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 70, metadata !2741, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 45, metadata !2742, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 56, metadata !2743, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 0, metadata !2745, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 0, metadata !2746, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 0, metadata !2747, metadata !DIExpression()), !dbg !2760
  %7 = load i8, i8* %6, align 1, !dbg !2761, !tbaa !732
  %8 = and i8 %7, -33, !dbg !2761
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2761

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2763, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* null, metadata !2768, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 84, metadata !2769, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 70, metadata !2770, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8 45, metadata !2771, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 56, metadata !2772, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8 0, metadata !2773, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8 0, metadata !2774, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2775, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2776, metadata !DIExpression()), !dbg !2789
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2790
  %11 = load i8, i8* %10, align 1, !dbg !2790, !tbaa !732
  %12 = and i8 %11, -33, !dbg !2790
  %13 = icmp eq i8 %12, 84, !dbg !2790
  br i1 %13, label %14, label %68, !dbg !2790

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2792, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8* null, metadata !2797, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 70, metadata !2798, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 45, metadata !2799, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 56, metadata !2800, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 0, metadata !2801, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 0, metadata !2802, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 0, metadata !2803, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 0, metadata !2804, metadata !DIExpression()), !dbg !2816
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2817
  %16 = load i8, i8* %15, align 1, !dbg !2817, !tbaa !732
  %17 = and i8 %16, -33, !dbg !2817
  %18 = icmp eq i8 %17, 70, !dbg !2817
  br i1 %18, label %19, label %68, !dbg !2817

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2819, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* null, metadata !2824, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 45, metadata !2825, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 56, metadata !2826, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 0, metadata !2828, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 0, metadata !2829, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2830, metadata !DIExpression()), !dbg !2841
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2842
  %21 = load i8, i8* %20, align 1, !dbg !2842, !tbaa !732
  %22 = icmp eq i8 %21, 45, !dbg !2842
  br i1 %22, label %23, label %68, !dbg !2844

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2845, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* null, metadata !2850, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 56, metadata !2851, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8 0, metadata !2852, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 0, metadata !2853, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2865
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2866
  %25 = load i8, i8* %24, align 1, !dbg !2866, !tbaa !732
  %26 = icmp eq i8 %25, 56, !dbg !2866
  br i1 %26, label %27, label %68, !dbg !2868

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2869, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* null, metadata !2874, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 0, metadata !2875, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 0, metadata !2876, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 0, metadata !2878, metadata !DIExpression()), !dbg !2887
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2888
  %29 = load i8, i8* %28, align 1, !dbg !2888, !tbaa !732
  %30 = icmp eq i8 %29, 0, !dbg !2888
  br i1 %30, label %31, label %68, !dbg !2890

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2891, !tbaa !732
  %33 = icmp eq i8 %32, 96, !dbg !2892
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.96, i64 0, i64 0), !dbg !2891
  br label %71, !dbg !2893

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2763, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* null, metadata !2768, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8 66, metadata !2769, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i8 49, metadata !2770, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 56, metadata !2771, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 48, metadata !2772, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 51, metadata !2773, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 48, metadata !2774, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 0, metadata !2775, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8 0, metadata !2776, metadata !DIExpression()), !dbg !2906
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2907
  %37 = load i8, i8* %36, align 1, !dbg !2907, !tbaa !732
  %38 = and i8 %37, -33, !dbg !2907
  %39 = icmp eq i8 %38, 66, !dbg !2907
  br i1 %39, label %40, label %68, !dbg !2907

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2792, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* null, metadata !2797, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 49, metadata !2798, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8 56, metadata !2799, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 48, metadata !2800, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 51, metadata !2801, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 48, metadata !2802, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8 0, metadata !2803, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 0, metadata !2804, metadata !DIExpression()), !dbg !2917
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2918
  %42 = load i8, i8* %41, align 1, !dbg !2918, !tbaa !732
  %43 = icmp eq i8 %42, 49, !dbg !2918
  br i1 %43, label %44, label %68, !dbg !2919

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2819, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8* null, metadata !2824, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 56, metadata !2825, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 48, metadata !2826, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8 51, metadata !2827, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 48, metadata !2828, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 0, metadata !2829, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 0, metadata !2830, metadata !DIExpression()), !dbg !2928
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2929
  %46 = load i8, i8* %45, align 1, !dbg !2929, !tbaa !732
  %47 = icmp eq i8 %46, 56, !dbg !2929
  br i1 %47, label %48, label %68, !dbg !2930

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2845, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* null, metadata !2850, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 48, metadata !2851, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 51, metadata !2852, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 48, metadata !2853, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2938
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2939
  %50 = load i8, i8* %49, align 1, !dbg !2939, !tbaa !732
  %51 = icmp eq i8 %50, 48, !dbg !2939
  br i1 %51, label %52, label %68, !dbg !2940

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2869, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* null, metadata !2874, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8 51, metadata !2875, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8 48, metadata !2876, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2878, metadata !DIExpression()), !dbg !2947
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2948
  %54 = load i8, i8* %53, align 1, !dbg !2948, !tbaa !732
  %55 = icmp eq i8 %54, 51, !dbg !2948
  br i1 %55, label %56, label %68, !dbg !2949

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2950, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8* null, metadata !2955, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 48, metadata !2956, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8 0, metadata !2957, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 0, metadata !2958, metadata !DIExpression()), !dbg !2966
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2967
  %58 = load i8, i8* %57, align 1, !dbg !2967, !tbaa !732
  %59 = icmp eq i8 %58, 48, !dbg !2967
  br i1 %59, label %60, label %68, !dbg !2969

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2970, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8* null, metadata !2975, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 0, metadata !2976, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 0, metadata !2977, metadata !DIExpression()), !dbg !2984
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2985
  %62 = load i8, i8* %61, align 1, !dbg !2985, !tbaa !732
  %63 = icmp eq i8 %62, 0, !dbg !2985
  br i1 %63, label %64, label %68, !dbg !2987

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2988, !tbaa !732
  %66 = icmp eq i8 %65, 96, !dbg !2989
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.98, i64 0, i64 0), !dbg !2988
  br label %71, !dbg !2990

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2991
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !2992
  br label %71, !dbg !2993

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2994
  ret i8* %72, !dbg !2995
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2996 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3000, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3002, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* %0, metadata !3006, metadata !DIExpression()) #8, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %1, metadata !3011, metadata !DIExpression()) #8, !dbg !3021
  call void @llvm.dbg.value(metadata i64* null, metadata !3012, metadata !DIExpression()) #8, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3013, metadata !DIExpression()) #8, !dbg !3023
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3024
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3024
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3014, metadata !DIExpression()) #8, !dbg !3025
  %6 = tail call i32* @__errno_location() #17, !dbg !3026
  %7 = load i32, i32* %6, align 4, !dbg !3026, !tbaa !693
  call void @llvm.dbg.value(metadata i32 %7, metadata !3015, metadata !DIExpression()) #8, !dbg !3027
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3028
  %9 = load i32, i32* %8, align 4, !dbg !3028, !tbaa !2102
  %10 = or i32 %9, 1, !dbg !3029
  call void @llvm.dbg.value(metadata i32 %10, metadata !3016, metadata !DIExpression()) #8, !dbg !3030
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3031
  %12 = load i32, i32* %11, align 8, !dbg !3031, !tbaa !2042
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3032
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3033
  %15 = load i8*, i8** %14, align 8, !dbg !3033, !tbaa !2128
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3034
  %17 = load i8*, i8** %16, align 8, !dbg !3034, !tbaa !2131
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #8, !dbg !3035
  %19 = add i64 %18, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %19, metadata !3017, metadata !DIExpression()) #8, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %19, metadata !3038, metadata !DIExpression()) #8, !dbg !3043
  %20 = tail call noalias i8* @xmalloc(i64 %19) #8, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %20, metadata !3018, metadata !DIExpression()) #8, !dbg !3046
  %21 = load i32, i32* %11, align 8, !dbg !3047, !tbaa !2042
  %22 = load i8*, i8** %14, align 8, !dbg !3048, !tbaa !2128
  %23 = load i8*, i8** %16, align 8, !dbg !3049, !tbaa !2131
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #8, !dbg !3050
  store i32 %7, i32* %6, align 4, !dbg !3051, !tbaa !693
  ret i8* %20, !dbg !3052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3007 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3006, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3011, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64* %2, metadata !3012, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3013, metadata !DIExpression()), !dbg !3056
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3057
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3014, metadata !DIExpression()), !dbg !3058
  %7 = tail call i32* @__errno_location() #17, !dbg !3059
  %8 = load i32, i32* %7, align 4, !dbg !3059, !tbaa !693
  call void @llvm.dbg.value(metadata i32 %8, metadata !3015, metadata !DIExpression()), !dbg !3060
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3061
  %10 = load i32, i32* %9, align 4, !dbg !3061, !tbaa !2102
  %11 = icmp ne i64* %2, null, !dbg !3062
  %12 = xor i1 %11, true, !dbg !3062
  %13 = zext i1 %12 to i32, !dbg !3062
  %14 = or i32 %10, %13, !dbg !3063
  call void @llvm.dbg.value(metadata i32 %14, metadata !3016, metadata !DIExpression()), !dbg !3064
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3065
  %16 = load i32, i32* %15, align 8, !dbg !3065, !tbaa !2042
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3066
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3067
  %19 = load i8*, i8** %18, align 8, !dbg !3067, !tbaa !2128
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3068
  %21 = load i8*, i8** %20, align 8, !dbg !3068, !tbaa !2131
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3069
  %23 = add i64 %22, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %23, metadata !3017, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %23, metadata !3038, metadata !DIExpression()) #8, !dbg !3072
  %24 = tail call noalias i8* @xmalloc(i64 %23) #8, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %24, metadata !3018, metadata !DIExpression()), !dbg !3075
  %25 = load i32, i32* %15, align 8, !dbg !3076, !tbaa !2042
  %26 = load i8*, i8** %18, align 8, !dbg !3077, !tbaa !2128
  %27 = load i8*, i8** %20, align 8, !dbg !3078, !tbaa !2131
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3079
  store i32 %8, i32* %7, align 4, !dbg !3080, !tbaa !693
  br i1 %11, label %29, label %30, !dbg !3081

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3082, !tbaa !3084
  br label %30, !dbg !3085

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3087 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3091, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 1, metadata !3090, metadata !DIExpression()), !dbg !3093
  %2 = load i32, i32* @nslots, align 4, !dbg !3094, !tbaa !693
  %3 = icmp sgt i32 %2, 1, !dbg !3097
  br i1 %3, label %4, label %12, !dbg !3098

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3090, metadata !DIExpression()), !dbg !3093
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3099
  %7 = load i8*, i8** %6, align 8, !dbg !3099, !tbaa !3100
  tail call void @free(i8* %7) #8, !dbg !3102
  %8 = add nuw nsw i64 %5, 1, !dbg !3103
  call void @llvm.dbg.value(metadata i32 undef, metadata !3090, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3093
  %9 = load i32, i32* @nslots, align 4, !dbg !3094, !tbaa !693
  %10 = sext i32 %9 to i64, !dbg !3097
  %11 = icmp slt i64 %8, %10, !dbg !3097
  br i1 %11, label %4, label %12, !dbg !3098, !llvm.loop !3104

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3106
  %14 = load i8*, i8** %13, align 8, !dbg !3106, !tbaa !3100
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3108
  br i1 %15, label %17, label %16, !dbg !3109

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #8, !dbg !3110
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3112, !tbaa !3113
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3114, !tbaa !3100
  br label %17, !dbg !3115

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3116
  br i1 %18, label %21, label %19, !dbg !3118

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3119
  tail call void @free(i8* %20) #8, !dbg !3121
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3122, !tbaa !616
  br label %21, !dbg !3123

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3124, !tbaa !693
  ret void, !dbg !3125
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3130, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %1, metadata !3131, metadata !DIExpression()), !dbg !3133
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3134
  ret i8* %3, !dbg !3135
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3136 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3140, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8* %1, metadata !3141, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %2, metadata !3142, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3143, metadata !DIExpression()), !dbg !3158
  %5 = tail call i32* @__errno_location() #17, !dbg !3159
  %6 = load i32, i32* %5, align 4, !dbg !3159, !tbaa !693
  call void @llvm.dbg.value(metadata i32 %6, metadata !3144, metadata !DIExpression()), !dbg !3160
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3161, !tbaa !616
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3145, metadata !DIExpression()), !dbg !3162
  %8 = icmp slt i32 %0, 0, !dbg !3163
  br i1 %8, label %9, label %10, !dbg !3165

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3166
  unreachable, !dbg !3166

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3167, !tbaa !693
  %12 = icmp sgt i32 %11, %0, !dbg !3168
  br i1 %12, label %34, label %13, !dbg !3169

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3170
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3149, metadata !DIExpression()), !dbg !3171
  %15 = icmp eq i32 %0, 2147483647, !dbg !3172
  br i1 %15, label %16, label %17, !dbg !3174

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3175
  unreachable, !dbg !3175

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3176
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3176
  %20 = add nsw i32 %0, 1, !dbg !3177
  %21 = sext i32 %20 to i64, !dbg !3178
  %22 = shl nsw i64 %21, 4, !dbg !3179
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #8, !dbg !3180
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3180
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3145, metadata !DIExpression()), !dbg !3162
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3181, !tbaa !616
  br i1 %14, label %25, label %26, !dbg !3182

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3183, !tbaa.struct !3185
  br label %26, !dbg !3186

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3187, !tbaa !693
  %28 = sext i32 %27 to i64, !dbg !3188
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3188
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3189
  %31 = sub nsw i32 %20, %27, !dbg !3190
  %32 = sext i32 %31 to i64, !dbg !3191
  %33 = shl nsw i64 %32, 4, !dbg !3192
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3189
  store i32 %20, i32* @nslots, align 4, !dbg !3193, !tbaa !693
  br label %34, !dbg !3194

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3195
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3145, metadata !DIExpression()), !dbg !3162
  %36 = sext i32 %0 to i64, !dbg !3196
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3197
  %38 = load i64, i64* %37, align 8, !dbg !3197, !tbaa !3113
  call void @llvm.dbg.value(metadata i64 %38, metadata !3150, metadata !DIExpression()), !dbg !3198
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3199
  %40 = load i8*, i8** %39, align 8, !dbg !3199, !tbaa !3100
  call void @llvm.dbg.value(metadata i8* %40, metadata !3152, metadata !DIExpression()), !dbg !3200
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3201
  %42 = load i32, i32* %41, align 4, !dbg !3201, !tbaa !2102
  %43 = or i32 %42, 1, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %43, metadata !3153, metadata !DIExpression()), !dbg !3203
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3204
  %45 = load i32, i32* %44, align 8, !dbg !3204, !tbaa !2042
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3205
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3206
  %48 = load i8*, i8** %47, align 8, !dbg !3206, !tbaa !2128
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3207
  %50 = load i8*, i8** %49, align 8, !dbg !3207, !tbaa !2131
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %51, metadata !3154, metadata !DIExpression()), !dbg !3209
  %52 = icmp ugt i64 %38, %51, !dbg !3210
  br i1 %52, label %63, label %53, !dbg !3212

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %54, metadata !3150, metadata !DIExpression()), !dbg !3198
  store i64 %54, i64* %37, align 8, !dbg !3215, !tbaa !3113
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3216
  br i1 %55, label %57, label %56, !dbg !3218

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #8, !dbg !3219
  br label %57, !dbg !3219

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3038, metadata !DIExpression()) #8, !dbg !3220
  %58 = tail call noalias i8* @xmalloc(i64 %54) #8, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %58, metadata !3152, metadata !DIExpression()), !dbg !3200
  store i8* %58, i8** %39, align 8, !dbg !3223, !tbaa !3100
  %59 = load i32, i32* %44, align 8, !dbg !3224, !tbaa !2042
  %60 = load i8*, i8** %47, align 8, !dbg !3225, !tbaa !2128
  %61 = load i8*, i8** %49, align 8, !dbg !3226, !tbaa !2131
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3227
  br label %63, !dbg !3228

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8* %64, metadata !3152, metadata !DIExpression()), !dbg !3200
  store i32 %6, i32* %5, align 4, !dbg !3230, !tbaa !693
  ret i8* %64, !dbg !3231
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3232 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3236, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8* %1, metadata !3237, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %2, metadata !3238, metadata !DIExpression()), !dbg !3241
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3242
  ret i8* %4, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3248, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 0, metadata !3130, metadata !DIExpression()) #8, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %0, metadata !3131, metadata !DIExpression()) #8, !dbg !3252
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #8, !dbg !3253
  ret i8* %2, !dbg !3254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3255 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %1, metadata !3260, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i32 0, metadata !3236, metadata !DIExpression()) #8, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %0, metadata !3237, metadata !DIExpression()) #8, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3238, metadata !DIExpression()) #8, !dbg !3266
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #8, !dbg !3267
  ret i8* %3, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3269 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %1, metadata !3274, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* %2, metadata !3275, metadata !DIExpression()), !dbg !3279
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3280
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3276, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %1, metadata !3282, metadata !DIExpression()) #8, !dbg !3288
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #8, !dbg !3290, !alias.scope !3291
  %6 = icmp eq i32 %1, 10, !dbg !3294
  br i1 %6, label %7, label %8, !dbg !3296

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3297, !noalias !3291
  unreachable, !dbg !3297

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3298
  store i32 %1, i32* %9, align 8, !dbg !3299, !tbaa !2042, !alias.scope !3291
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3276, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3290
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3301
  ret i8* %10, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3303 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %1, metadata !3308, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* %2, metadata !3309, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %3, metadata !3310, metadata !DIExpression()), !dbg !3315
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3316
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3311, metadata !DIExpression(DW_OP_deref)), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %1, metadata !3282, metadata !DIExpression()) #8, !dbg !3318
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #8, !dbg !3320, !alias.scope !3321
  %7 = icmp eq i32 %1, 10, !dbg !3324
  br i1 %7, label %8, label %9, !dbg !3325

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3326, !noalias !3321
  unreachable, !dbg !3326

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3327
  store i32 %1, i32* %10, align 8, !dbg !3328, !tbaa !2042, !alias.scope !3321
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3311, metadata !DIExpression(DW_OP_deref)), !dbg !3317
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3320
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3329
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3330
  ret i8* %11, !dbg !3331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3332 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3336, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %1, metadata !3337, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 0, metadata !3273, metadata !DIExpression()) #8, !dbg !3340
  call void @llvm.dbg.value(metadata i32 %0, metadata !3274, metadata !DIExpression()) #8, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %1, metadata !3275, metadata !DIExpression()) #8, !dbg !3343
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3344
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3276, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3345
  call void @llvm.dbg.value(metadata i32 %0, metadata !3282, metadata !DIExpression()) #8, !dbg !3346
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #8, !dbg !3348, !alias.scope !3349
  %5 = icmp eq i32 %0, 10, !dbg !3352
  br i1 %5, label %6, label %7, !dbg !3353

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3354, !noalias !3349
  unreachable, !dbg !3354

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3355
  store i32 %0, i32* %8, align 8, !dbg !3356, !tbaa !2042, !alias.scope !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3276, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3345
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3287, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3348
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #8, !dbg !3357
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3358
  ret i8* %9, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3360 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3364, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8* %1, metadata !3365, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %2, metadata !3366, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 0, metadata !3307, metadata !DIExpression()) #8, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %0, metadata !3308, metadata !DIExpression()) #8, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %1, metadata !3309, metadata !DIExpression()) #8, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %2, metadata !3310, metadata !DIExpression()) #8, !dbg !3374
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3375
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3375
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3311, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3376
  call void @llvm.dbg.value(metadata i32 %0, metadata !3282, metadata !DIExpression()) #8, !dbg !3377
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #8, !dbg !3379, !alias.scope !3380
  %6 = icmp eq i32 %0, 10, !dbg !3383
  br i1 %6, label %7, label %8, !dbg !3384

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3385, !noalias !3380
  unreachable, !dbg !3385

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3386
  store i32 %0, i32* %9, align 8, !dbg !3387, !tbaa !2042, !alias.scope !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3311, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3376
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3287, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3379
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #8, !dbg !3388
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3389
  ret i8* %10, !dbg !3390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3391 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3395, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3396, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8 %2, metadata !3397, metadata !DIExpression()), !dbg !3401
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3402
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3402
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3403, !tbaa.struct !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2061, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i8 %2, metadata !2062, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 1, metadata !2063, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8 %2, metadata !2064, metadata !DIExpression()), !dbg !3410
  %6 = lshr i8 %2, 5, !dbg !3411
  %7 = zext i8 %6 to i64, !dbg !3411
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3412
  call void @llvm.dbg.value(metadata i32* %8, metadata !2066, metadata !DIExpression()), !dbg !3413
  %9 = and i8 %2, 31, !dbg !3414
  %10 = zext i8 %9 to i32, !dbg !3414
  call void @llvm.dbg.value(metadata i32 %10, metadata !2068, metadata !DIExpression()), !dbg !3415
  %11 = load i32, i32* %8, align 4, !dbg !3416, !tbaa !693
  %12 = lshr i32 %11, %10, !dbg !3417
  %13 = and i32 %12, 1, !dbg !3418
  call void @llvm.dbg.value(metadata i32 %13, metadata !2069, metadata !DIExpression()), !dbg !3419
  %14 = xor i32 %13, 1, !dbg !3420
  %15 = shl i32 %14, %10, !dbg !3421
  %16 = xor i32 %15, %11, !dbg !3422
  store i32 %16, i32* %8, align 4, !dbg !3422, !tbaa !693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3405
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3423
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3424
  ret i8* %17, !dbg !3425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3426 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8 %1, metadata !3431, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i8* %0, metadata !3395, metadata !DIExpression()) #8, !dbg !3434
  call void @llvm.dbg.value(metadata i64 -1, metadata !3396, metadata !DIExpression()) #8, !dbg !3436
  call void @llvm.dbg.value(metadata i8 %1, metadata !3397, metadata !DIExpression()) #8, !dbg !3437
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #8, !dbg !3439, !tbaa.struct !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3398, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3440
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2061, metadata !DIExpression()) #8, !dbg !3441
  call void @llvm.dbg.value(metadata i8 %1, metadata !2062, metadata !DIExpression()) #8, !dbg !3443
  call void @llvm.dbg.value(metadata i32 1, metadata !2063, metadata !DIExpression()) #8, !dbg !3444
  call void @llvm.dbg.value(metadata i8 %1, metadata !2064, metadata !DIExpression()) #8, !dbg !3445
  %5 = lshr i8 %1, 5, !dbg !3446
  %6 = zext i8 %5 to i64, !dbg !3446
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3447
  call void @llvm.dbg.value(metadata i32* %7, metadata !2066, metadata !DIExpression()) #8, !dbg !3448
  %8 = and i8 %1, 31, !dbg !3449
  %9 = zext i8 %8 to i32, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %9, metadata !2068, metadata !DIExpression()) #8, !dbg !3450
  %10 = load i32, i32* %7, align 4, !dbg !3451, !tbaa !693
  %11 = lshr i32 %10, %9, !dbg !3452
  %12 = and i32 %11, 1, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %12, metadata !2069, metadata !DIExpression()) #8, !dbg !3454
  %13 = xor i32 %12, 1, !dbg !3455
  %14 = shl i32 %13, %9, !dbg !3456
  %15 = xor i32 %14, %10, !dbg !3457
  store i32 %15, i32* %7, align 4, !dbg !3457, !tbaa !693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3398, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3440
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #8, !dbg !3458
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3459
  ret i8* %16, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3461 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3463, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8* %0, metadata !3430, metadata !DIExpression()) #8, !dbg !3465
  call void @llvm.dbg.value(metadata i8 58, metadata !3431, metadata !DIExpression()) #8, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %0, metadata !3395, metadata !DIExpression()) #8, !dbg !3468
  call void @llvm.dbg.value(metadata i64 -1, metadata !3396, metadata !DIExpression()) #8, !dbg !3470
  call void @llvm.dbg.value(metadata i8 58, metadata !3397, metadata !DIExpression()) #8, !dbg !3471
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3472
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #8, !dbg !3472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #8, !dbg !3473, !tbaa.struct !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3398, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2061, metadata !DIExpression()) #8, !dbg !3475
  call void @llvm.dbg.value(metadata i8 58, metadata !2062, metadata !DIExpression()) #8, !dbg !3477
  call void @llvm.dbg.value(metadata i32 1, metadata !2063, metadata !DIExpression()) #8, !dbg !3478
  call void @llvm.dbg.value(metadata i8 58, metadata !2064, metadata !DIExpression()) #8, !dbg !3479
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3480
  call void @llvm.dbg.value(metadata i32* %4, metadata !2066, metadata !DIExpression()) #8, !dbg !3481
  call void @llvm.dbg.value(metadata i32 26, metadata !2068, metadata !DIExpression()) #8, !dbg !3482
  %5 = load i32, i32* %4, align 4, !dbg !3483, !tbaa !693
  %6 = or i32 %5, 67108864, !dbg !3484
  store i32 %6, i32* %4, align 4, !dbg !3484, !tbaa !693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3398, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3474
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #8, !dbg !3485
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #8, !dbg !3486
  ret i8* %7, !dbg !3487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3488 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %0, metadata !3395, metadata !DIExpression()) #8, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %1, metadata !3396, metadata !DIExpression()) #8, !dbg !3496
  call void @llvm.dbg.value(metadata i8 58, metadata !3397, metadata !DIExpression()) #8, !dbg !3497
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3498
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #8, !dbg !3499, !tbaa.struct !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3398, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2061, metadata !DIExpression()) #8, !dbg !3501
  call void @llvm.dbg.value(metadata i8 58, metadata !2062, metadata !DIExpression()) #8, !dbg !3503
  call void @llvm.dbg.value(metadata i32 1, metadata !2063, metadata !DIExpression()) #8, !dbg !3504
  call void @llvm.dbg.value(metadata i8 58, metadata !2064, metadata !DIExpression()) #8, !dbg !3505
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3506
  call void @llvm.dbg.value(metadata i32* %5, metadata !2066, metadata !DIExpression()) #8, !dbg !3507
  call void @llvm.dbg.value(metadata i32 26, metadata !2068, metadata !DIExpression()) #8, !dbg !3508
  %6 = load i32, i32* %5, align 4, !dbg !3509, !tbaa !693
  %7 = or i32 %6, 67108864, !dbg !3510
  store i32 %7, i32* %5, align 4, !dbg !3510, !tbaa !693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3398, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3500
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #8, !dbg !3511
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #8, !dbg !3512
  ret i8* %8, !dbg !3513
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3514 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3287, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %0, metadata !3516, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %1, metadata !3517, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %2, metadata !3518, metadata !DIExpression()), !dbg !3524
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3525
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3526
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3526
  call void @llvm.dbg.value(metadata i32 %1, metadata !3282, metadata !DIExpression()) #8, !dbg !3527
  call void @llvm.dbg.value(metadata i32 0, metadata !3287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3520
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3520, !alias.scope !3528
  %8 = icmp eq i32 %1, 10, !dbg !3531
  br i1 %8, label %9, label %10, !dbg !3532

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3533, !noalias !3528
  unreachable, !dbg !3533

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3520
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3526
  store i32 %1, i32* %11, align 8, !dbg !3526
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3526
  %13 = bitcast i32* %12 to i8*, !dbg !3526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3526
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3526
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3519, metadata !DIExpression(DW_OP_deref)), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2061, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8 58, metadata !2062, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i32 1, metadata !2063, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 58, metadata !2064, metadata !DIExpression()), !dbg !3539
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32* %14, metadata !2066, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i32 26, metadata !2068, metadata !DIExpression()), !dbg !3542
  %15 = load i32, i32* %14, align 4, !dbg !3543, !tbaa !693
  %16 = or i32 %15, 67108864, !dbg !3544
  store i32 %16, i32* %14, align 4, !dbg !3544, !tbaa !693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3519, metadata !DIExpression(DW_OP_deref)), !dbg !3534
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3545
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3546
  ret i8* %17, !dbg !3547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3548 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3552, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i8* %1, metadata !3553, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i8* %2, metadata !3554, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8* %3, metadata !3555, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32 %0, metadata !3560, metadata !DIExpression()) #8, !dbg !3570
  call void @llvm.dbg.value(metadata i8* %1, metadata !3565, metadata !DIExpression()) #8, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %2, metadata !3566, metadata !DIExpression()) #8, !dbg !3573
  call void @llvm.dbg.value(metadata i8* %3, metadata !3567, metadata !DIExpression()) #8, !dbg !3574
  call void @llvm.dbg.value(metadata i64 -1, metadata !3568, metadata !DIExpression()) #8, !dbg !3575
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3576
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #8, !dbg !3577, !tbaa.struct !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3569, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()) #8, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %1, metadata !2111, metadata !DIExpression()) #8, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %2, metadata !2112, metadata !DIExpression()) #8, !dbg !3582
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()) #8, !dbg !3579
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3583
  store i32 10, i32* %7, align 8, !dbg !3584, !tbaa !2042
  %8 = icmp ne i8* %1, null, !dbg !3585
  %9 = icmp ne i8* %2, null, !dbg !3586
  %10 = and i1 %8, %9, !dbg !3587
  br i1 %10, label %12, label %11, !dbg !3587

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3588
  unreachable, !dbg !3588

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3589
  store i8* %1, i8** %13, align 8, !dbg !3590, !tbaa !2128
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3591
  store i8* %2, i8** %14, align 8, !dbg !3592, !tbaa !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3569, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3578
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #8, !dbg !3593
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3594
  ret i8* %15, !dbg !3595
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3561 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3560, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8* %1, metadata !3565, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8* %2, metadata !3566, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i8* %3, metadata !3567, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %4, metadata !3568, metadata !DIExpression()), !dbg !3600
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3601
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #8, !dbg !3601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3602, !tbaa.struct !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3569, metadata !DIExpression(DW_OP_deref)), !dbg !3603
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2110, metadata !DIExpression()) #8, !dbg !3604
  call void @llvm.dbg.value(metadata i8* %1, metadata !2111, metadata !DIExpression()) #8, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %2, metadata !2112, metadata !DIExpression()) #8, !dbg !3607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2110, metadata !DIExpression()) #8, !dbg !3604
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3608
  store i32 10, i32* %8, align 8, !dbg !3609, !tbaa !2042
  %9 = icmp ne i8* %1, null, !dbg !3610
  %10 = icmp ne i8* %2, null, !dbg !3611
  %11 = and i1 %9, %10, !dbg !3612
  br i1 %11, label %13, label %12, !dbg !3612

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3613
  unreachable, !dbg !3613

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3614
  store i8* %1, i8** %14, align 8, !dbg !3615, !tbaa !2128
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3616
  store i8* %2, i8** %15, align 8, !dbg !3617, !tbaa !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3569, metadata !DIExpression(DW_OP_deref)), !dbg !3603
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3618
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #8, !dbg !3619
  ret i8* %16, !dbg !3620
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3621 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3625, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8* %1, metadata !3626, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8* %2, metadata !3627, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3552, metadata !DIExpression()) #8, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %0, metadata !3553, metadata !DIExpression()) #8, !dbg !3633
  call void @llvm.dbg.value(metadata i8* %1, metadata !3554, metadata !DIExpression()) #8, !dbg !3634
  call void @llvm.dbg.value(metadata i8* %2, metadata !3555, metadata !DIExpression()) #8, !dbg !3635
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()) #8, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %0, metadata !3565, metadata !DIExpression()) #8, !dbg !3638
  call void @llvm.dbg.value(metadata i8* %1, metadata !3566, metadata !DIExpression()) #8, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %2, metadata !3567, metadata !DIExpression()) #8, !dbg !3640
  call void @llvm.dbg.value(metadata i64 -1, metadata !3568, metadata !DIExpression()) #8, !dbg !3641
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3642
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #8, !dbg !3643, !tbaa.struct !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3569, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2110, metadata !DIExpression()) #8, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()) #8, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %1, metadata !2112, metadata !DIExpression()) #8, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2110, metadata !DIExpression()) #8, !dbg !3645
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3649
  store i32 10, i32* %6, align 8, !dbg !3650, !tbaa !2042
  %7 = icmp ne i8* %0, null, !dbg !3651
  %8 = icmp ne i8* %1, null, !dbg !3652
  %9 = and i1 %7, %8, !dbg !3653
  br i1 %9, label %11, label %10, !dbg !3653

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3654
  unreachable, !dbg !3654

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3655
  store i8* %0, i8** %12, align 8, !dbg !3656, !tbaa !2128
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3657
  store i8* %1, i8** %13, align 8, !dbg !3658, !tbaa !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3569, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3644
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #8, !dbg !3659
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !3660
  ret i8* %14, !dbg !3661
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3662 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3666, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %1, metadata !3667, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8* %2, metadata !3668, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %3, metadata !3669, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()) #8, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %0, metadata !3565, metadata !DIExpression()) #8, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %1, metadata !3566, metadata !DIExpression()) #8, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %2, metadata !3567, metadata !DIExpression()) #8, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %3, metadata !3568, metadata !DIExpression()) #8, !dbg !3679
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3680
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #8, !dbg !3681, !tbaa.struct !3404
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3569, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3682
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()) #8, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()) #8, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %1, metadata !2112, metadata !DIExpression()) #8, !dbg !3686
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()) #8, !dbg !3683
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3687
  store i32 10, i32* %7, align 8, !dbg !3688, !tbaa !2042
  %8 = icmp ne i8* %0, null, !dbg !3689
  %9 = icmp ne i8* %1, null, !dbg !3690
  %10 = and i1 %8, %9, !dbg !3691
  br i1 %10, label %12, label %11, !dbg !3691

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3692
  unreachable, !dbg !3692

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3693
  store i8* %0, i8** %13, align 8, !dbg !3694, !tbaa !2128
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3695
  store i8* %1, i8** %14, align 8, !dbg !3696, !tbaa !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3569, metadata !DIExpression(DW_OP_deref)) #8, !dbg !3682
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #8, !dbg !3697
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !3698
  ret i8* %15, !dbg !3699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3704, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %1, metadata !3705, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %2, metadata !3706, metadata !DIExpression()), !dbg !3709
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3710
  ret i8* %4, !dbg !3711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3712 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3716, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %1, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 0, metadata !3704, metadata !DIExpression()) #8, !dbg !3720
  call void @llvm.dbg.value(metadata i8* %0, metadata !3705, metadata !DIExpression()) #8, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %1, metadata !3706, metadata !DIExpression()) #8, !dbg !3723
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !3724
  ret i8* %3, !dbg !3725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %1, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %0, metadata !3704, metadata !DIExpression()) #8, !dbg !3734
  call void @llvm.dbg.value(metadata i8* %1, metadata !3705, metadata !DIExpression()) #8, !dbg !3736
  call void @llvm.dbg.value(metadata i64 -1, metadata !3706, metadata !DIExpression()) #8, !dbg !3737
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !3738
  ret i8* %3, !dbg !3739
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3740 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3742, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 0, metadata !3730, metadata !DIExpression()) #8, !dbg !3744
  call void @llvm.dbg.value(metadata i8* %0, metadata !3731, metadata !DIExpression()) #8, !dbg !3746
  call void @llvm.dbg.value(metadata i32 0, metadata !3704, metadata !DIExpression()) #8, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %0, metadata !3705, metadata !DIExpression()) #8, !dbg !3749
  call void @llvm.dbg.value(metadata i64 -1, metadata !3706, metadata !DIExpression()) #8, !dbg !3750
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !3751
  ret i8* %2, !dbg !3752
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #9 !dbg !3753 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3758, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i8* %1, metadata !3759, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8* %0, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %1, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i32 -1, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 -1, metadata !3770, metadata !DIExpression()), !dbg !3780
  %3 = load i8, i8* %0, align 1, !dbg !3781, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %3, metadata !3771, metadata !DIExpression()), !dbg !3782
  %4 = load i8, i8* %1, align 1, !dbg !3783, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %4, metadata !3772, metadata !DIExpression()), !dbg !3784
  %5 = icmp eq i8 %3, 45, !dbg !3785
  br i1 %5, label %6, label %95, !dbg !3787

; <label>:6:                                      ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !3762, metadata !DIExpression()), !dbg !3776
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %8, metadata !3762, metadata !DIExpression()), !dbg !3776
  %9 = load i8, i8* %8, align 1, !dbg !3790, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %9, metadata !3771, metadata !DIExpression()), !dbg !3782
  %10 = icmp eq i8 %9, 48, !dbg !3791
  br i1 %10, label %6, label %11, !dbg !3792

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !3793
  br i1 %12, label %30, label %13, !dbg !3795

; <label>:13:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !3771, metadata !DIExpression()), !dbg !3782
  %14 = zext i8 %9 to i32, !dbg !3796
  %15 = add nsw i32 %14, -48, !dbg !3796
  %16 = icmp ult i32 %15, 10, !dbg !3796
  br i1 %16, label %197, label %17, !dbg !3799

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %1, metadata !3768, metadata !DIExpression()), !dbg !3778
  %18 = icmp eq i8 %4, 48, !dbg !3800
  br i1 %18, label %19, label %24, !dbg !3801

; <label>:19:                                     ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !3768, metadata !DIExpression()), !dbg !3778
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3802
  %22 = load i8, i8* %21, align 1, !dbg !3803, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %22, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %21, metadata !3768, metadata !DIExpression()), !dbg !3778
  %23 = icmp eq i8 %22, 48, !dbg !3800
  br i1 %23, label %19, label %24, !dbg !3801, !llvm.loop !3804

; <label>:24:                                     ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !3807
  call void @llvm.dbg.value(metadata i8 %25, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 undef, metadata !3772, metadata !DIExpression()), !dbg !3784
  %26 = zext i8 %25 to i32, !dbg !3808
  %27 = add nsw i32 %26, -48, !dbg !3808
  %28 = icmp ult i32 %27, 10, !dbg !3808
  %29 = sext i1 %28 to i32, !dbg !3809
  br label %197, !dbg !3810

; <label>:30:                                     ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !3768, metadata !DIExpression()), !dbg !3778
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !3811
  call void @llvm.dbg.value(metadata i8* %32, metadata !3768, metadata !DIExpression()), !dbg !3778
  %33 = load i8, i8* %32, align 1, !dbg !3812, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %33, metadata !3772, metadata !DIExpression()), !dbg !3784
  %34 = icmp eq i8 %33, 48, !dbg !3813
  br i1 %34, label %30, label %35, !dbg !3814

; <label>:35:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %9, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %8, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %32, metadata !3768, metadata !DIExpression()), !dbg !3778
  %36 = zext i8 %9 to i32, !dbg !3815
  %37 = icmp eq i8 %33, %9, !dbg !3816
  %38 = add nsw i32 %36, -48, !dbg !3817
  %39 = icmp ult i32 %38, 10, !dbg !3817
  %40 = and i1 %39, %37, !dbg !3818
  br i1 %40, label %41, label %55, !dbg !3818

; <label>:41:                                     ; preds = %35, %41
  %42 = phi i8* [ %44, %41 ], [ %8, %35 ]
  %43 = phi i8* [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %42, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %43, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %42, metadata !3762, metadata !DIExpression()), !dbg !3776
  %44 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3819
  %45 = load i8, i8* %44, align 1, !dbg !3821, !tbaa !732
  call void @llvm.dbg.value(metadata i8* %43, metadata !3768, metadata !DIExpression()), !dbg !3778
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !3822
  %47 = load i8, i8* %46, align 1, !dbg !3823, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %47, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %45, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %44, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %46, metadata !3768, metadata !DIExpression()), !dbg !3778
  %48 = zext i8 %45 to i32, !dbg !3815
  %49 = icmp eq i8 %47, %45, !dbg !3816
  %50 = add nsw i32 %48, -48, !dbg !3817
  %51 = icmp ult i32 %50, 10, !dbg !3817
  %52 = and i1 %49, %51, !dbg !3818
  br i1 %52, label %41, label %53, !dbg !3818

; <label>:53:                                     ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !3815
  br label %55, !dbg !3824

; <label>:55:                                     ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !3825
  %57 = phi i8* [ %32, %35 ], [ %46, %53 ], !dbg !3828
  %58 = phi i8* [ %8, %35 ], [ %44, %53 ], !dbg !3828
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !3828
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !3815
  call void @llvm.dbg.value(metadata i8* %57, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %58, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 %59, metadata !3772, metadata !DIExpression()), !dbg !3784
  %61 = zext i8 %59 to i32, !dbg !3824
  %62 = sub nsw i32 %61, %60, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %62, metadata !3773, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 0, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %58, metadata !3762, metadata !DIExpression()), !dbg !3776
  %63 = icmp ult i32 %56, 10, !dbg !3825
  br i1 %63, label %68, label %64, !dbg !3832

; <label>:64:                                     ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !3833
  call void @llvm.dbg.value(metadata i64 %65, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 0, metadata !3775, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 %59, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %57, metadata !3768, metadata !DIExpression()), !dbg !3778
  %66 = add nsw i32 %61, -48, !dbg !3835
  %67 = icmp ult i32 %66, 10, !dbg !3835
  br i1 %67, label %77, label %86, !dbg !3838

; <label>:68:                                     ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi i8* [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %70, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %70, metadata !3762, metadata !DIExpression()), !dbg !3776
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !3839
  %72 = load i8, i8* %71, align 1, !dbg !3840, !tbaa !732
  %73 = add i64 %69, 1, !dbg !3841
  call void @llvm.dbg.value(metadata i64 %73, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8 %72, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %71, metadata !3762, metadata !DIExpression()), !dbg !3776
  %74 = zext i8 %72 to i32, !dbg !3825
  %75 = add nsw i32 %74, -48, !dbg !3825
  %76 = icmp ult i32 %75, 10, !dbg !3825
  br i1 %76, label %68, label %64, !dbg !3832, !llvm.loop !3842

; <label>:77:                                     ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi i8* [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !3775, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8* %79, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %79, metadata !3768, metadata !DIExpression()), !dbg !3778
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3845
  %81 = load i8, i8* %80, align 1, !dbg !3846, !tbaa !732
  %82 = add i64 %78, 1, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %82, metadata !3775, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 %81, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %80, metadata !3768, metadata !DIExpression()), !dbg !3778
  %83 = zext i8 %81 to i32, !dbg !3835
  %84 = add nsw i32 %83, -48, !dbg !3835
  %85 = icmp ult i32 %84, 10, !dbg !3835
  br i1 %85, label %77, label %86, !dbg !3838, !llvm.loop !3848

; <label>:86:                                     ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !3851
  call void @llvm.dbg.value(metadata i64 %87, metadata !3775, metadata !DIExpression()), !dbg !3834
  %88 = icmp eq i64 %65, %87, !dbg !3852
  br i1 %88, label %92, label %89, !dbg !3854

; <label>:89:                                     ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !3855
  %91 = select i1 %90, i32 1, i32 -1, !dbg !3856
  br label %197, !dbg !3857

; <label>:92:                                     ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !3858
  %94 = select i1 %93, i32 0, i32 %62, !dbg !3860
  br label %197, !dbg !3860

; <label>:95:                                     ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !3861
  br i1 %96, label %99, label %97, !dbg !3863

; <label>:97:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %0, metadata !3762, metadata !DIExpression()), !dbg !3776
  %98 = icmp eq i8 %3, 48, !dbg !3864
  br i1 %98, label %125, label %121, !dbg !3866

; <label>:99:                                     ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !3768, metadata !DIExpression()), !dbg !3778
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !3867
  call void @llvm.dbg.value(metadata i8* %101, metadata !3768, metadata !DIExpression()), !dbg !3778
  %102 = load i8, i8* %101, align 1, !dbg !3869, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %102, metadata !3772, metadata !DIExpression()), !dbg !3784
  %103 = icmp eq i8 %102, 48, !dbg !3870
  br i1 %103, label %99, label %104, !dbg !3871

; <label>:104:                                    ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !3772, metadata !DIExpression()), !dbg !3784
  %105 = zext i8 %102 to i32, !dbg !3872
  %106 = add nsw i32 %105, -48, !dbg !3872
  %107 = icmp ult i32 %106, 10, !dbg !3872
  br i1 %107, label %197, label %108, !dbg !3874

; <label>:108:                                    ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %0, metadata !3762, metadata !DIExpression()), !dbg !3776
  %109 = icmp eq i8 %3, 48, !dbg !3875
  br i1 %109, label %110, label %115, !dbg !3876

; <label>:110:                                    ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !3762, metadata !DIExpression()), !dbg !3776
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !3877
  %113 = load i8, i8* %112, align 1, !dbg !3878, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %113, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %112, metadata !3762, metadata !DIExpression()), !dbg !3776
  %114 = icmp eq i8 %113, 48, !dbg !3875
  br i1 %114, label %110, label %115, !dbg !3876, !llvm.loop !3879

; <label>:115:                                    ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !3882
  call void @llvm.dbg.value(metadata i8 %116, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8 undef, metadata !3771, metadata !DIExpression()), !dbg !3782
  %117 = zext i8 %116 to i32, !dbg !3883
  %118 = add nsw i32 %117, -48, !dbg !3883
  %119 = icmp ult i32 %118, 10, !dbg !3883
  %120 = zext i1 %119 to i32, !dbg !3883
  br label %197, !dbg !3884

; <label>:121:                                    ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !3885
  call void @llvm.dbg.value(metadata i8* %122, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 %123, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8 %4, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %1, metadata !3768, metadata !DIExpression()), !dbg !3778
  %124 = icmp eq i8 %4, 48, !dbg !3886
  br i1 %124, label %138, label %130, !dbg !3887

; <label>:125:                                    ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !3762, metadata !DIExpression()), !dbg !3776
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !3888
  %128 = load i8, i8* %127, align 1, !dbg !3889, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %128, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %127, metadata !3762, metadata !DIExpression()), !dbg !3776
  %129 = icmp eq i8 %128, 48, !dbg !3864
  br i1 %129, label %125, label %121, !dbg !3866, !llvm.loop !3890

; <label>:130:                                    ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !3885
  call void @llvm.dbg.value(metadata i8* %131, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8 %132, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %123, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %122, metadata !3762, metadata !DIExpression()), !dbg !3776
  %133 = zext i8 %123 to i32, !dbg !3893
  %134 = icmp eq i8 %123, %132, !dbg !3894
  %135 = add nsw i32 %133, -48, !dbg !3895
  %136 = icmp ult i32 %135, 10, !dbg !3895
  %137 = and i1 %136, %134, !dbg !3896
  br i1 %137, label %143, label %157, !dbg !3896

; <label>:138:                                    ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !3768, metadata !DIExpression()), !dbg !3778
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !3897
  %141 = load i8, i8* %140, align 1, !dbg !3898, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %141, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %140, metadata !3768, metadata !DIExpression()), !dbg !3778
  %142 = icmp eq i8 %141, 48, !dbg !3886
  br i1 %142, label %138, label %130, !dbg !3887, !llvm.loop !3899

; <label>:143:                                    ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %144, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %145, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %144, metadata !3762, metadata !DIExpression()), !dbg !3776
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !3902
  %147 = load i8, i8* %146, align 1, !dbg !3904, !tbaa !732
  call void @llvm.dbg.value(metadata i8* %145, metadata !3768, metadata !DIExpression()), !dbg !3778
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3905
  %149 = load i8, i8* %148, align 1, !dbg !3906, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %149, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %147, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %146, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %148, metadata !3768, metadata !DIExpression()), !dbg !3778
  %150 = zext i8 %147 to i32, !dbg !3893
  %151 = icmp eq i8 %147, %149, !dbg !3894
  %152 = add nsw i32 %150, -48, !dbg !3895
  %153 = icmp ult i32 %152, 10, !dbg !3895
  %154 = and i1 %151, %153, !dbg !3896
  br i1 %154, label %143, label %155, !dbg !3896

; <label>:155:                                    ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !3893
  br label %157, !dbg !3907

; <label>:157:                                    ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !3908
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !3911
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !3893
  call void @llvm.dbg.value(metadata i8* %159, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %160, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 %161, metadata !3772, metadata !DIExpression()), !dbg !3784
  %163 = zext i8 %161 to i32, !dbg !3907
  %164 = sub nsw i32 %162, %163, !dbg !3912
  call void @llvm.dbg.value(metadata i32 %164, metadata !3773, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 0, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %160, metadata !3762, metadata !DIExpression()), !dbg !3776
  %165 = icmp ult i32 %158, 10, !dbg !3908
  br i1 %165, label %170, label %166, !dbg !3913

; <label>:166:                                    ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !3914
  call void @llvm.dbg.value(metadata i64 %167, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 0, metadata !3775, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 %161, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %159, metadata !3768, metadata !DIExpression()), !dbg !3778
  %168 = add nsw i32 %163, -48, !dbg !3915
  %169 = icmp ult i32 %168, 10, !dbg !3915
  br i1 %169, label %179, label %188, !dbg !3918

; <label>:170:                                    ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %172, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %172, metadata !3762, metadata !DIExpression()), !dbg !3776
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !3919
  %174 = load i8, i8* %173, align 1, !dbg !3920, !tbaa !732
  %175 = add i64 %171, 1, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %175, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8 %174, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %173, metadata !3762, metadata !DIExpression()), !dbg !3776
  %176 = zext i8 %174 to i32, !dbg !3908
  %177 = add nsw i32 %176, -48, !dbg !3908
  %178 = icmp ult i32 %177, 10, !dbg !3908
  br i1 %178, label %170, label %166, !dbg !3913, !llvm.loop !3922

; <label>:179:                                    ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !3775, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8* %181, metadata !3768, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %181, metadata !3768, metadata !DIExpression()), !dbg !3778
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !3925
  %183 = load i8, i8* %182, align 1, !dbg !3926, !tbaa !732
  %184 = add i64 %180, 1, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %184, metadata !3775, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 %183, metadata !3772, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %182, metadata !3768, metadata !DIExpression()), !dbg !3778
  %185 = zext i8 %183 to i32, !dbg !3915
  %186 = add nsw i32 %185, -48, !dbg !3915
  %187 = icmp ult i32 %186, 10, !dbg !3915
  br i1 %187, label %179, label %188, !dbg !3918, !llvm.loop !3928

; <label>:188:                                    ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !3931
  call void @llvm.dbg.value(metadata i64 %189, metadata !3775, metadata !DIExpression()), !dbg !3834
  %190 = icmp eq i64 %167, %189, !dbg !3932
  br i1 %190, label %194, label %191, !dbg !3934

; <label>:191:                                    ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !3935
  %193 = select i1 %192, i32 -1, i32 1, !dbg !3936
  br label %197, !dbg !3937

; <label>:194:                                    ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !3938
  %196 = select i1 %195, i32 0, i32 %164, !dbg !3940
  br label %197, !dbg !3940

; <label>:197:                                    ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !3941
  ret i32 %198, !dbg !3943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror(i32, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #7 !dbg !3944 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3956, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i32 %1, metadata !3957, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i8* %2, metadata !3958, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, metadata !3959, metadata !DIExpression()), !dbg !3963
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !3964
  ret void, !dbg !3965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror_at_line(i32, i32, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #7 !dbg !3966 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3970, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 %1, metadata !3971, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %2, metadata !3972, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 %3, metadata !3973, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i8* %4, metadata !3974, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !3975, metadata !DIExpression()), !dbg !3982
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #8, !dbg !3983
  call void @llvm.dbg.value(metadata i8* %7, metadata !3976, metadata !DIExpression()), !dbg !3984
  %8 = icmp eq i8* %7, null, !dbg !3985
  br i1 %8, label %13, label %9, !dbg !3987

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !3988
  br i1 %10, label %12, label %11, !dbg !3991

; <label>:11:                                     ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %7) #8, !dbg !3992
  br label %17, !dbg !3992

; <label>:12:                                     ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %7) #8, !dbg !3993
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #17, !dbg !3994
  %15 = load i32, i32* %14, align 4, !dbg !3994, !tbaa !693
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #8, !dbg !3996
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #8, !dbg !3997
  tail call void @abort() #15, !dbg !3998
  unreachable, !dbg !3998

; <label>:17:                                     ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #8, !dbg !3999
  ret void, !dbg !4000
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4001 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4005, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %1, metadata !4006, metadata !DIExpression()), !dbg !4008
  %3 = udiv i64 9223372036854775807, %1, !dbg !4009
  %4 = icmp ult i64 %3, %0, !dbg !4009
  br i1 %4, label %5, label %6, !dbg !4011

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4012
  unreachable, !dbg !4012

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4013
  call void @llvm.dbg.value(metadata i64 %7, metadata !4014, metadata !DIExpression()) #8, !dbg !4021
  %8 = tail call noalias i8* @malloc(i64 %7) #8, !dbg !4023
  call void @llvm.dbg.value(metadata i8* %8, metadata !4020, metadata !DIExpression()) #8, !dbg !4024
  %9 = icmp eq i8* %8, null, !dbg !4025
  %10 = icmp ne i64 %7, 0, !dbg !4027
  %11 = and i1 %10, %9, !dbg !4028
  br i1 %11, label %12, label %13, !dbg !4028

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4029
  unreachable, !dbg !4029

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4030
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4015 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4014, metadata !DIExpression()), !dbg !4031
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !4032
  call void @llvm.dbg.value(metadata i8* %2, metadata !4020, metadata !DIExpression()), !dbg !4033
  %3 = icmp eq i8* %2, null, !dbg !4034
  %4 = icmp ne i64 %0, 0, !dbg !4035
  %5 = and i1 %4, %3, !dbg !4036
  br i1 %5, label %6, label %7, !dbg !4036

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4037
  unreachable, !dbg !4037

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4038
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4039 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 %1, metadata !4044, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %2, metadata !4045, metadata !DIExpression()), !dbg !4048
  %4 = udiv i64 9223372036854775807, %2, !dbg !4049
  %5 = icmp ult i64 %4, %1, !dbg !4049
  br i1 %5, label %6, label %7, !dbg !4051

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4052
  unreachable, !dbg !4052

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4053
  call void @llvm.dbg.value(metadata i8* %0, metadata !4054, metadata !DIExpression()) #8, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %8, metadata !4059, metadata !DIExpression()) #8, !dbg !4062
  %9 = icmp eq i64 %8, 0, !dbg !4063
  %10 = icmp ne i8* %0, null, !dbg !4065
  %11 = and i1 %10, %9, !dbg !4066
  br i1 %11, label %12, label %13, !dbg !4066

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #8, !dbg !4067
  br label %19, !dbg !4069

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #8, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %14, metadata !4054, metadata !DIExpression()) #8, !dbg !4060
  %15 = icmp eq i8* %14, null, !dbg !4071
  %16 = icmp ne i64 %8, 0, !dbg !4073
  %17 = and i1 %16, %15, !dbg !4074
  br i1 %17, label %18, label %19, !dbg !4074

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4075
  unreachable, !dbg !4075

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4076
  ret i8* %20, !dbg !4077
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4055 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4054, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 %1, metadata !4059, metadata !DIExpression()), !dbg !4079
  %3 = icmp eq i64 %1, 0, !dbg !4080
  %4 = icmp ne i8* %0, null, !dbg !4081
  %5 = and i1 %4, %3, !dbg !4082
  br i1 %5, label %6, label %7, !dbg !4082

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #8, !dbg !4083
  br label %13, !dbg !4084

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #8, !dbg !4085
  call void @llvm.dbg.value(metadata i8* %8, metadata !4054, metadata !DIExpression()), !dbg !4078
  %9 = icmp eq i8* %8, null, !dbg !4086
  %10 = icmp ne i64 %1, 0, !dbg !4087
  %11 = and i1 %10, %9, !dbg !4088
  br i1 %11, label %12, label %13, !dbg !4088

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4089
  unreachable, !dbg !4089

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4090
  ret i8* %14, !dbg !4091
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !155 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !160, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64* %1, metadata !161, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %2, metadata !162, metadata !DIExpression()), !dbg !4094
  %4 = load i64, i64* %1, align 8, !dbg !4095, !tbaa !3084
  call void @llvm.dbg.value(metadata i64 %4, metadata !163, metadata !DIExpression()), !dbg !4096
  %5 = icmp eq i8* %0, null, !dbg !4097
  br i1 %5, label %6, label %20, !dbg !4099

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4100
  br i1 %7, label %8, label %13, !dbg !4103

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4104
  call void @llvm.dbg.value(metadata i64 %9, metadata !163, metadata !DIExpression()), !dbg !4096
  %10 = icmp ugt i64 %2, 128, !dbg !4106
  %11 = zext i1 %10 to i64, !dbg !4106
  %12 = add nuw nsw i64 %9, %11, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %12, metadata !163, metadata !DIExpression()), !dbg !4096
  br label %13, !dbg !4108

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4109
  call void @llvm.dbg.value(metadata i64 %14, metadata !163, metadata !DIExpression()), !dbg !4096
  %15 = udiv i64 9223372036854775807, %2, !dbg !4110
  %16 = icmp ult i64 %15, %14, !dbg !4110
  br i1 %16, label %19, label %17, !dbg !4112

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !163, metadata !DIExpression()), !dbg !4096
  store i64 %14, i64* %1, align 8, !dbg !4113, !tbaa !3084
  %18 = mul i64 %14, %2, !dbg !4114
  call void @llvm.dbg.value(metadata i8* %0, metadata !4054, metadata !DIExpression()) #8, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %28, metadata !4059, metadata !DIExpression()) #8, !dbg !4117
  br label %31, !dbg !4118

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4119
  unreachable, !dbg !4119

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4120
  %22 = icmp ugt i64 %21, %4, !dbg !4123
  br i1 %22, label %24, label %23, !dbg !4124

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4125
  unreachable, !dbg !4125

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4126
  %26 = add i64 %4, 1, !dbg !4127
  %27 = add i64 %26, %25, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %27, metadata !163, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %27, metadata !163, metadata !DIExpression()), !dbg !4096
  store i64 %27, i64* %1, align 8, !dbg !4113, !tbaa !3084
  %28 = mul i64 %27, %2, !dbg !4114
  call void @llvm.dbg.value(metadata i8* %0, metadata !4054, metadata !DIExpression()) #8, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %28, metadata !4059, metadata !DIExpression()) #8, !dbg !4117
  %29 = icmp eq i64 %28, 0, !dbg !4129
  br i1 %29, label %30, label %31, !dbg !4118

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #8, !dbg !4130
  br label %38, !dbg !4131

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #8, !dbg !4132
  call void @llvm.dbg.value(metadata i8* %33, metadata !4054, metadata !DIExpression()) #8, !dbg !4115
  %34 = icmp eq i8* %33, null, !dbg !4133
  %35 = icmp ne i64 %32, 0, !dbg !4134
  %36 = and i1 %35, %34, !dbg !4135
  br i1 %36, label %37, label %38, !dbg !4135

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4136
  unreachable, !dbg !4136

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4137
  ret i8* %39, !dbg !4138
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4139 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 %0, metadata !4014, metadata !DIExpression()) #8, !dbg !4143
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !4145
  call void @llvm.dbg.value(metadata i8* %2, metadata !4020, metadata !DIExpression()) #8, !dbg !4146
  %3 = icmp eq i8* %2, null, !dbg !4147
  %4 = icmp ne i64 %0, 0, !dbg !4148
  %5 = and i1 %4, %3, !dbg !4149
  br i1 %5, label %6, label %7, !dbg !4149

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4150
  unreachable, !dbg !4150

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4152 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4156, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64* %1, metadata !4157, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i8* %0, metadata !160, metadata !DIExpression()) #8, !dbg !4160
  call void @llvm.dbg.value(metadata i64* %1, metadata !161, metadata !DIExpression()) #8, !dbg !4162
  call void @llvm.dbg.value(metadata i64 1, metadata !162, metadata !DIExpression()) #8, !dbg !4163
  %3 = load i64, i64* %1, align 8, !dbg !4164, !tbaa !3084
  call void @llvm.dbg.value(metadata i64 %3, metadata !163, metadata !DIExpression()) #8, !dbg !4165
  %4 = icmp eq i8* %0, null, !dbg !4166
  br i1 %4, label %5, label %12, !dbg !4167

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4168
  br i1 %6, label %9, label %7, !dbg !4169

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !163, metadata !DIExpression()) #8, !dbg !4165
  %8 = icmp slt i64 %3, 0, !dbg !4170
  br i1 %8, label %11, label %9, !dbg !4171

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !163, metadata !DIExpression()) #8, !dbg !4165
  store i64 %10, i64* %1, align 8, !dbg !4172, !tbaa !3084
  call void @llvm.dbg.value(metadata i8* %0, metadata !4054, metadata !DIExpression()) #8, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %18, metadata !4059, metadata !DIExpression()) #8, !dbg !4175
  br label %21, !dbg !4176

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4177
  unreachable, !dbg !4177

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4178
  br i1 %13, label %15, label %14, !dbg !4179

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4180
  unreachable, !dbg !4180

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4181
  %17 = add i64 %3, 1, !dbg !4182
  %18 = add i64 %17, %16, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %18, metadata !163, metadata !DIExpression()) #8, !dbg !4165
  call void @llvm.dbg.value(metadata i64 %18, metadata !163, metadata !DIExpression()) #8, !dbg !4165
  store i64 %18, i64* %1, align 8, !dbg !4172, !tbaa !3084
  call void @llvm.dbg.value(metadata i8* %0, metadata !4054, metadata !DIExpression()) #8, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %18, metadata !4059, metadata !DIExpression()) #8, !dbg !4175
  %19 = icmp eq i64 %18, 0, !dbg !4184
  br i1 %19, label %20, label %21, !dbg !4176

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #8, !dbg !4185
  br label %28, !dbg !4186

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #8, !dbg !4187
  call void @llvm.dbg.value(metadata i8* %23, metadata !4054, metadata !DIExpression()) #8, !dbg !4173
  %24 = icmp eq i8* %23, null, !dbg !4188
  %25 = icmp ne i64 %22, 0, !dbg !4189
  %26 = and i1 %25, %24, !dbg !4190
  br i1 %26, label %27, label %28, !dbg !4190

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4191
  unreachable, !dbg !4191

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4192
  ret i8* %29, !dbg !4193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4194 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4196, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %0, metadata !4014, metadata !DIExpression()) #8, !dbg !4198
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !4200
  call void @llvm.dbg.value(metadata i8* %2, metadata !4020, metadata !DIExpression()) #8, !dbg !4201
  %3 = icmp eq i8* %2, null, !dbg !4202
  %4 = icmp ne i64 %0, 0, !dbg !4203
  %5 = and i1 %4, %3, !dbg !4204
  br i1 %5, label %6, label %7, !dbg !4204

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4205
  unreachable, !dbg !4205

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4206
  ret i8* %2, !dbg !4207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4208 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4210, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()), !dbg !4214
  %3 = udiv i64 9223372036854775807, %1, !dbg !4215
  %4 = icmp ult i64 %3, %0, !dbg !4215
  br i1 %4, label %8, label %5, !dbg !4217

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #8, !dbg !4218
  call void @llvm.dbg.value(metadata i8* %6, metadata !4212, metadata !DIExpression()), !dbg !4219
  %7 = icmp eq i8* %6, null, !dbg !4220
  br i1 %7, label %8, label %9, !dbg !4221

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4222
  unreachable, !dbg !4222

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4223
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4224 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 %1, metadata !4231, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %1, metadata !4014, metadata !DIExpression()) #8, !dbg !4234
  %3 = tail call noalias i8* @malloc(i64 %1) #8, !dbg !4236
  call void @llvm.dbg.value(metadata i8* %3, metadata !4020, metadata !DIExpression()) #8, !dbg !4237
  %4 = icmp eq i8* %3, null, !dbg !4238
  %5 = icmp ne i64 %1, 0, !dbg !4239
  %6 = and i1 %5, %4, !dbg !4240
  br i1 %6, label %7, label %8, !dbg !4240

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4241
  unreachable, !dbg !4241

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4242
  ret i8* %3, !dbg !4243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4246, metadata !DIExpression()), !dbg !4247
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4248
  %3 = add i64 %2, 1, !dbg !4249
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()) #8, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %3, metadata !4231, metadata !DIExpression()) #8, !dbg !4252
  call void @llvm.dbg.value(metadata i64 %3, metadata !4014, metadata !DIExpression()) #8, !dbg !4253
  %4 = tail call noalias i8* @malloc(i64 %3) #8, !dbg !4255
  call void @llvm.dbg.value(metadata i8* %4, metadata !4020, metadata !DIExpression()) #8, !dbg !4256
  %5 = icmp eq i8* %4, null, !dbg !4257
  %6 = icmp ne i64 %3, 0, !dbg !4258
  %7 = and i1 %6, %5, !dbg !4259
  br i1 %7, label %8, label %9, !dbg !4259

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4260
  unreachable, !dbg !4260

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #8, !dbg !4261
  ret i8* %4, !dbg !4262
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4263 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4265, !tbaa !693
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #8, !dbg !4266
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #8, !dbg !4267
  tail call void @abort() #15, !dbg !4268
  unreachable, !dbg !4268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xvasprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #7 !dbg !4269 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4281, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4282, metadata !DIExpression()), !dbg !4288
  %4 = bitcast i8** %3 to i8*, !dbg !4289
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !4289
  call void @llvm.dbg.value(metadata i64 0, metadata !4284, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i8* %0, metadata !4286, metadata !DIExpression()), !dbg !4291
  br label %5, !dbg !4292

; <label>:5:                                      ; preds = %13, %2
  %6 = phi i64 [ 0, %2 ], [ %15, %13 ], !dbg !4294
  %7 = phi i8* [ %0, %2 ], [ %14, %13 ], !dbg !4294
  call void @llvm.dbg.value(metadata i8* %7, metadata !4286, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %6, metadata !4284, metadata !DIExpression()), !dbg !4290
  %8 = load i8, i8* %7, align 1, !dbg !4297, !tbaa !732
  switch i8 %8, label %18 [
    i8 0, label %16
    i8 37, label %9
  ], !dbg !4299

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !4300
  call void @llvm.dbg.value(metadata i8* %10, metadata !4286, metadata !DIExpression()), !dbg !4291
  %11 = load i8, i8* %10, align 1, !dbg !4301, !tbaa !732
  %12 = icmp eq i8 %11, 115, !dbg !4303
  br i1 %12, label %13, label %18, !dbg !4304

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !4305
  call void @llvm.dbg.value(metadata i8* %14, metadata !4286, metadata !DIExpression()), !dbg !4291
  %15 = add i64 %6, 1, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %15, metadata !4284, metadata !DIExpression()), !dbg !4290
  br label %5, !dbg !4307, !llvm.loop !4308

; <label>:16:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i64 %6, metadata !4284, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %6, metadata !4284, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %6, metadata !4284, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %6, metadata !4284, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %6, metadata !4284, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %6, metadata !4284, metadata !DIExpression()), !dbg !4290
  %17 = tail call fastcc i8* @xstrcat(i64 %6, %struct.__va_list_tag* %1), !dbg !4311
  br label %28

; <label>:18:                                     ; preds = %5, %9
  call void @llvm.dbg.value(metadata i8** %3, metadata !4283, metadata !DIExpression(DW_OP_deref)), !dbg !4312
  call void @llvm.dbg.value(metadata i8** %3, metadata !4313, metadata !DIExpression()) #8, !dbg !4323
  call void @llvm.dbg.value(metadata i8* %0, metadata !4321, metadata !DIExpression()) #8, !dbg !4323
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4322, metadata !DIExpression()) #8, !dbg !4323
  %19 = call i32 @__vasprintf_chk(i8** nonnull %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #8, !dbg !4326
  %20 = icmp slt i32 %19, 0, !dbg !4327
  br i1 %20, label %21, label %26, !dbg !4328

; <label>:21:                                     ; preds = %18
  %22 = tail call i32* @__errno_location() #17, !dbg !4329
  %23 = load i32, i32* %22, align 4, !dbg !4329, !tbaa !693
  %24 = icmp eq i32 %23, 12, !dbg !4332
  br i1 %24, label %25, label %28, !dbg !4333

; <label>:25:                                     ; preds = %21
  call void @xalloc_die() #15, !dbg !4334
  unreachable, !dbg !4334

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %3, align 8, !dbg !4335, !tbaa !616
  call void @llvm.dbg.value(metadata i8* %27, metadata !4283, metadata !DIExpression()), !dbg !4312
  br label %28, !dbg !4336

; <label>:28:                                     ; preds = %16, %21, %26
  %29 = phi i8* [ %27, %26 ], [ %17, %16 ], [ null, %21 ], !dbg !4337
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !4338
  ret i8* %29, !dbg !4338
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @xstrcat(i64, %struct.__va_list_tag*) unnamed_addr #7 !dbg !4339 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i64 %0, metadata !4343, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4344, metadata !DIExpression()), !dbg !4364
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4365
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !4365
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4346, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 0, metadata !4351, metadata !DIExpression()), !dbg !4367
  %5 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4368
  call void @llvm.va_copy(i8* nonnull %4, i8* %5), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %0, metadata !4352, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 0, metadata !4351, metadata !DIExpression()), !dbg !4367
  %6 = icmp eq i64 %0, 0, !dbg !4370
  br i1 %6, label %7, label %9, !dbg !4371

; <label>:7:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i64 %35, metadata !4351, metadata !DIExpression()), !dbg !4367
  call void @llvm.va_end(i8* nonnull %4), !dbg !4372
  %8 = call noalias i8* @xmalloc(i64 1) #8, !dbg !4373
  call void @llvm.dbg.value(metadata i8* %44, metadata !4345, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i8* %44, metadata !4353, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 %0, metadata !4352, metadata !DIExpression()), !dbg !4369
  br label %70, !dbg !4376

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %13 = load i32, i32* %10, align 16, !dbg !4377
  br label %14, !dbg !4371

; <label>:14:                                     ; preds = %9, %27
  %15 = phi i32 [ %13, %9 ], [ %28, %27 ], !dbg !4377
  %16 = phi i64 [ 0, %9 ], [ %35, %27 ]
  %17 = phi i64 [ %0, %9 ], [ %36, %27 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !4351, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %17, metadata !4352, metadata !DIExpression()), !dbg !4369
  %18 = icmp ult i32 %15, 41, !dbg !4377
  br i1 %18, label %19, label %24, !dbg !4377

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %11, align 16, !dbg !4377
  %21 = sext i32 %15 to i64, !dbg !4377
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !4377
  %23 = add i32 %15, 8, !dbg !4377
  store i32 %23, i32* %10, align 16, !dbg !4377
  br label %27, !dbg !4377

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %12, align 8, !dbg !4377
  %26 = getelementptr i8, i8* %25, i64 8, !dbg !4377
  store i8* %26, i8** %12, align 8, !dbg !4377
  br label %27, !dbg !4377

; <label>:27:                                     ; preds = %24, %19
  %28 = phi i32 [ %23, %19 ], [ %15, %24 ]
  %29 = phi i8* [ %22, %19 ], [ %25, %24 ]
  %30 = bitcast i8* %29 to i8**, !dbg !4377
  %31 = load i8*, i8** %30, align 8, !dbg !4377
  call void @llvm.dbg.value(metadata i8* %31, metadata !4354, metadata !DIExpression()), !dbg !4378
  %32 = call i64 @strlen(i8* %31) #14, !dbg !4379
  call void @llvm.dbg.value(metadata i64 %16, metadata !4380, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i64 %32, metadata !4386, metadata !DIExpression()), !dbg !4390
  %33 = add i64 %32, %16, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %33, metadata !4387, metadata !DIExpression()), !dbg !4392
  %34 = icmp ult i64 %33, %16, !dbg !4393
  %35 = select i1 %34, i64 -1, i64 %33, !dbg !4394
  %36 = add i64 %17, -1, !dbg !4395
  call void @llvm.dbg.value(metadata i64 %35, metadata !4351, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %36, metadata !4352, metadata !DIExpression()), !dbg !4369
  %37 = icmp eq i64 %36, 0, !dbg !4370
  br i1 %37, label %38, label %14, !dbg !4371, !llvm.loop !4396

; <label>:38:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i64 %35, metadata !4351, metadata !DIExpression()), !dbg !4367
  call void @llvm.va_end(i8* nonnull %4), !dbg !4372
  %39 = icmp ugt i64 %35, 2147483647, !dbg !4398
  br i1 %39, label %40, label %42, !dbg !4400

; <label>:40:                                     ; preds = %38
  %41 = tail call i32* @__errno_location() #17, !dbg !4401
  store i32 75, i32* %41, align 4, !dbg !4403, !tbaa !693
  br label %73, !dbg !4404

; <label>:42:                                     ; preds = %38
  %43 = add i64 %35, 1, !dbg !4373
  %44 = call noalias i8* @xmalloc(i64 %43) #8, !dbg !4373
  call void @llvm.dbg.value(metadata i8* %44, metadata !4345, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i8* %44, metadata !4353, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 %0, metadata !4352, metadata !DIExpression()), !dbg !4369
  br i1 %6, label %70, label %45, !dbg !4376

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  br label %49, !dbg !4376

; <label>:49:                                     ; preds = %45, %62
  %50 = phi i64 [ %0, %45 ], [ %68, %62 ]
  %51 = phi i8* [ %44, %45 ], [ %67, %62 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !4352, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i8* %51, metadata !4353, metadata !DIExpression()), !dbg !4375
  %52 = load i32, i32* %46, align 8, !dbg !4405
  %53 = icmp ult i32 %52, 41, !dbg !4405
  br i1 %53, label %54, label %59, !dbg !4405

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %47, align 8, !dbg !4405
  %56 = sext i32 %52 to i64, !dbg !4405
  %57 = getelementptr i8, i8* %55, i64 %56, !dbg !4405
  %58 = add i32 %52, 8, !dbg !4405
  store i32 %58, i32* %46, align 8, !dbg !4405
  br label %62, !dbg !4405

; <label>:59:                                     ; preds = %49
  %60 = load i8*, i8** %48, align 8, !dbg !4405
  %61 = getelementptr i8, i8* %60, i64 8, !dbg !4405
  store i8* %61, i8** %48, align 8, !dbg !4405
  br label %62, !dbg !4405

; <label>:62:                                     ; preds = %59, %54
  %63 = phi i8* [ %57, %54 ], [ %60, %59 ]
  %64 = bitcast i8* %63 to i8**, !dbg !4405
  %65 = load i8*, i8** %64, align 8, !dbg !4405
  call void @llvm.dbg.value(metadata i8* %65, metadata !4358, metadata !DIExpression()), !dbg !4406
  %66 = call i64 @strlen(i8* %65) #14, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %66, metadata !4362, metadata !DIExpression()), !dbg !4408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 %65, i64 %66, i1 false), !dbg !4409
  %67 = getelementptr inbounds i8, i8* %51, i64 %66, !dbg !4410
  %68 = add i64 %50, -1, !dbg !4411
  call void @llvm.dbg.value(metadata i64 %68, metadata !4352, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i8* %67, metadata !4353, metadata !DIExpression()), !dbg !4375
  %69 = icmp eq i64 %68, 0, !dbg !4412
  br i1 %69, label %70, label %49, !dbg !4376, !llvm.loop !4413

; <label>:70:                                     ; preds = %62, %7, %42
  %71 = phi i8* [ %44, %42 ], [ %8, %7 ], [ %44, %62 ]
  %72 = phi i8* [ %44, %42 ], [ %8, %7 ], [ %67, %62 ], !dbg !4415
  call void @llvm.dbg.value(metadata i8* %72, metadata !4353, metadata !DIExpression()), !dbg !4375
  store i8 0, i8* %72, align 1, !dbg !4416, !tbaa !732
  br label %73, !dbg !4417

; <label>:73:                                     ; preds = %70, %40
  %74 = phi i8* [ null, %40 ], [ %71, %70 ], !dbg !4418
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !4419
  ret i8* %74, !dbg !4419
}

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #8

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4420 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4423, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %1, metadata !4424, metadata !DIExpression()), !dbg !4430
  %3 = icmp eq i64 %0, 0, !dbg !4431
  %4 = icmp eq i64 %1, 0, !dbg !4432
  %5 = or i1 %3, %4, !dbg !4433
  br i1 %5, label %12, label %6, !dbg !4433

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4434
  call void @llvm.dbg.value(metadata i64 %7, metadata !4426, metadata !DIExpression()), !dbg !4435
  %8 = udiv i64 %7, %1, !dbg !4436
  %9 = icmp eq i64 %8, %0, !dbg !4438
  br i1 %9, label %12, label %10, !dbg !4439

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4440
  store i32 12, i32* %11, align 4, !dbg !4442, !tbaa !693
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4423, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %13, metadata !4424, metadata !DIExpression()), !dbg !4430
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #8, !dbg !4443
  call void @llvm.dbg.value(metadata i8* %15, metadata !4425, metadata !DIExpression()), !dbg !4444
  br label %16, !dbg !4445

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4446
  ret i8* %17, !dbg !4447
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4448 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4465, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i8* %1, metadata !4466, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i64 %2, metadata !4467, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4468, metadata !DIExpression()), !dbg !4477
  %6 = bitcast i32* %5 to i8*, !dbg !4478
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !4478
  %7 = icmp eq i32* %0, null, !dbg !4479
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4481
  call void @llvm.dbg.value(metadata i32* %8, metadata !4465, metadata !DIExpression()), !dbg !4474
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #8, !dbg !4482
  call void @llvm.dbg.value(metadata i64 %9, metadata !4469, metadata !DIExpression()), !dbg !4483
  %10 = icmp ugt i64 %9, -3, !dbg !4484
  %11 = icmp ne i64 %2, 0, !dbg !4485
  %12 = and i1 %11, %10, !dbg !4486
  br i1 %12, label %13, label %18, !dbg !4486

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #8, !dbg !4487
  br i1 %14, label %18, label %15, !dbg !4488

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4489, !tbaa !732
  call void @llvm.dbg.value(metadata i8 %16, metadata !4471, metadata !DIExpression()), !dbg !4490
  %17 = zext i8 %16 to i32, !dbg !4491
  store i32 %17, i32* %8, align 4, !dbg !4492, !tbaa !693
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !4494
  ret i64 %19, !dbg !4494
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4495 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4550, metadata !DIExpression()), !dbg !4555
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #8, !dbg !4556
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4557, metadata !DIExpression()), !dbg !4561
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4563
  %4 = load i32, i32* %3, align 8, !dbg !4563, !tbaa !4564
  %5 = and i32 %4, 32, !dbg !4563
  %6 = icmp eq i32 %5, 0, !dbg !4566
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #8, !dbg !4567
  %8 = icmp ne i32 %7, 0, !dbg !4568
  br i1 %6, label %9, label %19, !dbg !4569

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4571
  %11 = xor i1 %8, true, !dbg !4572
  %12 = or i1 %10, %11, !dbg !4572
  %13 = sext i1 %8 to i32, !dbg !4572
  br i1 %12, label %22, label %14, !dbg !4572

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4573
  %16 = load i32, i32* %15, align 4, !dbg !4573, !tbaa !693
  %17 = icmp ne i32 %16, 9, !dbg !4574
  %18 = sext i1 %17 to i32, !dbg !4575
  br label %22, !dbg !4575

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4576

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4578
  store i32 0, i32* %21, align 4, !dbg !4580, !tbaa !693
  br label %22, !dbg !4578

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4581
  ret i32 %23, !dbg !4582
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4586, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8 1, metadata !4587, metadata !DIExpression()), !dbg !4590
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #8, !dbg !4591
  call void @llvm.dbg.value(metadata i8* %2, metadata !4588, metadata !DIExpression()), !dbg !4592
  %3 = icmp eq i8* %2, null, !dbg !4593
  br i1 %3, label %11, label %4, !dbg !4595

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i64 0, i64 0)) #14, !dbg !4596
  %6 = icmp eq i32 %5, 0, !dbg !4601
  br i1 %6, label %10, label %7, !dbg !4602

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0)) #14, !dbg !4603
  %9 = icmp eq i32 %8, 0, !dbg !4604
  br i1 %9, label %10, label %11, !dbg !4605

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4587, metadata !DIExpression()), !dbg !4590
  br label %11, !dbg !4606

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4607
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4608 {
  %1 = tail call i8* @nl_langinfo(i32 14) #8, !dbg !4614
  call void @llvm.dbg.value(metadata i8* %1, metadata !4613, metadata !DIExpression()), !dbg !4615
  %2 = icmp eq i8* %1, null, !dbg !4616
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %1, !dbg !4618
  call void @llvm.dbg.value(metadata i8* %3, metadata !4613, metadata !DIExpression()), !dbg !4615
  %4 = load i8, i8* %3, align 1, !dbg !4619, !tbaa !732
  %5 = icmp eq i8 %4, 0, !dbg !4623
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i8* %3, !dbg !4624
  call void @llvm.dbg.value(metadata i8* %6, metadata !4613, metadata !DIExpression()), !dbg !4615
  ret i8* %6, !dbg !4625
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4626 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4665, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i32 0, metadata !4666, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata i32 0, metadata !4668, metadata !DIExpression()), !dbg !4671
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !4672
  call void @llvm.dbg.value(metadata i32 %2, metadata !4667, metadata !DIExpression()), !dbg !4673
  %3 = icmp slt i32 %2, 0, !dbg !4674
  br i1 %3, label %4, label %6, !dbg !4676

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4677
  br label %24, !dbg !4678

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #8, !dbg !4679
  %8 = icmp eq i32 %7, 0, !dbg !4679
  br i1 %8, label %13, label %9, !dbg !4681

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !4682
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #8, !dbg !4683
  %12 = icmp eq i64 %11, -1, !dbg !4684
  br i1 %12, label %16, label %13, !dbg !4685

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #8, !dbg !4686
  %15 = icmp eq i32 %14, 0, !dbg !4686
  br i1 %15, label %16, label %18, !dbg !4687

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4666, metadata !DIExpression()), !dbg !4670
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4688
  call void @llvm.dbg.value(metadata i32 %21, metadata !4668, metadata !DIExpression()), !dbg !4671
  br label %24, !dbg !4689

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4690
  %20 = load i32, i32* %19, align 4, !dbg !4690, !tbaa !693
  call void @llvm.dbg.value(metadata i32 %20, metadata !4666, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata i32 %20, metadata !4666, metadata !DIExpression()), !dbg !4670
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4688
  call void @llvm.dbg.value(metadata i32 %21, metadata !4668, metadata !DIExpression()), !dbg !4671
  %22 = icmp eq i32 %20, 0, !dbg !4691
  br i1 %22, label %24, label %23, !dbg !4689

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4693, !tbaa !693
  call void @llvm.dbg.value(metadata i32 -1, metadata !4668, metadata !DIExpression()), !dbg !4671
  br label %24, !dbg !4695

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4696
  ret i32 %25, !dbg !4697
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4698 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4737, metadata !DIExpression()), !dbg !4738
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4739
  br i1 %2, label %6, label %3, !dbg !4741

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #8, !dbg !4742
  %5 = icmp eq i32 %4, 0, !dbg !4742
  br i1 %5, label %6, label %8, !dbg !4743

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4744
  br label %17, !dbg !4745

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4746, metadata !DIExpression()) #8, !dbg !4751
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4753
  %10 = load i32, i32* %9, align 8, !dbg !4753, !tbaa !4564
  %11 = and i32 %10, 256, !dbg !4755
  %12 = icmp eq i32 %11, 0, !dbg !4755
  br i1 %12, label %15, label %13, !dbg !4756

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #8, !dbg !4757
  br label %15, !dbg !4757

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4758
  br label %17, !dbg !4759

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4760
  ret i32 %18, !dbg !4761
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4762 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4802, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i64 %1, metadata !4803, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 %2, metadata !4804, metadata !DIExpression()), !dbg !4810
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4811
  %5 = load i8*, i8** %4, align 8, !dbg !4811, !tbaa !4812
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4813
  %7 = load i8*, i8** %6, align 8, !dbg !4813, !tbaa !4814
  %8 = icmp eq i8* %5, %7, !dbg !4815
  br i1 %8, label %9, label %28, !dbg !4816

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4817
  %11 = load i8*, i8** %10, align 8, !dbg !4817, !tbaa !4818
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4819
  %13 = load i8*, i8** %12, align 8, !dbg !4819, !tbaa !4820
  %14 = icmp eq i8* %11, %13, !dbg !4821
  br i1 %14, label %15, label %28, !dbg !4822

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4823
  %17 = load i8*, i8** %16, align 8, !dbg !4823, !tbaa !4824
  %18 = icmp eq i8* %17, null, !dbg !4825
  br i1 %18, label %19, label %28, !dbg !4826

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !4827
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #8, !dbg !4828
  call void @llvm.dbg.value(metadata i64 %21, metadata !4805, metadata !DIExpression()), !dbg !4829
  %22 = icmp eq i64 %21, -1, !dbg !4830
  br i1 %22, label %30, label %23, !dbg !4832

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4833
  %25 = load i32, i32* %24, align 8, !dbg !4834, !tbaa !4564
  %26 = and i32 %25, -17, !dbg !4834
  store i32 %26, i32* %24, align 8, !dbg !4834, !tbaa !4564
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4835
  store i64 %21, i64* %27, align 8, !dbg !4836, !tbaa !4837
  br label %30, !dbg !4838

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4839
  br label %30, !dbg !4840

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4841
  ret i32 %31, !dbg !4842
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
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !44, !56, !138, !63, !70, !145, !148, !150, !167, !169, !172, !175, !178, !180, !182, !571, !573, !575}
!llvm.ident = !{!577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577, !577}
!llvm.module.flags = !{!578, !579, !580, !581, !582}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !3, line: 73, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !34)
!3 = !DIFile(filename: "src/test.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11, !26}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 59, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TEST_TRUE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "TEST_FALSE", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "TEST_FAILURE", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 46, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!14 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!18 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 41, baseType: !6, size: 32, elements: !28)
!27 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!28 = !{!29}
!29 = !DIEnumerator(name: "TIMESPEC_RESOLUTION", value: 1000000000, isUnsigned: true)
!30 = !{!31, !32, !6, !33}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !{!35, !37, !0}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !3, line: 71, type: !31, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !3, line: 72, type: !31, isLocal: true, isDefinition: true)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "file_name", scope: !44, file: !50, line: 46, type: !52, isLocal: true, isDefinition: true)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, globals: !47)
!45 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!46 = !{}
!47 = !{!42, !48}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !44, file: !50, line: 56, type: !51, isLocal: true, isDefinition: true)
!50 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!51 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "exit_failure", scope: !56, file: !59, line: 24, type: !60, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, globals: !58)
!57 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!58 = !{!54}
!59 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "program_name", scope: !63, file: !67, line: 33, type: !52, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !65, globals: !66)
!64 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!65 = !{!33, !40}
!66 = !{!61}
!67 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !70, file: !99, line: 85, type: !134, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !92, globals: !96)
!71 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!72 = !{!73, !87, !11}
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !74, line: 32, baseType: !6, size: 32, elements: !75)
!74 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!76 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!80 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!81 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!82 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!83 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!84 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!85 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!86 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !74, line: 242, baseType: !6, size: 32, elements: !88)
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!92 = !{!31, !32, !93, !40}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 62, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !{!68, !97, !104, !116, !118, !123, !130, !132}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !70, file: !99, line: 101, type: !100, isLocal: false, isDefinition: true)
!99 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 320, elements: !102)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!102 = !{!103}
!103 = !DISubrange(count: 10)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !70, file: !99, line: 1052, type: !106, isLocal: false, isDefinition: true)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !99, line: 65, size: 448, elements: !107)
!107 = !{!108, !109, !110, !114, !115}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !106, file: !99, line: 68, baseType: !73, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !99, line: 71, baseType: !31, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !106, file: !99, line: 75, baseType: !111, size: 256, offset: 64)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 8)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !106, file: !99, line: 78, baseType: !52, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !106, file: !99, line: 81, baseType: !52, size: 64, offset: 384)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !70, file: !99, line: 116, type: !106, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "slot0", scope: !70, file: !99, line: 842, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 256)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "slotvec", scope: !70, file: !99, line: 845, type: !125, isLocal: true, isDefinition: true)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !99, line: 834, size: 128, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !126, file: !99, line: 836, baseType: !93, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !126, file: !99, line: 837, baseType: !40, size: 64, offset: 64)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "nslots", scope: !70, file: !99, line: 843, type: !31, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "slotvec0", scope: !70, file: !99, line: 844, type: !126, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 704, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!136 = !{!137}
!137 = !DISubrange(count: 11)
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !140)
!139 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !142, line: 102, baseType: !143)
!142 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !144, line: 72, baseType: !95)
!144 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !147)
!146 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!147 = !{!6}
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46)
!149 = !DIFile(filename: "./lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !166)
!151 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!152 = !{!153}
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !155, file: !154, line: 186, baseType: !6, size: 32, elements: !164)
!154 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!155 = distinct !DISubprogram(name: "x2nrealloc", scope: !154, file: !154, line: 174, type: !156, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !159)
!156 = !DISubroutineType(types: !157)
!157 = !{!33, !33, !158, !93}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!159 = !{!160, !161, !162, !163}
!160 = !DILocalVariable(name: "p", arg: 1, scope: !155, file: !154, line: 174, type: !33)
!161 = !DILocalVariable(name: "pn", arg: 2, scope: !155, file: !154, line: 174, type: !158)
!162 = !DILocalVariable(name: "s", arg: 3, scope: !155, file: !154, line: 174, type: !93)
!163 = !DILocalVariable(name: "n", scope: !155, file: !154, line: 176, type: !93)
!164 = !{!165}
!165 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!166 = !{!93, !40, !33}
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46)
!168 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !171)
!170 = !DIFile(filename: "./lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!171 = !{!40}
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !174)
!173 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!174 = !{!33}
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !177)
!176 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!177 = !{!93}
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46)
!179 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46)
!181 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !184, retainedTypes: !174)
!183 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!184 = !{!185}
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 41, baseType: !6, size: 32, elements: !187)
!186 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!188 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!189 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!190 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!191 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!192 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!193 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!194 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!195 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!196 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!197 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!198 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!199 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!200 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!201 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!202 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!203 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!204 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!205 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!206 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!207 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!208 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!210 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!214 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!215 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!216 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!217 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!218 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!219 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!220 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!222 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!226 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!227 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!228 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!229 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!230 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!231 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!232 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!233 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!234 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!235 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!236 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!237 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!296 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!299 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!300 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!301 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!302 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!303 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!304 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!305 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!307 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!383 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!456 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!457 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!458 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!459 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!460 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!461 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!462 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!463 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!464 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!465 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!466 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!467 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!468 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!469 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!470 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!473 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!474 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!476 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!477 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!503 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!504 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!505 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!506 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!507 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!512 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!513 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!514 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!515 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46)
!572 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !174)
!574 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !174)
!576 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!577 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!578 = !{i32 2, !"Dwarf Version", i32 4}
!579 = !{i32 2, !"Debug Info Version", i32 3}
!580 = !{i32 1, !"wchar_size", i32 4}
!581 = !{i32 7, !"PIC Level", i32 2}
!582 = !{i32 7, !"PIE Level", i32 2}
!583 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 703, type: !584, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !31}
!586 = !{!587}
!587 = !DILocalVariable(name: "status", arg: 1, scope: !583, file: !3, line: 703, type: !31)
!588 = !DILocalVariable(name: "infomap", scope: !589, file: !590, line: 632, type: !604)
!589 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !590, file: !590, line: 630, type: !591, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !593)
!590 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!591 = !DISubroutineType(types: !592)
!592 = !{null, !52}
!593 = !{!594, !588, !595, !596, !603}
!594 = !DILocalVariable(name: "program", arg: 1, scope: !589, file: !590, line: 630, type: !52)
!595 = !DILocalVariable(name: "node", scope: !589, file: !590, line: 642, type: !52)
!596 = !DILocalVariable(name: "map_prog", scope: !589, file: !590, line: 643, type: !597)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !589, file: !590, line: 632, size: 128, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !599, file: !590, line: 632, baseType: !52, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !590, line: 632, baseType: !52, size: 64, offset: 64)
!603 = !DILocalVariable(name: "lc_messages", scope: !589, file: !590, line: 655, type: !52)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 896, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 7)
!607 = !DILocation(line: 632, column: 67, scope: !589, inlinedAt: !608)
!608 = distinct !DILocation(line: 802, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 708, column: 5)
!610 = distinct !DILexicalBlock(scope: !583, file: !3, line: 705, column: 7)
!611 = !DILocation(line: 703, column: 12, scope: !583)
!612 = !DILocation(line: 705, column: 14, scope: !610)
!613 = !DILocation(line: 705, column: 7, scope: !583)
!614 = !DILocation(line: 706, column: 5, scope: !615)
!615 = distinct !DILexicalBlock(scope: !610, file: !3, line: 706, column: 5)
!616 = !{!617, !617, i64 0}
!617 = !{!"any pointer", !618, i64 0}
!618 = !{!"omnipotent char", !619, i64 0}
!619 = !{!"Simple C/C++ TBAA"}
!620 = !DILocation(line: 709, column: 7, scope: !609)
!621 = !DILocation(line: 716, column: 7, scope: !609)
!622 = !DILocation(line: 720, column: 7, scope: !609)
!623 = !DILocation(line: 721, column: 7, scope: !609)
!624 = !DILocation(line: 722, column: 7, scope: !609)
!625 = !DILocation(line: 727, column: 7, scope: !609)
!626 = !DILocation(line: 734, column: 7, scope: !609)
!627 = !DILocation(line: 742, column: 7, scope: !609)
!628 = !DILocation(line: 751, column: 7, scope: !609)
!629 = !DILocation(line: 757, column: 7, scope: !609)
!630 = !DILocation(line: 764, column: 7, scope: !609)
!631 = !DILocation(line: 771, column: 7, scope: !609)
!632 = !DILocation(line: 778, column: 7, scope: !609)
!633 = !DILocation(line: 785, column: 7, scope: !609)
!634 = !DILocation(line: 791, column: 7, scope: !609)
!635 = !DILocation(line: 796, column: 7, scope: !609)
!636 = !DILocation(line: 801, column: 7, scope: !609)
!637 = !DILocation(line: 632, column: 3, scope: !589, inlinedAt: !608)
!638 = !DILocation(line: 643, column: 36, scope: !589, inlinedAt: !608)
!639 = !DILocation(line: 643, column: 25, scope: !589, inlinedAt: !608)
!640 = !DILocation(line: 645, column: 33, scope: !589, inlinedAt: !608)
!641 = !DILocation(line: 645, column: 3, scope: !589, inlinedAt: !608)
!642 = !DILocation(line: 646, column: 13, scope: !589, inlinedAt: !608)
!643 = !DILocation(line: 645, column: 20, scope: !589, inlinedAt: !608)
!644 = !{!645, !617, i64 0}
!645 = !{!"infomap", !617, i64 0, !617, i64 8}
!646 = !DILocation(line: 645, column: 10, scope: !589, inlinedAt: !608)
!647 = !DILocation(line: 645, column: 28, scope: !589, inlinedAt: !608)
!648 = distinct !{!648, !649, !650}
!649 = !DILocation(line: 645, column: 3, scope: !589)
!650 = !DILocation(line: 646, column: 13, scope: !589)
!651 = !DILocation(line: 648, column: 17, scope: !652, inlinedAt: !608)
!652 = distinct !DILexicalBlock(scope: !589, file: !590, line: 648, column: 7)
!653 = !{!645, !617, i64 8}
!654 = !DILocation(line: 648, column: 7, scope: !652, inlinedAt: !608)
!655 = !DILocation(line: 648, column: 7, scope: !589, inlinedAt: !608)
!656 = !DILocation(line: 642, column: 15, scope: !589, inlinedAt: !608)
!657 = !DILocation(line: 651, column: 3, scope: !589, inlinedAt: !608)
!658 = !DILocation(line: 655, column: 29, scope: !589, inlinedAt: !608)
!659 = !DILocation(line: 655, column: 15, scope: !589, inlinedAt: !608)
!660 = !DILocation(line: 656, column: 7, scope: !661, inlinedAt: !608)
!661 = distinct !DILexicalBlock(scope: !589, file: !590, line: 656, column: 7)
!662 = !DILocation(line: 656, column: 19, scope: !661, inlinedAt: !608)
!663 = !DILocation(line: 656, column: 22, scope: !661, inlinedAt: !608)
!664 = !DILocation(line: 656, column: 7, scope: !589, inlinedAt: !608)
!665 = !DILocation(line: 662, column: 7, scope: !666, inlinedAt: !608)
!666 = distinct !DILexicalBlock(scope: !661, file: !590, line: 657, column: 5)
!667 = !DILocation(line: 664, column: 5, scope: !666, inlinedAt: !608)
!668 = !DILocation(line: 665, column: 3, scope: !589, inlinedAt: !608)
!669 = !DILocation(line: 667, column: 3, scope: !589, inlinedAt: !608)
!670 = !DILocation(line: 669, column: 1, scope: !589, inlinedAt: !608)
!671 = !DILocation(line: 804, column: 3, scope: !583)
!672 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 823, type: !673, isLocal: false, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !675)
!673 = !DISubroutineType(types: !674)
!674 = !{!31, !31, !39}
!675 = !{!676, !677, !678}
!676 = !DILocalVariable(name: "margc", arg: 1, scope: !672, file: !3, line: 823, type: !31)
!677 = !DILocalVariable(name: "margv", arg: 2, scope: !672, file: !3, line: 823, type: !39)
!678 = !DILocalVariable(name: "value", scope: !672, file: !3, line: 825, type: !51)
!679 = !DILocation(line: 823, column: 11, scope: !672)
!680 = !DILocation(line: 823, column: 25, scope: !672)
!681 = !DILocation(line: 836, column: 21, scope: !672)
!682 = !DILocation(line: 836, column: 3, scope: !672)
!683 = !DILocation(line: 837, column: 3, scope: !672)
!684 = !DILocation(line: 838, column: 3, scope: !672)
!685 = !DILocation(line: 839, column: 3, scope: !672)
!686 = !DILocalVariable(name: "status", arg: 1, scope: !687, file: !590, line: 99, type: !31)
!687 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !590, file: !590, line: 99, type: !584, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !688)
!688 = !{!686}
!689 = !DILocation(line: 99, column: 30, scope: !687, inlinedAt: !690)
!690 = distinct !DILocation(line: 841, column: 3, scope: !672)
!691 = !DILocation(line: 102, column: 18, scope: !692, inlinedAt: !690)
!692 = distinct !DILexicalBlock(scope: !687, file: !590, line: 101, column: 7)
!693 = !{!694, !694, i64 0}
!694 = !{!"int", !618, i64 0}
!695 = !DILocation(line: 842, column: 3, scope: !672)
!696 = !DILocation(line: 845, column: 8, scope: !672)
!697 = !DILocation(line: 873, column: 8, scope: !672)
!698 = !DILocation(line: 874, column: 7, scope: !672)
!699 = !DILocation(line: 876, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !672, file: !3, line: 876, column: 7)
!701 = !DILocation(line: 876, column: 7, scope: !672)
!702 = !DILocation(line: 879, column: 27, scope: !672)
!703 = !DILocation(line: 879, column: 11, scope: !672)
!704 = !DILocation(line: 881, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !672, file: !3, line: 881, column: 7)
!706 = !DILocation(line: 881, column: 14, scope: !705)
!707 = !DILocation(line: 881, column: 11, scope: !705)
!708 = !DILocation(line: 881, column: 7, scope: !672)
!709 = !DILocation(line: 882, column: 24, scope: !705)
!710 = !DILocation(line: 882, column: 55, scope: !705)
!711 = !DILocation(line: 882, column: 60, scope: !705)
!712 = !DILocation(line: 882, column: 48, scope: !705)
!713 = !DILocation(line: 882, column: 5, scope: !705)
!714 = !DILocation(line: 884, column: 3, scope: !672)
!715 = !DILocation(line: 0, scope: !672)
!716 = !DILocation(line: 885, column: 1, scope: !672)
!717 = distinct !DISubprogram(name: "posixtest", scope: !3, file: !3, line: 657, type: !718, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!51, !31}
!720 = !{!721, !722}
!721 = !DILocalVariable(name: "nargs", arg: 1, scope: !717, file: !3, line: 657, type: !31)
!722 = !DILocalVariable(name: "value", scope: !717, file: !3, line: 659, type: !51)
!723 = !DILocation(line: 657, column: 16, scope: !717)
!724 = !DILocation(line: 661, column: 3, scope: !717)
!725 = !DILocation(line: 603, column: 10, scope: !726, inlinedAt: !729)
!726 = distinct !DISubprogram(name: "one_argument", scope: !3, file: !3, line: 601, type: !727, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !46)
!727 = !DISubroutineType(types: !728)
!728 = !{!51}
!729 = distinct !DILocation(line: 664, column: 17, scope: !730)
!730 = distinct !DILexicalBlock(scope: !717, file: !3, line: 662, column: 5)
!731 = !DILocation(line: 603, column: 18, scope: !726, inlinedAt: !729)
!732 = !{!618, !618, i64 0}
!733 = !DILocation(line: 603, column: 25, scope: !726, inlinedAt: !729)
!734 = !DILocation(line: 665, column: 9, scope: !730)
!735 = !DILocation(line: 668, column: 17, scope: !730)
!736 = !DILocation(line: 669, column: 9, scope: !730)
!737 = !DILocation(line: 672, column: 17, scope: !730)
!738 = !DILocation(line: 673, column: 9, scope: !730)
!739 = !DILocation(line: 676, column: 13, scope: !740)
!740 = distinct !DILexicalBlock(scope: !730, file: !3, line: 676, column: 13)
!741 = !DILocation(line: 676, column: 13, scope: !730)
!742 = !DILocalVariable(name: "f", arg: 1, scope: !743, file: !3, line: 105, type: !51)
!743 = distinct !DISubprogram(name: "advance", scope: !3, file: !3, line: 105, type: !744, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !51}
!746 = !{!742}
!747 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !748)
!748 = distinct !DILocation(line: 678, column: 13, scope: !749)
!749 = distinct !DILexicalBlock(scope: !740, file: !3, line: 677, column: 11)
!750 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !748)
!751 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !748)
!752 = distinct !DILexicalBlock(scope: !743, file: !3, line: 109, column: 7)
!753 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !748)
!754 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !748)
!755 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !748)
!756 = !DILocation(line: 679, column: 22, scope: !749)
!757 = !DILocation(line: 679, column: 21, scope: !749)
!758 = !DILocation(line: 680, column: 13, scope: !749)
!759 = !DILocation(line: 682, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !730, file: !3, line: 682, column: 13)
!761 = !DILocation(line: 682, column: 36, scope: !760)
!762 = !DILocation(line: 682, column: 39, scope: !760)
!763 = !DILocation(line: 682, column: 13, scope: !730)
!764 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !765)
!765 = distinct !DILocation(line: 684, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !760, file: !3, line: 683, column: 11)
!767 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !765)
!768 = !DILocation(line: 685, column: 21, scope: !766)
!769 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !770)
!770 = distinct !DILocation(line: 686, column: 13, scope: !766)
!771 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !770)
!772 = !DILocation(line: 687, column: 13, scope: !766)
!773 = !DILocation(line: 692, column: 19, scope: !774)
!774 = distinct !DILexicalBlock(scope: !730, file: !3, line: 692, column: 13)
!775 = !DILocation(line: 692, column: 13, scope: !730)
!776 = !DILocation(line: 574, column: 7, scope: !777, inlinedAt: !779)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 574, column: 7)
!778 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 572, type: !727, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !46)
!779 = distinct !DILocation(line: 694, column: 17, scope: !730)
!780 = !DILocation(line: 693, column: 11, scope: !774)
!781 = !DILocation(line: 574, column: 14, scope: !777, inlinedAt: !779)
!782 = !DILocation(line: 574, column: 11, scope: !777, inlinedAt: !779)
!783 = !DILocation(line: 574, column: 7, scope: !778, inlinedAt: !779)
!784 = !DILocalVariable(name: "value", scope: !785, file: !3, line: 537, type: !51)
!785 = distinct !DISubprogram(name: "and", scope: !3, file: !3, line: 535, type: !727, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !786)
!786 = !{!784}
!787 = !DILocation(line: 537, column: 8, scope: !785, inlinedAt: !788)
!788 = distinct !DILocation(line: 560, column: 16, scope: !789, inlinedAt: !793)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 559, column: 5)
!790 = distinct !DISubprogram(name: "or", scope: !3, file: !3, line: 554, type: !727, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !791)
!791 = !{!792}
!792 = !DILocalVariable(name: "value", scope: !790, file: !3, line: 556, type: !51)
!793 = distinct !DILocation(line: 577, column: 10, scope: !778, inlinedAt: !779)
!794 = !DILocation(line: 541, column: 16, scope: !795, inlinedAt: !788)
!795 = distinct !DILexicalBlock(scope: !785, file: !3, line: 540, column: 5)
!796 = !DILocation(line: 542, column: 14, scope: !797, inlinedAt: !788)
!797 = distinct !DILexicalBlock(scope: !795, file: !3, line: 542, column: 11)
!798 = !DILocation(line: 542, column: 20, scope: !797, inlinedAt: !788)
!799 = !DILocation(line: 542, column: 18, scope: !797, inlinedAt: !788)
!800 = !DILocation(line: 542, column: 25, scope: !797, inlinedAt: !788)
!801 = !DILocation(line: 575, column: 5, scope: !777, inlinedAt: !779)
!802 = !DILocation(line: 542, column: 28, scope: !797, inlinedAt: !788)
!803 = !DILocation(line: 542, column: 11, scope: !795, inlinedAt: !788)
!804 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !805)
!805 = distinct !DILocation(line: 544, column: 7, scope: !795, inlinedAt: !788)
!806 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !805)
!807 = !DILocation(line: 541, column: 13, scope: !795, inlinedAt: !788)
!808 = distinct !{!808, !809, !810}
!809 = !DILocation(line: 539, column: 3, scope: !785)
!810 = !DILocation(line: 545, column: 5, scope: !785)
!811 = !DILocation(line: 0, scope: !789, inlinedAt: !793)
!812 = !DILocation(line: 560, column: 13, scope: !789, inlinedAt: !793)
!813 = !DILocation(line: 561, column: 28, scope: !814, inlinedAt: !793)
!814 = distinct !DILexicalBlock(scope: !789, file: !3, line: 561, column: 11)
!815 = !DILocation(line: 561, column: 11, scope: !789, inlinedAt: !793)
!816 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !817)
!817 = distinct !DILocation(line: 563, column: 7, scope: !789, inlinedAt: !793)
!818 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !817)
!819 = distinct !{!819, !820, !821}
!820 = !DILocation(line: 558, column: 3, scope: !790)
!821 = !DILocation(line: 564, column: 5, scope: !790)
!822 = !DILocation(line: 697, column: 3, scope: !717)
!823 = distinct !DISubprogram(name: "test_syntax_error", scope: !3, file: !3, line: 92, type: !824, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !52, null}
!826 = !{!827, !828}
!827 = !DILocalVariable(name: "format", arg: 1, scope: !823, file: !3, line: 92, type: !52)
!828 = !DILocalVariable(name: "ap", scope: !823, file: !3, line: 94, type: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !830, line: 52, baseType: !831)
!830 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !832, line: 48, baseType: !833)
!832 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 94, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 192, elements: !841)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 94, size: 192, elements: !836)
!836 = !{!837, !838, !839, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !835, file: !3, line: 94, baseType: !6, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !835, file: !3, line: 94, baseType: !6, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !835, file: !3, line: 94, baseType: !33, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !835, file: !3, line: 94, baseType: !33, size: 64, offset: 128)
!841 = !{!842}
!842 = !DISubrange(count: 1)
!843 = !DILocation(line: 92, column: 32, scope: !823)
!844 = !DILocation(line: 94, column: 3, scope: !823)
!845 = !DILocation(line: 94, column: 11, scope: !823)
!846 = !DILocation(line: 95, column: 3, scope: !823)
!847 = !DILocation(line: 96, column: 3, scope: !823)
!848 = !DILocation(line: 97, column: 3, scope: !823)
!849 = distinct !DISubprogram(name: "two_arguments", scope: !3, file: !3, line: 607, type: !727, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !850)
!850 = !{!851}
!851 = !DILocalVariable(name: "value", scope: !849, file: !3, line: 609, type: !51)
!852 = !DILocation(line: 611, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !849, file: !3, line: 611, column: 7)
!854 = !DILocation(line: 611, column: 7, scope: !849)
!855 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !856)
!856 = distinct !DILocation(line: 613, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !3, line: 612, column: 5)
!858 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !856)
!859 = !DILocation(line: 603, column: 18, scope: !726, inlinedAt: !860)
!860 = distinct !DILocation(line: 614, column: 17, scope: !857)
!861 = !DILocation(line: 603, column: 10, scope: !726, inlinedAt: !860)
!862 = !DILocation(line: 603, column: 25, scope: !726, inlinedAt: !860)
!863 = !DILocation(line: 615, column: 5, scope: !857)
!864 = !DILocation(line: 616, column: 12, scope: !865)
!865 = distinct !DILexicalBlock(scope: !853, file: !3, line: 616, column: 12)
!866 = !DILocation(line: 616, column: 25, scope: !865)
!867 = !DILocation(line: 617, column: 12, scope: !865)
!868 = !DILocation(line: 617, column: 15, scope: !865)
!869 = !DILocation(line: 617, column: 28, scope: !865)
!870 = !DILocation(line: 618, column: 12, scope: !865)
!871 = !DILocation(line: 618, column: 15, scope: !865)
!872 = !DILocation(line: 618, column: 28, scope: !865)
!873 = !DILocation(line: 616, column: 12, scope: !853)
!874 = !DILocalVariable(name: "op", arg: 1, scope: !875, file: !3, line: 582, type: !52)
!875 = distinct !DISubprogram(name: "test_unop", scope: !3, file: !3, line: 582, type: !876, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{!51, !52}
!878 = !{!874}
!879 = !DILocation(line: 582, column: 24, scope: !875, inlinedAt: !880)
!880 = distinct !DILocation(line: 620, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 620, column: 11)
!882 = distinct !DILexicalBlock(scope: !865, file: !3, line: 619, column: 5)
!883 = !DILocation(line: 587, column: 11, scope: !875, inlinedAt: !880)
!884 = !DILocation(line: 587, column: 3, scope: !875, inlinedAt: !880)
!885 = !DILocation(line: 621, column: 17, scope: !881)
!886 = !DILocation(line: 623, column: 28, scope: !881)
!887 = !DILocation(line: 623, column: 69, scope: !881)
!888 = !DILocation(line: 623, column: 74, scope: !881)
!889 = !DILocation(line: 623, column: 62, scope: !881)
!890 = !DILocation(line: 623, column: 9, scope: !881)
!891 = !DILocation(line: 626, column: 5, scope: !865)
!892 = !DILocation(line: 627, column: 3, scope: !849)
!893 = distinct !DISubprogram(name: "three_arguments", scope: !3, file: !3, line: 631, type: !727, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !894)
!894 = !{!895}
!895 = !DILocalVariable(name: "value", scope: !893, file: !3, line: 633, type: !51)
!896 = !DILocation(line: 635, column: 14, scope: !897)
!897 = distinct !DILexicalBlock(scope: !893, file: !3, line: 635, column: 7)
!898 = !DILocation(line: 635, column: 19, scope: !897)
!899 = !DILocation(line: 635, column: 23, scope: !897)
!900 = !DILocation(line: 635, column: 7, scope: !897)
!901 = !DILocation(line: 635, column: 7, scope: !893)
!902 = !DILocation(line: 636, column: 13, scope: !897)
!903 = !DILocation(line: 636, column: 5, scope: !897)
!904 = !DILocation(line: 637, column: 12, scope: !905)
!905 = distinct !DILexicalBlock(scope: !897, file: !3, line: 637, column: 12)
!906 = !DILocation(line: 637, column: 12, scope: !897)
!907 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !908)
!908 = distinct !DILocation(line: 639, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !3, line: 638, column: 5)
!910 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !908)
!911 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !908)
!912 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !908)
!913 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !908)
!914 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !908)
!915 = !DILocation(line: 640, column: 16, scope: !909)
!916 = !DILocation(line: 640, column: 15, scope: !909)
!917 = !DILocation(line: 641, column: 5, scope: !909)
!918 = !DILocation(line: 642, column: 12, scope: !919)
!919 = distinct !DILexicalBlock(scope: !905, file: !3, line: 642, column: 12)
!920 = !DILocation(line: 642, column: 35, scope: !919)
!921 = !DILocation(line: 642, column: 38, scope: !919)
!922 = !DILocation(line: 642, column: 12, scope: !905)
!923 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !924)
!924 = distinct !DILocation(line: 644, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !919, file: !3, line: 643, column: 5)
!926 = !DILocation(line: 603, column: 10, scope: !726, inlinedAt: !927)
!927 = distinct !DILocation(line: 645, column: 15, scope: !925)
!928 = !DILocation(line: 603, column: 25, scope: !726, inlinedAt: !927)
!929 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !930)
!930 = distinct !DILocation(line: 646, column: 7, scope: !925)
!931 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !930)
!932 = !DILocation(line: 647, column: 5, scope: !925)
!933 = !DILocation(line: 648, column: 12, scope: !934)
!934 = distinct !DILexicalBlock(scope: !919, file: !3, line: 648, column: 12)
!935 = !DILocation(line: 648, column: 40, scope: !934)
!936 = !DILocation(line: 648, column: 43, scope: !934)
!937 = !DILocation(line: 648, column: 12, scope: !919)
!938 = !DILocation(line: 574, column: 14, scope: !777, inlinedAt: !939)
!939 = distinct !DILocation(line: 649, column: 13, scope: !934)
!940 = !DILocation(line: 574, column: 11, scope: !777, inlinedAt: !939)
!941 = !DILocation(line: 574, column: 7, scope: !778, inlinedAt: !939)
!942 = !DILocation(line: 537, column: 8, scope: !785, inlinedAt: !943)
!943 = distinct !DILocation(line: 560, column: 16, scope: !789, inlinedAt: !944)
!944 = distinct !DILocation(line: 577, column: 10, scope: !778, inlinedAt: !939)
!945 = !DILocation(line: 541, column: 16, scope: !795, inlinedAt: !943)
!946 = !DILocation(line: 542, column: 14, scope: !797, inlinedAt: !943)
!947 = !DILocation(line: 542, column: 20, scope: !797, inlinedAt: !943)
!948 = !DILocation(line: 542, column: 18, scope: !797, inlinedAt: !943)
!949 = !DILocation(line: 542, column: 25, scope: !797, inlinedAt: !943)
!950 = !DILocation(line: 575, column: 5, scope: !777, inlinedAt: !939)
!951 = !DILocation(line: 542, column: 28, scope: !797, inlinedAt: !943)
!952 = !DILocation(line: 542, column: 11, scope: !795, inlinedAt: !943)
!953 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !954)
!954 = distinct !DILocation(line: 544, column: 7, scope: !795, inlinedAt: !943)
!955 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !954)
!956 = !DILocation(line: 541, column: 13, scope: !795, inlinedAt: !943)
!957 = !DILocation(line: 0, scope: !789, inlinedAt: !944)
!958 = !DILocation(line: 560, column: 13, scope: !789, inlinedAt: !944)
!959 = !DILocation(line: 561, column: 28, scope: !814, inlinedAt: !944)
!960 = !DILocation(line: 561, column: 11, scope: !789, inlinedAt: !944)
!961 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !962)
!962 = distinct !DILocation(line: 563, column: 7, scope: !789, inlinedAt: !944)
!963 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !962)
!964 = !DILocation(line: 651, column: 24, scope: !934)
!965 = !DILocation(line: 651, column: 66, scope: !934)
!966 = !DILocation(line: 651, column: 71, scope: !934)
!967 = !DILocation(line: 651, column: 74, scope: !934)
!968 = !DILocation(line: 651, column: 59, scope: !934)
!969 = !DILocation(line: 651, column: 5, scope: !934)
!970 = !DILocation(line: 652, column: 3, scope: !893)
!971 = distinct !DISubprogram(name: "beyond", scope: !3, file: !3, line: 125, type: !972, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !46)
!972 = !DISubroutineType(types: !973)
!973 = !{null}
!974 = !DILocation(line: 127, column: 22, scope: !971)
!975 = !DILocation(line: 127, column: 61, scope: !971)
!976 = !DILocation(line: 127, column: 66, scope: !971)
!977 = !DILocation(line: 127, column: 71, scope: !971)
!978 = !DILocation(line: 127, column: 54, scope: !971)
!979 = !DILocation(line: 127, column: 3, scope: !971)
!980 = distinct !DISubprogram(name: "term", scope: !3, file: !3, line: 212, type: !727, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !981)
!981 = !{!982, !983, !984}
!982 = !DILocalVariable(name: "value", scope: !980, file: !3, line: 214, type: !51)
!983 = !DILocalVariable(name: "negated", scope: !980, file: !3, line: 215, type: !51)
!984 = !DILocalVariable(name: "nargs", scope: !985, file: !3, line: 230, type: !31)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 229, column: 5)
!986 = distinct !DILexicalBlock(scope: !980, file: !3, line: 228, column: 7)
!987 = !DILocation(line: 215, column: 8, scope: !980)
!988 = !DILocation(line: 218, column: 10, scope: !980)
!989 = !DILocation(line: 218, column: 16, scope: !980)
!990 = !DILocation(line: 218, column: 14, scope: !980)
!991 = !DILocation(line: 218, column: 21, scope: !980)
!992 = !DILocation(line: 218, column: 24, scope: !980)
!993 = !DILocation(line: 218, column: 37, scope: !980)
!994 = !DILocation(line: 218, column: 44, scope: !980)
!995 = !DILocation(line: 218, column: 47, scope: !980)
!996 = !DILocation(line: 218, column: 60, scope: !980)
!997 = !DILocation(line: 218, column: 3, scope: !980)
!998 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !999)
!999 = distinct !DILocation(line: 220, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !980, file: !3, line: 219, column: 5)
!1001 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !999)
!1002 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !999)
!1003 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !999)
!1004 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !999)
!1005 = !DILocation(line: 221, column: 17, scope: !1000)
!1006 = !DILocation(line: 225, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !980, file: !3, line: 224, column: 7)
!1008 = !DILocation(line: 228, column: 20, scope: !986)
!1009 = !DILocation(line: 228, column: 27, scope: !986)
!1010 = !DILocation(line: 228, column: 30, scope: !986)
!1011 = !DILocation(line: 228, column: 43, scope: !986)
!1012 = !DILocation(line: 228, column: 7, scope: !980)
!1013 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 232, column: 7, scope: !985)
!1015 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1014)
!1016 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1014)
!1017 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1014)
!1018 = !DILocation(line: 230, column: 11, scope: !985)
!1019 = !DILocation(line: 235, column: 16, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 234, column: 7)
!1021 = distinct !DILexicalBlock(scope: !985, file: !3, line: 234, column: 7)
!1022 = !DILocation(line: 235, column: 24, scope: !1020)
!1023 = !DILocation(line: 235, column: 31, scope: !1020)
!1024 = !DILocation(line: 235, column: 36, scope: !1020)
!1025 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1014)
!1026 = !DILocation(line: 234, column: 7, scope: !1021)
!1027 = !DILocation(line: 237, column: 19, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 237, column: 13)
!1029 = !DILocation(line: 237, column: 13, scope: !1020)
!1030 = !DILocation(line: 239, column: 26, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 238, column: 11)
!1032 = !DILocation(line: 240, column: 13, scope: !1031)
!1033 = !DILocation(line: 236, column: 17, scope: !1020)
!1034 = distinct !{!1034, !1026, !1035}
!1035 = !DILocation(line: 241, column: 11, scope: !1021)
!1036 = !DILocation(line: 243, column: 15, scope: !985)
!1037 = !DILocation(line: 0, scope: !1021)
!1038 = !DILocation(line: 244, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !985, file: !3, line: 244, column: 11)
!1040 = !DILocation(line: 244, column: 16, scope: !1039)
!1041 = !DILocation(line: 244, column: 21, scope: !1039)
!1042 = !DILocation(line: 244, column: 11, scope: !985)
!1043 = !DILocation(line: 245, column: 28, scope: !1039)
!1044 = !DILocation(line: 245, column: 46, scope: !1039)
!1045 = !DILocation(line: 245, column: 9, scope: !1039)
!1046 = !DILocation(line: 247, column: 13, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 247, column: 13)
!1048 = !DILocation(line: 247, column: 26, scope: !1047)
!1049 = !DILocation(line: 247, column: 33, scope: !1047)
!1050 = !DILocation(line: 247, column: 36, scope: !1047)
!1051 = !DILocation(line: 247, column: 13, scope: !1039)
!1052 = !DILocation(line: 248, column: 30, scope: !1047)
!1053 = !DILocation(line: 249, column: 30, scope: !1047)
!1054 = !DILocation(line: 249, column: 60, scope: !1047)
!1055 = !DILocation(line: 249, column: 65, scope: !1047)
!1056 = !DILocation(line: 249, column: 48, scope: !1047)
!1057 = !DILocation(line: 248, column: 11, scope: !1047)
!1058 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 250, column: 7, scope: !985)
!1060 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1059)
!1061 = !DILocation(line: 251, column: 5, scope: !985)
!1062 = !DILocation(line: 254, column: 22, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !986, file: !3, line: 254, column: 12)
!1064 = !DILocation(line: 254, column: 14, scope: !1063)
!1065 = !DILocation(line: 254, column: 28, scope: !1063)
!1066 = !DILocation(line: 254, column: 31, scope: !1063)
!1067 = !DILocation(line: 254, column: 55, scope: !1063)
!1068 = !DILocation(line: 254, column: 74, scope: !1063)
!1069 = !DILocation(line: 254, column: 65, scope: !1063)
!1070 = !DILocation(line: 254, column: 58, scope: !1063)
!1071 = !DILocation(line: 254, column: 12, scope: !986)
!1072 = !DILocation(line: 255, column: 13, scope: !1063)
!1073 = !DILocation(line: 255, column: 5, scope: !1063)
!1074 = !DILocation(line: 256, column: 14, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 256, column: 12)
!1076 = !DILocation(line: 256, column: 28, scope: !1075)
!1077 = !DILocation(line: 256, column: 47, scope: !1075)
!1078 = !DILocation(line: 256, column: 38, scope: !1075)
!1079 = !DILocation(line: 256, column: 31, scope: !1075)
!1080 = !DILocation(line: 256, column: 12, scope: !1063)
!1081 = !DILocation(line: 257, column: 13, scope: !1075)
!1082 = !DILocation(line: 257, column: 5, scope: !1075)
!1083 = !DILocation(line: 260, column: 25, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 260, column: 12)
!1085 = !DILocation(line: 260, column: 32, scope: !1084)
!1086 = !DILocation(line: 260, column: 35, scope: !1084)
!1087 = !DILocation(line: 260, column: 48, scope: !1084)
!1088 = !DILocation(line: 260, column: 51, scope: !1084)
!1089 = !DILocation(line: 260, column: 64, scope: !1084)
!1090 = !DILocation(line: 260, column: 12, scope: !1075)
!1091 = !DILocation(line: 582, column: 24, scope: !875, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 262, column: 11, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 262, column: 11)
!1094 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 261, column: 5)
!1095 = !DILocation(line: 587, column: 11, scope: !875, inlinedAt: !1092)
!1096 = !DILocation(line: 587, column: 3, scope: !875, inlinedAt: !1092)
!1097 = !DILocation(line: 263, column: 17, scope: !1093)
!1098 = !DILocation(line: 266, column: 5, scope: !1094)
!1099 = !DILocation(line: 265, column: 28, scope: !1093)
!1100 = !DILocation(line: 265, column: 69, scope: !1093)
!1101 = !DILocation(line: 265, column: 74, scope: !1093)
!1102 = !DILocation(line: 265, column: 62, scope: !1093)
!1103 = !DILocation(line: 265, column: 9, scope: !1093)
!1104 = !DILocation(line: 269, column: 29, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 268, column: 5)
!1106 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 270, column: 7, scope: !1105)
!1108 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1107)
!1109 = !DILocation(line: 273, column: 18, scope: !980)
!1110 = !DILocation(line: 273, column: 3, scope: !980)
!1111 = distinct !DISubprogram(name: "binop", scope: !3, file: !3, line: 184, type: !876, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1112)
!1112 = !{!1113}
!1113 = !DILocalVariable(name: "s", arg: 1, scope: !1111, file: !3, line: 184, type: !52)
!1114 = !DILocation(line: 184, column: 20, scope: !1111)
!1115 = !DILocation(line: 186, column: 12, scope: !1111)
!1116 = !DILocation(line: 186, column: 30, scope: !1111)
!1117 = !DILocation(line: 186, column: 34, scope: !1111)
!1118 = !DILocation(line: 186, column: 52, scope: !1111)
!1119 = !DILocation(line: 186, column: 56, scope: !1111)
!1120 = !DILocation(line: 186, column: 73, scope: !1111)
!1121 = !DILocation(line: 187, column: 12, scope: !1111)
!1122 = !DILocation(line: 187, column: 32, scope: !1111)
!1123 = !DILocation(line: 188, column: 12, scope: !1111)
!1124 = !DILocation(line: 188, column: 30, scope: !1111)
!1125 = !DILocation(line: 188, column: 34, scope: !1111)
!1126 = !DILocation(line: 188, column: 52, scope: !1111)
!1127 = !DILocation(line: 188, column: 56, scope: !1111)
!1128 = !DILocation(line: 188, column: 74, scope: !1111)
!1129 = !DILocation(line: 189, column: 12, scope: !1111)
!1130 = !DILocation(line: 189, column: 30, scope: !1111)
!1131 = !DILocation(line: 189, column: 34, scope: !1111)
!1132 = !DILocation(line: 189, column: 52, scope: !1111)
!1133 = !DILocation(line: 189, column: 56, scope: !1111)
!1134 = !DILocation(line: 189, column: 74, scope: !1111)
!1135 = !DILocation(line: 190, column: 12, scope: !1111)
!1136 = !DILocation(line: 190, column: 30, scope: !1111)
!1137 = !DILocation(line: 190, column: 34, scope: !1111)
!1138 = !DILocation(line: 186, column: 3, scope: !1111)
!1139 = distinct !DISubprogram(name: "binary_operator", scope: !3, file: !3, line: 277, type: !1140, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!51, !51}
!1142 = !{!1143, !1144, !1145, !1184, !1185, !1186, !1194, !1195, !1196, !1197, !1198, !1199, !1203, !1204, !1205, !1206, !1209, !1210, !1211, !1212, !1215}
!1143 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1139, file: !3, line: 277, type: !51)
!1144 = !DILocalVariable(name: "op", scope: !1139, file: !3, line: 279, type: !31)
!1145 = !DILocalVariable(name: "stat_buf", scope: !1139, file: !3, line: 280, type: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1147, line: 46, size: 1152, elements: !1148)
!1147 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1148 = !{!1149, !1151, !1153, !1155, !1157, !1159, !1161, !1162, !1163, !1166, !1168, !1170, !1178, !1179, !1180}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1146, file: !1147, line: 48, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !144, line: 143, baseType: !95)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1146, file: !1147, line: 53, baseType: !1152, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !144, line: 146, baseType: !95)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1146, file: !1147, line: 61, baseType: !1154, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !144, line: 149, baseType: !95)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1146, file: !1147, line: 62, baseType: !1156, size: 32, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !144, line: 148, baseType: !6)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1146, file: !1147, line: 64, baseType: !1158, size: 32, offset: 224)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !144, line: 144, baseType: !6)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1146, file: !1147, line: 65, baseType: !1160, size: 32, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !144, line: 145, baseType: !6)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1146, file: !1147, line: 67, baseType: !31, size: 32, offset: 288)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1146, file: !1147, line: 69, baseType: !1150, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1146, file: !1147, line: 74, baseType: !1164, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !144, line: 150, baseType: !1165)
!1165 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1146, file: !1147, line: 78, baseType: !1167, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !144, line: 172, baseType: !1165)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1146, file: !1147, line: 80, baseType: !1169, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !144, line: 177, baseType: !1165)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1146, file: !1147, line: 91, baseType: !1171, size: 128, offset: 576)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1172, line: 9, size: 128, elements: !1173)
!1172 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1173 = !{!1174, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1171, file: !1172, line: 11, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !144, line: 158, baseType: !1165)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1171, file: !1172, line: 12, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !144, line: 194, baseType: !1165)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1146, file: !1147, line: 92, baseType: !1171, size: 128, offset: 704)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1146, file: !1147, line: 93, baseType: !1171, size: 128, offset: 832)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1146, file: !1147, line: 106, baseType: !1181, size: 192, offset: 960)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 192, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 3)
!1184 = !DILocalVariable(name: "stat_spare", scope: !1139, file: !3, line: 280, type: !1146)
!1185 = !DILocalVariable(name: "r_is_l", scope: !1139, file: !3, line: 282, type: !51)
!1186 = !DILocalVariable(name: "lbuf", scope: !1187, file: !3, line: 305, type: !1191)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 304, column: 9)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 299, column: 11)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 297, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 296, column: 7)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 168, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 21)
!1194 = !DILocalVariable(name: "rbuf", scope: !1187, file: !3, line: 306, type: !1191)
!1195 = !DILocalVariable(name: "l", scope: !1187, file: !3, line: 307, type: !52)
!1196 = !DILocalVariable(name: "r", scope: !1187, file: !3, line: 310, type: !52)
!1197 = !DILocalVariable(name: "cmp", scope: !1187, file: !3, line: 313, type: !31)
!1198 = !DILocalVariable(name: "xe_operator", scope: !1187, file: !3, line: 314, type: !51)
!1199 = !DILocalVariable(name: "lt", scope: !1200, file: !3, line: 330, type: !1171)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 328, column: 13)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 327, column: 15)
!1202 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 322, column: 9)
!1203 = !DILocalVariable(name: "rt", scope: !1200, file: !3, line: 330, type: !1171)
!1204 = !DILocalVariable(name: "le", scope: !1200, file: !3, line: 331, type: !51)
!1205 = !DILocalVariable(name: "re", scope: !1200, file: !3, line: 331, type: !51)
!1206 = !DILocalVariable(name: "lt", scope: !1207, file: !3, line: 359, type: !1171)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 357, column: 13)
!1208 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 356, column: 15)
!1209 = !DILocalVariable(name: "rt", scope: !1207, file: !3, line: 359, type: !1171)
!1210 = !DILocalVariable(name: "le", scope: !1207, file: !3, line: 360, type: !51)
!1211 = !DILocalVariable(name: "re", scope: !1207, file: !3, line: 360, type: !51)
!1212 = !DILocalVariable(name: "value", scope: !1213, file: !3, line: 378, type: !51)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 377, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 375, column: 7)
!1215 = !DILocalVariable(name: "value", scope: !1216, file: !3, line: 385, type: !51)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 384, column: 5)
!1217 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 383, column: 7)
!1218 = !DILocation(line: 277, column: 23, scope: !1139)
!1219 = !DILocation(line: 280, column: 3, scope: !1139)
!1220 = !DILocation(line: 0, scope: !1139)
!1221 = !DILocation(line: 284, column: 7, scope: !1139)
!1222 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 285, column: 5, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 284, column: 7)
!1225 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1223)
!1226 = !DILocation(line: 285, column: 5, scope: !1224)
!1227 = !DILocation(line: 286, column: 8, scope: !1139)
!1228 = !DILocation(line: 286, column: 12, scope: !1139)
!1229 = !DILocation(line: 279, column: 7, scope: !1139)
!1230 = !DILocation(line: 288, column: 13, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 288, column: 7)
!1232 = !DILocation(line: 288, column: 18, scope: !1231)
!1233 = !DILocation(line: 288, column: 11, scope: !1231)
!1234 = !DILocation(line: 0, scope: !1190)
!1235 = !DILocation(line: 288, column: 23, scope: !1231)
!1236 = !DILocation(line: 288, column: 26, scope: !1231)
!1237 = !DILocation(line: 288, column: 7, scope: !1139)
!1238 = !DILocation(line: 282, column: 8, scope: !1139)
!1239 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 291, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 289, column: 5)
!1242 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1240)
!1243 = !DILocation(line: 292, column: 5, scope: !1241)
!1244 = !DILocation(line: 296, column: 7, scope: !1190)
!1245 = !DILocation(line: 296, column: 7, scope: !1139)
!1246 = !DILocation(line: 299, column: 14, scope: !1188)
!1247 = !DILocation(line: 299, column: 33, scope: !1188)
!1248 = !DILocation(line: 300, column: 17, scope: !1188)
!1249 = !DILocation(line: 300, column: 36, scope: !1188)
!1250 = !DILocation(line: 301, column: 38, scope: !1188)
!1251 = !DILocation(line: 301, column: 50, scope: !1188)
!1252 = !DILocation(line: 302, column: 12, scope: !1188)
!1253 = !DILocation(line: 302, column: 38, scope: !1188)
!1254 = !DILocation(line: 302, column: 50, scope: !1188)
!1255 = !DILocation(line: 303, column: 11, scope: !1188)
!1256 = !DILocation(line: 303, column: 15, scope: !1188)
!1257 = !DILocation(line: 299, column: 11, scope: !1189)
!1258 = !DILocation(line: 305, column: 11, scope: !1187)
!1259 = !DILocation(line: 305, column: 16, scope: !1187)
!1260 = !DILocation(line: 306, column: 11, scope: !1187)
!1261 = !DILocation(line: 306, column: 16, scope: !1187)
!1262 = !DILocation(line: 0, scope: !1187)
!1263 = !DILocation(line: 307, column: 28, scope: !1187)
!1264 = !DILocation(line: 308, column: 41, scope: !1187)
!1265 = !DILocation(line: 308, column: 30, scope: !1187)
!1266 = !DILocation(line: 309, column: 30, scope: !1187)
!1267 = !DILocation(line: 307, column: 23, scope: !1187)
!1268 = !DILocation(line: 310, column: 28, scope: !1187)
!1269 = !DILocation(line: 311, column: 57, scope: !1187)
!1270 = !DILocation(line: 311, column: 49, scope: !1187)
!1271 = !DILocation(line: 311, column: 41, scope: !1187)
!1272 = !DILocation(line: 311, column: 30, scope: !1187)
!1273 = !DILocation(line: 312, column: 48, scope: !1187)
!1274 = !DILocation(line: 312, column: 40, scope: !1187)
!1275 = !DILocation(line: 312, column: 30, scope: !1187)
!1276 = !DILocation(line: 310, column: 23, scope: !1187)
!1277 = !DILocation(line: 313, column: 21, scope: !1187)
!1278 = !DILocation(line: 313, column: 15, scope: !1187)
!1279 = !DILocation(line: 314, column: 31, scope: !1187)
!1280 = !DILocation(line: 314, column: 43, scope: !1187)
!1281 = !DILocation(line: 315, column: 15, scope: !1187)
!1282 = !DILocation(line: 316, column: 19, scope: !1187)
!1283 = !DILocation(line: 316, column: 46, scope: !1187)
!1284 = !DILocation(line: 316, column: 44, scope: !1187)
!1285 = !DILocation(line: 317, column: 48, scope: !1187)
!1286 = !DILocation(line: 317, column: 46, scope: !1187)
!1287 = !DILocation(line: 317, column: 21, scope: !1187)
!1288 = !DILocation(line: 318, column: 26, scope: !1187)
!1289 = !DILocation(line: 318, column: 32, scope: !1187)
!1290 = !DILocation(line: 319, column: 9, scope: !1188)
!1291 = !DILocation(line: 321, column: 15, scope: !1189)
!1292 = !DILocation(line: 321, column: 7, scope: !1189)
!1293 = !DILocation(line: 327, column: 15, scope: !1201)
!1294 = !DILocation(line: 327, column: 27, scope: !1201)
!1295 = !DILocation(line: 327, column: 34, scope: !1201)
!1296 = !DILocation(line: 327, column: 38, scope: !1201)
!1297 = !DILocation(line: 327, column: 15, scope: !1202)
!1298 = !DILocation(line: 332, column: 19, scope: !1200)
!1299 = !DILocation(line: 333, column: 26, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 333, column: 19)
!1301 = !DILocation(line: 334, column: 36, scope: !1300)
!1302 = !DILocation(line: 334, column: 17, scope: !1300)
!1303 = !DILocation(line: 335, column: 31, scope: !1200)
!1304 = !DILocation(line: 330, column: 31, scope: !1200)
!1305 = !DILocalVariable(name: "filename", arg: 1, scope: !1306, file: !3, line: 169, type: !52)
!1306 = distinct !DISubprogram(name: "get_mtime", scope: !3, file: !3, line: 169, type: !1307, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1310)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!51, !52, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1310 = !{!1305, !1311, !1312, !1313}
!1311 = !DILocalVariable(name: "mtime", arg: 2, scope: !1306, file: !3, line: 169, type: !1309)
!1312 = !DILocalVariable(name: "finfo", scope: !1306, file: !3, line: 171, type: !1146)
!1313 = !DILocalVariable(name: "ok", scope: !1306, file: !3, line: 172, type: !51)
!1314 = !DILocation(line: 169, column: 24, scope: !1306, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 335, column: 20, scope: !1200)
!1316 = !DILocation(line: 169, column: 51, scope: !1306, inlinedAt: !1315)
!1317 = !DILocation(line: 171, column: 3, scope: !1306, inlinedAt: !1315)
!1318 = !DILocation(line: 171, column: 15, scope: !1306, inlinedAt: !1315)
!1319 = !DILocalVariable(name: "__path", arg: 1, scope: !1320, file: !1321, line: 453, type: !52)
!1320 = distinct !DISubprogram(name: "stat", scope: !1321, file: !1321, line: 453, type: !1322, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1325)
!1321 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!31, !52, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1325 = !{!1319, !1326}
!1326 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1320, file: !1321, line: 453, type: !1324)
!1327 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 172, column: 14, scope: !1306, inlinedAt: !1315)
!1329 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1328)
!1330 = !DILocation(line: 172, column: 38, scope: !1306, inlinedAt: !1315)
!1331 = !DILocalVariable(name: "st", arg: 1, scope: !1332, file: !1333, line: 146, type: !1336)
!1332 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1333, file: !1333, line: 146, type: !1334, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1338)
!1333 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1171, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1338 = !{!1331}
!1339 = !DILocation(line: 146, column: 36, scope: !1332, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 178, column: 14, scope: !1341, inlinedAt: !1315)
!1341 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 177, column: 7)
!1342 = !DILocation(line: 149, column: 10, scope: !1332, inlinedAt: !1340)
!1343 = !DILocation(line: 180, column: 1, scope: !1306, inlinedAt: !1315)
!1344 = !DILocation(line: 336, column: 31, scope: !1200)
!1345 = !DILocation(line: 336, column: 39, scope: !1200)
!1346 = !DILocation(line: 330, column: 35, scope: !1200)
!1347 = !DILocation(line: 169, column: 24, scope: !1306, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 336, column: 20, scope: !1200)
!1349 = !DILocation(line: 169, column: 51, scope: !1306, inlinedAt: !1348)
!1350 = !DILocation(line: 171, column: 3, scope: !1306, inlinedAt: !1348)
!1351 = !DILocation(line: 171, column: 15, scope: !1306, inlinedAt: !1348)
!1352 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 172, column: 14, scope: !1306, inlinedAt: !1348)
!1354 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1353)
!1355 = !DILocation(line: 172, column: 38, scope: !1306, inlinedAt: !1348)
!1356 = !DILocation(line: 177, column: 7, scope: !1306, inlinedAt: !1348)
!1357 = !DILocation(line: 180, column: 1, scope: !1306, inlinedAt: !1348)
!1358 = !DILocation(line: 337, column: 25, scope: !1200)
!1359 = !DILocation(line: 146, column: 36, scope: !1332, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 178, column: 14, scope: !1341, inlinedAt: !1348)
!1361 = !DILocation(line: 149, column: 10, scope: !1332, inlinedAt: !1360)
!1362 = !DILocation(line: 84, column: 16, scope: !1363, inlinedAt: !1370)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !27, line: 84, column: 7)
!1364 = distinct !DISubprogram(name: "timespec_cmp", scope: !27, file: !27, line: 82, type: !1365, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!31, !1171, !1171}
!1367 = !{!1368, !1369}
!1368 = !DILocalVariable(name: "a", arg: 1, scope: !1364, file: !27, line: 82, type: !1171)
!1369 = !DILocalVariable(name: "b", arg: 2, scope: !1364, file: !27, line: 82, type: !1171)
!1370 = distinct !DILocation(line: 337, column: 36, scope: !1200)
!1371 = !DILocation(line: 82, column: 31, scope: !1364, inlinedAt: !1370)
!1372 = !DILocation(line: 82, column: 50, scope: !1364, inlinedAt: !1370)
!1373 = !DILocation(line: 86, column: 16, scope: !1374, inlinedAt: !1370)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !27, line: 86, column: 7)
!1375 = !DILocation(line: 86, column: 7, scope: !1364, inlinedAt: !1370)
!1376 = !DILocation(line: 94, column: 20, scope: !1364, inlinedAt: !1370)
!1377 = !DILocation(line: 94, column: 10, scope: !1364, inlinedAt: !1370)
!1378 = !DILocation(line: 94, column: 3, scope: !1364, inlinedAt: !1370)
!1379 = !DILocation(line: 342, column: 15, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 342, column: 15)
!1381 = !DILocation(line: 342, column: 27, scope: !1380)
!1382 = !DILocation(line: 342, column: 34, scope: !1380)
!1383 = !DILocation(line: 342, column: 38, scope: !1380)
!1384 = !DILocation(line: 342, column: 15, scope: !1202)
!1385 = !DILocation(line: 345, column: 19, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 343, column: 13)
!1387 = !DILocation(line: 346, column: 26, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 346, column: 19)
!1389 = !DILocation(line: 347, column: 36, scope: !1388)
!1390 = !DILocation(line: 347, column: 17, scope: !1388)
!1391 = !DILocation(line: 348, column: 29, scope: !1386)
!1392 = !DILocation(line: 280, column: 15, scope: !1139)
!1393 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 348, column: 23, scope: !1386)
!1395 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1394)
!1396 = !DILocation(line: 348, column: 54, scope: !1386)
!1397 = !DILocation(line: 349, column: 23, scope: !1386)
!1398 = !DILocation(line: 349, column: 32, scope: !1386)
!1399 = !DILocation(line: 349, column: 40, scope: !1386)
!1400 = !DILocation(line: 280, column: 25, scope: !1139)
!1401 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 349, column: 26, scope: !1386)
!1403 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1402)
!1404 = !DILocation(line: 349, column: 59, scope: !1386)
!1405 = !DILocation(line: 350, column: 23, scope: !1386)
!1406 = !DILocation(line: 350, column: 35, scope: !1386)
!1407 = !{!1408, !1409, i64 0}
!1408 = !{!"stat", !1409, i64 0, !1409, i64 8, !1409, i64 16, !694, i64 24, !694, i64 28, !694, i64 32, !694, i64 36, !1409, i64 40, !1409, i64 48, !1409, i64 56, !1409, i64 64, !1410, i64 72, !1410, i64 88, !1410, i64 104, !618, i64 120}
!1409 = !{!"long", !618, i64 0}
!1410 = !{!"timespec", !1409, i64 0, !1409, i64 8}
!1411 = !DILocation(line: 350, column: 56, scope: !1386)
!1412 = !DILocation(line: 350, column: 42, scope: !1386)
!1413 = !DILocation(line: 351, column: 23, scope: !1386)
!1414 = !DILocation(line: 351, column: 35, scope: !1386)
!1415 = !{!1408, !1409, i64 8}
!1416 = !DILocation(line: 351, column: 56, scope: !1386)
!1417 = !DILocation(line: 351, column: 42, scope: !1386)
!1418 = !DILocation(line: 356, column: 22, scope: !1208)
!1419 = !DILocation(line: 356, column: 19, scope: !1208)
!1420 = !DILocation(line: 356, column: 34, scope: !1208)
!1421 = !DILocation(line: 356, column: 47, scope: !1208)
!1422 = !DILocation(line: 356, column: 44, scope: !1208)
!1423 = !DILocation(line: 356, column: 15, scope: !1202)
!1424 = !DILocation(line: 361, column: 19, scope: !1207)
!1425 = !DILocation(line: 362, column: 26, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 362, column: 19)
!1427 = !DILocation(line: 363, column: 36, scope: !1426)
!1428 = !DILocation(line: 363, column: 17, scope: !1426)
!1429 = !DILocation(line: 364, column: 31, scope: !1207)
!1430 = !DILocation(line: 359, column: 31, scope: !1207)
!1431 = !DILocation(line: 169, column: 24, scope: !1306, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 364, column: 20, scope: !1207)
!1433 = !DILocation(line: 169, column: 51, scope: !1306, inlinedAt: !1432)
!1434 = !DILocation(line: 171, column: 3, scope: !1306, inlinedAt: !1432)
!1435 = !DILocation(line: 171, column: 15, scope: !1306, inlinedAt: !1432)
!1436 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 172, column: 14, scope: !1306, inlinedAt: !1432)
!1438 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1437)
!1439 = !DILocation(line: 146, column: 36, scope: !1332, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 178, column: 14, scope: !1341, inlinedAt: !1432)
!1441 = !DILocation(line: 149, column: 10, scope: !1332, inlinedAt: !1440)
!1442 = !DILocation(line: 180, column: 1, scope: !1306, inlinedAt: !1432)
!1443 = !DILocation(line: 365, column: 31, scope: !1207)
!1444 = !DILocation(line: 365, column: 39, scope: !1207)
!1445 = !DILocation(line: 359, column: 35, scope: !1207)
!1446 = !DILocation(line: 169, column: 24, scope: !1306, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 365, column: 20, scope: !1207)
!1448 = !DILocation(line: 169, column: 51, scope: !1306, inlinedAt: !1447)
!1449 = !DILocation(line: 171, column: 3, scope: !1306, inlinedAt: !1447)
!1450 = !DILocation(line: 171, column: 15, scope: !1306, inlinedAt: !1447)
!1451 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 172, column: 14, scope: !1306, inlinedAt: !1447)
!1453 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1452)
!1454 = !DILocation(line: 172, column: 38, scope: !1306, inlinedAt: !1447)
!1455 = !DILocation(line: 177, column: 7, scope: !1306, inlinedAt: !1447)
!1456 = !DILocation(line: 180, column: 1, scope: !1306, inlinedAt: !1447)
!1457 = !DILocation(line: 366, column: 25, scope: !1207)
!1458 = !DILocation(line: 172, column: 38, scope: !1306, inlinedAt: !1432)
!1459 = !DILocation(line: 146, column: 36, scope: !1332, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 178, column: 14, scope: !1341, inlinedAt: !1447)
!1461 = !DILocation(line: 149, column: 10, scope: !1332, inlinedAt: !1460)
!1462 = !DILocation(line: 84, column: 16, scope: !1363, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 366, column: 36, scope: !1207)
!1464 = !DILocation(line: 82, column: 31, scope: !1364, inlinedAt: !1463)
!1465 = !DILocation(line: 82, column: 50, scope: !1364, inlinedAt: !1463)
!1466 = !DILocation(line: 86, column: 16, scope: !1374, inlinedAt: !1463)
!1467 = !DILocation(line: 86, column: 7, scope: !1364, inlinedAt: !1463)
!1468 = !DILocation(line: 94, column: 20, scope: !1364, inlinedAt: !1463)
!1469 = !DILocation(line: 94, column: 10, scope: !1364, inlinedAt: !1463)
!1470 = !DILocation(line: 94, column: 3, scope: !1364, inlinedAt: !1463)
!1471 = !DILocation(line: 372, column: 26, scope: !1189)
!1472 = !DILocation(line: 372, column: 67, scope: !1189)
!1473 = !DILocation(line: 372, column: 60, scope: !1189)
!1474 = !DILocation(line: 372, column: 7, scope: !1189)
!1475 = !DILocation(line: 376, column: 12, scope: !1214)
!1476 = !DILocation(line: 376, column: 24, scope: !1214)
!1477 = !DILocation(line: 376, column: 53, scope: !1214)
!1478 = !DILocation(line: 375, column: 7, scope: !1139)
!1479 = !DILocation(line: 378, column: 20, scope: !1213)
!1480 = !DILocation(line: 379, column: 11, scope: !1213)
!1481 = !DILocation(line: 383, column: 7, scope: !1217)
!1482 = !DILocation(line: 383, column: 7, scope: !1139)
!1483 = !DILocation(line: 385, column: 21, scope: !1216)
!1484 = !DILocation(line: 386, column: 11, scope: !1216)
!1485 = !DILocation(line: 391, column: 3, scope: !1139)
!1486 = !DILocation(line: 0, scope: !1213)
!1487 = !DILocation(line: 392, column: 1, scope: !1139)
!1488 = distinct !DISubprogram(name: "unary_operator", scope: !3, file: !3, line: 395, type: !727, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1489)
!1489 = !{!1490, !1491, !1496, !1497, !1500, !1501, !1503}
!1490 = !DILocalVariable(name: "stat_buf", scope: !1488, file: !3, line: 397, type: !1146)
!1491 = !DILocalVariable(name: "euid", scope: !1492, file: !3, line: 432, type: !1494)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 427, column: 7)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 400, column: 5)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1495, line: 79, baseType: !1158)
!1495 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1496 = !DILocalVariable(name: "NO_UID", scope: !1492, file: !3, line: 433, type: !1494)
!1497 = !DILocalVariable(name: "egid", scope: !1498, file: !3, line: 443, type: !1499)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 438, column: 7)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1495, line: 64, baseType: !1160)
!1500 = !DILocalVariable(name: "NO_GID", scope: !1498, file: !3, line: 444, type: !1499)
!1501 = !DILocalVariable(name: "fd", scope: !1502, file: !3, line: 510, type: !1165)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 509, column: 7)
!1503 = !DILocalVariable(name: "arg", scope: !1502, file: !3, line: 511, type: !52)
!1504 = !DILocation(line: 397, column: 3, scope: !1488)
!1505 = !DILocation(line: 399, column: 11, scope: !1488)
!1506 = !DILocation(line: 399, column: 16, scope: !1488)
!1507 = !DILocation(line: 399, column: 3, scope: !1488)
!1508 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1511)
!1510 = distinct !DISubprogram(name: "unary_advance", scope: !3, file: !3, line: 114, type: !972, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !46)
!1511 = distinct !DILocation(line: 411, column: 7, scope: !1493)
!1512 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1509)
!1513 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1509)
!1514 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1509)
!1515 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1509)
!1516 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1509)
!1517 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1511)
!1518 = !DILocation(line: 412, column: 20, scope: !1493)
!1519 = !DILocation(line: 397, column: 15, scope: !1488)
!1520 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 412, column: 14, scope: !1493)
!1522 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1521)
!1523 = !DILocation(line: 412, column: 46, scope: !1493)
!1524 = !DILocation(line: 412, column: 7, scope: !1493)
!1525 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 415, column: 7, scope: !1493)
!1528 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1526)
!1529 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1526)
!1530 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1526)
!1531 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1526)
!1532 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1526)
!1533 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1527)
!1534 = !DILocation(line: 416, column: 26, scope: !1493)
!1535 = !DILocation(line: 416, column: 14, scope: !1493)
!1536 = !DILocation(line: 416, column: 47, scope: !1493)
!1537 = !DILocation(line: 416, column: 7, scope: !1493)
!1538 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 419, column: 7, scope: !1493)
!1541 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1539)
!1542 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1539)
!1543 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1539)
!1544 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1539)
!1545 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1539)
!1546 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1540)
!1547 = !DILocation(line: 420, column: 26, scope: !1493)
!1548 = !DILocation(line: 420, column: 14, scope: !1493)
!1549 = !DILocation(line: 420, column: 47, scope: !1493)
!1550 = !DILocation(line: 420, column: 7, scope: !1493)
!1551 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 423, column: 7, scope: !1493)
!1554 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1552)
!1555 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1552)
!1556 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1552)
!1557 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1552)
!1558 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1552)
!1559 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1553)
!1560 = !DILocation(line: 424, column: 26, scope: !1493)
!1561 = !DILocation(line: 424, column: 14, scope: !1493)
!1562 = !DILocation(line: 424, column: 47, scope: !1493)
!1563 = !DILocation(line: 424, column: 7, scope: !1493)
!1564 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 428, column: 9, scope: !1492)
!1567 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1565)
!1568 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1565)
!1569 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1565)
!1570 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1565)
!1571 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1565)
!1572 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1566)
!1573 = !DILocation(line: 429, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 429, column: 13)
!1575 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 429, column: 13, scope: !1574)
!1577 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1576)
!1578 = !DILocation(line: 429, column: 45, scope: !1574)
!1579 = !DILocation(line: 429, column: 13, scope: !1492)
!1580 = !DILocation(line: 431, column: 9, scope: !1492)
!1581 = !DILocation(line: 431, column: 15, scope: !1492)
!1582 = !DILocation(line: 432, column: 22, scope: !1492)
!1583 = !DILocation(line: 432, column: 15, scope: !1492)
!1584 = !DILocation(line: 433, column: 15, scope: !1492)
!1585 = !DILocation(line: 434, column: 24, scope: !1492)
!1586 = !DILocation(line: 434, column: 34, scope: !1492)
!1587 = !DILocation(line: 434, column: 37, scope: !1492)
!1588 = !DILocation(line: 434, column: 44, scope: !1492)
!1589 = !DILocation(line: 434, column: 64, scope: !1492)
!1590 = !{!1408, !694, i64 28}
!1591 = !DILocation(line: 434, column: 52, scope: !1492)
!1592 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 439, column: 9, scope: !1498)
!1595 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1593)
!1596 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1593)
!1597 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1593)
!1598 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1593)
!1599 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1593)
!1600 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1594)
!1601 = !DILocation(line: 440, column: 19, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 440, column: 13)
!1603 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 440, column: 13, scope: !1602)
!1605 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1604)
!1606 = !DILocation(line: 440, column: 45, scope: !1602)
!1607 = !DILocation(line: 440, column: 13, scope: !1498)
!1608 = !DILocation(line: 442, column: 9, scope: !1498)
!1609 = !DILocation(line: 442, column: 15, scope: !1498)
!1610 = !DILocation(line: 443, column: 22, scope: !1498)
!1611 = !DILocation(line: 443, column: 15, scope: !1498)
!1612 = !DILocation(line: 444, column: 15, scope: !1498)
!1613 = !DILocation(line: 445, column: 24, scope: !1498)
!1614 = !DILocation(line: 445, column: 34, scope: !1498)
!1615 = !DILocation(line: 445, column: 37, scope: !1498)
!1616 = !DILocation(line: 445, column: 44, scope: !1498)
!1617 = !DILocation(line: 445, column: 64, scope: !1498)
!1618 = !{!1408, !694, i64 32}
!1619 = !DILocation(line: 445, column: 52, scope: !1498)
!1620 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 449, column: 7, scope: !1493)
!1623 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1621)
!1624 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1621)
!1625 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1621)
!1626 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1621)
!1627 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1621)
!1628 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1622)
!1629 = !DILocation(line: 452, column: 21, scope: !1493)
!1630 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 452, column: 15, scope: !1493)
!1632 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1631)
!1633 = !DILocation(line: 452, column: 47, scope: !1493)
!1634 = !DILocation(line: 453, column: 15, scope: !1493)
!1635 = !DILocation(line: 453, column: 18, scope: !1493)
!1636 = !{!1408, !694, i64 24}
!1637 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 456, column: 7, scope: !1493)
!1640 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1638)
!1641 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1638)
!1642 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1638)
!1643 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1638)
!1644 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1638)
!1645 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1639)
!1646 = !DILocation(line: 457, column: 21, scope: !1493)
!1647 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 457, column: 15, scope: !1493)
!1649 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1648)
!1650 = !DILocation(line: 457, column: 47, scope: !1493)
!1651 = !DILocation(line: 458, column: 15, scope: !1493)
!1652 = !DILocation(line: 458, column: 18, scope: !1493)
!1653 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 461, column: 7, scope: !1493)
!1656 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1654)
!1657 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1654)
!1658 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1654)
!1659 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1654)
!1660 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1654)
!1661 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1655)
!1662 = !DILocation(line: 462, column: 21, scope: !1493)
!1663 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 462, column: 15, scope: !1493)
!1665 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1664)
!1666 = !DILocation(line: 462, column: 47, scope: !1493)
!1667 = !DILocation(line: 463, column: 31, scope: !1493)
!1668 = !DILocation(line: 463, column: 20, scope: !1493)
!1669 = !DILocation(line: 463, column: 15, scope: !1493)
!1670 = !DILocation(line: 462, column: 7, scope: !1493)
!1671 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 466, column: 7, scope: !1493)
!1674 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1672)
!1675 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1672)
!1676 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1672)
!1677 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1672)
!1678 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1672)
!1679 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1673)
!1680 = !DILocation(line: 467, column: 21, scope: !1493)
!1681 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 467, column: 15, scope: !1493)
!1683 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1682)
!1684 = !DILocation(line: 467, column: 47, scope: !1493)
!1685 = !DILocation(line: 468, column: 15, scope: !1493)
!1686 = !DILocation(line: 468, column: 18, scope: !1493)
!1687 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 471, column: 7, scope: !1493)
!1690 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1688)
!1691 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1688)
!1692 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1688)
!1693 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1688)
!1694 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1688)
!1695 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1689)
!1696 = !DILocation(line: 472, column: 21, scope: !1493)
!1697 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 472, column: 15, scope: !1493)
!1699 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1698)
!1700 = !DILocation(line: 472, column: 47, scope: !1493)
!1701 = !DILocation(line: 473, column: 15, scope: !1493)
!1702 = !DILocation(line: 473, column: 18, scope: !1493)
!1703 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 476, column: 7, scope: !1493)
!1706 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1704)
!1707 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1704)
!1708 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1704)
!1709 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1704)
!1710 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1704)
!1711 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1705)
!1712 = !DILocation(line: 477, column: 21, scope: !1493)
!1713 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 477, column: 15, scope: !1493)
!1715 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1714)
!1716 = !DILocation(line: 477, column: 47, scope: !1493)
!1717 = !DILocation(line: 478, column: 15, scope: !1493)
!1718 = !DILocation(line: 478, column: 18, scope: !1493)
!1719 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 481, column: 7, scope: !1493)
!1722 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1720)
!1723 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1720)
!1724 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1720)
!1725 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1720)
!1726 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1720)
!1727 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1721)
!1728 = !DILocation(line: 482, column: 21, scope: !1493)
!1729 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 482, column: 15, scope: !1493)
!1731 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1730)
!1732 = !DILocation(line: 482, column: 47, scope: !1493)
!1733 = !DILocation(line: 483, column: 15, scope: !1493)
!1734 = !DILocation(line: 483, column: 18, scope: !1493)
!1735 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 489, column: 7, scope: !1493)
!1738 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1736)
!1739 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1736)
!1740 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1736)
!1741 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1736)
!1742 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1736)
!1743 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1737)
!1744 = !DILocation(line: 490, column: 22, scope: !1493)
!1745 = !DILocalVariable(name: "__path", arg: 1, scope: !1746, file: !1321, line: 460, type: !52)
!1746 = distinct !DISubprogram(name: "lstat", scope: !1321, file: !1321, line: 460, type: !1322, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1747)
!1747 = !{!1745, !1748}
!1748 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1746, file: !1321, line: 460, type: !1324)
!1749 = !DILocation(line: 460, column: 1, scope: !1746, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 490, column: 15, scope: !1493)
!1751 = !DILocation(line: 462, column: 10, scope: !1746, inlinedAt: !1750)
!1752 = !DILocation(line: 490, column: 48, scope: !1493)
!1753 = !DILocation(line: 491, column: 15, scope: !1493)
!1754 = !DILocation(line: 491, column: 18, scope: !1493)
!1755 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 494, column: 7, scope: !1493)
!1758 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1756)
!1759 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1756)
!1760 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1756)
!1761 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1756)
!1762 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1756)
!1763 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1757)
!1764 = !DILocation(line: 495, column: 21, scope: !1493)
!1765 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 495, column: 15, scope: !1493)
!1767 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1766)
!1768 = !DILocation(line: 495, column: 47, scope: !1493)
!1769 = !DILocation(line: 496, column: 15, scope: !1493)
!1770 = !DILocation(line: 496, column: 28, scope: !1493)
!1771 = !DILocation(line: 496, column: 36, scope: !1493)
!1772 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 499, column: 7, scope: !1493)
!1775 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1773)
!1776 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1773)
!1777 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1773)
!1778 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1773)
!1779 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1773)
!1780 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1774)
!1781 = !DILocation(line: 500, column: 21, scope: !1493)
!1782 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 500, column: 15, scope: !1493)
!1784 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1783)
!1785 = !DILocation(line: 500, column: 47, scope: !1493)
!1786 = !DILocation(line: 501, column: 15, scope: !1493)
!1787 = !DILocation(line: 501, column: 28, scope: !1493)
!1788 = !DILocation(line: 501, column: 36, scope: !1493)
!1789 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 504, column: 7, scope: !1493)
!1792 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1790)
!1793 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1790)
!1794 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1790)
!1795 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1790)
!1796 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1790)
!1797 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1791)
!1798 = !DILocation(line: 505, column: 21, scope: !1493)
!1799 = !DILocation(line: 453, column: 1, scope: !1320, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 505, column: 15, scope: !1493)
!1801 = !DILocation(line: 455, column: 10, scope: !1320, inlinedAt: !1800)
!1802 = !DILocation(line: 505, column: 47, scope: !1493)
!1803 = !DILocation(line: 506, column: 15, scope: !1493)
!1804 = !DILocation(line: 506, column: 28, scope: !1493)
!1805 = !DILocation(line: 506, column: 36, scope: !1493)
!1806 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 512, column: 9, scope: !1502)
!1809 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1807)
!1810 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1807)
!1811 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1807)
!1812 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1807)
!1813 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1807)
!1814 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1808)
!1815 = !DILocation(line: 513, column: 25, scope: !1502)
!1816 = !DILocation(line: 513, column: 15, scope: !1502)
!1817 = !DILocation(line: 511, column: 21, scope: !1502)
!1818 = !DILocation(line: 514, column: 9, scope: !1502)
!1819 = !DILocation(line: 514, column: 15, scope: !1502)
!1820 = !DILocation(line: 515, column: 14, scope: !1502)
!1821 = !DILocation(line: 510, column: 18, scope: !1502)
!1822 = !DILocation(line: 516, column: 17, scope: !1502)
!1823 = !DILocation(line: 516, column: 23, scope: !1502)
!1824 = !DILocation(line: 516, column: 33, scope: !1502)
!1825 = !DILocation(line: 516, column: 72, scope: !1502)
!1826 = !DILocation(line: 516, column: 64, scope: !1502)
!1827 = !DILocation(line: 516, column: 61, scope: !1502)
!1828 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 520, column: 7, scope: !1493)
!1831 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1829)
!1832 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1829)
!1833 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1829)
!1834 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1829)
!1835 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1829)
!1836 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1830)
!1837 = !DILocation(line: 521, column: 14, scope: !1493)
!1838 = !DILocation(line: 521, column: 31, scope: !1493)
!1839 = !DILocation(line: 521, column: 7, scope: !1493)
!1840 = !DILocation(line: 105, column: 15, scope: !743, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 116, column: 3, scope: !1510, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 524, column: 7, scope: !1493)
!1843 = !DILocation(line: 107, column: 3, scope: !743, inlinedAt: !1841)
!1844 = !DILocation(line: 109, column: 19, scope: !752, inlinedAt: !1841)
!1845 = !DILocation(line: 109, column: 16, scope: !752, inlinedAt: !1841)
!1846 = !DILocation(line: 109, column: 9, scope: !752, inlinedAt: !1841)
!1847 = !DILocation(line: 110, column: 5, scope: !752, inlinedAt: !1841)
!1848 = !DILocation(line: 117, column: 3, scope: !1510, inlinedAt: !1842)
!1849 = !DILocation(line: 525, column: 14, scope: !1493)
!1850 = !DILocation(line: 525, column: 31, scope: !1493)
!1851 = !DILocation(line: 525, column: 7, scope: !1493)
!1852 = !DILocation(line: 0, scope: !1493)
!1853 = !DILocation(line: 527, column: 1, scope: !1488)
!1854 = distinct !DISubprogram(name: "find_int", scope: !3, file: !3, line: 134, type: !1855, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1857)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!52, !52}
!1857 = !{!1858, !1859, !1860}
!1858 = !DILocalVariable(name: "string", arg: 1, scope: !1854, file: !3, line: 134, type: !52)
!1859 = !DILocalVariable(name: "p", scope: !1854, file: !3, line: 136, type: !52)
!1860 = !DILocalVariable(name: "number_start", scope: !1854, file: !3, line: 137, type: !52)
!1861 = !DILocation(line: 134, column: 23, scope: !1854)
!1862 = !DILocation(line: 136, column: 15, scope: !1854)
!1863 = !DILocation(line: 139, column: 20, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 139, column: 3)
!1865 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 139, column: 3)
!1866 = !DILocation(line: 139, column: 8, scope: !1865)
!1867 = !DILocation(line: 0, scope: !1864)
!1868 = !{!1869, !1869, i64 0}
!1869 = !{!"short", !618, i64 0}
!1870 = !DILocation(line: 139, column: 3, scope: !1865)
!1871 = !DILocation(line: 139, column: 46, scope: !1864)
!1872 = distinct !{!1872, !1870, !1873}
!1873 = !DILocation(line: 140, column: 5, scope: !1865)
!1874 = !DILocation(line: 142, column: 10, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 142, column: 7)
!1876 = !DILocation(line: 137, column: 15, scope: !1854)
!1877 = !DILocation(line: 150, column: 16, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 148, column: 5)
!1879 = !DILocation(line: 150, column: 9, scope: !1878)
!1880 = !DILocation(line: 142, column: 7, scope: !1854)
!1881 = !DILocation(line: 153, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 153, column: 7)
!1883 = !DILocation(line: 153, column: 7, scope: !1854)
!1884 = !DILocation(line: 0, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 154, column: 5)
!1886 = !DILocation(line: 155, column: 14, scope: !1885)
!1887 = !DILocation(line: 155, column: 7, scope: !1885)
!1888 = distinct !{!1888, !1887, !1889}
!1889 = !DILocation(line: 156, column: 10, scope: !1885)
!1890 = !DILocation(line: 157, column: 14, scope: !1885)
!1891 = !DILocation(line: 157, column: 7, scope: !1885)
!1892 = !DILocation(line: 158, column: 10, scope: !1885)
!1893 = distinct !{!1893, !1891, !1892}
!1894 = !DILocation(line: 159, column: 12, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 159, column: 11)
!1896 = !DILocation(line: 159, column: 11, scope: !1885)
!1897 = !DILocation(line: 160, column: 9, scope: !1895)
!1898 = !DILocation(line: 163, column: 22, scope: !1854)
!1899 = !DILocation(line: 163, column: 47, scope: !1854)
!1900 = !DILocation(line: 163, column: 3, scope: !1854)
!1901 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !50, file: !50, line: 51, type: !591, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !44, retainedNodes: !1902)
!1902 = !{!1903}
!1903 = !DILocalVariable(name: "file", arg: 1, scope: !1901, file: !50, line: 51, type: !52)
!1904 = !DILocation(line: 51, column: 41, scope: !1901)
!1905 = !DILocation(line: 53, column: 13, scope: !1901)
!1906 = !DILocation(line: 54, column: 1, scope: !1901)
!1907 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !50, file: !50, line: 88, type: !744, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !44, retainedNodes: !1908)
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "ignore", arg: 1, scope: !1907, file: !50, line: 88, type: !51)
!1910 = !DILocation(line: 88, column: 37, scope: !1907)
!1911 = !DILocation(line: 90, column: 16, scope: !1907)
!1912 = !{!1913, !1913, i64 0}
!1913 = !{!"_Bool", !618, i64 0}
!1914 = !DILocation(line: 91, column: 1, scope: !1907)
!1915 = distinct !DISubprogram(name: "close_stdout", scope: !50, file: !50, line: 117, type: !972, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !44, retainedNodes: !1916)
!1916 = !{!1917}
!1917 = !DILocalVariable(name: "write_error", scope: !1918, file: !50, line: 122, type: !52)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !50, line: 121, column: 5)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !50, line: 119, column: 7)
!1920 = !DILocation(line: 119, column: 21, scope: !1919)
!1921 = !DILocation(line: 119, column: 7, scope: !1919)
!1922 = !DILocation(line: 119, column: 29, scope: !1919)
!1923 = !DILocation(line: 120, column: 7, scope: !1919)
!1924 = !DILocation(line: 120, column: 12, scope: !1919)
!1925 = !{i8 0, i8 2}
!1926 = !DILocation(line: 120, column: 25, scope: !1919)
!1927 = !DILocation(line: 120, column: 28, scope: !1919)
!1928 = !DILocation(line: 120, column: 34, scope: !1919)
!1929 = !DILocation(line: 119, column: 7, scope: !1915)
!1930 = !DILocation(line: 122, column: 33, scope: !1918)
!1931 = !DILocation(line: 122, column: 19, scope: !1918)
!1932 = !DILocation(line: 123, column: 11, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1918, file: !50, line: 123, column: 11)
!1934 = !DILocation(line: 0, scope: !1933)
!1935 = !DILocation(line: 123, column: 11, scope: !1918)
!1936 = !DILocation(line: 124, column: 36, scope: !1933)
!1937 = !DILocation(line: 124, column: 9, scope: !1933)
!1938 = !DILocation(line: 127, column: 9, scope: !1933)
!1939 = !DILocation(line: 129, column: 14, scope: !1918)
!1940 = !DILocation(line: 129, column: 7, scope: !1918)
!1941 = !DILocation(line: 134, column: 42, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1915, file: !50, line: 134, column: 7)
!1943 = !DILocation(line: 134, column: 28, scope: !1942)
!1944 = !DILocation(line: 134, column: 50, scope: !1942)
!1945 = !DILocation(line: 134, column: 7, scope: !1915)
!1946 = !DILocation(line: 135, column: 12, scope: !1942)
!1947 = !DILocation(line: 135, column: 5, scope: !1942)
!1948 = !DILocation(line: 136, column: 1, scope: !1915)
!1949 = distinct !DISubprogram(name: "umaxtostr", scope: !1950, file: !1950, line: 36, type: !1951, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !138, retainedNodes: !1953)
!1950 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!40, !141, !40}
!1953 = !{!1954, !1955, !1956}
!1954 = !DILocalVariable(name: "i", arg: 1, scope: !1949, file: !1950, line: 36, type: !141)
!1955 = !DILocalVariable(name: "buf", arg: 2, scope: !1949, file: !1950, line: 36, type: !40)
!1956 = !DILocalVariable(name: "p", scope: !1949, file: !1950, line: 38, type: !40)
!1957 = !DILocation(line: 36, column: 19, scope: !1949)
!1958 = !DILocation(line: 36, column: 28, scope: !1949)
!1959 = !DILocation(line: 38, column: 17, scope: !1949)
!1960 = !DILocation(line: 38, column: 9, scope: !1949)
!1961 = !DILocation(line: 39, column: 6, scope: !1949)
!1962 = !DILocation(line: 41, column: 7, scope: !1949)
!1963 = !DILocation(line: 0, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1950, line: 50, column: 5)
!1965 = distinct !DILexicalBlock(scope: !1949, file: !1950, line: 41, column: 7)
!1966 = !DILocation(line: 52, column: 24, scope: !1964)
!1967 = !DILocation(line: 52, column: 16, scope: !1964)
!1968 = !DILocation(line: 52, column: 10, scope: !1964)
!1969 = !DILocation(line: 52, column: 14, scope: !1964)
!1970 = !DILocation(line: 53, column: 17, scope: !1964)
!1971 = !DILocation(line: 53, column: 24, scope: !1964)
!1972 = !DILocation(line: 52, column: 9, scope: !1964)
!1973 = distinct !{!1973, !1974, !1975}
!1974 = !DILocation(line: 51, column: 7, scope: !1964)
!1975 = !DILocation(line: 53, column: 28, scope: !1964)
!1976 = !DILocation(line: 56, column: 3, scope: !1949)
!1977 = distinct !DISubprogram(name: "set_program_name", scope: !67, file: !67, line: 39, type: !591, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !1978)
!1978 = !{!1979, !1980, !1981}
!1979 = !DILocalVariable(name: "argv0", arg: 1, scope: !1977, file: !67, line: 39, type: !52)
!1980 = !DILocalVariable(name: "slash", scope: !1977, file: !67, line: 46, type: !52)
!1981 = !DILocalVariable(name: "base", scope: !1977, file: !67, line: 47, type: !52)
!1982 = !DILocation(line: 39, column: 31, scope: !1977)
!1983 = !DILocation(line: 51, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1977, file: !67, line: 51, column: 7)
!1985 = !DILocation(line: 51, column: 7, scope: !1977)
!1986 = !DILocation(line: 55, column: 14, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !67, line: 52, column: 5)
!1988 = !DILocation(line: 54, column: 7, scope: !1987)
!1989 = !DILocation(line: 56, column: 7, scope: !1987)
!1990 = !DILocation(line: 59, column: 11, scope: !1977)
!1991 = !DILocation(line: 46, column: 15, scope: !1977)
!1992 = !DILocation(line: 60, column: 17, scope: !1977)
!1993 = !DILocation(line: 60, column: 33, scope: !1977)
!1994 = !DILocation(line: 60, column: 11, scope: !1977)
!1995 = !DILocation(line: 47, column: 15, scope: !1977)
!1996 = !DILocation(line: 61, column: 12, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1977, file: !67, line: 61, column: 7)
!1998 = !DILocation(line: 61, column: 20, scope: !1997)
!1999 = !DILocation(line: 61, column: 25, scope: !1997)
!2000 = !DILocation(line: 61, column: 42, scope: !1997)
!2001 = !DILocation(line: 61, column: 28, scope: !1997)
!2002 = !DILocation(line: 61, column: 61, scope: !1997)
!2003 = !DILocation(line: 61, column: 7, scope: !1977)
!2004 = !DILocation(line: 64, column: 11, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !67, line: 64, column: 11)
!2006 = distinct !DILexicalBlock(scope: !1997, file: !67, line: 62, column: 5)
!2007 = !DILocation(line: 64, column: 36, scope: !2005)
!2008 = !DILocation(line: 64, column: 11, scope: !2006)
!2009 = !DILocation(line: 66, column: 24, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !67, line: 65, column: 9)
!2011 = !DILocation(line: 70, column: 41, scope: !2010)
!2012 = !DILocation(line: 72, column: 9, scope: !2010)
!2013 = !DILocation(line: 84, column: 16, scope: !1977)
!2014 = !DILocation(line: 90, column: 27, scope: !1977)
!2015 = !DILocation(line: 92, column: 1, scope: !1977)
!2016 = distinct !DISubprogram(name: "clone_quoting_options", scope: !99, file: !99, line: 122, type: !2017, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2020)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2019, !2019}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!2020 = !{!2021, !2022, !2023}
!2021 = !DILocalVariable(name: "o", arg: 1, scope: !2016, file: !99, line: 122, type: !2019)
!2022 = !DILocalVariable(name: "e", scope: !2016, file: !99, line: 124, type: !31)
!2023 = !DILocalVariable(name: "p", scope: !2016, file: !99, line: 125, type: !2019)
!2024 = !DILocation(line: 122, column: 48, scope: !2016)
!2025 = !DILocation(line: 124, column: 11, scope: !2016)
!2026 = !DILocation(line: 124, column: 7, scope: !2016)
!2027 = !DILocation(line: 125, column: 40, scope: !2016)
!2028 = !DILocation(line: 125, column: 31, scope: !2016)
!2029 = !DILocation(line: 125, column: 27, scope: !2016)
!2030 = !DILocation(line: 127, column: 9, scope: !2016)
!2031 = !DILocation(line: 128, column: 3, scope: !2016)
!2032 = distinct !DISubprogram(name: "get_quoting_style", scope: !99, file: !99, line: 133, type: !2033, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2037)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!73, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2037 = !{!2038}
!2038 = !DILocalVariable(name: "o", arg: 1, scope: !2032, file: !99, line: 133, type: !2035)
!2039 = !DILocation(line: 133, column: 50, scope: !2032)
!2040 = !DILocation(line: 135, column: 11, scope: !2032)
!2041 = !DILocation(line: 135, column: 46, scope: !2032)
!2042 = !{!2043, !618, i64 0}
!2043 = !{!"quoting_options", !618, i64 0, !694, i64 4, !618, i64 8, !617, i64 40, !617, i64 48}
!2044 = !DILocation(line: 135, column: 3, scope: !2032)
!2045 = distinct !DISubprogram(name: "set_quoting_style", scope: !99, file: !99, line: 141, type: !2046, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !2019, !73}
!2048 = !{!2049, !2050}
!2049 = !DILocalVariable(name: "o", arg: 1, scope: !2045, file: !99, line: 141, type: !2019)
!2050 = !DILocalVariable(name: "s", arg: 2, scope: !2045, file: !99, line: 141, type: !73)
!2051 = !DILocation(line: 141, column: 44, scope: !2045)
!2052 = !DILocation(line: 141, column: 66, scope: !2045)
!2053 = !DILocation(line: 143, column: 4, scope: !2045)
!2054 = !DILocation(line: 143, column: 39, scope: !2045)
!2055 = !DILocation(line: 143, column: 45, scope: !2045)
!2056 = !DILocation(line: 144, column: 1, scope: !2045)
!2057 = distinct !DISubprogram(name: "set_char_quoting", scope: !99, file: !99, line: 152, type: !2058, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!31, !2019, !41, !31}
!2060 = !{!2061, !2062, !2063, !2064, !2066, !2068, !2069}
!2061 = !DILocalVariable(name: "o", arg: 1, scope: !2057, file: !99, line: 152, type: !2019)
!2062 = !DILocalVariable(name: "c", arg: 2, scope: !2057, file: !99, line: 152, type: !41)
!2063 = !DILocalVariable(name: "i", arg: 3, scope: !2057, file: !99, line: 152, type: !31)
!2064 = !DILocalVariable(name: "uc", scope: !2057, file: !99, line: 154, type: !2065)
!2065 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2066 = !DILocalVariable(name: "p", scope: !2057, file: !99, line: 155, type: !2067)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2068 = !DILocalVariable(name: "shift", scope: !2057, file: !99, line: 157, type: !31)
!2069 = !DILocalVariable(name: "r", scope: !2057, file: !99, line: 158, type: !31)
!2070 = !DILocation(line: 152, column: 43, scope: !2057)
!2071 = !DILocation(line: 152, column: 51, scope: !2057)
!2072 = !DILocation(line: 152, column: 58, scope: !2057)
!2073 = !DILocation(line: 154, column: 17, scope: !2057)
!2074 = !DILocation(line: 156, column: 6, scope: !2057)
!2075 = !DILocation(line: 156, column: 62, scope: !2057)
!2076 = !DILocation(line: 156, column: 57, scope: !2057)
!2077 = !DILocation(line: 155, column: 17, scope: !2057)
!2078 = !DILocation(line: 157, column: 15, scope: !2057)
!2079 = !DILocation(line: 157, column: 7, scope: !2057)
!2080 = !DILocation(line: 158, column: 12, scope: !2057)
!2081 = !DILocation(line: 158, column: 15, scope: !2057)
!2082 = !DILocation(line: 158, column: 25, scope: !2057)
!2083 = !DILocation(line: 158, column: 7, scope: !2057)
!2084 = !DILocation(line: 159, column: 13, scope: !2057)
!2085 = !DILocation(line: 159, column: 18, scope: !2057)
!2086 = !DILocation(line: 159, column: 23, scope: !2057)
!2087 = !DILocation(line: 159, column: 6, scope: !2057)
!2088 = !DILocation(line: 160, column: 3, scope: !2057)
!2089 = distinct !DISubprogram(name: "set_quoting_flags", scope: !99, file: !99, line: 168, type: !2090, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!31, !2019, !31}
!2092 = !{!2093, !2094, !2095}
!2093 = !DILocalVariable(name: "o", arg: 1, scope: !2089, file: !99, line: 168, type: !2019)
!2094 = !DILocalVariable(name: "i", arg: 2, scope: !2089, file: !99, line: 168, type: !31)
!2095 = !DILocalVariable(name: "r", scope: !2089, file: !99, line: 170, type: !31)
!2096 = !DILocation(line: 168, column: 44, scope: !2089)
!2097 = !DILocation(line: 168, column: 51, scope: !2089)
!2098 = !DILocation(line: 171, column: 8, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2089, file: !99, line: 171, column: 7)
!2100 = !DILocation(line: 171, column: 7, scope: !2089)
!2101 = !DILocation(line: 173, column: 10, scope: !2089)
!2102 = !{!2043, !694, i64 4}
!2103 = !DILocation(line: 170, column: 7, scope: !2089)
!2104 = !DILocation(line: 174, column: 12, scope: !2089)
!2105 = !DILocation(line: 175, column: 3, scope: !2089)
!2106 = distinct !DISubprogram(name: "set_custom_quoting", scope: !99, file: !99, line: 179, type: !2107, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !2019, !52, !52}
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "o", arg: 1, scope: !2106, file: !99, line: 179, type: !2019)
!2111 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2106, file: !99, line: 180, type: !52)
!2112 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2106, file: !99, line: 180, type: !52)
!2113 = !DILocation(line: 179, column: 45, scope: !2106)
!2114 = !DILocation(line: 180, column: 33, scope: !2106)
!2115 = !DILocation(line: 180, column: 57, scope: !2106)
!2116 = !DILocation(line: 182, column: 8, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2106, file: !99, line: 182, column: 7)
!2118 = !DILocation(line: 182, column: 7, scope: !2106)
!2119 = !DILocation(line: 184, column: 6, scope: !2106)
!2120 = !DILocation(line: 184, column: 12, scope: !2106)
!2121 = !DILocation(line: 185, column: 8, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2106, file: !99, line: 185, column: 7)
!2123 = !DILocation(line: 185, column: 23, scope: !2122)
!2124 = !DILocation(line: 185, column: 19, scope: !2122)
!2125 = !DILocation(line: 186, column: 5, scope: !2122)
!2126 = !DILocation(line: 187, column: 6, scope: !2106)
!2127 = !DILocation(line: 187, column: 17, scope: !2106)
!2128 = !{!2043, !617, i64 40}
!2129 = !DILocation(line: 188, column: 6, scope: !2106)
!2130 = !DILocation(line: 188, column: 18, scope: !2106)
!2131 = !{!2043, !617, i64 48}
!2132 = !DILocation(line: 189, column: 1, scope: !2106)
!2133 = distinct !DISubprogram(name: "quotearg_buffer", scope: !99, file: !99, line: 784, type: !2134, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!93, !40, !93, !52, !93, !2035}
!2136 = !{!2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!2137 = !DILocalVariable(name: "buffer", arg: 1, scope: !2133, file: !99, line: 784, type: !40)
!2138 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2133, file: !99, line: 784, type: !93)
!2139 = !DILocalVariable(name: "arg", arg: 3, scope: !2133, file: !99, line: 785, type: !52)
!2140 = !DILocalVariable(name: "argsize", arg: 4, scope: !2133, file: !99, line: 785, type: !93)
!2141 = !DILocalVariable(name: "o", arg: 5, scope: !2133, file: !99, line: 786, type: !2035)
!2142 = !DILocalVariable(name: "p", scope: !2133, file: !99, line: 788, type: !2035)
!2143 = !DILocalVariable(name: "e", scope: !2133, file: !99, line: 789, type: !31)
!2144 = !DILocalVariable(name: "r", scope: !2133, file: !99, line: 790, type: !93)
!2145 = !DILocation(line: 784, column: 24, scope: !2133)
!2146 = !DILocation(line: 784, column: 39, scope: !2133)
!2147 = !DILocation(line: 785, column: 30, scope: !2133)
!2148 = !DILocation(line: 785, column: 42, scope: !2133)
!2149 = !DILocation(line: 786, column: 48, scope: !2133)
!2150 = !DILocation(line: 788, column: 37, scope: !2133)
!2151 = !DILocation(line: 788, column: 33, scope: !2133)
!2152 = !DILocation(line: 789, column: 11, scope: !2133)
!2153 = !DILocation(line: 789, column: 7, scope: !2133)
!2154 = !DILocation(line: 791, column: 43, scope: !2133)
!2155 = !DILocation(line: 791, column: 53, scope: !2133)
!2156 = !DILocation(line: 791, column: 60, scope: !2133)
!2157 = !DILocation(line: 792, column: 43, scope: !2133)
!2158 = !DILocation(line: 792, column: 58, scope: !2133)
!2159 = !DILocation(line: 790, column: 14, scope: !2133)
!2160 = !DILocation(line: 790, column: 10, scope: !2133)
!2161 = !DILocation(line: 793, column: 9, scope: !2133)
!2162 = !DILocation(line: 794, column: 3, scope: !2133)
!2163 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !99, file: !99, line: 256, type: !2164, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2168)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!93, !40, !93, !52, !93, !73, !31, !2166, !52, !52}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2193, !2194, !2195, !2196, !2197, !2200, !2201, !2219, !2222, !2223, !2230}
!2169 = !DILocalVariable(name: "buffer", arg: 1, scope: !2163, file: !99, line: 256, type: !40)
!2170 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2163, file: !99, line: 256, type: !93)
!2171 = !DILocalVariable(name: "arg", arg: 3, scope: !2163, file: !99, line: 257, type: !52)
!2172 = !DILocalVariable(name: "argsize", arg: 4, scope: !2163, file: !99, line: 257, type: !93)
!2173 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2163, file: !99, line: 258, type: !73)
!2174 = !DILocalVariable(name: "flags", arg: 6, scope: !2163, file: !99, line: 258, type: !31)
!2175 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2163, file: !99, line: 259, type: !2166)
!2176 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2163, file: !99, line: 260, type: !52)
!2177 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2163, file: !99, line: 261, type: !52)
!2178 = !DILocalVariable(name: "i", scope: !2163, file: !99, line: 263, type: !93)
!2179 = !DILocalVariable(name: "len", scope: !2163, file: !99, line: 264, type: !93)
!2180 = !DILocalVariable(name: "orig_buffersize", scope: !2163, file: !99, line: 265, type: !93)
!2181 = !DILocalVariable(name: "quote_string", scope: !2163, file: !99, line: 266, type: !52)
!2182 = !DILocalVariable(name: "quote_string_len", scope: !2163, file: !99, line: 267, type: !93)
!2183 = !DILocalVariable(name: "backslash_escapes", scope: !2163, file: !99, line: 268, type: !51)
!2184 = !DILocalVariable(name: "unibyte_locale", scope: !2163, file: !99, line: 269, type: !51)
!2185 = !DILocalVariable(name: "elide_outer_quotes", scope: !2163, file: !99, line: 270, type: !51)
!2186 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2163, file: !99, line: 271, type: !51)
!2187 = !DILocalVariable(name: "encountered_single_quote", scope: !2163, file: !99, line: 272, type: !51)
!2188 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2163, file: !99, line: 273, type: !51)
!2189 = !DILocalVariable(name: "c", scope: !2190, file: !99, line: 402, type: !2065)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !99, line: 401, column: 5)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !99, line: 400, column: 3)
!2192 = distinct !DILexicalBlock(scope: !2163, file: !99, line: 400, column: 3)
!2193 = !DILocalVariable(name: "esc", scope: !2190, file: !99, line: 403, type: !2065)
!2194 = !DILocalVariable(name: "is_right_quote", scope: !2190, file: !99, line: 404, type: !51)
!2195 = !DILocalVariable(name: "escaping", scope: !2190, file: !99, line: 405, type: !51)
!2196 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2190, file: !99, line: 406, type: !51)
!2197 = !DILocalVariable(name: "m", scope: !2198, file: !99, line: 610, type: !93)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 608, column: 11)
!2199 = distinct !DILexicalBlock(scope: !2190, file: !99, line: 426, column: 9)
!2200 = !DILocalVariable(name: "printable", scope: !2198, file: !99, line: 612, type: !51)
!2201 = !DILocalVariable(name: "mbstate", scope: !2202, file: !99, line: 621, type: !2204)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !99, line: 620, column: 15)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !99, line: 614, column: 17)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2205, line: 6, baseType: !2206)
!2205 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2207, line: 21, baseType: !2208)
!2207 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2207, line: 13, size: 64, elements: !2209)
!2209 = !{!2210, !2211}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2208, file: !2207, line: 15, baseType: !31, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2208, file: !2207, line: 20, baseType: !2212, size: 32, offset: 32)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2208, file: !2207, line: 16, size: 32, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2212, file: !2207, line: 18, baseType: !6, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2212, file: !2207, line: 19, baseType: !2216, size: 32)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !2217)
!2217 = !{!2218}
!2218 = !DISubrange(count: 4)
!2219 = !DILocalVariable(name: "w", scope: !2220, file: !99, line: 631, type: !2221)
!2220 = distinct !DILexicalBlock(scope: !2202, file: !99, line: 630, column: 19)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 90, baseType: !31)
!2222 = !DILocalVariable(name: "bytes", scope: !2220, file: !99, line: 632, type: !93)
!2223 = !DILocalVariable(name: "j", scope: !2224, file: !99, line: 657, type: !93)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !99, line: 656, column: 27)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !99, line: 654, column: 29)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !99, line: 649, column: 23)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !99, line: 641, column: 30)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !99, line: 636, column: 30)
!2229 = distinct !DILexicalBlock(scope: !2220, file: !99, line: 634, column: 25)
!2230 = !DILocalVariable(name: "ilim", scope: !2231, file: !99, line: 684, type: !93)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !99, line: 681, column: 15)
!2232 = distinct !DILexicalBlock(scope: !2198, file: !99, line: 680, column: 17)
!2233 = !DILocation(line: 256, column: 33, scope: !2163)
!2234 = !DILocation(line: 256, column: 48, scope: !2163)
!2235 = !DILocation(line: 257, column: 39, scope: !2163)
!2236 = !DILocation(line: 257, column: 51, scope: !2163)
!2237 = !DILocation(line: 258, column: 46, scope: !2163)
!2238 = !DILocation(line: 258, column: 65, scope: !2163)
!2239 = !DILocation(line: 259, column: 47, scope: !2163)
!2240 = !DILocation(line: 260, column: 39, scope: !2163)
!2241 = !DILocation(line: 261, column: 39, scope: !2163)
!2242 = !DILocation(line: 264, column: 10, scope: !2163)
!2243 = !DILocation(line: 265, column: 10, scope: !2163)
!2244 = !DILocation(line: 266, column: 15, scope: !2163)
!2245 = !DILocation(line: 267, column: 10, scope: !2163)
!2246 = !DILocation(line: 268, column: 8, scope: !2163)
!2247 = !DILocation(line: 269, column: 25, scope: !2163)
!2248 = !DILocation(line: 269, column: 36, scope: !2163)
!2249 = !DILocation(line: 270, column: 8, scope: !2163)
!2250 = !DILocation(line: 271, column: 8, scope: !2163)
!2251 = !DILocation(line: 272, column: 8, scope: !2163)
!2252 = !DILocation(line: 273, column: 8, scope: !2163)
!2253 = !DILocation(line: 273, column: 3, scope: !2163)
!2254 = !DILocation(line: 0, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2163, file: !99, line: 317, column: 5)
!2256 = !DILocation(line: 316, column: 3, scope: !2163)
!2257 = !DILocation(line: 323, column: 11, scope: !2255)
!2258 = !DILocation(line: 323, column: 12, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !99, line: 323, column: 11)
!2260 = !DILocation(line: 324, column: 9, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !99, line: 324, column: 9)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !99, line: 324, column: 9)
!2263 = !DILocation(line: 324, column: 9, scope: !2262)
!2264 = !DILocation(line: 362, column: 26, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !99, line: 340, column: 11)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !99, line: 339, column: 13)
!2267 = distinct !DILexicalBlock(scope: !2255, file: !99, line: 338, column: 7)
!2268 = !DILocation(line: 363, column: 27, scope: !2265)
!2269 = !DILocation(line: 364, column: 11, scope: !2265)
!2270 = !DILocation(line: 365, column: 14, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !99, line: 365, column: 13)
!2272 = !DILocation(line: 365, column: 13, scope: !2267)
!2273 = !DILocation(line: 366, column: 43, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !99, line: 366, column: 11)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !99, line: 366, column: 11)
!2276 = !DILocation(line: 366, column: 11, scope: !2275)
!2277 = !DILocation(line: 367, column: 13, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !99, line: 367, column: 13)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !99, line: 367, column: 13)
!2280 = !DILocation(line: 367, column: 13, scope: !2279)
!2281 = !DILocation(line: 366, column: 70, scope: !2274)
!2282 = distinct !{!2282, !2276, !2283}
!2283 = !DILocation(line: 367, column: 13, scope: !2275)
!2284 = !DILocation(line: 370, column: 28, scope: !2267)
!2285 = !DILocation(line: 372, column: 7, scope: !2255)
!2286 = !DILocation(line: 376, column: 7, scope: !2255)
!2287 = !DILocation(line: 379, column: 7, scope: !2255)
!2288 = !DILocation(line: 381, column: 12, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2255, file: !99, line: 381, column: 11)
!2290 = !DILocation(line: 381, column: 11, scope: !2255)
!2291 = !DILocation(line: 0, scope: !2289)
!2292 = !DILocation(line: 386, column: 12, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2255, file: !99, line: 386, column: 11)
!2294 = !DILocation(line: 386, column: 11, scope: !2255)
!2295 = !DILocation(line: 387, column: 9, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !99, line: 387, column: 9)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !99, line: 387, column: 9)
!2298 = !DILocation(line: 387, column: 9, scope: !2297)
!2299 = !DILocation(line: 394, column: 7, scope: !2255)
!2300 = !DILocation(line: 397, column: 7, scope: !2255)
!2301 = !DILocation(line: 0, scope: !2163)
!2302 = !DILocation(line: 263, column: 10, scope: !2163)
!2303 = !DILocation(line: 400, column: 8, scope: !2192)
!2304 = !DILocation(line: 0, scope: !2191)
!2305 = !DILocation(line: 400, column: 27, scope: !2191)
!2306 = !DILocation(line: 400, column: 19, scope: !2191)
!2307 = !DILocation(line: 400, column: 41, scope: !2191)
!2308 = !DILocation(line: 400, column: 48, scope: !2191)
!2309 = !DILocation(line: 400, column: 3, scope: !2192)
!2310 = !DILocation(line: 400, column: 60, scope: !2191)
!2311 = !DILocation(line: 404, column: 12, scope: !2190)
!2312 = !DILocation(line: 405, column: 12, scope: !2190)
!2313 = !DILocation(line: 406, column: 12, scope: !2190)
!2314 = !DILocation(line: 409, column: 11, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2190, file: !99, line: 408, column: 11)
!2316 = !DILocation(line: 411, column: 17, scope: !2315)
!2317 = !DILocation(line: 412, column: 39, scope: !2315)
!2318 = !DILocation(line: 416, column: 32, scope: !2315)
!2319 = !DILocation(line: 412, column: 19, scope: !2315)
!2320 = !DILocation(line: 412, column: 15, scope: !2315)
!2321 = !DILocation(line: 417, column: 11, scope: !2315)
!2322 = !DILocation(line: 417, column: 26, scope: !2315)
!2323 = !DILocation(line: 417, column: 14, scope: !2315)
!2324 = !DILocation(line: 417, column: 63, scope: !2315)
!2325 = !DILocation(line: 408, column: 11, scope: !2190)
!2326 = !DILocation(line: 0, scope: !2190)
!2327 = !DILocation(line: 424, column: 11, scope: !2190)
!2328 = !DILocation(line: 402, column: 21, scope: !2190)
!2329 = !DILocation(line: 425, column: 7, scope: !2190)
!2330 = !DILocation(line: 428, column: 15, scope: !2199)
!2331 = !DILocation(line: 430, column: 15, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !99, line: 430, column: 15)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !99, line: 429, column: 13)
!2334 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 428, column: 15)
!2335 = !DILocation(line: 430, column: 15, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !99, line: 430, column: 15)
!2337 = !DILocation(line: 430, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !99, line: 430, column: 15)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !99, line: 430, column: 15)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !99, line: 430, column: 15)
!2341 = !DILocation(line: 430, column: 15, scope: !2339)
!2342 = !DILocation(line: 430, column: 15, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !99, line: 430, column: 15)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !99, line: 430, column: 15)
!2345 = !DILocation(line: 430, column: 15, scope: !2344)
!2346 = !DILocation(line: 430, column: 15, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !99, line: 430, column: 15)
!2348 = distinct !DILexicalBlock(scope: !2340, file: !99, line: 430, column: 15)
!2349 = !DILocation(line: 430, column: 15, scope: !2348)
!2350 = !DILocation(line: 430, column: 15, scope: !2340)
!2351 = !DILocation(line: 430, column: 15, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !99, line: 430, column: 15)
!2353 = distinct !DILexicalBlock(scope: !2332, file: !99, line: 430, column: 15)
!2354 = !DILocation(line: 430, column: 15, scope: !2353)
!2355 = !DILocation(line: 438, column: 19, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2333, file: !99, line: 437, column: 19)
!2357 = !DILocation(line: 438, column: 24, scope: !2356)
!2358 = !DILocation(line: 438, column: 28, scope: !2356)
!2359 = !DILocation(line: 438, column: 38, scope: !2356)
!2360 = !DILocation(line: 438, column: 48, scope: !2356)
!2361 = !DILocation(line: 438, column: 59, scope: !2356)
!2362 = !DILocation(line: 440, column: 19, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !99, line: 440, column: 19)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !99, line: 440, column: 19)
!2365 = distinct !DILexicalBlock(scope: !2356, file: !99, line: 439, column: 17)
!2366 = !DILocation(line: 440, column: 19, scope: !2364)
!2367 = !DILocation(line: 441, column: 19, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !99, line: 441, column: 19)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !99, line: 441, column: 19)
!2370 = !DILocation(line: 441, column: 19, scope: !2369)
!2371 = !DILocation(line: 442, column: 17, scope: !2365)
!2372 = !DILocation(line: 449, column: 20, scope: !2334)
!2373 = !DILocation(line: 454, column: 11, scope: !2199)
!2374 = !DILocation(line: 457, column: 19, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 455, column: 13)
!2376 = !DILocation(line: 463, column: 19, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2375, file: !99, line: 462, column: 19)
!2378 = !DILocation(line: 463, column: 24, scope: !2377)
!2379 = !DILocation(line: 463, column: 28, scope: !2377)
!2380 = !DILocation(line: 463, column: 38, scope: !2377)
!2381 = !DILocation(line: 463, column: 47, scope: !2377)
!2382 = !DILocation(line: 463, column: 41, scope: !2377)
!2383 = !DILocation(line: 463, column: 52, scope: !2377)
!2384 = !DILocation(line: 462, column: 19, scope: !2375)
!2385 = !DILocation(line: 464, column: 25, scope: !2377)
!2386 = !DILocation(line: 464, column: 17, scope: !2377)
!2387 = !DILocation(line: 471, column: 25, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2377, file: !99, line: 465, column: 19)
!2389 = !DILocation(line: 475, column: 21, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !99, line: 475, column: 21)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !99, line: 475, column: 21)
!2392 = !DILocation(line: 475, column: 21, scope: !2391)
!2393 = !DILocation(line: 476, column: 21, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !99, line: 476, column: 21)
!2395 = distinct !DILexicalBlock(scope: !2388, file: !99, line: 476, column: 21)
!2396 = !DILocation(line: 476, column: 21, scope: !2395)
!2397 = !DILocation(line: 477, column: 21, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !99, line: 477, column: 21)
!2399 = distinct !DILexicalBlock(scope: !2388, file: !99, line: 477, column: 21)
!2400 = !DILocation(line: 477, column: 21, scope: !2399)
!2401 = !DILocation(line: 478, column: 21, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !99, line: 478, column: 21)
!2403 = distinct !DILexicalBlock(scope: !2388, file: !99, line: 478, column: 21)
!2404 = !DILocation(line: 478, column: 21, scope: !2403)
!2405 = !DILocation(line: 479, column: 21, scope: !2388)
!2406 = !DILocation(line: 403, column: 21, scope: !2190)
!2407 = !DILocation(line: 492, column: 31, scope: !2199)
!2408 = !DILocation(line: 493, column: 31, scope: !2199)
!2409 = !DILocation(line: 495, column: 31, scope: !2199)
!2410 = !DILocation(line: 496, column: 31, scope: !2199)
!2411 = !DILocation(line: 497, column: 31, scope: !2199)
!2412 = !DILocation(line: 500, column: 15, scope: !2199)
!2413 = !DILocation(line: 502, column: 19, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !99, line: 501, column: 13)
!2415 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 500, column: 15)
!2416 = !DILocation(line: 509, column: 33, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 509, column: 15)
!2418 = !DILocation(line: 0, scope: !2199)
!2419 = !DILocation(line: 514, column: 15, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 513, column: 15)
!2421 = !DILocation(line: 518, column: 15, scope: !2199)
!2422 = !DILocation(line: 526, column: 26, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 526, column: 15)
!2424 = !DILocation(line: 526, column: 15, scope: !2199)
!2425 = !DILocation(line: 526, column: 40, scope: !2423)
!2426 = !DILocation(line: 526, column: 47, scope: !2423)
!2427 = !DILocation(line: 530, column: 17, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 530, column: 15)
!2429 = !DILocation(line: 526, column: 18, scope: !2423)
!2430 = !DILocation(line: 526, column: 65, scope: !2423)
!2431 = !DILocation(line: 530, column: 15, scope: !2199)
!2432 = !DILocation(line: 535, column: 11, scope: !2199)
!2433 = !DILocation(line: 549, column: 15, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 548, column: 15)
!2435 = !DILocation(line: 556, column: 15, scope: !2199)
!2436 = !DILocation(line: 558, column: 19, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !99, line: 557, column: 13)
!2438 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 556, column: 15)
!2439 = !DILocation(line: 561, column: 19, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !99, line: 561, column: 19)
!2441 = !DILocation(line: 561, column: 35, scope: !2440)
!2442 = !DILocation(line: 561, column: 30, scope: !2440)
!2443 = !DILocation(line: 570, column: 15, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !99, line: 570, column: 15)
!2445 = distinct !DILexicalBlock(scope: !2437, file: !99, line: 570, column: 15)
!2446 = !DILocation(line: 570, column: 15, scope: !2445)
!2447 = !DILocation(line: 571, column: 15, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !99, line: 571, column: 15)
!2449 = distinct !DILexicalBlock(scope: !2437, file: !99, line: 571, column: 15)
!2450 = !DILocation(line: 571, column: 15, scope: !2449)
!2451 = !DILocation(line: 572, column: 15, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !99, line: 572, column: 15)
!2453 = distinct !DILexicalBlock(scope: !2437, file: !99, line: 572, column: 15)
!2454 = !DILocation(line: 572, column: 15, scope: !2453)
!2455 = !DILocation(line: 574, column: 13, scope: !2437)
!2456 = !DILocation(line: 614, column: 17, scope: !2198)
!2457 = !DILocation(line: 610, column: 20, scope: !2198)
!2458 = !DILocation(line: 617, column: 29, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2203, file: !99, line: 615, column: 15)
!2460 = !DILocation(line: 617, column: 27, scope: !2459)
!2461 = !DILocation(line: 612, column: 18, scope: !2198)
!2462 = !DILocation(line: 618, column: 15, scope: !2459)
!2463 = !DILocation(line: 621, column: 17, scope: !2202)
!2464 = !DILocation(line: 622, column: 17, scope: !2202)
!2465 = !DILocation(line: 626, column: 29, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2202, file: !99, line: 626, column: 21)
!2467 = !DILocation(line: 626, column: 21, scope: !2202)
!2468 = !DILocation(line: 627, column: 29, scope: !2466)
!2469 = !DILocation(line: 627, column: 19, scope: !2466)
!2470 = !DILocation(line: 0, scope: !2315)
!2471 = !DILocation(line: 629, column: 17, scope: !2202)
!2472 = !DILocation(line: 624, column: 19, scope: !2202)
!2473 = !DILocation(line: 625, column: 27, scope: !2202)
!2474 = !DILocation(line: 631, column: 21, scope: !2220)
!2475 = !DILocation(line: 632, column: 56, scope: !2220)
!2476 = !DILocation(line: 632, column: 50, scope: !2220)
!2477 = !DILocation(line: 633, column: 53, scope: !2220)
!2478 = !DILocation(line: 621, column: 27, scope: !2202)
!2479 = !DILocation(line: 631, column: 29, scope: !2220)
!2480 = !DILocation(line: 632, column: 36, scope: !2220)
!2481 = !DILocation(line: 632, column: 28, scope: !2220)
!2482 = !DILocation(line: 634, column: 25, scope: !2220)
!2483 = !DILocation(line: 644, column: 38, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2227, file: !99, line: 642, column: 23)
!2485 = !DILocation(line: 644, column: 48, scope: !2484)
!2486 = !DILocation(line: 644, column: 51, scope: !2484)
!2487 = !DILocation(line: 644, column: 25, scope: !2484)
!2488 = !DILocation(line: 645, column: 28, scope: !2484)
!2489 = !DILocation(line: 644, column: 34, scope: !2484)
!2490 = distinct !{!2490, !2487, !2488}
!2491 = !DILocation(line: 658, column: 43, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !99, line: 658, column: 29)
!2493 = distinct !DILexicalBlock(scope: !2224, file: !99, line: 658, column: 29)
!2494 = !DILocation(line: 655, column: 29, scope: !2225)
!2495 = !DILocation(line: 657, column: 36, scope: !2224)
!2496 = !DILocation(line: 659, column: 49, scope: !2492)
!2497 = !DILocation(line: 659, column: 39, scope: !2492)
!2498 = !DILocation(line: 659, column: 31, scope: !2492)
!2499 = !DILocation(line: 658, column: 53, scope: !2492)
!2500 = !DILocation(line: 658, column: 29, scope: !2493)
!2501 = distinct !{!2501, !2500, !2502}
!2502 = !DILocation(line: 667, column: 33, scope: !2493)
!2503 = !DILocation(line: 674, column: 19, scope: !2202)
!2504 = !DILocation(line: 670, column: 41, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2226, file: !99, line: 670, column: 29)
!2506 = !DILocation(line: 670, column: 31, scope: !2505)
!2507 = !DILocation(line: 670, column: 29, scope: !2226)
!2508 = !DILocation(line: 672, column: 27, scope: !2226)
!2509 = !DILocation(line: 675, column: 26, scope: !2202)
!2510 = !DILocation(line: 675, column: 24, scope: !2202)
!2511 = !DILocation(line: 674, column: 19, scope: !2220)
!2512 = distinct !{!2512, !2471, !2513}
!2513 = !DILocation(line: 675, column: 44, scope: !2202)
!2514 = !DILocation(line: 676, column: 15, scope: !2203)
!2515 = !DILocation(line: 0, scope: !2466)
!2516 = !DILocation(line: 0, scope: !2202)
!2517 = !DILocation(line: 678, column: 40, scope: !2198)
!2518 = !DILocation(line: 680, column: 19, scope: !2232)
!2519 = !DILocation(line: 680, column: 45, scope: !2232)
!2520 = !DILocation(line: 680, column: 23, scope: !2232)
!2521 = !DILocation(line: 684, column: 33, scope: !2231)
!2522 = !DILocation(line: 684, column: 24, scope: !2231)
!2523 = !DILocation(line: 686, column: 17, scope: !2231)
!2524 = !DILocation(line: 0, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !99, line: 687, column: 19)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !99, line: 686, column: 17)
!2527 = distinct !DILexicalBlock(scope: !2231, file: !99, line: 686, column: 17)
!2528 = !DILocation(line: 0, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !99, line: 703, column: 21)
!2530 = !DILocation(line: 0, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !99, line: 696, column: 23)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !99, line: 695, column: 30)
!2533 = distinct !DILexicalBlock(scope: !2525, file: !99, line: 688, column: 25)
!2534 = !DILocation(line: 688, column: 43, scope: !2533)
!2535 = !DILocation(line: 690, column: 25, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !99, line: 690, column: 25)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !99, line: 689, column: 23)
!2538 = !DILocation(line: 690, column: 25, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !99, line: 690, column: 25)
!2540 = !DILocation(line: 690, column: 25, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !99, line: 690, column: 25)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !99, line: 690, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !99, line: 690, column: 25)
!2544 = !DILocation(line: 690, column: 25, scope: !2542)
!2545 = !DILocation(line: 690, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !99, line: 690, column: 25)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !99, line: 690, column: 25)
!2548 = !DILocation(line: 690, column: 25, scope: !2547)
!2549 = !DILocation(line: 690, column: 25, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !99, line: 690, column: 25)
!2551 = distinct !DILexicalBlock(scope: !2543, file: !99, line: 690, column: 25)
!2552 = !DILocation(line: 690, column: 25, scope: !2551)
!2553 = !DILocation(line: 690, column: 25, scope: !2543)
!2554 = !DILocation(line: 690, column: 25, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !99, line: 690, column: 25)
!2556 = distinct !DILexicalBlock(scope: !2536, file: !99, line: 690, column: 25)
!2557 = !DILocation(line: 690, column: 25, scope: !2556)
!2558 = !DILocation(line: 691, column: 25, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !99, line: 691, column: 25)
!2560 = distinct !DILexicalBlock(scope: !2537, file: !99, line: 691, column: 25)
!2561 = !DILocation(line: 691, column: 25, scope: !2560)
!2562 = !DILocation(line: 692, column: 25, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !99, line: 692, column: 25)
!2564 = distinct !DILexicalBlock(scope: !2537, file: !99, line: 692, column: 25)
!2565 = !DILocation(line: 692, column: 25, scope: !2564)
!2566 = !DILocation(line: 693, column: 38, scope: !2537)
!2567 = !DILocation(line: 693, column: 33, scope: !2537)
!2568 = !DILocation(line: 694, column: 23, scope: !2537)
!2569 = !DILocation(line: 695, column: 30, scope: !2532)
!2570 = !DILocation(line: 695, column: 30, scope: !2533)
!2571 = !DILocation(line: 697, column: 25, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !99, line: 697, column: 25)
!2573 = distinct !DILexicalBlock(scope: !2531, file: !99, line: 697, column: 25)
!2574 = !DILocation(line: 697, column: 25, scope: !2573)
!2575 = !DILocation(line: 699, column: 23, scope: !2531)
!2576 = !DILocation(line: 0, scope: !2564)
!2577 = !DILocation(line: 0, scope: !2537)
!2578 = !DILocation(line: 0, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2315, file: !99, line: 418, column: 9)
!2580 = !DILocation(line: 0, scope: !2536)
!2581 = !DILocation(line: 700, column: 35, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2525, file: !99, line: 700, column: 25)
!2583 = !DILocation(line: 700, column: 30, scope: !2582)
!2584 = !DILocation(line: 700, column: 25, scope: !2525)
!2585 = !DILocation(line: 702, column: 21, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !99, line: 702, column: 21)
!2587 = distinct !DILexicalBlock(scope: !2525, file: !99, line: 702, column: 21)
!2588 = !DILocation(line: 702, column: 21, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !99, line: 702, column: 21)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !99, line: 702, column: 21)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !99, line: 702, column: 21)
!2592 = !DILocation(line: 702, column: 21, scope: !2590)
!2593 = !DILocation(line: 702, column: 21, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !99, line: 702, column: 21)
!2595 = distinct !DILexicalBlock(scope: !2591, file: !99, line: 702, column: 21)
!2596 = !DILocation(line: 702, column: 21, scope: !2595)
!2597 = !DILocation(line: 702, column: 21, scope: !2591)
!2598 = !DILocation(line: 0, scope: !2573)
!2599 = !DILocation(line: 703, column: 21, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2529, file: !99, line: 703, column: 21)
!2601 = !DILocation(line: 703, column: 21, scope: !2529)
!2602 = !DILocation(line: 704, column: 25, scope: !2525)
!2603 = !DILocation(line: 686, column: 17, scope: !2526)
!2604 = distinct !{!2604, !2605, !2606}
!2605 = !DILocation(line: 686, column: 17, scope: !2527)
!2606 = !DILocation(line: 705, column: 19, scope: !2527)
!2607 = !DILocation(line: 0, scope: !2192)
!2608 = !DILocation(line: 416, column: 30, scope: !2315)
!2609 = !DILocation(line: 712, column: 34, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2190, file: !99, line: 712, column: 11)
!2611 = !DILocation(line: 714, column: 14, scope: !2610)
!2612 = !DILocation(line: 715, column: 14, scope: !2610)
!2613 = !DILocation(line: 715, column: 35, scope: !2610)
!2614 = !DILocation(line: 715, column: 17, scope: !2610)
!2615 = !DILocation(line: 715, column: 47, scope: !2610)
!2616 = !DILocation(line: 715, column: 65, scope: !2610)
!2617 = !DILocation(line: 716, column: 15, scope: !2610)
!2618 = !DILocation(line: 716, column: 11, scope: !2610)
!2619 = !DILocation(line: 712, column: 11, scope: !2190)
!2620 = !DILocation(line: 400, column: 10, scope: !2192)
!2621 = !DILocation(line: 0, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !99, line: 519, column: 13)
!2623 = distinct !DILexicalBlock(scope: !2199, file: !99, line: 518, column: 15)
!2624 = !DILocation(line: 720, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2190, file: !99, line: 720, column: 7)
!2626 = !DILocation(line: 720, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2625, file: !99, line: 720, column: 7)
!2628 = !DILocation(line: 720, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !99, line: 720, column: 7)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !99, line: 720, column: 7)
!2631 = distinct !DILexicalBlock(scope: !2627, file: !99, line: 720, column: 7)
!2632 = !DILocation(line: 720, column: 7, scope: !2630)
!2633 = !DILocation(line: 720, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !99, line: 720, column: 7)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !99, line: 720, column: 7)
!2636 = !DILocation(line: 720, column: 7, scope: !2635)
!2637 = !DILocation(line: 720, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !99, line: 720, column: 7)
!2639 = distinct !DILexicalBlock(scope: !2631, file: !99, line: 720, column: 7)
!2640 = !DILocation(line: 720, column: 7, scope: !2639)
!2641 = !DILocation(line: 720, column: 7, scope: !2631)
!2642 = !DILocation(line: 720, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !99, line: 720, column: 7)
!2644 = distinct !DILexicalBlock(scope: !2625, file: !99, line: 720, column: 7)
!2645 = !DILocation(line: 720, column: 7, scope: !2644)
!2646 = !DILocation(line: 723, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !99, line: 723, column: 7)
!2648 = distinct !DILexicalBlock(scope: !2190, file: !99, line: 723, column: 7)
!2649 = !DILocation(line: 424, column: 9, scope: !2190)
!2650 = !DILocation(line: 723, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !99, line: 723, column: 7)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !99, line: 723, column: 7)
!2653 = distinct !DILexicalBlock(scope: !2647, file: !99, line: 723, column: 7)
!2654 = !DILocation(line: 723, column: 7, scope: !2652)
!2655 = !DILocation(line: 723, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !99, line: 723, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2653, file: !99, line: 723, column: 7)
!2658 = !DILocation(line: 723, column: 7, scope: !2657)
!2659 = !DILocation(line: 723, column: 7, scope: !2653)
!2660 = !DILocation(line: 724, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !99, line: 724, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2190, file: !99, line: 724, column: 7)
!2663 = !DILocation(line: 724, column: 7, scope: !2662)
!2664 = !DILocation(line: 726, column: 13, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2190, file: !99, line: 726, column: 11)
!2666 = !DILocation(line: 726, column: 11, scope: !2190)
!2667 = !DILocation(line: 728, column: 5, scope: !2191)
!2668 = !DILocation(line: 400, column: 75, scope: !2191)
!2669 = !DILocation(line: 400, column: 3, scope: !2191)
!2670 = distinct !{!2670, !2309, !2671}
!2671 = !DILocation(line: 728, column: 5, scope: !2192)
!2672 = !DILocation(line: 730, column: 11, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2163, file: !99, line: 730, column: 7)
!2674 = !DILocation(line: 730, column: 16, scope: !2673)
!2675 = !DILocation(line: 738, column: 51, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2163, file: !99, line: 738, column: 7)
!2677 = !DILocation(line: 739, column: 10, scope: !2676)
!2678 = !DILocation(line: 741, column: 11, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !99, line: 741, column: 11)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !99, line: 740, column: 5)
!2681 = !DILocation(line: 741, column: 11, scope: !2680)
!2682 = !DILocation(line: 742, column: 16, scope: !2679)
!2683 = !DILocation(line: 742, column: 9, scope: !2679)
!2684 = !DILocation(line: 746, column: 18, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2679, file: !99, line: 746, column: 16)
!2686 = !DILocation(line: 746, column: 32, scope: !2685)
!2687 = !DILocation(line: 746, column: 29, scope: !2685)
!2688 = !DILocation(line: 755, column: 7, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2163, file: !99, line: 755, column: 7)
!2690 = !DILocation(line: 755, column: 20, scope: !2689)
!2691 = !DILocation(line: 756, column: 12, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !99, line: 756, column: 5)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !99, line: 756, column: 5)
!2694 = !DILocation(line: 756, column: 5, scope: !2693)
!2695 = !DILocation(line: 757, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !99, line: 757, column: 7)
!2697 = distinct !DILexicalBlock(scope: !2692, file: !99, line: 757, column: 7)
!2698 = !DILocation(line: 757, column: 7, scope: !2697)
!2699 = !DILocation(line: 756, column: 39, scope: !2692)
!2700 = distinct !{!2700, !2694, !2701}
!2701 = !DILocation(line: 757, column: 7, scope: !2693)
!2702 = !DILocation(line: 759, column: 11, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2163, file: !99, line: 759, column: 7)
!2704 = !DILocation(line: 759, column: 7, scope: !2163)
!2705 = !DILocation(line: 760, column: 5, scope: !2703)
!2706 = !DILocation(line: 760, column: 17, scope: !2703)
!2707 = !DILocation(line: 766, column: 21, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2163, file: !99, line: 766, column: 7)
!2709 = !DILocation(line: 766, column: 54, scope: !2708)
!2710 = !DILocation(line: 766, column: 51, scope: !2708)
!2711 = !DILocation(line: 770, column: 42, scope: !2163)
!2712 = !DILocation(line: 768, column: 10, scope: !2163)
!2713 = !DILocation(line: 768, column: 3, scope: !2163)
!2714 = !DILocation(line: 772, column: 1, scope: !2163)
!2715 = distinct !DISubprogram(name: "gettext_quote", scope: !99, file: !99, line: 207, type: !2716, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!52, !52, !73}
!2718 = !{!2719, !2720, !2721, !2722}
!2719 = !DILocalVariable(name: "msgid", arg: 1, scope: !2715, file: !99, line: 207, type: !52)
!2720 = !DILocalVariable(name: "s", arg: 2, scope: !2715, file: !99, line: 207, type: !73)
!2721 = !DILocalVariable(name: "translation", scope: !2715, file: !99, line: 209, type: !52)
!2722 = !DILocalVariable(name: "locale_code", scope: !2715, file: !99, line: 210, type: !52)
!2723 = !DILocation(line: 207, column: 28, scope: !2715)
!2724 = !DILocation(line: 207, column: 54, scope: !2715)
!2725 = !DILocation(line: 209, column: 29, scope: !2715)
!2726 = !DILocation(line: 209, column: 15, scope: !2715)
!2727 = !DILocation(line: 212, column: 19, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2715, file: !99, line: 212, column: 7)
!2729 = !DILocation(line: 212, column: 7, scope: !2715)
!2730 = !DILocation(line: 233, column: 17, scope: !2715)
!2731 = !DILocation(line: 210, column: 15, scope: !2715)
!2732 = !DILocalVariable(name: "s1", arg: 1, scope: !2733, file: !2734, line: 160, type: !52)
!2733 = distinct !DISubprogram(name: "strcaseeq0", scope: !2734, file: !2734, line: 160, type: !2735, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2737)
!2734 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!31, !52, !52, !41, !41, !41, !41, !41, !41, !41, !41, !41}
!2737 = !{!2732, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2738 = !DILocalVariable(name: "s2", arg: 2, scope: !2733, file: !2734, line: 160, type: !52)
!2739 = !DILocalVariable(name: "s20", arg: 3, scope: !2733, file: !2734, line: 160, type: !41)
!2740 = !DILocalVariable(name: "s21", arg: 4, scope: !2733, file: !2734, line: 160, type: !41)
!2741 = !DILocalVariable(name: "s22", arg: 5, scope: !2733, file: !2734, line: 160, type: !41)
!2742 = !DILocalVariable(name: "s23", arg: 6, scope: !2733, file: !2734, line: 160, type: !41)
!2743 = !DILocalVariable(name: "s24", arg: 7, scope: !2733, file: !2734, line: 160, type: !41)
!2744 = !DILocalVariable(name: "s25", arg: 8, scope: !2733, file: !2734, line: 160, type: !41)
!2745 = !DILocalVariable(name: "s26", arg: 9, scope: !2733, file: !2734, line: 160, type: !41)
!2746 = !DILocalVariable(name: "s27", arg: 10, scope: !2733, file: !2734, line: 160, type: !41)
!2747 = !DILocalVariable(name: "s28", arg: 11, scope: !2733, file: !2734, line: 160, type: !41)
!2748 = !DILocation(line: 160, column: 25, scope: !2733, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 234, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2715, file: !99, line: 234, column: 7)
!2751 = !DILocation(line: 160, column: 41, scope: !2733, inlinedAt: !2749)
!2752 = !DILocation(line: 160, column: 50, scope: !2733, inlinedAt: !2749)
!2753 = !DILocation(line: 160, column: 60, scope: !2733, inlinedAt: !2749)
!2754 = !DILocation(line: 160, column: 70, scope: !2733, inlinedAt: !2749)
!2755 = !DILocation(line: 160, column: 80, scope: !2733, inlinedAt: !2749)
!2756 = !DILocation(line: 160, column: 90, scope: !2733, inlinedAt: !2749)
!2757 = !DILocation(line: 160, column: 100, scope: !2733, inlinedAt: !2749)
!2758 = !DILocation(line: 160, column: 110, scope: !2733, inlinedAt: !2749)
!2759 = !DILocation(line: 160, column: 120, scope: !2733, inlinedAt: !2749)
!2760 = !DILocation(line: 160, column: 130, scope: !2733, inlinedAt: !2749)
!2761 = !DILocation(line: 162, column: 7, scope: !2762, inlinedAt: !2749)
!2762 = distinct !DILexicalBlock(scope: !2733, file: !2734, line: 162, column: 7)
!2763 = !DILocalVariable(name: "s1", arg: 1, scope: !2764, file: !2734, line: 146, type: !52)
!2764 = distinct !DISubprogram(name: "strcaseeq1", scope: !2734, file: !2734, line: 146, type: !2765, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!31, !52, !52, !41, !41, !41, !41, !41, !41, !41, !41}
!2767 = !{!2763, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776}
!2768 = !DILocalVariable(name: "s2", arg: 2, scope: !2764, file: !2734, line: 146, type: !52)
!2769 = !DILocalVariable(name: "s21", arg: 3, scope: !2764, file: !2734, line: 146, type: !41)
!2770 = !DILocalVariable(name: "s22", arg: 4, scope: !2764, file: !2734, line: 146, type: !41)
!2771 = !DILocalVariable(name: "s23", arg: 5, scope: !2764, file: !2734, line: 146, type: !41)
!2772 = !DILocalVariable(name: "s24", arg: 6, scope: !2764, file: !2734, line: 146, type: !41)
!2773 = !DILocalVariable(name: "s25", arg: 7, scope: !2764, file: !2734, line: 146, type: !41)
!2774 = !DILocalVariable(name: "s26", arg: 8, scope: !2764, file: !2734, line: 146, type: !41)
!2775 = !DILocalVariable(name: "s27", arg: 9, scope: !2764, file: !2734, line: 146, type: !41)
!2776 = !DILocalVariable(name: "s28", arg: 10, scope: !2764, file: !2734, line: 146, type: !41)
!2777 = !DILocation(line: 146, column: 25, scope: !2764, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 167, column: 16, scope: !2779, inlinedAt: !2749)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !2734, line: 164, column: 11)
!2780 = distinct !DILexicalBlock(scope: !2762, file: !2734, line: 163, column: 5)
!2781 = !DILocation(line: 146, column: 41, scope: !2764, inlinedAt: !2778)
!2782 = !DILocation(line: 146, column: 50, scope: !2764, inlinedAt: !2778)
!2783 = !DILocation(line: 146, column: 60, scope: !2764, inlinedAt: !2778)
!2784 = !DILocation(line: 146, column: 70, scope: !2764, inlinedAt: !2778)
!2785 = !DILocation(line: 146, column: 80, scope: !2764, inlinedAt: !2778)
!2786 = !DILocation(line: 146, column: 90, scope: !2764, inlinedAt: !2778)
!2787 = !DILocation(line: 146, column: 100, scope: !2764, inlinedAt: !2778)
!2788 = !DILocation(line: 146, column: 110, scope: !2764, inlinedAt: !2778)
!2789 = !DILocation(line: 146, column: 120, scope: !2764, inlinedAt: !2778)
!2790 = !DILocation(line: 148, column: 7, scope: !2791, inlinedAt: !2778)
!2791 = distinct !DILexicalBlock(scope: !2764, file: !2734, line: 148, column: 7)
!2792 = !DILocalVariable(name: "s1", arg: 1, scope: !2793, file: !2734, line: 132, type: !52)
!2793 = distinct !DISubprogram(name: "strcaseeq2", scope: !2734, file: !2734, line: 132, type: !2794, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!31, !52, !52, !41, !41, !41, !41, !41, !41, !41}
!2796 = !{!2792, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2797 = !DILocalVariable(name: "s2", arg: 2, scope: !2793, file: !2734, line: 132, type: !52)
!2798 = !DILocalVariable(name: "s22", arg: 3, scope: !2793, file: !2734, line: 132, type: !41)
!2799 = !DILocalVariable(name: "s23", arg: 4, scope: !2793, file: !2734, line: 132, type: !41)
!2800 = !DILocalVariable(name: "s24", arg: 5, scope: !2793, file: !2734, line: 132, type: !41)
!2801 = !DILocalVariable(name: "s25", arg: 6, scope: !2793, file: !2734, line: 132, type: !41)
!2802 = !DILocalVariable(name: "s26", arg: 7, scope: !2793, file: !2734, line: 132, type: !41)
!2803 = !DILocalVariable(name: "s27", arg: 8, scope: !2793, file: !2734, line: 132, type: !41)
!2804 = !DILocalVariable(name: "s28", arg: 9, scope: !2793, file: !2734, line: 132, type: !41)
!2805 = !DILocation(line: 132, column: 25, scope: !2793, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 153, column: 16, scope: !2807, inlinedAt: !2778)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !2734, line: 150, column: 11)
!2808 = distinct !DILexicalBlock(scope: !2791, file: !2734, line: 149, column: 5)
!2809 = !DILocation(line: 132, column: 41, scope: !2793, inlinedAt: !2806)
!2810 = !DILocation(line: 132, column: 50, scope: !2793, inlinedAt: !2806)
!2811 = !DILocation(line: 132, column: 60, scope: !2793, inlinedAt: !2806)
!2812 = !DILocation(line: 132, column: 70, scope: !2793, inlinedAt: !2806)
!2813 = !DILocation(line: 132, column: 80, scope: !2793, inlinedAt: !2806)
!2814 = !DILocation(line: 132, column: 90, scope: !2793, inlinedAt: !2806)
!2815 = !DILocation(line: 132, column: 100, scope: !2793, inlinedAt: !2806)
!2816 = !DILocation(line: 132, column: 110, scope: !2793, inlinedAt: !2806)
!2817 = !DILocation(line: 134, column: 7, scope: !2818, inlinedAt: !2806)
!2818 = distinct !DILexicalBlock(scope: !2793, file: !2734, line: 134, column: 7)
!2819 = !DILocalVariable(name: "s1", arg: 1, scope: !2820, file: !2734, line: 118, type: !52)
!2820 = distinct !DISubprogram(name: "strcaseeq3", scope: !2734, file: !2734, line: 118, type: !2821, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!31, !52, !52, !41, !41, !41, !41, !41, !41}
!2823 = !{!2819, !2824, !2825, !2826, !2827, !2828, !2829, !2830}
!2824 = !DILocalVariable(name: "s2", arg: 2, scope: !2820, file: !2734, line: 118, type: !52)
!2825 = !DILocalVariable(name: "s23", arg: 3, scope: !2820, file: !2734, line: 118, type: !41)
!2826 = !DILocalVariable(name: "s24", arg: 4, scope: !2820, file: !2734, line: 118, type: !41)
!2827 = !DILocalVariable(name: "s25", arg: 5, scope: !2820, file: !2734, line: 118, type: !41)
!2828 = !DILocalVariable(name: "s26", arg: 6, scope: !2820, file: !2734, line: 118, type: !41)
!2829 = !DILocalVariable(name: "s27", arg: 7, scope: !2820, file: !2734, line: 118, type: !41)
!2830 = !DILocalVariable(name: "s28", arg: 8, scope: !2820, file: !2734, line: 118, type: !41)
!2831 = !DILocation(line: 118, column: 25, scope: !2820, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 139, column: 16, scope: !2833, inlinedAt: !2806)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !2734, line: 136, column: 11)
!2834 = distinct !DILexicalBlock(scope: !2818, file: !2734, line: 135, column: 5)
!2835 = !DILocation(line: 118, column: 41, scope: !2820, inlinedAt: !2832)
!2836 = !DILocation(line: 118, column: 50, scope: !2820, inlinedAt: !2832)
!2837 = !DILocation(line: 118, column: 60, scope: !2820, inlinedAt: !2832)
!2838 = !DILocation(line: 118, column: 70, scope: !2820, inlinedAt: !2832)
!2839 = !DILocation(line: 118, column: 80, scope: !2820, inlinedAt: !2832)
!2840 = !DILocation(line: 118, column: 90, scope: !2820, inlinedAt: !2832)
!2841 = !DILocation(line: 118, column: 100, scope: !2820, inlinedAt: !2832)
!2842 = !DILocation(line: 120, column: 7, scope: !2843, inlinedAt: !2832)
!2843 = distinct !DILexicalBlock(scope: !2820, file: !2734, line: 120, column: 7)
!2844 = !DILocation(line: 120, column: 7, scope: !2820, inlinedAt: !2832)
!2845 = !DILocalVariable(name: "s1", arg: 1, scope: !2846, file: !2734, line: 104, type: !52)
!2846 = distinct !DISubprogram(name: "strcaseeq4", scope: !2734, file: !2734, line: 104, type: !2847, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!31, !52, !52, !41, !41, !41, !41, !41}
!2849 = !{!2845, !2850, !2851, !2852, !2853, !2854, !2855}
!2850 = !DILocalVariable(name: "s2", arg: 2, scope: !2846, file: !2734, line: 104, type: !52)
!2851 = !DILocalVariable(name: "s24", arg: 3, scope: !2846, file: !2734, line: 104, type: !41)
!2852 = !DILocalVariable(name: "s25", arg: 4, scope: !2846, file: !2734, line: 104, type: !41)
!2853 = !DILocalVariable(name: "s26", arg: 5, scope: !2846, file: !2734, line: 104, type: !41)
!2854 = !DILocalVariable(name: "s27", arg: 6, scope: !2846, file: !2734, line: 104, type: !41)
!2855 = !DILocalVariable(name: "s28", arg: 7, scope: !2846, file: !2734, line: 104, type: !41)
!2856 = !DILocation(line: 104, column: 25, scope: !2846, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 125, column: 16, scope: !2858, inlinedAt: !2832)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !2734, line: 122, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2843, file: !2734, line: 121, column: 5)
!2860 = !DILocation(line: 104, column: 41, scope: !2846, inlinedAt: !2857)
!2861 = !DILocation(line: 104, column: 50, scope: !2846, inlinedAt: !2857)
!2862 = !DILocation(line: 104, column: 60, scope: !2846, inlinedAt: !2857)
!2863 = !DILocation(line: 104, column: 70, scope: !2846, inlinedAt: !2857)
!2864 = !DILocation(line: 104, column: 80, scope: !2846, inlinedAt: !2857)
!2865 = !DILocation(line: 104, column: 90, scope: !2846, inlinedAt: !2857)
!2866 = !DILocation(line: 106, column: 7, scope: !2867, inlinedAt: !2857)
!2867 = distinct !DILexicalBlock(scope: !2846, file: !2734, line: 106, column: 7)
!2868 = !DILocation(line: 106, column: 7, scope: !2846, inlinedAt: !2857)
!2869 = !DILocalVariable(name: "s1", arg: 1, scope: !2870, file: !2734, line: 90, type: !52)
!2870 = distinct !DISubprogram(name: "strcaseeq5", scope: !2734, file: !2734, line: 90, type: !2871, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!31, !52, !52, !41, !41, !41, !41}
!2873 = !{!2869, !2874, !2875, !2876, !2877, !2878}
!2874 = !DILocalVariable(name: "s2", arg: 2, scope: !2870, file: !2734, line: 90, type: !52)
!2875 = !DILocalVariable(name: "s25", arg: 3, scope: !2870, file: !2734, line: 90, type: !41)
!2876 = !DILocalVariable(name: "s26", arg: 4, scope: !2870, file: !2734, line: 90, type: !41)
!2877 = !DILocalVariable(name: "s27", arg: 5, scope: !2870, file: !2734, line: 90, type: !41)
!2878 = !DILocalVariable(name: "s28", arg: 6, scope: !2870, file: !2734, line: 90, type: !41)
!2879 = !DILocation(line: 90, column: 25, scope: !2870, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 111, column: 16, scope: !2881, inlinedAt: !2857)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !2734, line: 108, column: 11)
!2882 = distinct !DILexicalBlock(scope: !2867, file: !2734, line: 107, column: 5)
!2883 = !DILocation(line: 90, column: 41, scope: !2870, inlinedAt: !2880)
!2884 = !DILocation(line: 90, column: 50, scope: !2870, inlinedAt: !2880)
!2885 = !DILocation(line: 90, column: 60, scope: !2870, inlinedAt: !2880)
!2886 = !DILocation(line: 90, column: 70, scope: !2870, inlinedAt: !2880)
!2887 = !DILocation(line: 90, column: 80, scope: !2870, inlinedAt: !2880)
!2888 = !DILocation(line: 92, column: 7, scope: !2889, inlinedAt: !2880)
!2889 = distinct !DILexicalBlock(scope: !2870, file: !2734, line: 92, column: 7)
!2890 = !DILocation(line: 92, column: 7, scope: !2870, inlinedAt: !2880)
!2891 = !DILocation(line: 235, column: 12, scope: !2750)
!2892 = !DILocation(line: 235, column: 21, scope: !2750)
!2893 = !DILocation(line: 235, column: 5, scope: !2750)
!2894 = !DILocation(line: 146, column: 25, scope: !2764, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 167, column: 16, scope: !2779, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 236, column: 7, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2715, file: !99, line: 236, column: 7)
!2898 = !DILocation(line: 146, column: 41, scope: !2764, inlinedAt: !2895)
!2899 = !DILocation(line: 146, column: 50, scope: !2764, inlinedAt: !2895)
!2900 = !DILocation(line: 146, column: 60, scope: !2764, inlinedAt: !2895)
!2901 = !DILocation(line: 146, column: 70, scope: !2764, inlinedAt: !2895)
!2902 = !DILocation(line: 146, column: 80, scope: !2764, inlinedAt: !2895)
!2903 = !DILocation(line: 146, column: 90, scope: !2764, inlinedAt: !2895)
!2904 = !DILocation(line: 146, column: 100, scope: !2764, inlinedAt: !2895)
!2905 = !DILocation(line: 146, column: 110, scope: !2764, inlinedAt: !2895)
!2906 = !DILocation(line: 146, column: 120, scope: !2764, inlinedAt: !2895)
!2907 = !DILocation(line: 148, column: 7, scope: !2791, inlinedAt: !2895)
!2908 = !DILocation(line: 132, column: 25, scope: !2793, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 153, column: 16, scope: !2807, inlinedAt: !2895)
!2910 = !DILocation(line: 132, column: 41, scope: !2793, inlinedAt: !2909)
!2911 = !DILocation(line: 132, column: 50, scope: !2793, inlinedAt: !2909)
!2912 = !DILocation(line: 132, column: 60, scope: !2793, inlinedAt: !2909)
!2913 = !DILocation(line: 132, column: 70, scope: !2793, inlinedAt: !2909)
!2914 = !DILocation(line: 132, column: 80, scope: !2793, inlinedAt: !2909)
!2915 = !DILocation(line: 132, column: 90, scope: !2793, inlinedAt: !2909)
!2916 = !DILocation(line: 132, column: 100, scope: !2793, inlinedAt: !2909)
!2917 = !DILocation(line: 132, column: 110, scope: !2793, inlinedAt: !2909)
!2918 = !DILocation(line: 134, column: 7, scope: !2818, inlinedAt: !2909)
!2919 = !DILocation(line: 134, column: 7, scope: !2793, inlinedAt: !2909)
!2920 = !DILocation(line: 118, column: 25, scope: !2820, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 139, column: 16, scope: !2833, inlinedAt: !2909)
!2922 = !DILocation(line: 118, column: 41, scope: !2820, inlinedAt: !2921)
!2923 = !DILocation(line: 118, column: 50, scope: !2820, inlinedAt: !2921)
!2924 = !DILocation(line: 118, column: 60, scope: !2820, inlinedAt: !2921)
!2925 = !DILocation(line: 118, column: 70, scope: !2820, inlinedAt: !2921)
!2926 = !DILocation(line: 118, column: 80, scope: !2820, inlinedAt: !2921)
!2927 = !DILocation(line: 118, column: 90, scope: !2820, inlinedAt: !2921)
!2928 = !DILocation(line: 118, column: 100, scope: !2820, inlinedAt: !2921)
!2929 = !DILocation(line: 120, column: 7, scope: !2843, inlinedAt: !2921)
!2930 = !DILocation(line: 120, column: 7, scope: !2820, inlinedAt: !2921)
!2931 = !DILocation(line: 104, column: 25, scope: !2846, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 125, column: 16, scope: !2858, inlinedAt: !2921)
!2933 = !DILocation(line: 104, column: 41, scope: !2846, inlinedAt: !2932)
!2934 = !DILocation(line: 104, column: 50, scope: !2846, inlinedAt: !2932)
!2935 = !DILocation(line: 104, column: 60, scope: !2846, inlinedAt: !2932)
!2936 = !DILocation(line: 104, column: 70, scope: !2846, inlinedAt: !2932)
!2937 = !DILocation(line: 104, column: 80, scope: !2846, inlinedAt: !2932)
!2938 = !DILocation(line: 104, column: 90, scope: !2846, inlinedAt: !2932)
!2939 = !DILocation(line: 106, column: 7, scope: !2867, inlinedAt: !2932)
!2940 = !DILocation(line: 106, column: 7, scope: !2846, inlinedAt: !2932)
!2941 = !DILocation(line: 90, column: 25, scope: !2870, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 111, column: 16, scope: !2881, inlinedAt: !2932)
!2943 = !DILocation(line: 90, column: 41, scope: !2870, inlinedAt: !2942)
!2944 = !DILocation(line: 90, column: 50, scope: !2870, inlinedAt: !2942)
!2945 = !DILocation(line: 90, column: 60, scope: !2870, inlinedAt: !2942)
!2946 = !DILocation(line: 90, column: 70, scope: !2870, inlinedAt: !2942)
!2947 = !DILocation(line: 90, column: 80, scope: !2870, inlinedAt: !2942)
!2948 = !DILocation(line: 92, column: 7, scope: !2889, inlinedAt: !2942)
!2949 = !DILocation(line: 92, column: 7, scope: !2870, inlinedAt: !2942)
!2950 = !DILocalVariable(name: "s1", arg: 1, scope: !2951, file: !2734, line: 76, type: !52)
!2951 = distinct !DISubprogram(name: "strcaseeq6", scope: !2734, file: !2734, line: 76, type: !2952, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!31, !52, !52, !41, !41, !41}
!2954 = !{!2950, !2955, !2956, !2957, !2958}
!2955 = !DILocalVariable(name: "s2", arg: 2, scope: !2951, file: !2734, line: 76, type: !52)
!2956 = !DILocalVariable(name: "s26", arg: 3, scope: !2951, file: !2734, line: 76, type: !41)
!2957 = !DILocalVariable(name: "s27", arg: 4, scope: !2951, file: !2734, line: 76, type: !41)
!2958 = !DILocalVariable(name: "s28", arg: 5, scope: !2951, file: !2734, line: 76, type: !41)
!2959 = !DILocation(line: 76, column: 25, scope: !2951, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 97, column: 16, scope: !2961, inlinedAt: !2942)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !2734, line: 94, column: 11)
!2962 = distinct !DILexicalBlock(scope: !2889, file: !2734, line: 93, column: 5)
!2963 = !DILocation(line: 76, column: 41, scope: !2951, inlinedAt: !2960)
!2964 = !DILocation(line: 76, column: 50, scope: !2951, inlinedAt: !2960)
!2965 = !DILocation(line: 76, column: 60, scope: !2951, inlinedAt: !2960)
!2966 = !DILocation(line: 76, column: 70, scope: !2951, inlinedAt: !2960)
!2967 = !DILocation(line: 78, column: 7, scope: !2968, inlinedAt: !2960)
!2968 = distinct !DILexicalBlock(scope: !2951, file: !2734, line: 78, column: 7)
!2969 = !DILocation(line: 78, column: 7, scope: !2951, inlinedAt: !2960)
!2970 = !DILocalVariable(name: "s1", arg: 1, scope: !2971, file: !2734, line: 62, type: !52)
!2971 = distinct !DISubprogram(name: "strcaseeq7", scope: !2734, file: !2734, line: 62, type: !2972, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!31, !52, !52, !41, !41}
!2974 = !{!2970, !2975, !2976, !2977}
!2975 = !DILocalVariable(name: "s2", arg: 2, scope: !2971, file: !2734, line: 62, type: !52)
!2976 = !DILocalVariable(name: "s27", arg: 3, scope: !2971, file: !2734, line: 62, type: !41)
!2977 = !DILocalVariable(name: "s28", arg: 4, scope: !2971, file: !2734, line: 62, type: !41)
!2978 = !DILocation(line: 62, column: 25, scope: !2971, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 83, column: 16, scope: !2980, inlinedAt: !2960)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !2734, line: 80, column: 11)
!2981 = distinct !DILexicalBlock(scope: !2968, file: !2734, line: 79, column: 5)
!2982 = !DILocation(line: 62, column: 41, scope: !2971, inlinedAt: !2979)
!2983 = !DILocation(line: 62, column: 50, scope: !2971, inlinedAt: !2979)
!2984 = !DILocation(line: 62, column: 60, scope: !2971, inlinedAt: !2979)
!2985 = !DILocation(line: 64, column: 7, scope: !2986, inlinedAt: !2979)
!2986 = distinct !DILexicalBlock(scope: !2971, file: !2734, line: 64, column: 7)
!2987 = !DILocation(line: 236, column: 7, scope: !2715)
!2988 = !DILocation(line: 237, column: 12, scope: !2897)
!2989 = !DILocation(line: 237, column: 21, scope: !2897)
!2990 = !DILocation(line: 237, column: 5, scope: !2897)
!2991 = !DILocation(line: 239, column: 13, scope: !2715)
!2992 = !DILocation(line: 239, column: 11, scope: !2715)
!2993 = !DILocation(line: 239, column: 3, scope: !2715)
!2994 = !DILocation(line: 0, scope: !2715)
!2995 = !DILocation(line: 240, column: 1, scope: !2715)
!2996 = distinct !DISubprogram(name: "quotearg_alloc", scope: !99, file: !99, line: 799, type: !2997, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!40, !52, !93, !2035}
!2999 = !{!3000, !3001, !3002}
!3000 = !DILocalVariable(name: "arg", arg: 1, scope: !2996, file: !99, line: 799, type: !52)
!3001 = !DILocalVariable(name: "argsize", arg: 2, scope: !2996, file: !99, line: 799, type: !93)
!3002 = !DILocalVariable(name: "o", arg: 3, scope: !2996, file: !99, line: 800, type: !2035)
!3003 = !DILocation(line: 799, column: 29, scope: !2996)
!3004 = !DILocation(line: 799, column: 41, scope: !2996)
!3005 = !DILocation(line: 800, column: 47, scope: !2996)
!3006 = !DILocalVariable(name: "arg", arg: 1, scope: !3007, file: !99, line: 812, type: !52)
!3007 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !99, file: !99, line: 812, type: !3008, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!40, !52, !93, !158, !2035}
!3010 = !{!3006, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018}
!3011 = !DILocalVariable(name: "argsize", arg: 2, scope: !3007, file: !99, line: 812, type: !93)
!3012 = !DILocalVariable(name: "size", arg: 3, scope: !3007, file: !99, line: 812, type: !158)
!3013 = !DILocalVariable(name: "o", arg: 4, scope: !3007, file: !99, line: 813, type: !2035)
!3014 = !DILocalVariable(name: "p", scope: !3007, file: !99, line: 815, type: !2035)
!3015 = !DILocalVariable(name: "e", scope: !3007, file: !99, line: 816, type: !31)
!3016 = !DILocalVariable(name: "flags", scope: !3007, file: !99, line: 818, type: !31)
!3017 = !DILocalVariable(name: "bufsize", scope: !3007, file: !99, line: 819, type: !93)
!3018 = !DILocalVariable(name: "buf", scope: !3007, file: !99, line: 823, type: !40)
!3019 = !DILocation(line: 812, column: 33, scope: !3007, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 802, column: 10, scope: !2996)
!3021 = !DILocation(line: 812, column: 45, scope: !3007, inlinedAt: !3020)
!3022 = !DILocation(line: 812, column: 62, scope: !3007, inlinedAt: !3020)
!3023 = !DILocation(line: 813, column: 51, scope: !3007, inlinedAt: !3020)
!3024 = !DILocation(line: 815, column: 37, scope: !3007, inlinedAt: !3020)
!3025 = !DILocation(line: 815, column: 33, scope: !3007, inlinedAt: !3020)
!3026 = !DILocation(line: 816, column: 11, scope: !3007, inlinedAt: !3020)
!3027 = !DILocation(line: 816, column: 7, scope: !3007, inlinedAt: !3020)
!3028 = !DILocation(line: 818, column: 18, scope: !3007, inlinedAt: !3020)
!3029 = !DILocation(line: 818, column: 24, scope: !3007, inlinedAt: !3020)
!3030 = !DILocation(line: 818, column: 7, scope: !3007, inlinedAt: !3020)
!3031 = !DILocation(line: 819, column: 69, scope: !3007, inlinedAt: !3020)
!3032 = !DILocation(line: 820, column: 53, scope: !3007, inlinedAt: !3020)
!3033 = !DILocation(line: 821, column: 49, scope: !3007, inlinedAt: !3020)
!3034 = !DILocation(line: 822, column: 49, scope: !3007, inlinedAt: !3020)
!3035 = !DILocation(line: 819, column: 20, scope: !3007, inlinedAt: !3020)
!3036 = !DILocation(line: 822, column: 62, scope: !3007, inlinedAt: !3020)
!3037 = !DILocation(line: 819, column: 10, scope: !3007, inlinedAt: !3020)
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3039, file: !154, line: 216, type: !93)
!3039 = distinct !DISubprogram(name: "xcharalloc", scope: !154, file: !154, line: 216, type: !3040, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!40, !93}
!3042 = !{!3038}
!3043 = !DILocation(line: 216, column: 20, scope: !3039, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 823, column: 15, scope: !3007, inlinedAt: !3020)
!3045 = !DILocation(line: 218, column: 10, scope: !3039, inlinedAt: !3044)
!3046 = !DILocation(line: 823, column: 9, scope: !3007, inlinedAt: !3020)
!3047 = !DILocation(line: 824, column: 60, scope: !3007, inlinedAt: !3020)
!3048 = !DILocation(line: 826, column: 32, scope: !3007, inlinedAt: !3020)
!3049 = !DILocation(line: 826, column: 47, scope: !3007, inlinedAt: !3020)
!3050 = !DILocation(line: 824, column: 3, scope: !3007, inlinedAt: !3020)
!3051 = !DILocation(line: 827, column: 9, scope: !3007, inlinedAt: !3020)
!3052 = !DILocation(line: 802, column: 3, scope: !2996)
!3053 = !DILocation(line: 812, column: 33, scope: !3007)
!3054 = !DILocation(line: 812, column: 45, scope: !3007)
!3055 = !DILocation(line: 812, column: 62, scope: !3007)
!3056 = !DILocation(line: 813, column: 51, scope: !3007)
!3057 = !DILocation(line: 815, column: 37, scope: !3007)
!3058 = !DILocation(line: 815, column: 33, scope: !3007)
!3059 = !DILocation(line: 816, column: 11, scope: !3007)
!3060 = !DILocation(line: 816, column: 7, scope: !3007)
!3061 = !DILocation(line: 818, column: 18, scope: !3007)
!3062 = !DILocation(line: 818, column: 27, scope: !3007)
!3063 = !DILocation(line: 818, column: 24, scope: !3007)
!3064 = !DILocation(line: 818, column: 7, scope: !3007)
!3065 = !DILocation(line: 819, column: 69, scope: !3007)
!3066 = !DILocation(line: 820, column: 53, scope: !3007)
!3067 = !DILocation(line: 821, column: 49, scope: !3007)
!3068 = !DILocation(line: 822, column: 49, scope: !3007)
!3069 = !DILocation(line: 819, column: 20, scope: !3007)
!3070 = !DILocation(line: 822, column: 62, scope: !3007)
!3071 = !DILocation(line: 819, column: 10, scope: !3007)
!3072 = !DILocation(line: 216, column: 20, scope: !3039, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 823, column: 15, scope: !3007)
!3074 = !DILocation(line: 218, column: 10, scope: !3039, inlinedAt: !3073)
!3075 = !DILocation(line: 823, column: 9, scope: !3007)
!3076 = !DILocation(line: 824, column: 60, scope: !3007)
!3077 = !DILocation(line: 826, column: 32, scope: !3007)
!3078 = !DILocation(line: 826, column: 47, scope: !3007)
!3079 = !DILocation(line: 824, column: 3, scope: !3007)
!3080 = !DILocation(line: 827, column: 9, scope: !3007)
!3081 = !DILocation(line: 828, column: 7, scope: !3007)
!3082 = !DILocation(line: 829, column: 11, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3007, file: !99, line: 828, column: 7)
!3084 = !{!1409, !1409, i64 0}
!3085 = !DILocation(line: 829, column: 5, scope: !3083)
!3086 = !DILocation(line: 830, column: 3, scope: !3007)
!3087 = distinct !DISubprogram(name: "quotearg_free", scope: !99, file: !99, line: 848, type: !972, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3088)
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "sv", scope: !3087, file: !99, line: 850, type: !125)
!3090 = !DILocalVariable(name: "i", scope: !3087, file: !99, line: 851, type: !31)
!3091 = !DILocation(line: 850, column: 24, scope: !3087)
!3092 = !DILocation(line: 850, column: 19, scope: !3087)
!3093 = !DILocation(line: 851, column: 7, scope: !3087)
!3094 = !DILocation(line: 852, column: 19, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !99, line: 852, column: 3)
!3096 = distinct !DILexicalBlock(scope: !3087, file: !99, line: 852, column: 3)
!3097 = !DILocation(line: 852, column: 17, scope: !3095)
!3098 = !DILocation(line: 852, column: 3, scope: !3096)
!3099 = !DILocation(line: 853, column: 17, scope: !3095)
!3100 = !{!3101, !617, i64 8}
!3101 = !{!"slotvec", !1409, i64 0, !617, i64 8}
!3102 = !DILocation(line: 853, column: 5, scope: !3095)
!3103 = !DILocation(line: 852, column: 28, scope: !3095)
!3104 = distinct !{!3104, !3098, !3105}
!3105 = !DILocation(line: 853, column: 20, scope: !3096)
!3106 = !DILocation(line: 854, column: 13, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3087, file: !99, line: 854, column: 7)
!3108 = !DILocation(line: 854, column: 17, scope: !3107)
!3109 = !DILocation(line: 854, column: 7, scope: !3087)
!3110 = !DILocation(line: 856, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !99, line: 855, column: 5)
!3112 = !DILocation(line: 857, column: 21, scope: !3111)
!3113 = !{!3101, !1409, i64 0}
!3114 = !DILocation(line: 858, column: 20, scope: !3111)
!3115 = !DILocation(line: 859, column: 5, scope: !3111)
!3116 = !DILocation(line: 860, column: 10, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3087, file: !99, line: 860, column: 7)
!3118 = !DILocation(line: 860, column: 7, scope: !3087)
!3119 = !DILocation(line: 862, column: 13, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !99, line: 861, column: 5)
!3121 = !DILocation(line: 862, column: 7, scope: !3120)
!3122 = !DILocation(line: 863, column: 15, scope: !3120)
!3123 = !DILocation(line: 864, column: 5, scope: !3120)
!3124 = !DILocation(line: 865, column: 10, scope: !3087)
!3125 = !DILocation(line: 866, column: 1, scope: !3087)
!3126 = distinct !DISubprogram(name: "quotearg_n", scope: !99, file: !99, line: 931, type: !3127, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!40, !31, !52}
!3129 = !{!3130, !3131}
!3130 = !DILocalVariable(name: "n", arg: 1, scope: !3126, file: !99, line: 931, type: !31)
!3131 = !DILocalVariable(name: "arg", arg: 2, scope: !3126, file: !99, line: 931, type: !52)
!3132 = !DILocation(line: 931, column: 17, scope: !3126)
!3133 = !DILocation(line: 931, column: 32, scope: !3126)
!3134 = !DILocation(line: 933, column: 10, scope: !3126)
!3135 = !DILocation(line: 933, column: 3, scope: !3126)
!3136 = distinct !DISubprogram(name: "quotearg_n_options", scope: !99, file: !99, line: 877, type: !3137, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!40, !31, !52, !93, !2035}
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3149, !3150, !3152, !3153, !3154}
!3140 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !99, line: 877, type: !31)
!3141 = !DILocalVariable(name: "arg", arg: 2, scope: !3136, file: !99, line: 877, type: !52)
!3142 = !DILocalVariable(name: "argsize", arg: 3, scope: !3136, file: !99, line: 877, type: !93)
!3143 = !DILocalVariable(name: "options", arg: 4, scope: !3136, file: !99, line: 878, type: !2035)
!3144 = !DILocalVariable(name: "e", scope: !3136, file: !99, line: 880, type: !31)
!3145 = !DILocalVariable(name: "sv", scope: !3136, file: !99, line: 882, type: !125)
!3146 = !DILocalVariable(name: "preallocated", scope: !3147, file: !99, line: 889, type: !51)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !99, line: 888, column: 5)
!3148 = distinct !DILexicalBlock(scope: !3136, file: !99, line: 887, column: 7)
!3149 = !DILocalVariable(name: "nmax", scope: !3147, file: !99, line: 890, type: !31)
!3150 = !DILocalVariable(name: "size", scope: !3151, file: !99, line: 903, type: !93)
!3151 = distinct !DILexicalBlock(scope: !3136, file: !99, line: 902, column: 3)
!3152 = !DILocalVariable(name: "val", scope: !3151, file: !99, line: 904, type: !40)
!3153 = !DILocalVariable(name: "flags", scope: !3151, file: !99, line: 906, type: !31)
!3154 = !DILocalVariable(name: "qsize", scope: !3151, file: !99, line: 907, type: !93)
!3155 = !DILocation(line: 877, column: 25, scope: !3136)
!3156 = !DILocation(line: 877, column: 40, scope: !3136)
!3157 = !DILocation(line: 877, column: 52, scope: !3136)
!3158 = !DILocation(line: 878, column: 51, scope: !3136)
!3159 = !DILocation(line: 880, column: 11, scope: !3136)
!3160 = !DILocation(line: 880, column: 7, scope: !3136)
!3161 = !DILocation(line: 882, column: 24, scope: !3136)
!3162 = !DILocation(line: 882, column: 19, scope: !3136)
!3163 = !DILocation(line: 884, column: 9, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3136, file: !99, line: 884, column: 7)
!3165 = !DILocation(line: 884, column: 7, scope: !3136)
!3166 = !DILocation(line: 885, column: 5, scope: !3164)
!3167 = !DILocation(line: 887, column: 7, scope: !3148)
!3168 = !DILocation(line: 887, column: 14, scope: !3148)
!3169 = !DILocation(line: 887, column: 7, scope: !3136)
!3170 = !DILocation(line: 889, column: 31, scope: !3147)
!3171 = !DILocation(line: 890, column: 11, scope: !3147)
!3172 = !DILocation(line: 892, column: 16, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3147, file: !99, line: 892, column: 11)
!3174 = !DILocation(line: 892, column: 11, scope: !3147)
!3175 = !DILocation(line: 893, column: 9, scope: !3173)
!3176 = !DILocation(line: 895, column: 32, scope: !3147)
!3177 = !DILocation(line: 895, column: 61, scope: !3147)
!3178 = !DILocation(line: 895, column: 58, scope: !3147)
!3179 = !DILocation(line: 895, column: 66, scope: !3147)
!3180 = !DILocation(line: 895, column: 22, scope: !3147)
!3181 = !DILocation(line: 895, column: 15, scope: !3147)
!3182 = !DILocation(line: 896, column: 11, scope: !3147)
!3183 = !DILocation(line: 897, column: 15, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3147, file: !99, line: 896, column: 11)
!3185 = !{i64 0, i64 8, !3084, i64 8, i64 8, !616}
!3186 = !DILocation(line: 897, column: 9, scope: !3184)
!3187 = !DILocation(line: 898, column: 20, scope: !3147)
!3188 = !DILocation(line: 898, column: 18, scope: !3147)
!3189 = !DILocation(line: 898, column: 7, scope: !3147)
!3190 = !DILocation(line: 898, column: 38, scope: !3147)
!3191 = !DILocation(line: 898, column: 31, scope: !3147)
!3192 = !DILocation(line: 898, column: 48, scope: !3147)
!3193 = !DILocation(line: 899, column: 14, scope: !3147)
!3194 = !DILocation(line: 900, column: 5, scope: !3147)
!3195 = !DILocation(line: 0, scope: !3136)
!3196 = !DILocation(line: 903, column: 19, scope: !3151)
!3197 = !DILocation(line: 903, column: 25, scope: !3151)
!3198 = !DILocation(line: 903, column: 12, scope: !3151)
!3199 = !DILocation(line: 904, column: 23, scope: !3151)
!3200 = !DILocation(line: 904, column: 11, scope: !3151)
!3201 = !DILocation(line: 906, column: 26, scope: !3151)
!3202 = !DILocation(line: 906, column: 32, scope: !3151)
!3203 = !DILocation(line: 906, column: 9, scope: !3151)
!3204 = !DILocation(line: 908, column: 55, scope: !3151)
!3205 = !DILocation(line: 909, column: 46, scope: !3151)
!3206 = !DILocation(line: 910, column: 55, scope: !3151)
!3207 = !DILocation(line: 911, column: 55, scope: !3151)
!3208 = !DILocation(line: 907, column: 20, scope: !3151)
!3209 = !DILocation(line: 907, column: 12, scope: !3151)
!3210 = !DILocation(line: 913, column: 14, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3151, file: !99, line: 913, column: 9)
!3212 = !DILocation(line: 913, column: 9, scope: !3151)
!3213 = !DILocation(line: 915, column: 35, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3211, file: !99, line: 914, column: 7)
!3215 = !DILocation(line: 915, column: 20, scope: !3214)
!3216 = !DILocation(line: 916, column: 17, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3214, file: !99, line: 916, column: 13)
!3218 = !DILocation(line: 916, column: 13, scope: !3214)
!3219 = !DILocation(line: 917, column: 11, scope: !3217)
!3220 = !DILocation(line: 216, column: 20, scope: !3039, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 918, column: 27, scope: !3214)
!3222 = !DILocation(line: 218, column: 10, scope: !3039, inlinedAt: !3221)
!3223 = !DILocation(line: 918, column: 19, scope: !3214)
!3224 = !DILocation(line: 919, column: 69, scope: !3214)
!3225 = !DILocation(line: 921, column: 44, scope: !3214)
!3226 = !DILocation(line: 922, column: 44, scope: !3214)
!3227 = !DILocation(line: 919, column: 9, scope: !3214)
!3228 = !DILocation(line: 923, column: 7, scope: !3214)
!3229 = !DILocation(line: 0, scope: !3151)
!3230 = !DILocation(line: 925, column: 11, scope: !3151)
!3231 = !DILocation(line: 926, column: 5, scope: !3151)
!3232 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !99, file: !99, line: 937, type: !3233, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!40, !31, !52, !93}
!3235 = !{!3236, !3237, !3238}
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3232, file: !99, line: 937, type: !31)
!3237 = !DILocalVariable(name: "arg", arg: 2, scope: !3232, file: !99, line: 937, type: !52)
!3238 = !DILocalVariable(name: "argsize", arg: 3, scope: !3232, file: !99, line: 937, type: !93)
!3239 = !DILocation(line: 937, column: 21, scope: !3232)
!3240 = !DILocation(line: 937, column: 36, scope: !3232)
!3241 = !DILocation(line: 937, column: 48, scope: !3232)
!3242 = !DILocation(line: 939, column: 10, scope: !3232)
!3243 = !DILocation(line: 939, column: 3, scope: !3232)
!3244 = distinct !DISubprogram(name: "quotearg", scope: !99, file: !99, line: 943, type: !3245, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!40, !52}
!3247 = !{!3248}
!3248 = !DILocalVariable(name: "arg", arg: 1, scope: !3244, file: !99, line: 943, type: !52)
!3249 = !DILocation(line: 943, column: 23, scope: !3244)
!3250 = !DILocation(line: 931, column: 17, scope: !3126, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 945, column: 10, scope: !3244)
!3252 = !DILocation(line: 931, column: 32, scope: !3126, inlinedAt: !3251)
!3253 = !DILocation(line: 933, column: 10, scope: !3126, inlinedAt: !3251)
!3254 = !DILocation(line: 945, column: 3, scope: !3244)
!3255 = distinct !DISubprogram(name: "quotearg_mem", scope: !99, file: !99, line: 949, type: !3256, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!40, !52, !93}
!3258 = !{!3259, !3260}
!3259 = !DILocalVariable(name: "arg", arg: 1, scope: !3255, file: !99, line: 949, type: !52)
!3260 = !DILocalVariable(name: "argsize", arg: 2, scope: !3255, file: !99, line: 949, type: !93)
!3261 = !DILocation(line: 949, column: 27, scope: !3255)
!3262 = !DILocation(line: 949, column: 39, scope: !3255)
!3263 = !DILocation(line: 937, column: 21, scope: !3232, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 951, column: 10, scope: !3255)
!3265 = !DILocation(line: 937, column: 36, scope: !3232, inlinedAt: !3264)
!3266 = !DILocation(line: 937, column: 48, scope: !3232, inlinedAt: !3264)
!3267 = !DILocation(line: 939, column: 10, scope: !3232, inlinedAt: !3264)
!3268 = !DILocation(line: 951, column: 3, scope: !3255)
!3269 = distinct !DISubprogram(name: "quotearg_n_style", scope: !99, file: !99, line: 955, type: !3270, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!40, !31, !73, !52}
!3272 = !{!3273, !3274, !3275, !3276}
!3273 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !99, line: 955, type: !31)
!3274 = !DILocalVariable(name: "s", arg: 2, scope: !3269, file: !99, line: 955, type: !73)
!3275 = !DILocalVariable(name: "arg", arg: 3, scope: !3269, file: !99, line: 955, type: !52)
!3276 = !DILocalVariable(name: "o", scope: !3269, file: !99, line: 957, type: !2036)
!3277 = !DILocation(line: 955, column: 23, scope: !3269)
!3278 = !DILocation(line: 955, column: 45, scope: !3269)
!3279 = !DILocation(line: 955, column: 60, scope: !3269)
!3280 = !DILocation(line: 957, column: 3, scope: !3269)
!3281 = !DILocation(line: 957, column: 32, scope: !3269)
!3282 = !DILocalVariable(name: "style", arg: 1, scope: !3283, file: !99, line: 193, type: !73)
!3283 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !99, file: !99, line: 193, type: !3284, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!106, !73}
!3286 = !{!3282, !3287}
!3287 = !DILocalVariable(name: "o", scope: !3283, file: !99, line: 195, type: !106)
!3288 = !DILocation(line: 193, column: 48, scope: !3283, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 957, column: 36, scope: !3269)
!3290 = !DILocation(line: 195, column: 26, scope: !3283, inlinedAt: !3289)
!3291 = !{!3292}
!3292 = distinct !{!3292, !3293, !"quoting_options_from_style: argument 0"}
!3293 = distinct !{!3293, !"quoting_options_from_style"}
!3294 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3289)
!3295 = distinct !DILexicalBlock(scope: !3283, file: !99, line: 196, column: 7)
!3296 = !DILocation(line: 196, column: 7, scope: !3283, inlinedAt: !3289)
!3297 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3289)
!3298 = !DILocation(line: 198, column: 5, scope: !3283, inlinedAt: !3289)
!3299 = !DILocation(line: 198, column: 11, scope: !3283, inlinedAt: !3289)
!3300 = !DILocation(line: 958, column: 10, scope: !3269)
!3301 = !DILocation(line: 959, column: 1, scope: !3269)
!3302 = !DILocation(line: 958, column: 3, scope: !3269)
!3303 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !99, file: !99, line: 962, type: !3304, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!40, !31, !73, !52, !93}
!3306 = !{!3307, !3308, !3309, !3310, !3311}
!3307 = !DILocalVariable(name: "n", arg: 1, scope: !3303, file: !99, line: 962, type: !31)
!3308 = !DILocalVariable(name: "s", arg: 2, scope: !3303, file: !99, line: 962, type: !73)
!3309 = !DILocalVariable(name: "arg", arg: 3, scope: !3303, file: !99, line: 963, type: !52)
!3310 = !DILocalVariable(name: "argsize", arg: 4, scope: !3303, file: !99, line: 963, type: !93)
!3311 = !DILocalVariable(name: "o", scope: !3303, file: !99, line: 965, type: !2036)
!3312 = !DILocation(line: 962, column: 27, scope: !3303)
!3313 = !DILocation(line: 962, column: 49, scope: !3303)
!3314 = !DILocation(line: 963, column: 35, scope: !3303)
!3315 = !DILocation(line: 963, column: 47, scope: !3303)
!3316 = !DILocation(line: 965, column: 3, scope: !3303)
!3317 = !DILocation(line: 965, column: 32, scope: !3303)
!3318 = !DILocation(line: 193, column: 48, scope: !3283, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 965, column: 36, scope: !3303)
!3320 = !DILocation(line: 195, column: 26, scope: !3283, inlinedAt: !3319)
!3321 = !{!3322}
!3322 = distinct !{!3322, !3323, !"quoting_options_from_style: argument 0"}
!3323 = distinct !{!3323, !"quoting_options_from_style"}
!3324 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3319)
!3325 = !DILocation(line: 196, column: 7, scope: !3283, inlinedAt: !3319)
!3326 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3319)
!3327 = !DILocation(line: 198, column: 5, scope: !3283, inlinedAt: !3319)
!3328 = !DILocation(line: 198, column: 11, scope: !3283, inlinedAt: !3319)
!3329 = !DILocation(line: 966, column: 10, scope: !3303)
!3330 = !DILocation(line: 967, column: 1, scope: !3303)
!3331 = !DILocation(line: 966, column: 3, scope: !3303)
!3332 = distinct !DISubprogram(name: "quotearg_style", scope: !99, file: !99, line: 970, type: !3333, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!40, !73, !52}
!3335 = !{!3336, !3337}
!3336 = !DILocalVariable(name: "s", arg: 1, scope: !3332, file: !99, line: 970, type: !73)
!3337 = !DILocalVariable(name: "arg", arg: 2, scope: !3332, file: !99, line: 970, type: !52)
!3338 = !DILocation(line: 970, column: 36, scope: !3332)
!3339 = !DILocation(line: 970, column: 51, scope: !3332)
!3340 = !DILocation(line: 955, column: 23, scope: !3269, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 972, column: 10, scope: !3332)
!3342 = !DILocation(line: 955, column: 45, scope: !3269, inlinedAt: !3341)
!3343 = !DILocation(line: 955, column: 60, scope: !3269, inlinedAt: !3341)
!3344 = !DILocation(line: 957, column: 3, scope: !3269, inlinedAt: !3341)
!3345 = !DILocation(line: 957, column: 32, scope: !3269, inlinedAt: !3341)
!3346 = !DILocation(line: 193, column: 48, scope: !3283, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 957, column: 36, scope: !3269, inlinedAt: !3341)
!3348 = !DILocation(line: 195, column: 26, scope: !3283, inlinedAt: !3347)
!3349 = !{!3350}
!3350 = distinct !{!3350, !3351, !"quoting_options_from_style: argument 0"}
!3351 = distinct !{!3351, !"quoting_options_from_style"}
!3352 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3347)
!3353 = !DILocation(line: 196, column: 7, scope: !3283, inlinedAt: !3347)
!3354 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3347)
!3355 = !DILocation(line: 198, column: 5, scope: !3283, inlinedAt: !3347)
!3356 = !DILocation(line: 198, column: 11, scope: !3283, inlinedAt: !3347)
!3357 = !DILocation(line: 958, column: 10, scope: !3269, inlinedAt: !3341)
!3358 = !DILocation(line: 959, column: 1, scope: !3269, inlinedAt: !3341)
!3359 = !DILocation(line: 972, column: 3, scope: !3332)
!3360 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !99, file: !99, line: 976, type: !3361, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!40, !73, !52, !93}
!3363 = !{!3364, !3365, !3366}
!3364 = !DILocalVariable(name: "s", arg: 1, scope: !3360, file: !99, line: 976, type: !73)
!3365 = !DILocalVariable(name: "arg", arg: 2, scope: !3360, file: !99, line: 976, type: !52)
!3366 = !DILocalVariable(name: "argsize", arg: 3, scope: !3360, file: !99, line: 976, type: !93)
!3367 = !DILocation(line: 976, column: 40, scope: !3360)
!3368 = !DILocation(line: 976, column: 55, scope: !3360)
!3369 = !DILocation(line: 976, column: 67, scope: !3360)
!3370 = !DILocation(line: 962, column: 27, scope: !3303, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 978, column: 10, scope: !3360)
!3372 = !DILocation(line: 962, column: 49, scope: !3303, inlinedAt: !3371)
!3373 = !DILocation(line: 963, column: 35, scope: !3303, inlinedAt: !3371)
!3374 = !DILocation(line: 963, column: 47, scope: !3303, inlinedAt: !3371)
!3375 = !DILocation(line: 965, column: 3, scope: !3303, inlinedAt: !3371)
!3376 = !DILocation(line: 965, column: 32, scope: !3303, inlinedAt: !3371)
!3377 = !DILocation(line: 193, column: 48, scope: !3283, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 965, column: 36, scope: !3303, inlinedAt: !3371)
!3379 = !DILocation(line: 195, column: 26, scope: !3283, inlinedAt: !3378)
!3380 = !{!3381}
!3381 = distinct !{!3381, !3382, !"quoting_options_from_style: argument 0"}
!3382 = distinct !{!3382, !"quoting_options_from_style"}
!3383 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3378)
!3384 = !DILocation(line: 196, column: 7, scope: !3283, inlinedAt: !3378)
!3385 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3378)
!3386 = !DILocation(line: 198, column: 5, scope: !3283, inlinedAt: !3378)
!3387 = !DILocation(line: 198, column: 11, scope: !3283, inlinedAt: !3378)
!3388 = !DILocation(line: 966, column: 10, scope: !3303, inlinedAt: !3371)
!3389 = !DILocation(line: 967, column: 1, scope: !3303, inlinedAt: !3371)
!3390 = !DILocation(line: 978, column: 3, scope: !3360)
!3391 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !99, file: !99, line: 982, type: !3392, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!40, !52, !93, !41}
!3394 = !{!3395, !3396, !3397, !3398}
!3395 = !DILocalVariable(name: "arg", arg: 1, scope: !3391, file: !99, line: 982, type: !52)
!3396 = !DILocalVariable(name: "argsize", arg: 2, scope: !3391, file: !99, line: 982, type: !93)
!3397 = !DILocalVariable(name: "ch", arg: 3, scope: !3391, file: !99, line: 982, type: !41)
!3398 = !DILocalVariable(name: "options", scope: !3391, file: !99, line: 984, type: !106)
!3399 = !DILocation(line: 982, column: 32, scope: !3391)
!3400 = !DILocation(line: 982, column: 44, scope: !3391)
!3401 = !DILocation(line: 982, column: 58, scope: !3391)
!3402 = !DILocation(line: 984, column: 3, scope: !3391)
!3403 = !DILocation(line: 985, column: 13, scope: !3391)
!3404 = !{i64 0, i64 4, !732, i64 4, i64 4, !693, i64 8, i64 32, !732, i64 40, i64 8, !616, i64 48, i64 8, !616}
!3405 = !DILocation(line: 984, column: 26, scope: !3391)
!3406 = !DILocation(line: 152, column: 43, scope: !2057, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 986, column: 3, scope: !3391)
!3408 = !DILocation(line: 152, column: 51, scope: !2057, inlinedAt: !3407)
!3409 = !DILocation(line: 152, column: 58, scope: !2057, inlinedAt: !3407)
!3410 = !DILocation(line: 154, column: 17, scope: !2057, inlinedAt: !3407)
!3411 = !DILocation(line: 156, column: 62, scope: !2057, inlinedAt: !3407)
!3412 = !DILocation(line: 156, column: 57, scope: !2057, inlinedAt: !3407)
!3413 = !DILocation(line: 155, column: 17, scope: !2057, inlinedAt: !3407)
!3414 = !DILocation(line: 157, column: 15, scope: !2057, inlinedAt: !3407)
!3415 = !DILocation(line: 157, column: 7, scope: !2057, inlinedAt: !3407)
!3416 = !DILocation(line: 158, column: 12, scope: !2057, inlinedAt: !3407)
!3417 = !DILocation(line: 158, column: 15, scope: !2057, inlinedAt: !3407)
!3418 = !DILocation(line: 158, column: 25, scope: !2057, inlinedAt: !3407)
!3419 = !DILocation(line: 158, column: 7, scope: !2057, inlinedAt: !3407)
!3420 = !DILocation(line: 159, column: 18, scope: !2057, inlinedAt: !3407)
!3421 = !DILocation(line: 159, column: 23, scope: !2057, inlinedAt: !3407)
!3422 = !DILocation(line: 159, column: 6, scope: !2057, inlinedAt: !3407)
!3423 = !DILocation(line: 987, column: 10, scope: !3391)
!3424 = !DILocation(line: 988, column: 1, scope: !3391)
!3425 = !DILocation(line: 987, column: 3, scope: !3391)
!3426 = distinct !DISubprogram(name: "quotearg_char", scope: !99, file: !99, line: 991, type: !3427, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!40, !52, !41}
!3429 = !{!3430, !3431}
!3430 = !DILocalVariable(name: "arg", arg: 1, scope: !3426, file: !99, line: 991, type: !52)
!3431 = !DILocalVariable(name: "ch", arg: 2, scope: !3426, file: !99, line: 991, type: !41)
!3432 = !DILocation(line: 991, column: 28, scope: !3426)
!3433 = !DILocation(line: 991, column: 38, scope: !3426)
!3434 = !DILocation(line: 982, column: 32, scope: !3391, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 993, column: 10, scope: !3426)
!3436 = !DILocation(line: 982, column: 44, scope: !3391, inlinedAt: !3435)
!3437 = !DILocation(line: 982, column: 58, scope: !3391, inlinedAt: !3435)
!3438 = !DILocation(line: 984, column: 3, scope: !3391, inlinedAt: !3435)
!3439 = !DILocation(line: 985, column: 13, scope: !3391, inlinedAt: !3435)
!3440 = !DILocation(line: 984, column: 26, scope: !3391, inlinedAt: !3435)
!3441 = !DILocation(line: 152, column: 43, scope: !2057, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 986, column: 3, scope: !3391, inlinedAt: !3435)
!3443 = !DILocation(line: 152, column: 51, scope: !2057, inlinedAt: !3442)
!3444 = !DILocation(line: 152, column: 58, scope: !2057, inlinedAt: !3442)
!3445 = !DILocation(line: 154, column: 17, scope: !2057, inlinedAt: !3442)
!3446 = !DILocation(line: 156, column: 62, scope: !2057, inlinedAt: !3442)
!3447 = !DILocation(line: 156, column: 57, scope: !2057, inlinedAt: !3442)
!3448 = !DILocation(line: 155, column: 17, scope: !2057, inlinedAt: !3442)
!3449 = !DILocation(line: 157, column: 15, scope: !2057, inlinedAt: !3442)
!3450 = !DILocation(line: 157, column: 7, scope: !2057, inlinedAt: !3442)
!3451 = !DILocation(line: 158, column: 12, scope: !2057, inlinedAt: !3442)
!3452 = !DILocation(line: 158, column: 15, scope: !2057, inlinedAt: !3442)
!3453 = !DILocation(line: 158, column: 25, scope: !2057, inlinedAt: !3442)
!3454 = !DILocation(line: 158, column: 7, scope: !2057, inlinedAt: !3442)
!3455 = !DILocation(line: 159, column: 18, scope: !2057, inlinedAt: !3442)
!3456 = !DILocation(line: 159, column: 23, scope: !2057, inlinedAt: !3442)
!3457 = !DILocation(line: 159, column: 6, scope: !2057, inlinedAt: !3442)
!3458 = !DILocation(line: 987, column: 10, scope: !3391, inlinedAt: !3435)
!3459 = !DILocation(line: 988, column: 1, scope: !3391, inlinedAt: !3435)
!3460 = !DILocation(line: 993, column: 3, scope: !3426)
!3461 = distinct !DISubprogram(name: "quotearg_colon", scope: !99, file: !99, line: 997, type: !3245, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3462)
!3462 = !{!3463}
!3463 = !DILocalVariable(name: "arg", arg: 1, scope: !3461, file: !99, line: 997, type: !52)
!3464 = !DILocation(line: 997, column: 29, scope: !3461)
!3465 = !DILocation(line: 991, column: 28, scope: !3426, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 999, column: 10, scope: !3461)
!3467 = !DILocation(line: 991, column: 38, scope: !3426, inlinedAt: !3466)
!3468 = !DILocation(line: 982, column: 32, scope: !3391, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 993, column: 10, scope: !3426, inlinedAt: !3466)
!3470 = !DILocation(line: 982, column: 44, scope: !3391, inlinedAt: !3469)
!3471 = !DILocation(line: 982, column: 58, scope: !3391, inlinedAt: !3469)
!3472 = !DILocation(line: 984, column: 3, scope: !3391, inlinedAt: !3469)
!3473 = !DILocation(line: 985, column: 13, scope: !3391, inlinedAt: !3469)
!3474 = !DILocation(line: 984, column: 26, scope: !3391, inlinedAt: !3469)
!3475 = !DILocation(line: 152, column: 43, scope: !2057, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 986, column: 3, scope: !3391, inlinedAt: !3469)
!3477 = !DILocation(line: 152, column: 51, scope: !2057, inlinedAt: !3476)
!3478 = !DILocation(line: 152, column: 58, scope: !2057, inlinedAt: !3476)
!3479 = !DILocation(line: 154, column: 17, scope: !2057, inlinedAt: !3476)
!3480 = !DILocation(line: 156, column: 57, scope: !2057, inlinedAt: !3476)
!3481 = !DILocation(line: 155, column: 17, scope: !2057, inlinedAt: !3476)
!3482 = !DILocation(line: 157, column: 7, scope: !2057, inlinedAt: !3476)
!3483 = !DILocation(line: 158, column: 12, scope: !2057, inlinedAt: !3476)
!3484 = !DILocation(line: 159, column: 6, scope: !2057, inlinedAt: !3476)
!3485 = !DILocation(line: 987, column: 10, scope: !3391, inlinedAt: !3469)
!3486 = !DILocation(line: 988, column: 1, scope: !3391, inlinedAt: !3469)
!3487 = !DILocation(line: 999, column: 3, scope: !3461)
!3488 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !99, file: !99, line: 1003, type: !3256, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3489)
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "arg", arg: 1, scope: !3488, file: !99, line: 1003, type: !52)
!3491 = !DILocalVariable(name: "argsize", arg: 2, scope: !3488, file: !99, line: 1003, type: !93)
!3492 = !DILocation(line: 1003, column: 33, scope: !3488)
!3493 = !DILocation(line: 1003, column: 45, scope: !3488)
!3494 = !DILocation(line: 982, column: 32, scope: !3391, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 1005, column: 10, scope: !3488)
!3496 = !DILocation(line: 982, column: 44, scope: !3391, inlinedAt: !3495)
!3497 = !DILocation(line: 982, column: 58, scope: !3391, inlinedAt: !3495)
!3498 = !DILocation(line: 984, column: 3, scope: !3391, inlinedAt: !3495)
!3499 = !DILocation(line: 985, column: 13, scope: !3391, inlinedAt: !3495)
!3500 = !DILocation(line: 984, column: 26, scope: !3391, inlinedAt: !3495)
!3501 = !DILocation(line: 152, column: 43, scope: !2057, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 986, column: 3, scope: !3391, inlinedAt: !3495)
!3503 = !DILocation(line: 152, column: 51, scope: !2057, inlinedAt: !3502)
!3504 = !DILocation(line: 152, column: 58, scope: !2057, inlinedAt: !3502)
!3505 = !DILocation(line: 154, column: 17, scope: !2057, inlinedAt: !3502)
!3506 = !DILocation(line: 156, column: 57, scope: !2057, inlinedAt: !3502)
!3507 = !DILocation(line: 155, column: 17, scope: !2057, inlinedAt: !3502)
!3508 = !DILocation(line: 157, column: 7, scope: !2057, inlinedAt: !3502)
!3509 = !DILocation(line: 158, column: 12, scope: !2057, inlinedAt: !3502)
!3510 = !DILocation(line: 159, column: 6, scope: !2057, inlinedAt: !3502)
!3511 = !DILocation(line: 987, column: 10, scope: !3391, inlinedAt: !3495)
!3512 = !DILocation(line: 988, column: 1, scope: !3391, inlinedAt: !3495)
!3513 = !DILocation(line: 1005, column: 3, scope: !3488)
!3514 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !99, file: !99, line: 1009, type: !3270, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3515)
!3515 = !{!3516, !3517, !3518, !3519}
!3516 = !DILocalVariable(name: "n", arg: 1, scope: !3514, file: !99, line: 1009, type: !31)
!3517 = !DILocalVariable(name: "s", arg: 2, scope: !3514, file: !99, line: 1009, type: !73)
!3518 = !DILocalVariable(name: "arg", arg: 3, scope: !3514, file: !99, line: 1009, type: !52)
!3519 = !DILocalVariable(name: "options", scope: !3514, file: !99, line: 1011, type: !106)
!3520 = !DILocation(line: 195, column: 26, scope: !3283, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 1012, column: 13, scope: !3514)
!3522 = !DILocation(line: 1009, column: 29, scope: !3514)
!3523 = !DILocation(line: 1009, column: 51, scope: !3514)
!3524 = !DILocation(line: 1009, column: 66, scope: !3514)
!3525 = !DILocation(line: 1011, column: 3, scope: !3514)
!3526 = !DILocation(line: 1012, column: 13, scope: !3514)
!3527 = !DILocation(line: 193, column: 48, scope: !3283, inlinedAt: !3521)
!3528 = !{!3529}
!3529 = distinct !{!3529, !3530, !"quoting_options_from_style: argument 0"}
!3530 = distinct !{!3530, !"quoting_options_from_style"}
!3531 = !DILocation(line: 196, column: 13, scope: !3295, inlinedAt: !3521)
!3532 = !DILocation(line: 196, column: 7, scope: !3283, inlinedAt: !3521)
!3533 = !DILocation(line: 197, column: 5, scope: !3295, inlinedAt: !3521)
!3534 = !DILocation(line: 1011, column: 26, scope: !3514)
!3535 = !DILocation(line: 152, column: 43, scope: !2057, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 1013, column: 3, scope: !3514)
!3537 = !DILocation(line: 152, column: 51, scope: !2057, inlinedAt: !3536)
!3538 = !DILocation(line: 152, column: 58, scope: !2057, inlinedAt: !3536)
!3539 = !DILocation(line: 154, column: 17, scope: !2057, inlinedAt: !3536)
!3540 = !DILocation(line: 156, column: 57, scope: !2057, inlinedAt: !3536)
!3541 = !DILocation(line: 155, column: 17, scope: !2057, inlinedAt: !3536)
!3542 = !DILocation(line: 157, column: 7, scope: !2057, inlinedAt: !3536)
!3543 = !DILocation(line: 158, column: 12, scope: !2057, inlinedAt: !3536)
!3544 = !DILocation(line: 159, column: 6, scope: !2057, inlinedAt: !3536)
!3545 = !DILocation(line: 1014, column: 10, scope: !3514)
!3546 = !DILocation(line: 1015, column: 1, scope: !3514)
!3547 = !DILocation(line: 1014, column: 3, scope: !3514)
!3548 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !99, file: !99, line: 1018, type: !3549, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!40, !31, !52, !52, !52}
!3551 = !{!3552, !3553, !3554, !3555}
!3552 = !DILocalVariable(name: "n", arg: 1, scope: !3548, file: !99, line: 1018, type: !31)
!3553 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3548, file: !99, line: 1018, type: !52)
!3554 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3548, file: !99, line: 1019, type: !52)
!3555 = !DILocalVariable(name: "arg", arg: 4, scope: !3548, file: !99, line: 1019, type: !52)
!3556 = !DILocation(line: 1018, column: 24, scope: !3548)
!3557 = !DILocation(line: 1018, column: 39, scope: !3548)
!3558 = !DILocation(line: 1019, column: 32, scope: !3548)
!3559 = !DILocation(line: 1019, column: 57, scope: !3548)
!3560 = !DILocalVariable(name: "n", arg: 1, scope: !3561, file: !99, line: 1026, type: !31)
!3561 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !99, file: !99, line: 1026, type: !3562, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!40, !31, !52, !52, !52, !93}
!3564 = !{!3560, !3565, !3566, !3567, !3568, !3569}
!3565 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3561, file: !99, line: 1026, type: !52)
!3566 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3561, file: !99, line: 1027, type: !52)
!3567 = !DILocalVariable(name: "arg", arg: 4, scope: !3561, file: !99, line: 1028, type: !52)
!3568 = !DILocalVariable(name: "argsize", arg: 5, scope: !3561, file: !99, line: 1028, type: !93)
!3569 = !DILocalVariable(name: "o", scope: !3561, file: !99, line: 1030, type: !106)
!3570 = !DILocation(line: 1026, column: 28, scope: !3561, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 1021, column: 10, scope: !3548)
!3572 = !DILocation(line: 1026, column: 43, scope: !3561, inlinedAt: !3571)
!3573 = !DILocation(line: 1027, column: 36, scope: !3561, inlinedAt: !3571)
!3574 = !DILocation(line: 1028, column: 36, scope: !3561, inlinedAt: !3571)
!3575 = !DILocation(line: 1028, column: 48, scope: !3561, inlinedAt: !3571)
!3576 = !DILocation(line: 1030, column: 3, scope: !3561, inlinedAt: !3571)
!3577 = !DILocation(line: 1030, column: 30, scope: !3561, inlinedAt: !3571)
!3578 = !DILocation(line: 1030, column: 26, scope: !3561, inlinedAt: !3571)
!3579 = !DILocation(line: 179, column: 45, scope: !2106, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 1031, column: 3, scope: !3561, inlinedAt: !3571)
!3581 = !DILocation(line: 180, column: 33, scope: !2106, inlinedAt: !3580)
!3582 = !DILocation(line: 180, column: 57, scope: !2106, inlinedAt: !3580)
!3583 = !DILocation(line: 184, column: 6, scope: !2106, inlinedAt: !3580)
!3584 = !DILocation(line: 184, column: 12, scope: !2106, inlinedAt: !3580)
!3585 = !DILocation(line: 185, column: 8, scope: !2122, inlinedAt: !3580)
!3586 = !DILocation(line: 185, column: 23, scope: !2122, inlinedAt: !3580)
!3587 = !DILocation(line: 185, column: 19, scope: !2122, inlinedAt: !3580)
!3588 = !DILocation(line: 186, column: 5, scope: !2122, inlinedAt: !3580)
!3589 = !DILocation(line: 187, column: 6, scope: !2106, inlinedAt: !3580)
!3590 = !DILocation(line: 187, column: 17, scope: !2106, inlinedAt: !3580)
!3591 = !DILocation(line: 188, column: 6, scope: !2106, inlinedAt: !3580)
!3592 = !DILocation(line: 188, column: 18, scope: !2106, inlinedAt: !3580)
!3593 = !DILocation(line: 1032, column: 10, scope: !3561, inlinedAt: !3571)
!3594 = !DILocation(line: 1033, column: 1, scope: !3561, inlinedAt: !3571)
!3595 = !DILocation(line: 1021, column: 3, scope: !3548)
!3596 = !DILocation(line: 1026, column: 28, scope: !3561)
!3597 = !DILocation(line: 1026, column: 43, scope: !3561)
!3598 = !DILocation(line: 1027, column: 36, scope: !3561)
!3599 = !DILocation(line: 1028, column: 36, scope: !3561)
!3600 = !DILocation(line: 1028, column: 48, scope: !3561)
!3601 = !DILocation(line: 1030, column: 3, scope: !3561)
!3602 = !DILocation(line: 1030, column: 30, scope: !3561)
!3603 = !DILocation(line: 1030, column: 26, scope: !3561)
!3604 = !DILocation(line: 179, column: 45, scope: !2106, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1031, column: 3, scope: !3561)
!3606 = !DILocation(line: 180, column: 33, scope: !2106, inlinedAt: !3605)
!3607 = !DILocation(line: 180, column: 57, scope: !2106, inlinedAt: !3605)
!3608 = !DILocation(line: 184, column: 6, scope: !2106, inlinedAt: !3605)
!3609 = !DILocation(line: 184, column: 12, scope: !2106, inlinedAt: !3605)
!3610 = !DILocation(line: 185, column: 8, scope: !2122, inlinedAt: !3605)
!3611 = !DILocation(line: 185, column: 23, scope: !2122, inlinedAt: !3605)
!3612 = !DILocation(line: 185, column: 19, scope: !2122, inlinedAt: !3605)
!3613 = !DILocation(line: 186, column: 5, scope: !2122, inlinedAt: !3605)
!3614 = !DILocation(line: 187, column: 6, scope: !2106, inlinedAt: !3605)
!3615 = !DILocation(line: 187, column: 17, scope: !2106, inlinedAt: !3605)
!3616 = !DILocation(line: 188, column: 6, scope: !2106, inlinedAt: !3605)
!3617 = !DILocation(line: 188, column: 18, scope: !2106, inlinedAt: !3605)
!3618 = !DILocation(line: 1032, column: 10, scope: !3561)
!3619 = !DILocation(line: 1033, column: 1, scope: !3561)
!3620 = !DILocation(line: 1032, column: 3, scope: !3561)
!3621 = distinct !DISubprogram(name: "quotearg_custom", scope: !99, file: !99, line: 1036, type: !3622, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!40, !52, !52, !52}
!3624 = !{!3625, !3626, !3627}
!3625 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3621, file: !99, line: 1036, type: !52)
!3626 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3621, file: !99, line: 1036, type: !52)
!3627 = !DILocalVariable(name: "arg", arg: 3, scope: !3621, file: !99, line: 1037, type: !52)
!3628 = !DILocation(line: 1036, column: 30, scope: !3621)
!3629 = !DILocation(line: 1036, column: 54, scope: !3621)
!3630 = !DILocation(line: 1037, column: 30, scope: !3621)
!3631 = !DILocation(line: 1018, column: 24, scope: !3548, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 1039, column: 10, scope: !3621)
!3633 = !DILocation(line: 1018, column: 39, scope: !3548, inlinedAt: !3632)
!3634 = !DILocation(line: 1019, column: 32, scope: !3548, inlinedAt: !3632)
!3635 = !DILocation(line: 1019, column: 57, scope: !3548, inlinedAt: !3632)
!3636 = !DILocation(line: 1026, column: 28, scope: !3561, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 1021, column: 10, scope: !3548, inlinedAt: !3632)
!3638 = !DILocation(line: 1026, column: 43, scope: !3561, inlinedAt: !3637)
!3639 = !DILocation(line: 1027, column: 36, scope: !3561, inlinedAt: !3637)
!3640 = !DILocation(line: 1028, column: 36, scope: !3561, inlinedAt: !3637)
!3641 = !DILocation(line: 1028, column: 48, scope: !3561, inlinedAt: !3637)
!3642 = !DILocation(line: 1030, column: 3, scope: !3561, inlinedAt: !3637)
!3643 = !DILocation(line: 1030, column: 30, scope: !3561, inlinedAt: !3637)
!3644 = !DILocation(line: 1030, column: 26, scope: !3561, inlinedAt: !3637)
!3645 = !DILocation(line: 179, column: 45, scope: !2106, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 1031, column: 3, scope: !3561, inlinedAt: !3637)
!3647 = !DILocation(line: 180, column: 33, scope: !2106, inlinedAt: !3646)
!3648 = !DILocation(line: 180, column: 57, scope: !2106, inlinedAt: !3646)
!3649 = !DILocation(line: 184, column: 6, scope: !2106, inlinedAt: !3646)
!3650 = !DILocation(line: 184, column: 12, scope: !2106, inlinedAt: !3646)
!3651 = !DILocation(line: 185, column: 8, scope: !2122, inlinedAt: !3646)
!3652 = !DILocation(line: 185, column: 23, scope: !2122, inlinedAt: !3646)
!3653 = !DILocation(line: 185, column: 19, scope: !2122, inlinedAt: !3646)
!3654 = !DILocation(line: 186, column: 5, scope: !2122, inlinedAt: !3646)
!3655 = !DILocation(line: 187, column: 6, scope: !2106, inlinedAt: !3646)
!3656 = !DILocation(line: 187, column: 17, scope: !2106, inlinedAt: !3646)
!3657 = !DILocation(line: 188, column: 6, scope: !2106, inlinedAt: !3646)
!3658 = !DILocation(line: 188, column: 18, scope: !2106, inlinedAt: !3646)
!3659 = !DILocation(line: 1032, column: 10, scope: !3561, inlinedAt: !3637)
!3660 = !DILocation(line: 1033, column: 1, scope: !3561, inlinedAt: !3637)
!3661 = !DILocation(line: 1039, column: 3, scope: !3621)
!3662 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !99, file: !99, line: 1043, type: !3663, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!40, !52, !52, !52, !93}
!3665 = !{!3666, !3667, !3668, !3669}
!3666 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3662, file: !99, line: 1043, type: !52)
!3667 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3662, file: !99, line: 1043, type: !52)
!3668 = !DILocalVariable(name: "arg", arg: 3, scope: !3662, file: !99, line: 1044, type: !52)
!3669 = !DILocalVariable(name: "argsize", arg: 4, scope: !3662, file: !99, line: 1044, type: !93)
!3670 = !DILocation(line: 1043, column: 34, scope: !3662)
!3671 = !DILocation(line: 1043, column: 58, scope: !3662)
!3672 = !DILocation(line: 1044, column: 34, scope: !3662)
!3673 = !DILocation(line: 1044, column: 46, scope: !3662)
!3674 = !DILocation(line: 1026, column: 28, scope: !3561, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 1046, column: 10, scope: !3662)
!3676 = !DILocation(line: 1026, column: 43, scope: !3561, inlinedAt: !3675)
!3677 = !DILocation(line: 1027, column: 36, scope: !3561, inlinedAt: !3675)
!3678 = !DILocation(line: 1028, column: 36, scope: !3561, inlinedAt: !3675)
!3679 = !DILocation(line: 1028, column: 48, scope: !3561, inlinedAt: !3675)
!3680 = !DILocation(line: 1030, column: 3, scope: !3561, inlinedAt: !3675)
!3681 = !DILocation(line: 1030, column: 30, scope: !3561, inlinedAt: !3675)
!3682 = !DILocation(line: 1030, column: 26, scope: !3561, inlinedAt: !3675)
!3683 = !DILocation(line: 179, column: 45, scope: !2106, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 1031, column: 3, scope: !3561, inlinedAt: !3675)
!3685 = !DILocation(line: 180, column: 33, scope: !2106, inlinedAt: !3684)
!3686 = !DILocation(line: 180, column: 57, scope: !2106, inlinedAt: !3684)
!3687 = !DILocation(line: 184, column: 6, scope: !2106, inlinedAt: !3684)
!3688 = !DILocation(line: 184, column: 12, scope: !2106, inlinedAt: !3684)
!3689 = !DILocation(line: 185, column: 8, scope: !2122, inlinedAt: !3684)
!3690 = !DILocation(line: 185, column: 23, scope: !2122, inlinedAt: !3684)
!3691 = !DILocation(line: 185, column: 19, scope: !2122, inlinedAt: !3684)
!3692 = !DILocation(line: 186, column: 5, scope: !2122, inlinedAt: !3684)
!3693 = !DILocation(line: 187, column: 6, scope: !2106, inlinedAt: !3684)
!3694 = !DILocation(line: 187, column: 17, scope: !2106, inlinedAt: !3684)
!3695 = !DILocation(line: 188, column: 6, scope: !2106, inlinedAt: !3684)
!3696 = !DILocation(line: 188, column: 18, scope: !2106, inlinedAt: !3684)
!3697 = !DILocation(line: 1032, column: 10, scope: !3561, inlinedAt: !3675)
!3698 = !DILocation(line: 1033, column: 1, scope: !3561, inlinedAt: !3675)
!3699 = !DILocation(line: 1046, column: 3, scope: !3662)
!3700 = distinct !DISubprogram(name: "quote_n_mem", scope: !99, file: !99, line: 1061, type: !3701, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!52, !31, !52, !93}
!3703 = !{!3704, !3705, !3706}
!3704 = !DILocalVariable(name: "n", arg: 1, scope: !3700, file: !99, line: 1061, type: !31)
!3705 = !DILocalVariable(name: "arg", arg: 2, scope: !3700, file: !99, line: 1061, type: !52)
!3706 = !DILocalVariable(name: "argsize", arg: 3, scope: !3700, file: !99, line: 1061, type: !93)
!3707 = !DILocation(line: 1061, column: 18, scope: !3700)
!3708 = !DILocation(line: 1061, column: 33, scope: !3700)
!3709 = !DILocation(line: 1061, column: 45, scope: !3700)
!3710 = !DILocation(line: 1063, column: 10, scope: !3700)
!3711 = !DILocation(line: 1063, column: 3, scope: !3700)
!3712 = distinct !DISubprogram(name: "quote_mem", scope: !99, file: !99, line: 1067, type: !3713, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!52, !52, !93}
!3715 = !{!3716, !3717}
!3716 = !DILocalVariable(name: "arg", arg: 1, scope: !3712, file: !99, line: 1067, type: !52)
!3717 = !DILocalVariable(name: "argsize", arg: 2, scope: !3712, file: !99, line: 1067, type: !93)
!3718 = !DILocation(line: 1067, column: 24, scope: !3712)
!3719 = !DILocation(line: 1067, column: 36, scope: !3712)
!3720 = !DILocation(line: 1061, column: 18, scope: !3700, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 1069, column: 10, scope: !3712)
!3722 = !DILocation(line: 1061, column: 33, scope: !3700, inlinedAt: !3721)
!3723 = !DILocation(line: 1061, column: 45, scope: !3700, inlinedAt: !3721)
!3724 = !DILocation(line: 1063, column: 10, scope: !3700, inlinedAt: !3721)
!3725 = !DILocation(line: 1069, column: 3, scope: !3712)
!3726 = distinct !DISubprogram(name: "quote_n", scope: !99, file: !99, line: 1073, type: !3727, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!52, !31, !52}
!3729 = !{!3730, !3731}
!3730 = !DILocalVariable(name: "n", arg: 1, scope: !3726, file: !99, line: 1073, type: !31)
!3731 = !DILocalVariable(name: "arg", arg: 2, scope: !3726, file: !99, line: 1073, type: !52)
!3732 = !DILocation(line: 1073, column: 14, scope: !3726)
!3733 = !DILocation(line: 1073, column: 29, scope: !3726)
!3734 = !DILocation(line: 1061, column: 18, scope: !3700, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1075, column: 10, scope: !3726)
!3736 = !DILocation(line: 1061, column: 33, scope: !3700, inlinedAt: !3735)
!3737 = !DILocation(line: 1061, column: 45, scope: !3700, inlinedAt: !3735)
!3738 = !DILocation(line: 1063, column: 10, scope: !3700, inlinedAt: !3735)
!3739 = !DILocation(line: 1075, column: 3, scope: !3726)
!3740 = distinct !DISubprogram(name: "quote", scope: !99, file: !99, line: 1079, type: !1855, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !70, retainedNodes: !3741)
!3741 = !{!3742}
!3742 = !DILocalVariable(name: "arg", arg: 1, scope: !3740, file: !99, line: 1079, type: !52)
!3743 = !DILocation(line: 1079, column: 20, scope: !3740)
!3744 = !DILocation(line: 1073, column: 14, scope: !3726, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 1081, column: 10, scope: !3740)
!3746 = !DILocation(line: 1073, column: 29, scope: !3726, inlinedAt: !3745)
!3747 = !DILocation(line: 1061, column: 18, scope: !3700, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 1075, column: 10, scope: !3726, inlinedAt: !3745)
!3749 = !DILocation(line: 1061, column: 33, scope: !3700, inlinedAt: !3748)
!3750 = !DILocation(line: 1061, column: 45, scope: !3700, inlinedAt: !3748)
!3751 = !DILocation(line: 1063, column: 10, scope: !3700, inlinedAt: !3748)
!3752 = !DILocation(line: 1081, column: 3, scope: !3740)
!3753 = distinct !DISubprogram(name: "strintcmp", scope: !3754, file: !3754, line: 29, type: !3755, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3757)
!3754 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!31, !52, !52}
!3757 = !{!3758, !3759}
!3758 = !DILocalVariable(name: "a", arg: 1, scope: !3753, file: !3754, line: 29, type: !52)
!3759 = !DILocalVariable(name: "b", arg: 2, scope: !3753, file: !3754, line: 29, type: !52)
!3760 = !DILocation(line: 29, column: 24, scope: !3753)
!3761 = !DILocation(line: 29, column: 39, scope: !3753)
!3762 = !DILocalVariable(name: "a", arg: 1, scope: !3763, file: !3764, line: 114, type: !52)
!3763 = distinct !DISubprogram(name: "numcompare", scope: !3764, file: !3764, line: 114, type: !3765, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !145, retainedNodes: !3767)
!3764 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!31, !52, !52, !31, !31}
!3767 = !{!3762, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3768 = !DILocalVariable(name: "b", arg: 2, scope: !3763, file: !3764, line: 114, type: !52)
!3769 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3763, file: !3764, line: 115, type: !31)
!3770 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3763, file: !3764, line: 115, type: !31)
!3771 = !DILocalVariable(name: "tmpa", scope: !3763, file: !3764, line: 117, type: !2065)
!3772 = !DILocalVariable(name: "tmpb", scope: !3763, file: !3764, line: 118, type: !2065)
!3773 = !DILocalVariable(name: "tmp", scope: !3763, file: !3764, line: 119, type: !31)
!3774 = !DILocalVariable(name: "log_a", scope: !3763, file: !3764, line: 120, type: !93)
!3775 = !DILocalVariable(name: "log_b", scope: !3763, file: !3764, line: 121, type: !93)
!3776 = !DILocation(line: 114, column: 25, scope: !3763, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 31, column: 10, scope: !3753)
!3778 = !DILocation(line: 114, column: 40, scope: !3763, inlinedAt: !3777)
!3779 = !DILocation(line: 115, column: 17, scope: !3763, inlinedAt: !3777)
!3780 = !DILocation(line: 115, column: 36, scope: !3763, inlinedAt: !3777)
!3781 = !DILocation(line: 117, column: 24, scope: !3763, inlinedAt: !3777)
!3782 = !DILocation(line: 117, column: 17, scope: !3763, inlinedAt: !3777)
!3783 = !DILocation(line: 118, column: 24, scope: !3763, inlinedAt: !3777)
!3784 = !DILocation(line: 118, column: 17, scope: !3763, inlinedAt: !3777)
!3785 = !DILocation(line: 123, column: 12, scope: !3786, inlinedAt: !3777)
!3786 = distinct !DILexicalBlock(scope: !3763, file: !3764, line: 123, column: 7)
!3787 = !DILocation(line: 123, column: 7, scope: !3763, inlinedAt: !3777)
!3788 = !DILocation(line: 126, column: 17, scope: !3789, inlinedAt: !3777)
!3789 = distinct !DILexicalBlock(scope: !3786, file: !3764, line: 124, column: 5)
!3790 = !DILocation(line: 126, column: 16, scope: !3789, inlinedAt: !3777)
!3791 = !DILocation(line: 127, column: 19, scope: !3789, inlinedAt: !3777)
!3792 = !DILocation(line: 127, column: 35, scope: !3789, inlinedAt: !3777)
!3793 = !DILocation(line: 128, column: 16, scope: !3794, inlinedAt: !3777)
!3794 = distinct !DILexicalBlock(scope: !3789, file: !3764, line: 128, column: 11)
!3795 = !DILocation(line: 128, column: 11, scope: !3789, inlinedAt: !3777)
!3796 = !DILocation(line: 134, column: 15, scope: !3797, inlinedAt: !3777)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !3764, line: 134, column: 15)
!3798 = distinct !DILexicalBlock(scope: !3794, file: !3764, line: 129, column: 9)
!3799 = !DILocation(line: 134, column: 15, scope: !3798, inlinedAt: !3777)
!3800 = !DILocation(line: 136, column: 23, scope: !3798, inlinedAt: !3777)
!3801 = !DILocation(line: 136, column: 39, scope: !3798, inlinedAt: !3777)
!3802 = !DILocation(line: 137, column: 21, scope: !3798, inlinedAt: !3777)
!3803 = !DILocation(line: 137, column: 20, scope: !3798, inlinedAt: !3777)
!3804 = distinct !{!3804, !3805, !3806}
!3805 = !DILocation(line: 136, column: 11, scope: !3798)
!3806 = !DILocation(line: 137, column: 23, scope: !3798)
!3807 = !DILocation(line: 0, scope: !3798, inlinedAt: !3777)
!3808 = !DILocation(line: 142, column: 20, scope: !3798, inlinedAt: !3777)
!3809 = !DILocation(line: 142, column: 18, scope: !3798, inlinedAt: !3777)
!3810 = !DILocation(line: 142, column: 11, scope: !3798, inlinedAt: !3777)
!3811 = !DILocation(line: 145, column: 17, scope: !3789, inlinedAt: !3777)
!3812 = !DILocation(line: 145, column: 16, scope: !3789, inlinedAt: !3777)
!3813 = !DILocation(line: 146, column: 19, scope: !3789, inlinedAt: !3777)
!3814 = !DILocation(line: 146, column: 35, scope: !3789, inlinedAt: !3777)
!3815 = !DILocation(line: 148, column: 14, scope: !3789, inlinedAt: !3777)
!3816 = !DILocation(line: 148, column: 19, scope: !3789, inlinedAt: !3777)
!3817 = !DILocation(line: 148, column: 30, scope: !3789, inlinedAt: !3777)
!3818 = !DILocation(line: 148, column: 27, scope: !3789, inlinedAt: !3777)
!3819 = !DILocation(line: 151, column: 21, scope: !3820, inlinedAt: !3777)
!3820 = distinct !DILexicalBlock(scope: !3789, file: !3764, line: 149, column: 9)
!3821 = !DILocation(line: 151, column: 20, scope: !3820, inlinedAt: !3777)
!3822 = !DILocation(line: 154, column: 21, scope: !3820, inlinedAt: !3777)
!3823 = !DILocation(line: 154, column: 20, scope: !3820, inlinedAt: !3777)
!3824 = !DILocation(line: 148, column: 22, scope: !3789, inlinedAt: !3777)
!3825 = !DILocation(line: 164, column: 23, scope: !3826, inlinedAt: !3777)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3764, line: 164, column: 7)
!3827 = distinct !DILexicalBlock(scope: !3789, file: !3764, line: 164, column: 7)
!3828 = !DILocation(line: 0, scope: !3820, inlinedAt: !3777)
!3829 = !DILocation(line: 162, column: 18, scope: !3789, inlinedAt: !3777)
!3830 = !DILocation(line: 119, column: 7, scope: !3763, inlinedAt: !3777)
!3831 = !DILocation(line: 120, column: 10, scope: !3763, inlinedAt: !3777)
!3832 = !DILocation(line: 164, column: 7, scope: !3827, inlinedAt: !3777)
!3833 = !DILocation(line: 0, scope: !3826, inlinedAt: !3777)
!3834 = !DILocation(line: 121, column: 10, scope: !3763, inlinedAt: !3777)
!3835 = !DILocation(line: 169, column: 23, scope: !3836, inlinedAt: !3777)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !3764, line: 169, column: 7)
!3837 = distinct !DILexicalBlock(scope: !3789, file: !3764, line: 169, column: 7)
!3838 = !DILocation(line: 169, column: 7, scope: !3837, inlinedAt: !3777)
!3839 = !DILocation(line: 166, column: 19, scope: !3826, inlinedAt: !3777)
!3840 = !DILocation(line: 166, column: 18, scope: !3826, inlinedAt: !3777)
!3841 = !DILocation(line: 164, column: 39, scope: !3826, inlinedAt: !3777)
!3842 = distinct !{!3842, !3843, !3844}
!3843 = !DILocation(line: 164, column: 7, scope: !3827)
!3844 = !DILocation(line: 167, column: 37, scope: !3827)
!3845 = !DILocation(line: 171, column: 19, scope: !3836, inlinedAt: !3777)
!3846 = !DILocation(line: 171, column: 18, scope: !3836, inlinedAt: !3777)
!3847 = !DILocation(line: 169, column: 39, scope: !3836, inlinedAt: !3777)
!3848 = distinct !{!3848, !3849, !3850}
!3849 = !DILocation(line: 169, column: 7, scope: !3837)
!3850 = !DILocation(line: 172, column: 37, scope: !3837)
!3851 = !DILocation(line: 0, scope: !3836, inlinedAt: !3777)
!3852 = !DILocation(line: 174, column: 17, scope: !3853, inlinedAt: !3777)
!3853 = distinct !DILexicalBlock(scope: !3789, file: !3764, line: 174, column: 11)
!3854 = !DILocation(line: 174, column: 11, scope: !3789, inlinedAt: !3777)
!3855 = !DILocation(line: 175, column: 22, scope: !3853, inlinedAt: !3777)
!3856 = !DILocation(line: 175, column: 16, scope: !3853, inlinedAt: !3777)
!3857 = !DILocation(line: 175, column: 9, scope: !3853, inlinedAt: !3777)
!3858 = !DILocation(line: 177, column: 12, scope: !3859, inlinedAt: !3777)
!3859 = distinct !DILexicalBlock(scope: !3789, file: !3764, line: 177, column: 11)
!3860 = !DILocation(line: 178, column: 9, scope: !3859, inlinedAt: !3777)
!3861 = !DILocation(line: 182, column: 17, scope: !3862, inlinedAt: !3777)
!3862 = distinct !DILexicalBlock(scope: !3786, file: !3764, line: 182, column: 12)
!3863 = !DILocation(line: 182, column: 12, scope: !3786, inlinedAt: !3777)
!3864 = !DILocation(line: 203, column: 19, scope: !3865, inlinedAt: !3777)
!3865 = distinct !DILexicalBlock(scope: !3862, file: !3764, line: 202, column: 5)
!3866 = !DILocation(line: 203, column: 35, scope: !3865, inlinedAt: !3777)
!3867 = !DILocation(line: 185, column: 17, scope: !3868, inlinedAt: !3777)
!3868 = distinct !DILexicalBlock(scope: !3862, file: !3764, line: 183, column: 5)
!3869 = !DILocation(line: 185, column: 16, scope: !3868, inlinedAt: !3777)
!3870 = !DILocation(line: 186, column: 19, scope: !3868, inlinedAt: !3777)
!3871 = !DILocation(line: 186, column: 35, scope: !3868, inlinedAt: !3777)
!3872 = !DILocation(line: 191, column: 11, scope: !3873, inlinedAt: !3777)
!3873 = distinct !DILexicalBlock(scope: !3868, file: !3764, line: 191, column: 11)
!3874 = !DILocation(line: 191, column: 11, scope: !3868, inlinedAt: !3777)
!3875 = !DILocation(line: 193, column: 19, scope: !3868, inlinedAt: !3777)
!3876 = !DILocation(line: 193, column: 35, scope: !3868, inlinedAt: !3777)
!3877 = !DILocation(line: 194, column: 17, scope: !3868, inlinedAt: !3777)
!3878 = !DILocation(line: 194, column: 16, scope: !3868, inlinedAt: !3777)
!3879 = distinct !{!3879, !3880, !3881}
!3880 = !DILocation(line: 193, column: 7, scope: !3868)
!3881 = !DILocation(line: 194, column: 19, scope: !3868)
!3882 = !DILocation(line: 0, scope: !3868, inlinedAt: !3777)
!3883 = !DILocation(line: 199, column: 14, scope: !3868, inlinedAt: !3777)
!3884 = !DILocation(line: 199, column: 7, scope: !3868, inlinedAt: !3777)
!3885 = !DILocation(line: 0, scope: !3865, inlinedAt: !3777)
!3886 = !DILocation(line: 205, column: 19, scope: !3865, inlinedAt: !3777)
!3887 = !DILocation(line: 205, column: 35, scope: !3865, inlinedAt: !3777)
!3888 = !DILocation(line: 204, column: 17, scope: !3865, inlinedAt: !3777)
!3889 = !DILocation(line: 204, column: 16, scope: !3865, inlinedAt: !3777)
!3890 = distinct !{!3890, !3891, !3892}
!3891 = !DILocation(line: 203, column: 7, scope: !3865)
!3892 = !DILocation(line: 204, column: 19, scope: !3865)
!3893 = !DILocation(line: 208, column: 14, scope: !3865, inlinedAt: !3777)
!3894 = !DILocation(line: 208, column: 19, scope: !3865, inlinedAt: !3777)
!3895 = !DILocation(line: 208, column: 30, scope: !3865, inlinedAt: !3777)
!3896 = !DILocation(line: 208, column: 27, scope: !3865, inlinedAt: !3777)
!3897 = !DILocation(line: 206, column: 17, scope: !3865, inlinedAt: !3777)
!3898 = !DILocation(line: 206, column: 16, scope: !3865, inlinedAt: !3777)
!3899 = distinct !{!3899, !3900, !3901}
!3900 = !DILocation(line: 205, column: 7, scope: !3865)
!3901 = !DILocation(line: 206, column: 19, scope: !3865)
!3902 = !DILocation(line: 211, column: 21, scope: !3903, inlinedAt: !3777)
!3903 = distinct !DILexicalBlock(scope: !3865, file: !3764, line: 209, column: 9)
!3904 = !DILocation(line: 211, column: 20, scope: !3903, inlinedAt: !3777)
!3905 = !DILocation(line: 214, column: 21, scope: !3903, inlinedAt: !3777)
!3906 = !DILocation(line: 214, column: 20, scope: !3903, inlinedAt: !3777)
!3907 = !DILocation(line: 208, column: 22, scope: !3865, inlinedAt: !3777)
!3908 = !DILocation(line: 224, column: 23, scope: !3909, inlinedAt: !3777)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !3764, line: 224, column: 7)
!3910 = distinct !DILexicalBlock(scope: !3865, file: !3764, line: 224, column: 7)
!3911 = !DILocation(line: 0, scope: !3903, inlinedAt: !3777)
!3912 = !DILocation(line: 222, column: 18, scope: !3865, inlinedAt: !3777)
!3913 = !DILocation(line: 224, column: 7, scope: !3910, inlinedAt: !3777)
!3914 = !DILocation(line: 0, scope: !3909, inlinedAt: !3777)
!3915 = !DILocation(line: 229, column: 23, scope: !3916, inlinedAt: !3777)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !3764, line: 229, column: 7)
!3917 = distinct !DILexicalBlock(scope: !3865, file: !3764, line: 229, column: 7)
!3918 = !DILocation(line: 229, column: 7, scope: !3917, inlinedAt: !3777)
!3919 = !DILocation(line: 226, column: 19, scope: !3909, inlinedAt: !3777)
!3920 = !DILocation(line: 226, column: 18, scope: !3909, inlinedAt: !3777)
!3921 = !DILocation(line: 224, column: 39, scope: !3909, inlinedAt: !3777)
!3922 = distinct !{!3922, !3923, !3924}
!3923 = !DILocation(line: 224, column: 7, scope: !3910)
!3924 = !DILocation(line: 227, column: 37, scope: !3910)
!3925 = !DILocation(line: 231, column: 19, scope: !3916, inlinedAt: !3777)
!3926 = !DILocation(line: 231, column: 18, scope: !3916, inlinedAt: !3777)
!3927 = !DILocation(line: 229, column: 39, scope: !3916, inlinedAt: !3777)
!3928 = distinct !{!3928, !3929, !3930}
!3929 = !DILocation(line: 229, column: 7, scope: !3917)
!3930 = !DILocation(line: 232, column: 37, scope: !3917)
!3931 = !DILocation(line: 0, scope: !3916, inlinedAt: !3777)
!3932 = !DILocation(line: 234, column: 17, scope: !3933, inlinedAt: !3777)
!3933 = distinct !DILexicalBlock(scope: !3865, file: !3764, line: 234, column: 11)
!3934 = !DILocation(line: 234, column: 11, scope: !3865, inlinedAt: !3777)
!3935 = !DILocation(line: 235, column: 22, scope: !3933, inlinedAt: !3777)
!3936 = !DILocation(line: 235, column: 16, scope: !3933, inlinedAt: !3777)
!3937 = !DILocation(line: 235, column: 9, scope: !3933, inlinedAt: !3777)
!3938 = !DILocation(line: 237, column: 12, scope: !3939, inlinedAt: !3777)
!3939 = distinct !DILexicalBlock(scope: !3865, file: !3764, line: 237, column: 11)
!3940 = !DILocation(line: 238, column: 9, scope: !3939, inlinedAt: !3777)
!3941 = !DILocation(line: 0, scope: !3942, inlinedAt: !3777)
!3942 = distinct !DILexicalBlock(scope: !3865, file: !3764, line: 218, column: 11)
!3943 = !DILocation(line: 31, column: 3, scope: !3753)
!3944 = distinct !DISubprogram(name: "verror", scope: !3945, file: !3945, line: 43, type: !3946, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !148, retainedNodes: !3955)
!3945 = !DIFile(filename: "lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !31, !31, !52, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !149, size: 192, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3949, file: !149, baseType: !6, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3949, file: !149, baseType: !6, size: 32, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3949, file: !149, baseType: !33, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3949, file: !149, baseType: !33, size: 64, offset: 128)
!3955 = !{!3956, !3957, !3958, !3959}
!3956 = !DILocalVariable(name: "status", arg: 1, scope: !3944, file: !3945, line: 43, type: !31)
!3957 = !DILocalVariable(name: "errnum", arg: 2, scope: !3944, file: !3945, line: 43, type: !31)
!3958 = !DILocalVariable(name: "format", arg: 3, scope: !3944, file: !3945, line: 43, type: !52)
!3959 = !DILocalVariable(name: "args", arg: 4, scope: !3944, file: !3945, line: 43, type: !3948)
!3960 = !DILocation(line: 43, column: 13, scope: !3944)
!3961 = !DILocation(line: 43, column: 25, scope: !3944)
!3962 = !DILocation(line: 43, column: 45, scope: !3944)
!3963 = !DILocation(line: 43, column: 61, scope: !3944)
!3964 = !DILocation(line: 45, column: 3, scope: !3944)
!3965 = !DILocation(line: 46, column: 1, scope: !3944)
!3966 = distinct !DISubprogram(name: "verror_at_line", scope: !3945, file: !3945, line: 55, type: !3967, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !148, retainedNodes: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !31, !31, !52, !6, !52, !3948}
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976}
!3970 = !DILocalVariable(name: "status", arg: 1, scope: !3966, file: !3945, line: 55, type: !31)
!3971 = !DILocalVariable(name: "errnum", arg: 2, scope: !3966, file: !3945, line: 55, type: !31)
!3972 = !DILocalVariable(name: "file", arg: 3, scope: !3966, file: !3945, line: 55, type: !52)
!3973 = !DILocalVariable(name: "line_number", arg: 4, scope: !3966, file: !3945, line: 56, type: !6)
!3974 = !DILocalVariable(name: "format", arg: 5, scope: !3966, file: !3945, line: 56, type: !52)
!3975 = !DILocalVariable(name: "args", arg: 6, scope: !3966, file: !3945, line: 56, type: !3948)
!3976 = !DILocalVariable(name: "message", scope: !3966, file: !3945, line: 58, type: !40)
!3977 = !DILocation(line: 55, column: 21, scope: !3966)
!3978 = !DILocation(line: 55, column: 33, scope: !3966)
!3979 = !DILocation(line: 55, column: 53, scope: !3966)
!3980 = !DILocation(line: 56, column: 30, scope: !3966)
!3981 = !DILocation(line: 56, column: 55, scope: !3966)
!3982 = !DILocation(line: 56, column: 71, scope: !3966)
!3983 = !DILocation(line: 58, column: 19, scope: !3966)
!3984 = !DILocation(line: 58, column: 9, scope: !3966)
!3985 = !DILocation(line: 59, column: 7, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3966, file: !3945, line: 59, column: 7)
!3987 = !DILocation(line: 59, column: 7, scope: !3966)
!3988 = !DILocation(line: 64, column: 11, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !3945, line: 64, column: 11)
!3990 = distinct !DILexicalBlock(scope: !3986, file: !3945, line: 60, column: 5)
!3991 = !DILocation(line: 64, column: 11, scope: !3990)
!3992 = !DILocation(line: 65, column: 9, scope: !3989)
!3993 = !DILocation(line: 67, column: 9, scope: !3989)
!3994 = !DILocation(line: 73, column: 17, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3986, file: !3945, line: 70, column: 5)
!3996 = !DILocation(line: 73, column: 24, scope: !3995)
!3997 = !DILocation(line: 73, column: 7, scope: !3995)
!3998 = !DILocation(line: 74, column: 7, scope: !3995)
!3999 = !DILocation(line: 76, column: 3, scope: !3966)
!4000 = !DILocation(line: 77, column: 1, scope: !3966)
!4001 = distinct !DISubprogram(name: "xnmalloc", scope: !154, file: !154, line: 99, type: !4002, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!33, !93, !93}
!4004 = !{!4005, !4006}
!4005 = !DILocalVariable(name: "n", arg: 1, scope: !4001, file: !154, line: 99, type: !93)
!4006 = !DILocalVariable(name: "s", arg: 2, scope: !4001, file: !154, line: 99, type: !93)
!4007 = !DILocation(line: 99, column: 18, scope: !4001)
!4008 = !DILocation(line: 99, column: 28, scope: !4001)
!4009 = !DILocation(line: 101, column: 7, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4001, file: !154, line: 101, column: 7)
!4011 = !DILocation(line: 101, column: 7, scope: !4001)
!4012 = !DILocation(line: 102, column: 5, scope: !4010)
!4013 = !DILocation(line: 103, column: 21, scope: !4001)
!4014 = !DILocalVariable(name: "n", arg: 1, scope: !4015, file: !4016, line: 39, type: !93)
!4015 = distinct !DISubprogram(name: "xmalloc", scope: !4016, file: !4016, line: 39, type: !4017, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4019)
!4016 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!33, !93}
!4019 = !{!4014, !4020}
!4020 = !DILocalVariable(name: "p", scope: !4015, file: !4016, line: 41, type: !33)
!4021 = !DILocation(line: 39, column: 17, scope: !4015, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 103, column: 10, scope: !4001)
!4023 = !DILocation(line: 41, column: 13, scope: !4015, inlinedAt: !4022)
!4024 = !DILocation(line: 41, column: 9, scope: !4015, inlinedAt: !4022)
!4025 = !DILocation(line: 42, column: 8, scope: !4026, inlinedAt: !4022)
!4026 = distinct !DILexicalBlock(scope: !4015, file: !4016, line: 42, column: 7)
!4027 = !DILocation(line: 42, column: 15, scope: !4026, inlinedAt: !4022)
!4028 = !DILocation(line: 42, column: 10, scope: !4026, inlinedAt: !4022)
!4029 = !DILocation(line: 43, column: 5, scope: !4026, inlinedAt: !4022)
!4030 = !DILocation(line: 103, column: 3, scope: !4001)
!4031 = !DILocation(line: 39, column: 17, scope: !4015)
!4032 = !DILocation(line: 41, column: 13, scope: !4015)
!4033 = !DILocation(line: 41, column: 9, scope: !4015)
!4034 = !DILocation(line: 42, column: 8, scope: !4026)
!4035 = !DILocation(line: 42, column: 15, scope: !4026)
!4036 = !DILocation(line: 42, column: 10, scope: !4026)
!4037 = !DILocation(line: 43, column: 5, scope: !4026)
!4038 = !DILocation(line: 44, column: 3, scope: !4015)
!4039 = distinct !DISubprogram(name: "xnrealloc", scope: !154, file: !154, line: 112, type: !4040, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!33, !33, !93, !93}
!4042 = !{!4043, !4044, !4045}
!4043 = !DILocalVariable(name: "p", arg: 1, scope: !4039, file: !154, line: 112, type: !33)
!4044 = !DILocalVariable(name: "n", arg: 2, scope: !4039, file: !154, line: 112, type: !93)
!4045 = !DILocalVariable(name: "s", arg: 3, scope: !4039, file: !154, line: 112, type: !93)
!4046 = !DILocation(line: 112, column: 18, scope: !4039)
!4047 = !DILocation(line: 112, column: 28, scope: !4039)
!4048 = !DILocation(line: 112, column: 38, scope: !4039)
!4049 = !DILocation(line: 114, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4039, file: !154, line: 114, column: 7)
!4051 = !DILocation(line: 114, column: 7, scope: !4039)
!4052 = !DILocation(line: 115, column: 5, scope: !4050)
!4053 = !DILocation(line: 116, column: 25, scope: !4039)
!4054 = !DILocalVariable(name: "p", arg: 1, scope: !4055, file: !4016, line: 51, type: !33)
!4055 = distinct !DISubprogram(name: "xrealloc", scope: !4016, file: !4016, line: 51, type: !4056, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!33, !33, !93}
!4058 = !{!4054, !4059}
!4059 = !DILocalVariable(name: "n", arg: 2, scope: !4055, file: !4016, line: 51, type: !93)
!4060 = !DILocation(line: 51, column: 17, scope: !4055, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 116, column: 10, scope: !4039)
!4062 = !DILocation(line: 51, column: 27, scope: !4055, inlinedAt: !4061)
!4063 = !DILocation(line: 53, column: 8, scope: !4064, inlinedAt: !4061)
!4064 = distinct !DILexicalBlock(scope: !4055, file: !4016, line: 53, column: 7)
!4065 = !DILocation(line: 53, column: 13, scope: !4064, inlinedAt: !4061)
!4066 = !DILocation(line: 53, column: 10, scope: !4064, inlinedAt: !4061)
!4067 = !DILocation(line: 57, column: 7, scope: !4068, inlinedAt: !4061)
!4068 = distinct !DILexicalBlock(scope: !4064, file: !4016, line: 54, column: 5)
!4069 = !DILocation(line: 58, column: 7, scope: !4068, inlinedAt: !4061)
!4070 = !DILocation(line: 61, column: 7, scope: !4055, inlinedAt: !4061)
!4071 = !DILocation(line: 62, column: 8, scope: !4072, inlinedAt: !4061)
!4072 = distinct !DILexicalBlock(scope: !4055, file: !4016, line: 62, column: 7)
!4073 = !DILocation(line: 62, column: 13, scope: !4072, inlinedAt: !4061)
!4074 = !DILocation(line: 62, column: 10, scope: !4072, inlinedAt: !4061)
!4075 = !DILocation(line: 63, column: 5, scope: !4072, inlinedAt: !4061)
!4076 = !DILocation(line: 0, scope: !4055, inlinedAt: !4061)
!4077 = !DILocation(line: 116, column: 3, scope: !4039)
!4078 = !DILocation(line: 51, column: 17, scope: !4055)
!4079 = !DILocation(line: 51, column: 27, scope: !4055)
!4080 = !DILocation(line: 53, column: 8, scope: !4064)
!4081 = !DILocation(line: 53, column: 13, scope: !4064)
!4082 = !DILocation(line: 53, column: 10, scope: !4064)
!4083 = !DILocation(line: 57, column: 7, scope: !4068)
!4084 = !DILocation(line: 58, column: 7, scope: !4068)
!4085 = !DILocation(line: 61, column: 7, scope: !4055)
!4086 = !DILocation(line: 62, column: 8, scope: !4072)
!4087 = !DILocation(line: 62, column: 13, scope: !4072)
!4088 = !DILocation(line: 62, column: 10, scope: !4072)
!4089 = !DILocation(line: 63, column: 5, scope: !4072)
!4090 = !DILocation(line: 0, scope: !4055)
!4091 = !DILocation(line: 65, column: 1, scope: !4055)
!4092 = !DILocation(line: 174, column: 19, scope: !155)
!4093 = !DILocation(line: 174, column: 30, scope: !155)
!4094 = !DILocation(line: 174, column: 41, scope: !155)
!4095 = !DILocation(line: 176, column: 14, scope: !155)
!4096 = !DILocation(line: 176, column: 10, scope: !155)
!4097 = !DILocation(line: 178, column: 9, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !155, file: !154, line: 178, column: 7)
!4099 = !DILocation(line: 178, column: 7, scope: !155)
!4100 = !DILocation(line: 180, column: 13, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !154, line: 180, column: 11)
!4102 = distinct !DILexicalBlock(scope: !4098, file: !154, line: 179, column: 5)
!4103 = !DILocation(line: 180, column: 11, scope: !4102)
!4104 = !DILocation(line: 188, column: 30, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4101, file: !154, line: 181, column: 9)
!4106 = !DILocation(line: 189, column: 16, scope: !4105)
!4107 = !DILocation(line: 189, column: 13, scope: !4105)
!4108 = !DILocation(line: 190, column: 9, scope: !4105)
!4109 = !DILocation(line: 0, scope: !4105)
!4110 = !DILocation(line: 191, column: 11, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4102, file: !154, line: 191, column: 11)
!4112 = !DILocation(line: 191, column: 11, scope: !4102)
!4113 = !DILocation(line: 206, column: 7, scope: !155)
!4114 = !DILocation(line: 207, column: 25, scope: !155)
!4115 = !DILocation(line: 51, column: 17, scope: !4055, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 207, column: 10, scope: !155)
!4117 = !DILocation(line: 51, column: 27, scope: !4055, inlinedAt: !4116)
!4118 = !DILocation(line: 53, column: 10, scope: !4064, inlinedAt: !4116)
!4119 = !DILocation(line: 192, column: 9, scope: !4111)
!4120 = !DILocation(line: 200, column: 69, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !154, line: 200, column: 11)
!4122 = distinct !DILexicalBlock(scope: !4098, file: !154, line: 195, column: 5)
!4123 = !DILocation(line: 201, column: 11, scope: !4121)
!4124 = !DILocation(line: 200, column: 11, scope: !4122)
!4125 = !DILocation(line: 202, column: 9, scope: !4121)
!4126 = !DILocation(line: 203, column: 14, scope: !4122)
!4127 = !DILocation(line: 203, column: 18, scope: !4122)
!4128 = !DILocation(line: 203, column: 9, scope: !4122)
!4129 = !DILocation(line: 53, column: 8, scope: !4064, inlinedAt: !4116)
!4130 = !DILocation(line: 57, column: 7, scope: !4068, inlinedAt: !4116)
!4131 = !DILocation(line: 58, column: 7, scope: !4068, inlinedAt: !4116)
!4132 = !DILocation(line: 61, column: 7, scope: !4055, inlinedAt: !4116)
!4133 = !DILocation(line: 62, column: 8, scope: !4072, inlinedAt: !4116)
!4134 = !DILocation(line: 62, column: 13, scope: !4072, inlinedAt: !4116)
!4135 = !DILocation(line: 62, column: 10, scope: !4072, inlinedAt: !4116)
!4136 = !DILocation(line: 63, column: 5, scope: !4072, inlinedAt: !4116)
!4137 = !DILocation(line: 0, scope: !4055, inlinedAt: !4116)
!4138 = !DILocation(line: 207, column: 3, scope: !155)
!4139 = distinct !DISubprogram(name: "xcharalloc", scope: !154, file: !154, line: 216, type: !3040, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4140)
!4140 = !{!4141}
!4141 = !DILocalVariable(name: "n", arg: 1, scope: !4139, file: !154, line: 216, type: !93)
!4142 = !DILocation(line: 216, column: 20, scope: !4139)
!4143 = !DILocation(line: 39, column: 17, scope: !4015, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 218, column: 10, scope: !4139)
!4145 = !DILocation(line: 41, column: 13, scope: !4015, inlinedAt: !4144)
!4146 = !DILocation(line: 41, column: 9, scope: !4015, inlinedAt: !4144)
!4147 = !DILocation(line: 42, column: 8, scope: !4026, inlinedAt: !4144)
!4148 = !DILocation(line: 42, column: 15, scope: !4026, inlinedAt: !4144)
!4149 = !DILocation(line: 42, column: 10, scope: !4026, inlinedAt: !4144)
!4150 = !DILocation(line: 43, column: 5, scope: !4026, inlinedAt: !4144)
!4151 = !DILocation(line: 218, column: 3, scope: !4139)
!4152 = distinct !DISubprogram(name: "x2realloc", scope: !4016, file: !4016, line: 74, type: !4153, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!33, !33, !158}
!4155 = !{!4156, !4157}
!4156 = !DILocalVariable(name: "p", arg: 1, scope: !4152, file: !4016, line: 74, type: !33)
!4157 = !DILocalVariable(name: "pn", arg: 2, scope: !4152, file: !4016, line: 74, type: !158)
!4158 = !DILocation(line: 74, column: 18, scope: !4152)
!4159 = !DILocation(line: 74, column: 29, scope: !4152)
!4160 = !DILocation(line: 174, column: 19, scope: !155, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 76, column: 10, scope: !4152)
!4162 = !DILocation(line: 174, column: 30, scope: !155, inlinedAt: !4161)
!4163 = !DILocation(line: 174, column: 41, scope: !155, inlinedAt: !4161)
!4164 = !DILocation(line: 176, column: 14, scope: !155, inlinedAt: !4161)
!4165 = !DILocation(line: 176, column: 10, scope: !155, inlinedAt: !4161)
!4166 = !DILocation(line: 178, column: 9, scope: !4098, inlinedAt: !4161)
!4167 = !DILocation(line: 178, column: 7, scope: !155, inlinedAt: !4161)
!4168 = !DILocation(line: 180, column: 13, scope: !4101, inlinedAt: !4161)
!4169 = !DILocation(line: 180, column: 11, scope: !4102, inlinedAt: !4161)
!4170 = !DILocation(line: 191, column: 11, scope: !4111, inlinedAt: !4161)
!4171 = !DILocation(line: 191, column: 11, scope: !4102, inlinedAt: !4161)
!4172 = !DILocation(line: 206, column: 7, scope: !155, inlinedAt: !4161)
!4173 = !DILocation(line: 51, column: 17, scope: !4055, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 207, column: 10, scope: !155, inlinedAt: !4161)
!4175 = !DILocation(line: 51, column: 27, scope: !4055, inlinedAt: !4174)
!4176 = !DILocation(line: 53, column: 10, scope: !4064, inlinedAt: !4174)
!4177 = !DILocation(line: 192, column: 9, scope: !4111, inlinedAt: !4161)
!4178 = !DILocation(line: 201, column: 11, scope: !4121, inlinedAt: !4161)
!4179 = !DILocation(line: 200, column: 11, scope: !4122, inlinedAt: !4161)
!4180 = !DILocation(line: 202, column: 9, scope: !4121, inlinedAt: !4161)
!4181 = !DILocation(line: 203, column: 14, scope: !4122, inlinedAt: !4161)
!4182 = !DILocation(line: 203, column: 18, scope: !4122, inlinedAt: !4161)
!4183 = !DILocation(line: 203, column: 9, scope: !4122, inlinedAt: !4161)
!4184 = !DILocation(line: 53, column: 8, scope: !4064, inlinedAt: !4174)
!4185 = !DILocation(line: 57, column: 7, scope: !4068, inlinedAt: !4174)
!4186 = !DILocation(line: 58, column: 7, scope: !4068, inlinedAt: !4174)
!4187 = !DILocation(line: 61, column: 7, scope: !4055, inlinedAt: !4174)
!4188 = !DILocation(line: 62, column: 8, scope: !4072, inlinedAt: !4174)
!4189 = !DILocation(line: 62, column: 13, scope: !4072, inlinedAt: !4174)
!4190 = !DILocation(line: 62, column: 10, scope: !4072, inlinedAt: !4174)
!4191 = !DILocation(line: 63, column: 5, scope: !4072, inlinedAt: !4174)
!4192 = !DILocation(line: 0, scope: !4055, inlinedAt: !4174)
!4193 = !DILocation(line: 76, column: 3, scope: !4152)
!4194 = distinct !DISubprogram(name: "xzalloc", scope: !4016, file: !4016, line: 84, type: !4017, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4195)
!4195 = !{!4196}
!4196 = !DILocalVariable(name: "s", arg: 1, scope: !4194, file: !4016, line: 84, type: !93)
!4197 = !DILocation(line: 84, column: 17, scope: !4194)
!4198 = !DILocation(line: 39, column: 17, scope: !4015, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 86, column: 18, scope: !4194)
!4200 = !DILocation(line: 41, column: 13, scope: !4015, inlinedAt: !4199)
!4201 = !DILocation(line: 41, column: 9, scope: !4015, inlinedAt: !4199)
!4202 = !DILocation(line: 42, column: 8, scope: !4026, inlinedAt: !4199)
!4203 = !DILocation(line: 42, column: 15, scope: !4026, inlinedAt: !4199)
!4204 = !DILocation(line: 42, column: 10, scope: !4026, inlinedAt: !4199)
!4205 = !DILocation(line: 43, column: 5, scope: !4026, inlinedAt: !4199)
!4206 = !DILocation(line: 86, column: 10, scope: !4194)
!4207 = !DILocation(line: 86, column: 3, scope: !4194)
!4208 = distinct !DISubprogram(name: "xcalloc", scope: !4016, file: !4016, line: 93, type: !4002, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4209)
!4209 = !{!4210, !4211, !4212}
!4210 = !DILocalVariable(name: "n", arg: 1, scope: !4208, file: !4016, line: 93, type: !93)
!4211 = !DILocalVariable(name: "s", arg: 2, scope: !4208, file: !4016, line: 93, type: !93)
!4212 = !DILocalVariable(name: "p", scope: !4208, file: !4016, line: 95, type: !33)
!4213 = !DILocation(line: 93, column: 17, scope: !4208)
!4214 = !DILocation(line: 93, column: 27, scope: !4208)
!4215 = !DILocation(line: 100, column: 7, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4208, file: !4016, line: 100, column: 7)
!4217 = !DILocation(line: 101, column: 7, scope: !4216)
!4218 = !DILocation(line: 101, column: 18, scope: !4216)
!4219 = !DILocation(line: 95, column: 9, scope: !4208)
!4220 = !DILocation(line: 101, column: 16, scope: !4216)
!4221 = !DILocation(line: 100, column: 7, scope: !4208)
!4222 = !DILocation(line: 102, column: 5, scope: !4216)
!4223 = !DILocation(line: 103, column: 3, scope: !4208)
!4224 = distinct !DISubprogram(name: "xmemdup", scope: !4016, file: !4016, line: 111, type: !4225, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4229)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!33, !4227, !93}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "p", arg: 1, scope: !4224, file: !4016, line: 111, type: !4227)
!4231 = !DILocalVariable(name: "s", arg: 2, scope: !4224, file: !4016, line: 111, type: !93)
!4232 = !DILocation(line: 111, column: 22, scope: !4224)
!4233 = !DILocation(line: 111, column: 32, scope: !4224)
!4234 = !DILocation(line: 39, column: 17, scope: !4015, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 113, column: 18, scope: !4224)
!4236 = !DILocation(line: 41, column: 13, scope: !4015, inlinedAt: !4235)
!4237 = !DILocation(line: 41, column: 9, scope: !4015, inlinedAt: !4235)
!4238 = !DILocation(line: 42, column: 8, scope: !4026, inlinedAt: !4235)
!4239 = !DILocation(line: 42, column: 15, scope: !4026, inlinedAt: !4235)
!4240 = !DILocation(line: 42, column: 10, scope: !4026, inlinedAt: !4235)
!4241 = !DILocation(line: 43, column: 5, scope: !4026, inlinedAt: !4235)
!4242 = !DILocation(line: 113, column: 10, scope: !4224)
!4243 = !DILocation(line: 113, column: 3, scope: !4224)
!4244 = distinct !DISubprogram(name: "xstrdup", scope: !4016, file: !4016, line: 119, type: !3245, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !150, retainedNodes: !4245)
!4245 = !{!4246}
!4246 = !DILocalVariable(name: "string", arg: 1, scope: !4244, file: !4016, line: 119, type: !52)
!4247 = !DILocation(line: 119, column: 22, scope: !4244)
!4248 = !DILocation(line: 121, column: 27, scope: !4244)
!4249 = !DILocation(line: 121, column: 43, scope: !4244)
!4250 = !DILocation(line: 111, column: 22, scope: !4224, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 121, column: 10, scope: !4244)
!4252 = !DILocation(line: 111, column: 32, scope: !4224, inlinedAt: !4251)
!4253 = !DILocation(line: 39, column: 17, scope: !4015, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 113, column: 18, scope: !4224, inlinedAt: !4251)
!4255 = !DILocation(line: 41, column: 13, scope: !4015, inlinedAt: !4254)
!4256 = !DILocation(line: 41, column: 9, scope: !4015, inlinedAt: !4254)
!4257 = !DILocation(line: 42, column: 8, scope: !4026, inlinedAt: !4254)
!4258 = !DILocation(line: 42, column: 15, scope: !4026, inlinedAt: !4254)
!4259 = !DILocation(line: 42, column: 10, scope: !4026, inlinedAt: !4254)
!4260 = !DILocation(line: 43, column: 5, scope: !4026, inlinedAt: !4254)
!4261 = !DILocation(line: 113, column: 10, scope: !4224, inlinedAt: !4251)
!4262 = !DILocation(line: 121, column: 3, scope: !4244)
!4263 = distinct !DISubprogram(name: "xalloc_die", scope: !4264, file: !4264, line: 32, type: !972, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !167, retainedNodes: !46)
!4264 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4265 = !DILocation(line: 34, column: 10, scope: !4263)
!4266 = !DILocation(line: 34, column: 33, scope: !4263)
!4267 = !DILocation(line: 34, column: 3, scope: !4263)
!4268 = !DILocation(line: 40, column: 3, scope: !4263)
!4269 = distinct !DISubprogram(name: "xvasprintf", scope: !4270, file: !4270, line: 76, type: !4271, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !4280)
!4270 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!40, !52, !4273}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !170, size: 192, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4274, file: !170, baseType: !6, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4274, file: !170, baseType: !6, size: 32, offset: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4274, file: !170, baseType: !33, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4274, file: !170, baseType: !33, size: 64, offset: 128)
!4280 = !{!4281, !4282, !4283, !4284, !4286}
!4281 = !DILocalVariable(name: "format", arg: 1, scope: !4269, file: !4270, line: 76, type: !52)
!4282 = !DILocalVariable(name: "args", arg: 2, scope: !4269, file: !4270, line: 76, type: !4273)
!4283 = !DILocalVariable(name: "result", scope: !4269, file: !4270, line: 78, type: !40)
!4284 = !DILocalVariable(name: "argcount", scope: !4285, file: !4270, line: 84, type: !93)
!4285 = distinct !DILexicalBlock(scope: !4269, file: !4270, line: 83, column: 3)
!4286 = !DILocalVariable(name: "f", scope: !4285, file: !4270, line: 85, type: !52)
!4287 = !DILocation(line: 76, column: 25, scope: !4269)
!4288 = !DILocation(line: 76, column: 41, scope: !4269)
!4289 = !DILocation(line: 78, column: 3, scope: !4269)
!4290 = !DILocation(line: 84, column: 12, scope: !4285)
!4291 = !DILocation(line: 85, column: 17, scope: !4285)
!4292 = !DILocation(line: 87, column: 10, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4285, file: !4270, line: 87, column: 5)
!4294 = !DILocation(line: 0, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !4270, line: 88, column: 7)
!4296 = distinct !DILexicalBlock(scope: !4293, file: !4270, line: 87, column: 5)
!4297 = !DILocation(line: 89, column: 13, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4295, file: !4270, line: 89, column: 13)
!4299 = !DILocation(line: 89, column: 13, scope: !4295)
!4300 = !DILocation(line: 94, column: 10, scope: !4295)
!4301 = !DILocation(line: 95, column: 13, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4295, file: !4270, line: 95, column: 13)
!4303 = !DILocation(line: 95, column: 16, scope: !4302)
!4304 = !DILocation(line: 95, column: 13, scope: !4295)
!4305 = !DILocation(line: 97, column: 10, scope: !4295)
!4306 = !DILocation(line: 98, column: 17, scope: !4295)
!4307 = !DILocation(line: 87, column: 5, scope: !4296)
!4308 = distinct !{!4308, !4309, !4310}
!4309 = !DILocation(line: 87, column: 5, scope: !4293)
!4310 = !DILocation(line: 99, column: 7, scope: !4293)
!4311 = !DILocation(line: 91, column: 18, scope: !4298)
!4312 = !DILocation(line: 78, column: 9, scope: !4269)
!4313 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4314, file: !4315, line: 210, type: !4318)
!4314 = distinct !DISubprogram(name: "vasprintf", scope: !4315, file: !4315, line: 210, type: !4316, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !4320)
!4315 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!31, !4318, !4319, !4273}
!4318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!4319 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!4320 = !{!4313, !4321, !4322}
!4321 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4314, file: !4315, line: 210, type: !4319)
!4322 = !DILocalVariable(name: "__ap", arg: 3, scope: !4314, file: !4315, line: 210, type: !4273)
!4323 = !DILocation(line: 210, column: 1, scope: !4314, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 102, column: 7, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4269, file: !4270, line: 102, column: 7)
!4326 = !DILocation(line: 213, column: 10, scope: !4314, inlinedAt: !4324)
!4327 = !DILocation(line: 102, column: 41, scope: !4325)
!4328 = !DILocation(line: 102, column: 7, scope: !4269)
!4329 = !DILocation(line: 104, column: 11, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !4270, line: 104, column: 11)
!4331 = distinct !DILexicalBlock(scope: !4325, file: !4270, line: 103, column: 5)
!4332 = !DILocation(line: 104, column: 17, scope: !4330)
!4333 = !DILocation(line: 104, column: 11, scope: !4331)
!4334 = !DILocation(line: 105, column: 9, scope: !4330)
!4335 = !DILocation(line: 109, column: 10, scope: !4269)
!4336 = !DILocation(line: 109, column: 3, scope: !4269)
!4337 = !DILocation(line: 0, scope: !4298)
!4338 = !DILocation(line: 110, column: 1, scope: !4269)
!4339 = distinct !DISubprogram(name: "xstrcat", scope: !4270, file: !4270, line: 33, type: !4340, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!40, !93, !4273}
!4342 = !{!4343, !4344, !4345, !4346, !4351, !4352, !4353, !4354, !4358, !4362}
!4343 = !DILocalVariable(name: "argcount", arg: 1, scope: !4339, file: !4270, line: 33, type: !93)
!4344 = !DILocalVariable(name: "args", arg: 2, scope: !4339, file: !4270, line: 33, type: !4273)
!4345 = !DILocalVariable(name: "result", scope: !4339, file: !4270, line: 35, type: !40)
!4346 = !DILocalVariable(name: "ap", scope: !4339, file: !4270, line: 36, type: !4347)
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !830, line: 52, baseType: !4348)
!4348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !832, line: 48, baseType: !4349)
!4349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !170, line: 36, baseType: !4350)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4274, size: 192, elements: !841)
!4351 = !DILocalVariable(name: "totalsize", scope: !4339, file: !4270, line: 37, type: !93)
!4352 = !DILocalVariable(name: "i", scope: !4339, file: !4270, line: 38, type: !93)
!4353 = !DILocalVariable(name: "p", scope: !4339, file: !4270, line: 39, type: !40)
!4354 = !DILocalVariable(name: "next", scope: !4355, file: !4270, line: 46, type: !52)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !4270, line: 45, column: 5)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !4270, line: 44, column: 3)
!4357 = distinct !DILexicalBlock(scope: !4339, file: !4270, line: 44, column: 3)
!4358 = !DILocalVariable(name: "next", scope: !4359, file: !4270, line: 65, type: !52)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !4270, line: 64, column: 5)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !4270, line: 63, column: 3)
!4361 = distinct !DILexicalBlock(scope: !4339, file: !4270, line: 63, column: 3)
!4362 = !DILocalVariable(name: "len", scope: !4359, file: !4270, line: 66, type: !93)
!4363 = !DILocation(line: 33, column: 17, scope: !4339)
!4364 = !DILocation(line: 33, column: 35, scope: !4339)
!4365 = !DILocation(line: 36, column: 3, scope: !4339)
!4366 = !DILocation(line: 36, column: 11, scope: !4339)
!4367 = !DILocation(line: 37, column: 10, scope: !4339)
!4368 = !DILocation(line: 43, column: 3, scope: !4339)
!4369 = !DILocation(line: 38, column: 10, scope: !4339)
!4370 = !DILocation(line: 44, column: 24, scope: !4356)
!4371 = !DILocation(line: 44, column: 3, scope: !4357)
!4372 = !DILocation(line: 49, column: 3, scope: !4339)
!4373 = !DILocation(line: 61, column: 12, scope: !4339)
!4374 = !DILocation(line: 35, column: 9, scope: !4339)
!4375 = !DILocation(line: 39, column: 9, scope: !4339)
!4376 = !DILocation(line: 63, column: 3, scope: !4361)
!4377 = !DILocation(line: 46, column: 26, scope: !4355)
!4378 = !DILocation(line: 46, column: 19, scope: !4355)
!4379 = !DILocation(line: 47, column: 36, scope: !4355)
!4380 = !DILocalVariable(name: "size1", arg: 1, scope: !4381, file: !4382, line: 63, type: !93)
!4381 = distinct !DISubprogram(name: "xsum", scope: !4382, file: !4382, line: 63, type: !4383, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !4385)
!4382 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!93, !93, !93}
!4385 = !{!4380, !4386, !4387}
!4386 = !DILocalVariable(name: "size2", arg: 2, scope: !4381, file: !4382, line: 63, type: !93)
!4387 = !DILocalVariable(name: "sum", scope: !4381, file: !4382, line: 65, type: !93)
!4388 = !DILocation(line: 63, column: 14, scope: !4381, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 47, column: 19, scope: !4355)
!4390 = !DILocation(line: 63, column: 28, scope: !4381, inlinedAt: !4389)
!4391 = !DILocation(line: 65, column: 22, scope: !4381, inlinedAt: !4389)
!4392 = !DILocation(line: 65, column: 10, scope: !4381, inlinedAt: !4389)
!4393 = !DILocation(line: 66, column: 15, scope: !4381, inlinedAt: !4389)
!4394 = !DILocation(line: 66, column: 11, scope: !4381, inlinedAt: !4389)
!4395 = !DILocation(line: 44, column: 30, scope: !4356)
!4396 = distinct !{!4396, !4371, !4397}
!4397 = !DILocation(line: 48, column: 5, scope: !4357)
!4398 = !DILocation(line: 54, column: 42, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4339, file: !4270, line: 54, column: 7)
!4400 = !DILocation(line: 54, column: 29, scope: !4399)
!4401 = !DILocation(line: 56, column: 7, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4399, file: !4270, line: 55, column: 5)
!4403 = !DILocation(line: 56, column: 13, scope: !4402)
!4404 = !DILocation(line: 57, column: 7, scope: !4402)
!4405 = !DILocation(line: 65, column: 26, scope: !4359)
!4406 = !DILocation(line: 65, column: 19, scope: !4359)
!4407 = !DILocation(line: 66, column: 20, scope: !4359)
!4408 = !DILocation(line: 66, column: 14, scope: !4359)
!4409 = !DILocation(line: 67, column: 7, scope: !4359)
!4410 = !DILocation(line: 68, column: 9, scope: !4359)
!4411 = !DILocation(line: 63, column: 30, scope: !4360)
!4412 = !DILocation(line: 63, column: 24, scope: !4360)
!4413 = distinct !{!4413, !4376, !4414}
!4414 = !DILocation(line: 69, column: 5, scope: !4361)
!4415 = !DILocation(line: 0, scope: !4359)
!4416 = !DILocation(line: 70, column: 6, scope: !4339)
!4417 = !DILocation(line: 72, column: 3, scope: !4339)
!4418 = !DILocation(line: 0, scope: !4339)
!4419 = !DILocation(line: 73, column: 1, scope: !4339)
!4420 = distinct !DISubprogram(name: "rpl_calloc", scope: !4421, file: !4421, line: 42, type: !4002, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !172, retainedNodes: !4422)
!4421 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4422 = !{!4423, !4424, !4425, !4426}
!4423 = !DILocalVariable(name: "n", arg: 1, scope: !4420, file: !4421, line: 42, type: !93)
!4424 = !DILocalVariable(name: "s", arg: 2, scope: !4420, file: !4421, line: 42, type: !93)
!4425 = !DILocalVariable(name: "result", scope: !4420, file: !4421, line: 44, type: !33)
!4426 = !DILocalVariable(name: "bytes", scope: !4427, file: !4421, line: 56, type: !93)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !4421, line: 53, column: 5)
!4428 = distinct !DILexicalBlock(scope: !4420, file: !4421, line: 47, column: 7)
!4429 = !DILocation(line: 42, column: 20, scope: !4420)
!4430 = !DILocation(line: 42, column: 30, scope: !4420)
!4431 = !DILocation(line: 47, column: 9, scope: !4428)
!4432 = !DILocation(line: 47, column: 19, scope: !4428)
!4433 = !DILocation(line: 47, column: 14, scope: !4428)
!4434 = !DILocation(line: 56, column: 24, scope: !4427)
!4435 = !DILocation(line: 56, column: 14, scope: !4427)
!4436 = !DILocation(line: 57, column: 17, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4427, file: !4421, line: 57, column: 11)
!4438 = !DILocation(line: 57, column: 21, scope: !4437)
!4439 = !DILocation(line: 57, column: 11, scope: !4427)
!4440 = !DILocation(line: 59, column: 11, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4437, file: !4421, line: 58, column: 9)
!4442 = !DILocation(line: 59, column: 17, scope: !4441)
!4443 = !DILocation(line: 65, column: 12, scope: !4420)
!4444 = !DILocation(line: 44, column: 9, scope: !4420)
!4445 = !DILocation(line: 72, column: 3, scope: !4420)
!4446 = !DILocation(line: 0, scope: !4441)
!4447 = !DILocation(line: 73, column: 1, scope: !4420)
!4448 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4449, file: !4449, line: 385, type: !4450, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !4464)
!4449 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!93, !4452, !52, !93, !4453}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2205, line: 6, baseType: !4455)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2207, line: 21, baseType: !4456)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2207, line: 13, size: 64, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4456, file: !2207, line: 15, baseType: !31, size: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4456, file: !2207, line: 20, baseType: !4460, size: 32, offset: 32)
!4460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4456, file: !2207, line: 16, size: 32, elements: !4461)
!4461 = !{!4462, !4463}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4460, file: !2207, line: 18, baseType: !6, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4460, file: !2207, line: 19, baseType: !2216, size: 32)
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470, !4471}
!4465 = !DILocalVariable(name: "pwc", arg: 1, scope: !4448, file: !4449, line: 385, type: !4452)
!4466 = !DILocalVariable(name: "s", arg: 2, scope: !4448, file: !4449, line: 385, type: !52)
!4467 = !DILocalVariable(name: "n", arg: 3, scope: !4448, file: !4449, line: 385, type: !93)
!4468 = !DILocalVariable(name: "ps", arg: 4, scope: !4448, file: !4449, line: 385, type: !4453)
!4469 = !DILocalVariable(name: "ret", scope: !4448, file: !4449, line: 387, type: !93)
!4470 = !DILocalVariable(name: "wc", scope: !4448, file: !4449, line: 388, type: !2221)
!4471 = !DILocalVariable(name: "uc", scope: !4472, file: !4449, line: 449, type: !2065)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !4449, line: 448, column: 5)
!4473 = distinct !DILexicalBlock(scope: !4448, file: !4449, line: 447, column: 7)
!4474 = !DILocation(line: 385, column: 23, scope: !4448)
!4475 = !DILocation(line: 385, column: 40, scope: !4448)
!4476 = !DILocation(line: 385, column: 50, scope: !4448)
!4477 = !DILocation(line: 385, column: 64, scope: !4448)
!4478 = !DILocation(line: 388, column: 3, scope: !4448)
!4479 = !DILocation(line: 404, column: 9, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4448, file: !4449, line: 404, column: 7)
!4481 = !DILocation(line: 404, column: 7, scope: !4448)
!4482 = !DILocation(line: 439, column: 9, scope: !4448)
!4483 = !DILocation(line: 387, column: 10, scope: !4448)
!4484 = !DILocation(line: 447, column: 19, scope: !4473)
!4485 = !DILocation(line: 447, column: 31, scope: !4473)
!4486 = !DILocation(line: 447, column: 26, scope: !4473)
!4487 = !DILocation(line: 447, column: 41, scope: !4473)
!4488 = !DILocation(line: 447, column: 7, scope: !4448)
!4489 = !DILocation(line: 449, column: 26, scope: !4472)
!4490 = !DILocation(line: 449, column: 21, scope: !4472)
!4491 = !DILocation(line: 450, column: 14, scope: !4472)
!4492 = !DILocation(line: 450, column: 12, scope: !4472)
!4493 = !DILocation(line: 0, scope: !4472)
!4494 = !DILocation(line: 456, column: 1, scope: !4448)
!4495 = distinct !DISubprogram(name: "close_stream", scope: !4496, file: !4496, line: 56, type: !4497, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !4549)
!4496 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!31, !4499}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4501, line: 7, baseType: !4502)
!4501 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4503, line: 49, size: 1728, elements: !4504)
!4503 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4504 = !{!4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4520, !4522, !4523, !4524, !4525, !4526, !4528, !4530, !4533, !4535, !4538, !4541, !4542, !4543, !4544, !4545}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4502, file: !4503, line: 51, baseType: !31, size: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4502, file: !4503, line: 54, baseType: !40, size: 64, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4502, file: !4503, line: 55, baseType: !40, size: 64, offset: 128)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4502, file: !4503, line: 56, baseType: !40, size: 64, offset: 192)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4502, file: !4503, line: 57, baseType: !40, size: 64, offset: 256)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4502, file: !4503, line: 58, baseType: !40, size: 64, offset: 320)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4502, file: !4503, line: 59, baseType: !40, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4502, file: !4503, line: 60, baseType: !40, size: 64, offset: 448)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4502, file: !4503, line: 61, baseType: !40, size: 64, offset: 512)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4502, file: !4503, line: 64, baseType: !40, size: 64, offset: 576)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4502, file: !4503, line: 65, baseType: !40, size: 64, offset: 640)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4502, file: !4503, line: 66, baseType: !40, size: 64, offset: 704)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4502, file: !4503, line: 68, baseType: !4518, size: 64, offset: 768)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4503, line: 36, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4502, file: !4503, line: 70, baseType: !4521, size: 64, offset: 832)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4502, file: !4503, line: 72, baseType: !31, size: 32, offset: 896)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4502, file: !4503, line: 73, baseType: !31, size: 32, offset: 928)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4502, file: !4503, line: 74, baseType: !1164, size: 64, offset: 960)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4502, file: !4503, line: 77, baseType: !32, size: 16, offset: 1024)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4502, file: !4503, line: 78, baseType: !4527, size: 8, offset: 1040)
!4527 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4502, file: !4503, line: 79, baseType: !4529, size: 8, offset: 1048)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !841)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4502, file: !4503, line: 81, baseType: !4531, size: 64, offset: 1088)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !4503, line: 43, baseType: null)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4502, file: !4503, line: 89, baseType: !4534, size: 64, offset: 1152)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !144, line: 151, baseType: !1165)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4502, file: !4503, line: 91, baseType: !4536, size: 64, offset: 1216)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !4503, line: 37, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4502, file: !4503, line: 92, baseType: !4539, size: 64, offset: 1280)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !4503, line: 38, flags: DIFlagFwdDecl)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4502, file: !4503, line: 93, baseType: !4521, size: 64, offset: 1344)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4502, file: !4503, line: 94, baseType: !33, size: 64, offset: 1408)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4502, file: !4503, line: 95, baseType: !93, size: 64, offset: 1472)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4502, file: !4503, line: 96, baseType: !31, size: 32, offset: 1536)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4502, file: !4503, line: 98, baseType: !4546, size: 160, offset: 1568)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !4547)
!4547 = !{!4548}
!4548 = !DISubrange(count: 20)
!4549 = !{!4550, !4551, !4553, !4554}
!4550 = !DILocalVariable(name: "stream", arg: 1, scope: !4495, file: !4496, line: 56, type: !4499)
!4551 = !DILocalVariable(name: "some_pending", scope: !4495, file: !4496, line: 58, type: !4552)
!4552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!4553 = !DILocalVariable(name: "prev_fail", scope: !4495, file: !4496, line: 59, type: !4552)
!4554 = !DILocalVariable(name: "fclose_fail", scope: !4495, file: !4496, line: 60, type: !4552)
!4555 = !DILocation(line: 56, column: 21, scope: !4495)
!4556 = !DILocation(line: 58, column: 30, scope: !4495)
!4557 = !DILocalVariable(name: "__stream", arg: 1, scope: !4558, file: !4559, line: 135, type: !4499)
!4558 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4559, file: !4559, line: 135, type: !4497, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !4560)
!4559 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4560 = !{!4557}
!4561 = !DILocation(line: 135, column: 1, scope: !4558, inlinedAt: !4562)
!4562 = distinct !DILocation(line: 59, column: 27, scope: !4495)
!4563 = !DILocation(line: 137, column: 10, scope: !4558, inlinedAt: !4562)
!4564 = !{!4565, !694, i64 0}
!4565 = !{!"_IO_FILE", !694, i64 0, !617, i64 8, !617, i64 16, !617, i64 24, !617, i64 32, !617, i64 40, !617, i64 48, !617, i64 56, !617, i64 64, !617, i64 72, !617, i64 80, !617, i64 88, !617, i64 96, !617, i64 104, !694, i64 112, !694, i64 116, !1409, i64 120, !1869, i64 128, !618, i64 130, !618, i64 131, !617, i64 136, !1409, i64 144, !617, i64 152, !617, i64 160, !617, i64 168, !617, i64 176, !1409, i64 184, !694, i64 192, !618, i64 196}
!4566 = !DILocation(line: 59, column: 43, scope: !4495)
!4567 = !DILocation(line: 60, column: 29, scope: !4495)
!4568 = !DILocation(line: 60, column: 45, scope: !4495)
!4569 = !DILocation(line: 70, column: 17, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4495, file: !4496, line: 70, column: 7)
!4571 = !DILocation(line: 58, column: 50, scope: !4495)
!4572 = !DILocation(line: 70, column: 33, scope: !4570)
!4573 = !DILocation(line: 70, column: 53, scope: !4570)
!4574 = !DILocation(line: 70, column: 59, scope: !4570)
!4575 = !DILocation(line: 70, column: 7, scope: !4495)
!4576 = !DILocation(line: 72, column: 11, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4570, file: !4496, line: 71, column: 5)
!4578 = !DILocation(line: 73, column: 9, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4577, file: !4496, line: 72, column: 11)
!4580 = !DILocation(line: 73, column: 15, scope: !4579)
!4581 = !DILocation(line: 0, scope: !4495)
!4582 = !DILocation(line: 78, column: 1, scope: !4495)
!4583 = distinct !DISubprogram(name: "hard_locale", scope: !4584, file: !4584, line: 38, type: !718, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !180, retainedNodes: !4585)
!4584 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4585 = !{!4586, !4587, !4588}
!4586 = !DILocalVariable(name: "category", arg: 1, scope: !4583, file: !4584, line: 38, type: !31)
!4587 = !DILocalVariable(name: "hard", scope: !4583, file: !4584, line: 40, type: !51)
!4588 = !DILocalVariable(name: "p", scope: !4583, file: !4584, line: 41, type: !52)
!4589 = !DILocation(line: 38, column: 18, scope: !4583)
!4590 = !DILocation(line: 40, column: 8, scope: !4583)
!4591 = !DILocation(line: 41, column: 19, scope: !4583)
!4592 = !DILocation(line: 41, column: 15, scope: !4583)
!4593 = !DILocation(line: 43, column: 7, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4583, file: !4584, line: 43, column: 7)
!4595 = !DILocation(line: 43, column: 7, scope: !4583)
!4596 = !DILocation(line: 47, column: 15, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !4584, line: 47, column: 15)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !4584, line: 46, column: 9)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !4584, line: 45, column: 11)
!4600 = distinct !DILexicalBlock(scope: !4594, file: !4584, line: 44, column: 5)
!4601 = !DILocation(line: 47, column: 31, scope: !4597)
!4602 = !DILocation(line: 47, column: 36, scope: !4597)
!4603 = !DILocation(line: 47, column: 39, scope: !4597)
!4604 = !DILocation(line: 47, column: 59, scope: !4597)
!4605 = !DILocation(line: 47, column: 15, scope: !4598)
!4606 = !DILocation(line: 48, column: 13, scope: !4597)
!4607 = !DILocation(line: 71, column: 3, scope: !4583)
!4608 = distinct !DISubprogram(name: "locale_charset", scope: !4609, file: !4609, line: 687, type: !4610, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !182, retainedNodes: !4612)
!4609 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!52}
!4612 = !{!4613}
!4613 = !DILocalVariable(name: "codeset", scope: !4608, file: !4609, line: 689, type: !52)
!4614 = !DILocation(line: 696, column: 13, scope: !4608)
!4615 = !DILocation(line: 689, column: 15, scope: !4608)
!4616 = !DILocation(line: 754, column: 15, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4608, file: !4609, line: 754, column: 7)
!4618 = !DILocation(line: 754, column: 7, scope: !4608)
!4619 = !DILocation(line: 907, column: 13, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !4609, line: 907, column: 13)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !4609, line: 897, column: 7)
!4622 = distinct !DILexicalBlock(scope: !4608, file: !4609, line: 856, column: 3)
!4623 = !DILocation(line: 907, column: 24, scope: !4620)
!4624 = !DILocation(line: 907, column: 13, scope: !4621)
!4625 = !DILocation(line: 995, column: 3, scope: !4608)
!4626 = distinct !DISubprogram(name: "rpl_fclose", scope: !4627, file: !4627, line: 58, type: !4628, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !571, retainedNodes: !4664)
!4627 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!31, !4630}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4501, line: 7, baseType: !4632)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4503, line: 49, size: 1728, elements: !4633)
!4633 = !{!4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4632, file: !4503, line: 51, baseType: !31, size: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4632, file: !4503, line: 54, baseType: !40, size: 64, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4632, file: !4503, line: 55, baseType: !40, size: 64, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4632, file: !4503, line: 56, baseType: !40, size: 64, offset: 192)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4632, file: !4503, line: 57, baseType: !40, size: 64, offset: 256)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4632, file: !4503, line: 58, baseType: !40, size: 64, offset: 320)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4632, file: !4503, line: 59, baseType: !40, size: 64, offset: 384)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4632, file: !4503, line: 60, baseType: !40, size: 64, offset: 448)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4632, file: !4503, line: 61, baseType: !40, size: 64, offset: 512)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4632, file: !4503, line: 64, baseType: !40, size: 64, offset: 576)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4632, file: !4503, line: 65, baseType: !40, size: 64, offset: 640)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4632, file: !4503, line: 66, baseType: !40, size: 64, offset: 704)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4632, file: !4503, line: 68, baseType: !4518, size: 64, offset: 768)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4632, file: !4503, line: 70, baseType: !4648, size: 64, offset: 832)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4632, file: !4503, line: 72, baseType: !31, size: 32, offset: 896)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4632, file: !4503, line: 73, baseType: !31, size: 32, offset: 928)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4632, file: !4503, line: 74, baseType: !1164, size: 64, offset: 960)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4632, file: !4503, line: 77, baseType: !32, size: 16, offset: 1024)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4632, file: !4503, line: 78, baseType: !4527, size: 8, offset: 1040)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4632, file: !4503, line: 79, baseType: !4529, size: 8, offset: 1048)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4632, file: !4503, line: 81, baseType: !4531, size: 64, offset: 1088)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4632, file: !4503, line: 89, baseType: !4534, size: 64, offset: 1152)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4632, file: !4503, line: 91, baseType: !4536, size: 64, offset: 1216)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4632, file: !4503, line: 92, baseType: !4539, size: 64, offset: 1280)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4632, file: !4503, line: 93, baseType: !4648, size: 64, offset: 1344)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4632, file: !4503, line: 94, baseType: !33, size: 64, offset: 1408)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4632, file: !4503, line: 95, baseType: !93, size: 64, offset: 1472)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4632, file: !4503, line: 96, baseType: !31, size: 32, offset: 1536)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4632, file: !4503, line: 98, baseType: !4546, size: 160, offset: 1568)
!4664 = !{!4665, !4666, !4667, !4668}
!4665 = !DILocalVariable(name: "fp", arg: 1, scope: !4626, file: !4627, line: 58, type: !4630)
!4666 = !DILocalVariable(name: "saved_errno", scope: !4626, file: !4627, line: 60, type: !31)
!4667 = !DILocalVariable(name: "fd", scope: !4626, file: !4627, line: 61, type: !31)
!4668 = !DILocalVariable(name: "result", scope: !4626, file: !4627, line: 62, type: !31)
!4669 = !DILocation(line: 58, column: 19, scope: !4626)
!4670 = !DILocation(line: 60, column: 7, scope: !4626)
!4671 = !DILocation(line: 62, column: 7, scope: !4626)
!4672 = !DILocation(line: 65, column: 8, scope: !4626)
!4673 = !DILocation(line: 61, column: 7, scope: !4626)
!4674 = !DILocation(line: 66, column: 10, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4626, file: !4627, line: 66, column: 7)
!4676 = !DILocation(line: 66, column: 7, scope: !4626)
!4677 = !DILocation(line: 67, column: 12, scope: !4675)
!4678 = !DILocation(line: 67, column: 5, scope: !4675)
!4679 = !DILocation(line: 72, column: 9, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4626, file: !4627, line: 72, column: 7)
!4681 = !DILocation(line: 72, column: 23, scope: !4680)
!4682 = !DILocation(line: 72, column: 33, scope: !4680)
!4683 = !DILocation(line: 72, column: 26, scope: !4680)
!4684 = !DILocation(line: 72, column: 59, scope: !4680)
!4685 = !DILocation(line: 73, column: 7, scope: !4680)
!4686 = !DILocation(line: 73, column: 10, scope: !4680)
!4687 = !DILocation(line: 72, column: 7, scope: !4626)
!4688 = !DILocation(line: 100, column: 12, scope: !4626)
!4689 = !DILocation(line: 105, column: 7, scope: !4626)
!4690 = !DILocation(line: 74, column: 19, scope: !4680)
!4691 = !DILocation(line: 105, column: 19, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4626, file: !4627, line: 105, column: 7)
!4693 = !DILocation(line: 107, column: 13, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4692, file: !4627, line: 106, column: 5)
!4695 = !DILocation(line: 109, column: 5, scope: !4694)
!4696 = !DILocation(line: 0, scope: !4626)
!4697 = !DILocation(line: 112, column: 1, scope: !4626)
!4698 = distinct !DISubprogram(name: "rpl_fflush", scope: !4699, file: !4699, line: 129, type: !4700, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !573, retainedNodes: !4736)
!4699 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!31, !4702}
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4501, line: 7, baseType: !4704)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4503, line: 49, size: 1728, elements: !4705)
!4705 = !{!4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4704, file: !4503, line: 51, baseType: !31, size: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4704, file: !4503, line: 54, baseType: !40, size: 64, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4704, file: !4503, line: 55, baseType: !40, size: 64, offset: 128)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4704, file: !4503, line: 56, baseType: !40, size: 64, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4704, file: !4503, line: 57, baseType: !40, size: 64, offset: 256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4704, file: !4503, line: 58, baseType: !40, size: 64, offset: 320)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4704, file: !4503, line: 59, baseType: !40, size: 64, offset: 384)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4704, file: !4503, line: 60, baseType: !40, size: 64, offset: 448)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4704, file: !4503, line: 61, baseType: !40, size: 64, offset: 512)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4704, file: !4503, line: 64, baseType: !40, size: 64, offset: 576)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4704, file: !4503, line: 65, baseType: !40, size: 64, offset: 640)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4704, file: !4503, line: 66, baseType: !40, size: 64, offset: 704)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4704, file: !4503, line: 68, baseType: !4518, size: 64, offset: 768)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4704, file: !4503, line: 70, baseType: !4720, size: 64, offset: 832)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4704, file: !4503, line: 72, baseType: !31, size: 32, offset: 896)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4704, file: !4503, line: 73, baseType: !31, size: 32, offset: 928)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4704, file: !4503, line: 74, baseType: !1164, size: 64, offset: 960)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4704, file: !4503, line: 77, baseType: !32, size: 16, offset: 1024)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4704, file: !4503, line: 78, baseType: !4527, size: 8, offset: 1040)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4704, file: !4503, line: 79, baseType: !4529, size: 8, offset: 1048)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4704, file: !4503, line: 81, baseType: !4531, size: 64, offset: 1088)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4704, file: !4503, line: 89, baseType: !4534, size: 64, offset: 1152)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4704, file: !4503, line: 91, baseType: !4536, size: 64, offset: 1216)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4704, file: !4503, line: 92, baseType: !4539, size: 64, offset: 1280)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4704, file: !4503, line: 93, baseType: !4720, size: 64, offset: 1344)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4704, file: !4503, line: 94, baseType: !33, size: 64, offset: 1408)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4704, file: !4503, line: 95, baseType: !93, size: 64, offset: 1472)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4704, file: !4503, line: 96, baseType: !31, size: 32, offset: 1536)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4704, file: !4503, line: 98, baseType: !4546, size: 160, offset: 1568)
!4736 = !{!4737}
!4737 = !DILocalVariable(name: "stream", arg: 1, scope: !4698, file: !4699, line: 129, type: !4702)
!4738 = !DILocation(line: 129, column: 19, scope: !4698)
!4739 = !DILocation(line: 150, column: 14, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4698, file: !4699, line: 150, column: 7)
!4741 = !DILocation(line: 150, column: 22, scope: !4740)
!4742 = !DILocation(line: 150, column: 27, scope: !4740)
!4743 = !DILocation(line: 150, column: 7, scope: !4698)
!4744 = !DILocation(line: 151, column: 12, scope: !4740)
!4745 = !DILocation(line: 151, column: 5, scope: !4740)
!4746 = !DILocalVariable(name: "fp", arg: 1, scope: !4747, file: !4699, line: 41, type: !4702)
!4747 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4699, file: !4699, line: 41, type: !4748, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !573, retainedNodes: !4750)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{null, !4702}
!4750 = !{!4746}
!4751 = !DILocation(line: 41, column: 48, scope: !4747, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 156, column: 3, scope: !4698)
!4753 = !DILocation(line: 43, column: 11, scope: !4754, inlinedAt: !4752)
!4754 = distinct !DILexicalBlock(scope: !4747, file: !4699, line: 43, column: 7)
!4755 = !DILocation(line: 43, column: 18, scope: !4754, inlinedAt: !4752)
!4756 = !DILocation(line: 43, column: 7, scope: !4747, inlinedAt: !4752)
!4757 = !DILocation(line: 45, column: 5, scope: !4754, inlinedAt: !4752)
!4758 = !DILocation(line: 158, column: 10, scope: !4698)
!4759 = !DILocation(line: 158, column: 3, scope: !4698)
!4760 = !DILocation(line: 0, scope: !4698)
!4761 = !DILocation(line: 232, column: 1, scope: !4698)
!4762 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4763, file: !4763, line: 28, type: !4764, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !575, retainedNodes: !4801)
!4763 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!31, !4766, !4800, !31}
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4501, line: 7, baseType: !4768)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4503, line: 49, size: 1728, elements: !4769)
!4769 = !{!4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4768, file: !4503, line: 51, baseType: !31, size: 32)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4768, file: !4503, line: 54, baseType: !40, size: 64, offset: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4768, file: !4503, line: 55, baseType: !40, size: 64, offset: 128)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4768, file: !4503, line: 56, baseType: !40, size: 64, offset: 192)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4768, file: !4503, line: 57, baseType: !40, size: 64, offset: 256)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4768, file: !4503, line: 58, baseType: !40, size: 64, offset: 320)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4768, file: !4503, line: 59, baseType: !40, size: 64, offset: 384)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4768, file: !4503, line: 60, baseType: !40, size: 64, offset: 448)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4768, file: !4503, line: 61, baseType: !40, size: 64, offset: 512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4768, file: !4503, line: 64, baseType: !40, size: 64, offset: 576)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4768, file: !4503, line: 65, baseType: !40, size: 64, offset: 640)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4768, file: !4503, line: 66, baseType: !40, size: 64, offset: 704)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4768, file: !4503, line: 68, baseType: !4518, size: 64, offset: 768)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4768, file: !4503, line: 70, baseType: !4784, size: 64, offset: 832)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4768, file: !4503, line: 72, baseType: !31, size: 32, offset: 896)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4768, file: !4503, line: 73, baseType: !31, size: 32, offset: 928)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4768, file: !4503, line: 74, baseType: !1164, size: 64, offset: 960)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4768, file: !4503, line: 77, baseType: !32, size: 16, offset: 1024)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4768, file: !4503, line: 78, baseType: !4527, size: 8, offset: 1040)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4768, file: !4503, line: 79, baseType: !4529, size: 8, offset: 1048)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4768, file: !4503, line: 81, baseType: !4531, size: 64, offset: 1088)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4768, file: !4503, line: 89, baseType: !4534, size: 64, offset: 1152)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4768, file: !4503, line: 91, baseType: !4536, size: 64, offset: 1216)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4768, file: !4503, line: 92, baseType: !4539, size: 64, offset: 1280)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4768, file: !4503, line: 93, baseType: !4784, size: 64, offset: 1344)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4768, file: !4503, line: 94, baseType: !33, size: 64, offset: 1408)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4768, file: !4503, line: 95, baseType: !93, size: 64, offset: 1472)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4768, file: !4503, line: 96, baseType: !31, size: 32, offset: 1536)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4768, file: !4503, line: 98, baseType: !4546, size: 160, offset: 1568)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !830, line: 63, baseType: !1164)
!4801 = !{!4802, !4803, !4804, !4805}
!4802 = !DILocalVariable(name: "fp", arg: 1, scope: !4762, file: !4763, line: 28, type: !4766)
!4803 = !DILocalVariable(name: "offset", arg: 2, scope: !4762, file: !4763, line: 28, type: !4800)
!4804 = !DILocalVariable(name: "whence", arg: 3, scope: !4762, file: !4763, line: 28, type: !31)
!4805 = !DILocalVariable(name: "pos", scope: !4806, file: !4763, line: 117, type: !4800)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !4763, line: 113, column: 5)
!4807 = distinct !DILexicalBlock(scope: !4762, file: !4763, line: 52, column: 7)
!4808 = !DILocation(line: 28, column: 15, scope: !4762)
!4809 = !DILocation(line: 28, column: 25, scope: !4762)
!4810 = !DILocation(line: 28, column: 37, scope: !4762)
!4811 = !DILocation(line: 52, column: 11, scope: !4807)
!4812 = !{!4565, !617, i64 16}
!4813 = !DILocation(line: 52, column: 31, scope: !4807)
!4814 = !{!4565, !617, i64 8}
!4815 = !DILocation(line: 52, column: 24, scope: !4807)
!4816 = !DILocation(line: 53, column: 7, scope: !4807)
!4817 = !DILocation(line: 53, column: 14, scope: !4807)
!4818 = !{!4565, !617, i64 40}
!4819 = !DILocation(line: 53, column: 35, scope: !4807)
!4820 = !{!4565, !617, i64 32}
!4821 = !DILocation(line: 53, column: 28, scope: !4807)
!4822 = !DILocation(line: 54, column: 7, scope: !4807)
!4823 = !DILocation(line: 54, column: 14, scope: !4807)
!4824 = !{!4565, !617, i64 72}
!4825 = !DILocation(line: 54, column: 28, scope: !4807)
!4826 = !DILocation(line: 52, column: 7, scope: !4762)
!4827 = !DILocation(line: 117, column: 26, scope: !4806)
!4828 = !DILocation(line: 117, column: 19, scope: !4806)
!4829 = !DILocation(line: 117, column: 13, scope: !4806)
!4830 = !DILocation(line: 118, column: 15, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4806, file: !4763, line: 118, column: 11)
!4832 = !DILocation(line: 118, column: 11, scope: !4806)
!4833 = !DILocation(line: 129, column: 11, scope: !4806)
!4834 = !DILocation(line: 129, column: 18, scope: !4806)
!4835 = !DILocation(line: 130, column: 11, scope: !4806)
!4836 = !DILocation(line: 130, column: 19, scope: !4806)
!4837 = !{!4565, !1409, i64 144}
!4838 = !DILocation(line: 161, column: 7, scope: !4806)
!4839 = !DILocation(line: 163, column: 10, scope: !4762)
!4840 = !DILocation(line: 163, column: 3, scope: !4762)
!4841 = !DILocation(line: 0, scope: !4762)
!4842 = !DILocation(line: 164, column: 1, scope: !4762)
