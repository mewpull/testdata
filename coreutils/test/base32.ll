; ModuleID = 'coreutils-8.30/src/base32.bc'
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
%struct.base32_decode_context = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"Usage: %s [OPTION]... [FILE]\0ABase%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.2 = private unnamed_addr constant [243 x i8] c"  -d, --decode          decode data\0A  -i, --ignore-garbage  when decoding, ignore non-alphabet characters\0A  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).\0A                          Use 0 to disable line wrapping\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [268 x i8] c"\0AThe data are encoded as described for the %s alphabet in RFC 4648.\0AWhen decoding, the input may contain newlines in addition to the bytes of\0Athe formal %s alphabet.  Use --ignore-garbage to attempt to recover\0Afrom any other non-alphabet bytes in the encoded stream.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"base32\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"diw:\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"invalid wrap size\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Simon Josefsson\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"ignore-garbage\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), align 8, !dbg !50
@.str.44 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@base32_encode.b32str = internal unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", align 16, !dbg !56
@b32 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !71
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !86
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !91
@.str.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.56 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !95
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !102
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !108
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !136
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !143
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !155
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !160
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !167
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !157
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !169
@.str.92 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.95 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.96 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.97 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.98 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.99 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.100 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.101 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.102 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.103 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.104 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.105 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.108 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.109 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.110 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.111 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.112 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.113 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !175
@.str.1.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.132 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !639 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !644, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i32 %0, metadata !643, metadata !DIExpression()), !dbg !667
  %3 = icmp eq i32 %0, 0, !dbg !668
  br i1 %3, label %9, label %4, !dbg !669

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !670, !tbaa !672
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !670
  %7 = load i8*, i8** @program_name, align 8, !dbg !670, !tbaa !672
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !670
  br label %65, !dbg !670

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !676
  %11 = load i8*, i8** @program_name, align 8, !dbg !676, !tbaa !672
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i32 32) #11, !dbg !676
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !677
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !677, !tbaa !672
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #11, !dbg !677
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !682
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !672
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #11, !dbg !682
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !685
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !672
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !685
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !686
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !672
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !686
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !687
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !672
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !687
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !688
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !688
  %30 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !689
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %30) #11, !dbg !689
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %30, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !663
  %31 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !690
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !652, metadata !DIExpression()) #11, !dbg !691
  br label %32, !dbg !692

; <label>:32:                                     ; preds = %37, %9
  %33 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %34 = phi %struct.infomap* [ %38, %37 ], [ %31, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !652, metadata !DIExpression()) #11, !dbg !691
  %35 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %33) #15, !dbg !692
  %36 = icmp eq i32 %35, 0, !dbg !692
  br i1 %36, label %42, label %37, !dbg !693

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 1, !dbg !694
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !652, metadata !DIExpression()) #11, !dbg !691
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 0, !dbg !695
  %40 = load i8*, i8** %39, align 8, !dbg !695, !tbaa !696
  %41 = icmp eq i8* %40, null, !dbg !698
  br i1 %41, label %42, label %32, !dbg !699, !llvm.loop !700

; <label>:42:                                     ; preds = %37, %32
  %43 = phi %struct.infomap* [ %38, %37 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !652, metadata !DIExpression()) #11, !dbg !691
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !652, metadata !DIExpression()) #11, !dbg !691
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 0, i32 1, !dbg !703
  %45 = load i8*, i8** %44, align 8, !dbg !703, !tbaa !705
  %46 = icmp eq i8* %45, null, !dbg !706
  %47 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %45, !dbg !707
  call void @llvm.dbg.value(metadata i8* %47, metadata !651, metadata !DIExpression()) #11, !dbg !708
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !709
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !709
  %50 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !710
  call void @llvm.dbg.value(metadata i8* %50, metadata !659, metadata !DIExpression()) #11, !dbg !711
  %51 = icmp eq i8* %50, null, !dbg !712
  br i1 %51, label %58, label %52, !dbg !714

; <label>:52:                                     ; preds = %42
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #15, !dbg !715
  %54 = icmp eq i32 %53, 0, !dbg !715
  br i1 %54, label %58, label %55, !dbg !716

; <label>:55:                                     ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !717
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !717
  br label %58, !dbg !719

; <label>:58:                                     ; preds = %42, %52, %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !720
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !720
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !721
  %62 = icmp eq i8* %47, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), !dbg !721
  %63 = select i1 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !721
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* %47, i8* %63) #11, !dbg !721
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %30) #11, !dbg !722
  br label %65

; <label>:65:                                     ; preds = %58, %4
  tail call void @exit(i32 %0) #16, !dbg !723
  unreachable, !dbg !723
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !724 {
  %3 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !794, metadata !DIExpression()), !dbg !826
  %4 = alloca [5120 x i8], align 16
  call void @llvm.dbg.declare(metadata [5120 x i8]* %4, metadata !802, metadata !DIExpression()), !dbg !829
  %5 = alloca %struct.base32_decode_context, align 4
  %6 = alloca i64, align 8
  %7 = alloca [30720 x i8], align 16
  call void @llvm.dbg.declare(metadata [30720 x i8]* %7, metadata !830, metadata !DIExpression()), !dbg !849
  %8 = alloca [49152 x i8], align 16
  call void @llvm.dbg.declare(metadata [49152 x i8]* %8, metadata !839, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32 %0, metadata !729, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8** %1, metadata !730, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i8 0, metadata !788, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8 0, metadata !789, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 76, metadata !790, metadata !DIExpression()), !dbg !856
  %9 = load i8*, i8** %1, align 8, !dbg !857, !tbaa !672
  tail call void @set_program_name(i8* %9) #11, !dbg !858
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !859
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !860
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !861
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !862
  br label %14, !dbg !863

; <label>:14:                                     ; preds = %21, %2
  %15 = phi i8 [ 0, %2 ], [ 1, %21 ]
  %16 = phi i8 [ 0, %2 ], [ %19, %21 ]
  %17 = phi i64 [ 76, %2 ], [ %22, %21 ]
  br label %18, !dbg !864

; <label>:18:                                     ; preds = %21, %14
  %19 = phi i8 [ %16, %14 ], [ 1, %21 ]
  %20 = phi i64 [ %17, %14 ], [ %22, %21 ]
  br label %21, !dbg !864

; <label>:21:                                     ; preds = %18, %24
  %22 = phi i64 [ %27, %24 ], [ %20, %18 ], !dbg !856
  call void @llvm.dbg.value(metadata i64 %22, metadata !790, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i8 %19, metadata !789, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i8 %15, metadata !788, metadata !DIExpression()), !dbg !854
  %23 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !864
  call void @llvm.dbg.value(metadata i32 %23, metadata !731, metadata !DIExpression()), !dbg !865
  switch i32 %23, label %32 [
    i32 -1, label %33
    i32 100, label %14
    i32 119, label %24
    i32 105, label %18
    i32 -130, label %28
    i32 -131, label %29
  ], !dbg !863, !llvm.loop !866

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** @optarg, align 8, !dbg !868, !tbaa !672
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !870
  %27 = tail call i64 @xdectoumax(i8* %25, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %26, i32 0) #11, !dbg !871
  call void @llvm.dbg.value(metadata i64 %27, metadata !790, metadata !DIExpression()), !dbg !856
  br label %21, !dbg !872, !llvm.loop !866

; <label>:28:                                     ; preds = %21
  tail call void @usage(i32 0) #17, !dbg !873
  unreachable, !dbg !873

; <label>:29:                                     ; preds = %21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !874, !tbaa !672
  %31 = load i8*, i8** @Version, align 8, !dbg !874, !tbaa !672
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !874
  tail call void @exit(i32 0) #16, !dbg !874
  unreachable, !dbg !874

; <label>:32:                                     ; preds = %21
  tail call void @usage(i32 1) #17, !dbg !875
  unreachable, !dbg !875

; <label>:33:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 %22, metadata !790, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %22, metadata !790, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i8 %15, metadata !788, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8 %19, metadata !789, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 %22, metadata !790, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i8 %15, metadata !788, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8 %19, metadata !789, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 %22, metadata !790, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i8 %15, metadata !788, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8 %19, metadata !789, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 %22, metadata !790, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i8 %15, metadata !788, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8 %19, metadata !789, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 %22, metadata !790, metadata !DIExpression()), !dbg !856
  %34 = load i32, i32* @optind, align 4, !dbg !876, !tbaa !878
  %35 = sub nsw i32 %0, %34, !dbg !880
  %36 = icmp sgt i32 %35, 1, !dbg !881
  br i1 %36, label %37, label %44, !dbg !882

; <label>:37:                                     ; preds = %33
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !883
  %39 = load i32, i32* @optind, align 4, !dbg !885, !tbaa !878
  %40 = sext i32 %39 to i64, !dbg !886
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !886
  %42 = load i8*, i8** %41, align 8, !dbg !886, !tbaa !672
  %43 = tail call i8* @quote(i8* %42) #11, !dbg !887
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38, i8* %43) #11, !dbg !888
  tail call void @usage(i32 1) #17, !dbg !889
  unreachable, !dbg !889

; <label>:44:                                     ; preds = %33
  %45 = icmp slt i32 %34, %0, !dbg !890
  br i1 %45, label %46, label %50, !dbg !892

; <label>:46:                                     ; preds = %44
  %47 = sext i32 %34 to i64, !dbg !893
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !893
  %49 = load i8*, i8** %48, align 8, !dbg !893, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %49, metadata !787, metadata !DIExpression()), !dbg !894
  br label %50, !dbg !895

; <label>:50:                                     ; preds = %44, %46
  %51 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %44 ], !dbg !896
  call void @llvm.dbg.value(metadata i8* %51, metadata !787, metadata !DIExpression()), !dbg !894
  %52 = tail call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !897
  %53 = icmp eq i32 %52, 0, !dbg !897
  br i1 %53, label %54, label %56, !dbg !899

; <label>:54:                                     ; preds = %50
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !900, !tbaa !672
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %55, metadata !732, metadata !DIExpression()), !dbg !902
  br label %63, !dbg !903

; <label>:56:                                     ; preds = %50
  %57 = tail call %struct._IO_FILE* @fopen(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)), !dbg !904
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %57, metadata !732, metadata !DIExpression()), !dbg !902
  %58 = icmp eq %struct._IO_FILE* %57, null, !dbg !906
  br i1 %58, label %59, label %63, !dbg !908

; <label>:59:                                     ; preds = %56
  %60 = tail call i32* @__errno_location() #18, !dbg !909
  %61 = load i32, i32* %60, align 4, !dbg !909, !tbaa !878
  %62 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %51) #11, !dbg !909
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %62) #11, !dbg !909
  unreachable, !dbg !909

; <label>:63:                                     ; preds = %56, %54
  %64 = phi %struct._IO_FILE* [ %55, %54 ], [ %57, %56 ], !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !732, metadata !DIExpression()), !dbg !902
  tail call void @fadvise(%struct._IO_FILE* %64, i32 2) #11, !dbg !911
  %65 = icmp eq i8 %15, 0, !dbg !912
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !913, !tbaa !672
  br i1 %65, label %147, label %67, !dbg !914

; <label>:67:                                     ; preds = %63
  %68 = icmp eq i8 %19, 0, !dbg !915
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !799, metadata !DIExpression()) #11, !dbg !916
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !800, metadata !DIExpression()) #11, !dbg !917
  call void @llvm.dbg.value(metadata i1 %68, metadata !801, metadata !DIExpression()) #11, !dbg !918
  %69 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !919
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %69) #11, !dbg !919
  %70 = getelementptr inbounds [5120 x i8], [5120 x i8]* %4, i64 0, i64 0, !dbg !920
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %70) #11, !dbg !920
  %71 = bitcast %struct.base32_decode_context* %5 to i8*, !dbg !921
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %71) #11, !dbg !921
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %5, metadata !807, metadata !DIExpression(DW_OP_deref)) #11, !dbg !922
  call void @base32_decode_ctx_init(%struct.base32_decode_context* nonnull %5) #11, !dbg !923
  %72 = bitcast i64* %6 to i8*
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %64, i64 0, i32 0
  %74 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %5, i64 0, i32 0
  br label %75, !dbg !924

; <label>:75:                                     ; preds = %145, %67
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #11, !dbg !925
  call void @llvm.dbg.value(metadata i64 0, metadata !806, metadata !DIExpression()) #11, !dbg !926
  br label %76, !dbg !927

; <label>:76:                                     ; preds = %113, %75
  %77 = phi i64 [ 0, %75 ], [ %105, %113 ], !dbg !928
  call void @llvm.dbg.value(metadata i64 %77, metadata !806, metadata !DIExpression()) #11, !dbg !926
  %78 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %77, !dbg !929
  %79 = sub i64 8192, %77, !dbg !929
  %80 = call i64 @fread_unlocked(i8* nonnull %78, i64 1, i64 %79, %struct._IO_FILE* %64) #11, !dbg !929
  call void @llvm.dbg.value(metadata i64 %80, metadata !816, metadata !DIExpression()) #11, !dbg !930
  store i64 %80, i64* %6, align 8, !dbg !931, !tbaa !932
  br i1 %68, label %103, label %81, !dbg !934

; <label>:81:                                     ; preds = %76
  call void @llvm.dbg.value(metadata i64 0, metadata !818, metadata !DIExpression()) #11, !dbg !935
  call void @llvm.dbg.value(metadata i64 %80, metadata !816, metadata !DIExpression()) #11, !dbg !930
  %82 = icmp eq i64 %80, 0, !dbg !936
  br i1 %82, label %103, label %83, !dbg !938

; <label>:83:                                     ; preds = %81, %99
  %84 = phi i64 [ %100, %99 ], [ %80, %81 ]
  %85 = phi i64 [ %101, %99 ], [ 0, %81 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !818, metadata !DIExpression()) #11, !dbg !935
  %86 = add i64 %85, %77, !dbg !939
  %87 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %86, !dbg !942
  %88 = load i8, i8* %87, align 1, !dbg !942, !tbaa !943
  %89 = call zeroext i1 @isbase32(i8 signext %88) #18, !dbg !944
  %90 = icmp eq i8 %88, 61, !dbg !945
  %91 = or i1 %89, %90, !dbg !946
  br i1 %91, label %92, label %94, !dbg !946

; <label>:92:                                     ; preds = %83
  %93 = add i64 %85, 1, !dbg !947
  call void @llvm.dbg.value(metadata i64 %93, metadata !818, metadata !DIExpression()) #11, !dbg !935
  br label %99, !dbg !948

; <label>:94:                                     ; preds = %83
  %95 = getelementptr inbounds i8, i8* %78, i64 %85, !dbg !949
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !950
  %97 = add i64 %84, -1, !dbg !951
  call void @llvm.dbg.value(metadata i64 %97, metadata !816, metadata !DIExpression()) #11, !dbg !930
  store i64 %97, i64* %6, align 8, !dbg !951, !tbaa !932
  %98 = sub i64 %97, %85, !dbg !952
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %95, i8* nonnull align 1 %96, i64 %98, i1 false) #11, !dbg !953
  br label %99

; <label>:99:                                     ; preds = %94, %92
  %100 = phi i64 [ %84, %92 ], [ %97, %94 ], !dbg !954
  %101 = phi i64 [ %93, %92 ], [ %85, %94 ], !dbg !955
  call void @llvm.dbg.value(metadata i64 %101, metadata !818, metadata !DIExpression()) #11, !dbg !935
  call void @llvm.dbg.value(metadata i64 %100, metadata !816, metadata !DIExpression()) #11, !dbg !930
  %102 = icmp ult i64 %101, %100, !dbg !936
  br i1 %102, label %83, label %103, !dbg !938, !llvm.loop !956

; <label>:103:                                    ; preds = %99, %76, %81
  %104 = phi i64 [ 0, %81 ], [ %80, %76 ], [ %100, %99 ], !dbg !959
  call void @llvm.dbg.value(metadata i64 %104, metadata !816, metadata !DIExpression()) #11, !dbg !930
  %105 = add i64 %104, %77, !dbg !960
  call void @llvm.dbg.value(metadata i64 %105, metadata !806, metadata !DIExpression()) #11, !dbg !926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !961, metadata !DIExpression()) #11, !dbg !967
  %106 = load i32, i32* %73, align 8, !dbg !970, !tbaa !971
  %107 = and i32 %106, 32, !dbg !970
  %108 = icmp eq i32 %107, 0, !dbg !974
  br i1 %108, label %113, label %109, !dbg !975

; <label>:109:                                    ; preds = %103
  %110 = tail call i32* @__errno_location() #18, !dbg !976
  %111 = load i32, i32* %110, align 4, !dbg !976, !tbaa !878
  %112 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !976
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %111, i8* %112) #11, !dbg !976
  unreachable, !dbg !976

; <label>:113:                                    ; preds = %103
  %114 = icmp ult i64 %105, 8192, !dbg !977
  %115 = and i32 %106, 16, !dbg !978
  %116 = icmp eq i32 %115, 0, !dbg !983
  %117 = and i1 %114, %116, !dbg !984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !981, metadata !DIExpression()) #11, !dbg !985
  br i1 %117, label %76, label %128, !dbg !984, !llvm.loop !986

; <label>:118:                                    ; preds = %141
  call void @llvm.dbg.value(metadata i32 %142, metadata !817, metadata !DIExpression()) #11, !dbg !989
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !981, metadata !DIExpression()) #11, !dbg !990
  %119 = load i32, i32* %73, align 8, !dbg !994, !tbaa !971
  %120 = and i32 %119, 16, !dbg !994
  %121 = icmp eq i32 %120, 0, !dbg !995
  %122 = select i1 %121, i32 1, i32 2, !dbg !996
  %123 = icmp ult i32 %142, %122, !dbg !997
  br i1 %123, label %124, label %145, !dbg !998, !llvm.loop !999

; <label>:124:                                    ; preds = %118
  call void @llvm.dbg.value(metadata i32 %142, metadata !817, metadata !DIExpression()) #11, !dbg !989
  %125 = load i32, i32* %74, align 4, !dbg !1002
  %126 = or i32 %129, %125, !dbg !1005
  %127 = icmp eq i32 %126, 0, !dbg !1005
  br i1 %127, label %145, label %128, !dbg !1005, !llvm.loop !999

; <label>:128:                                    ; preds = %113, %124
  %129 = phi i32 [ %142, %124 ], [ 0, %113 ]
  call void @llvm.dbg.value(metadata i32 %129, metadata !817, metadata !DIExpression()) #11, !dbg !989
  call void @llvm.dbg.value(metadata i64 5120, metadata !816, metadata !DIExpression()) #11, !dbg !930
  store i64 5120, i64* %6, align 8, !dbg !1006, !tbaa !932
  %130 = icmp eq i32 %129, 0, !dbg !1007
  %131 = select i1 %130, i64 %105, i64 0, !dbg !1008
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %5, metadata !807, metadata !DIExpression(DW_OP_deref)) #11, !dbg !922
  call void @llvm.dbg.value(metadata i64* %6, metadata !816, metadata !DIExpression(DW_OP_deref)) #11, !dbg !930
  %132 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* nonnull %5, i8* nonnull %69, i64 %131, i8* nonnull %70, i64* nonnull %6) #11, !dbg !1009
  %133 = load i64, i64* %6, align 8, !dbg !1010, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %133, metadata !816, metadata !DIExpression()) #11, !dbg !930
  %134 = call i64 @fwrite_unlocked(i8* nonnull %70, i64 1, i64 %133, %struct._IO_FILE* %66) #11, !dbg !1010
  %135 = load i64, i64* %6, align 8, !dbg !1012, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %135, metadata !816, metadata !DIExpression()) #11, !dbg !930
  %136 = icmp ult i64 %134, %135, !dbg !1013
  br i1 %136, label %137, label %141, !dbg !1014

; <label>:137:                                    ; preds = %128
  %138 = tail call i32* @__errno_location() #18, !dbg !1015
  %139 = load i32, i32* %138, align 4, !dbg !1015, !tbaa !878
  %140 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1015
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %139, i8* %140) #11, !dbg !1015
  unreachable, !dbg !1015

; <label>:141:                                    ; preds = %128
  %142 = add nuw nsw i32 %129, 1, !dbg !1016
  call void @llvm.dbg.value(metadata i32 %142, metadata !817, metadata !DIExpression()) #11, !dbg !989
  br i1 %132, label %118, label %143, !dbg !1017

; <label>:143:                                    ; preds = %141
  %144 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1018
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %144) #11, !dbg !1018
  unreachable, !dbg !1018

; <label>:145:                                    ; preds = %124, %118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #11, !dbg !1020
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !981, metadata !DIExpression()) #11, !dbg !1021
  br i1 %121, label %75, label %146, !dbg !1023, !llvm.loop !1024

; <label>:146:                                    ; preds = %145
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %71) #11, !dbg !1027
  call void @llvm.lifetime.end.p0i8(i64 5120, i8* nonnull %70) #11, !dbg !1027
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %69) #11, !dbg !1027
  br label %259, !dbg !1028

; <label>:147:                                    ; preds = %63
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !835, metadata !DIExpression()) #11, !dbg !1029
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !836, metadata !DIExpression()) #11, !dbg !1030
  call void @llvm.dbg.value(metadata i64 %22, metadata !837, metadata !DIExpression()) #11, !dbg !1031
  call void @llvm.dbg.value(metadata i64 0, metadata !838, metadata !DIExpression()) #11, !dbg !1032
  %148 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 0, !dbg !1033
  call void @llvm.lifetime.start.p0i8(i64 30720, i8* nonnull %148) #11, !dbg !1033
  %149 = getelementptr inbounds [49152 x i8], [49152 x i8]* %8, i64 0, i64 0, !dbg !1034
  call void @llvm.lifetime.start.p0i8(i64 49152, i8* nonnull %149) #11, !dbg !1034
  %150 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %64, i64 0, i32 0
  %151 = icmp eq i64 %22, 0
  %152 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %66, i64 0, i32 5
  %153 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %66, i64 0, i32 6
  br label %154, !dbg !1035

; <label>:154:                                    ; preds = %228, %147
  %155 = phi i64 [ 0, %147 ], [ %224, %228 ], !dbg !1032
  call void @llvm.dbg.value(metadata i64 0, metadata !843, metadata !DIExpression()) #11, !dbg !1036
  br label %156, !dbg !1037

; <label>:156:                                    ; preds = %165, %154
  %157 = phi i64 [ 0, %154 ], [ %161, %165 ], !dbg !1038
  call void @llvm.dbg.value(metadata i64 %157, metadata !843, metadata !DIExpression()) #11, !dbg !1036
  %158 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 %157, !dbg !1040
  %159 = sub i64 30720, %157, !dbg !1040
  %160 = call i64 @fread_unlocked(i8* nonnull %158, i64 1, i64 %159, %struct._IO_FILE* %64) #11, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %160, metadata !844, metadata !DIExpression()) #11, !dbg !1041
  %161 = add i64 %160, %157, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %161, metadata !843, metadata !DIExpression()) #11, !dbg !1036
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !981, metadata !DIExpression()) #11, !dbg !1043
  %162 = load i32, i32* %150, align 8, !dbg !1045, !tbaa !971
  %163 = and i32 %162, 16, !dbg !1045
  %164 = icmp eq i32 %163, 0, !dbg !1046
  br i1 %164, label %165, label %170, !dbg !1047

; <label>:165:                                    ; preds = %156
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !961, metadata !DIExpression()) #11, !dbg !1048
  %166 = and i32 %162, 32, !dbg !1050
  %167 = icmp eq i32 %166, 0, !dbg !1051
  %168 = icmp ult i64 %161, 30720, !dbg !1052
  %169 = and i1 %168, %167, !dbg !1053
  br i1 %169, label %156, label %170, !dbg !1053, !llvm.loop !1054

; <label>:170:                                    ; preds = %165, %156
  %171 = icmp eq i64 %161, 0, !dbg !1057
  br i1 %171, label %223, label %172, !dbg !1059

; <label>:172:                                    ; preds = %170
  %173 = add i64 %161, 4, !dbg !1060
  %174 = udiv i64 %173, 5, !dbg !1060
  %175 = shl i64 %174, 3, !dbg !1060
  call void @base32_encode(i8* nonnull %148, i64 %161, i8* nonnull %149, i64 %175) #11, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %149, metadata !1063, metadata !DIExpression()) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %175, metadata !1068, metadata !DIExpression()) #11, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %22, metadata !1069, metadata !DIExpression()) #11, !dbg !1082
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !1071, metadata !DIExpression()) #11, !dbg !1083
  br i1 %151, label %178, label %176, !dbg !1084

; <label>:176:                                    ; preds = %172
  call void @llvm.dbg.value(metadata i64 0, metadata !1072, metadata !DIExpression()) #11, !dbg !1085
  %177 = icmp eq i64 %175, 0, !dbg !1086
  br i1 %177, label %223, label %186, !dbg !1087

; <label>:178:                                    ; preds = %172
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1088, !tbaa !672
  %180 = call i64 @fwrite_unlocked(i8* nonnull %149, i64 1, i64 %175, %struct._IO_FILE* %179) #11, !dbg !1088
  %181 = icmp ult i64 %180, %175, !dbg !1091
  br i1 %181, label %182, label %223, !dbg !1092

; <label>:182:                                    ; preds = %178
  %183 = tail call i32* @__errno_location() #18, !dbg !1093
  %184 = load i32, i32* %183, align 4, !dbg !1093, !tbaa !878
  %185 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1093
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %184, i8* %185) #11, !dbg !1093
  unreachable, !dbg !1093

; <label>:186:                                    ; preds = %176, %219
  %187 = phi i64 [ %220, %219 ], [ %155, %176 ], !dbg !1094
  %188 = phi i64 [ %221, %219 ], [ 0, %176 ]
  call void @llvm.dbg.value(metadata i64 %188, metadata !1072, metadata !DIExpression()) #11, !dbg !1085
  %189 = sub i64 %22, %187, !dbg !1095
  call void @llvm.dbg.value(metadata i64 %189, metadata !1073, metadata !DIExpression()) #11, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %189, metadata !1078, metadata !DIExpression()) #11, !dbg !1097
  %190 = sub i64 %175, %188, !dbg !1098
  %191 = icmp ult i64 %189, %190, !dbg !1098
  %192 = select i1 %191, i64 %189, i64 %190, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %192, metadata !1078, metadata !DIExpression()) #11, !dbg !1097
  %193 = icmp eq i64 %192, 0, !dbg !1099
  br i1 %193, label %194, label %207, !dbg !1101

; <label>:194:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i32 10, metadata !1102, metadata !DIExpression()) #11, !dbg !1108
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !1107, metadata !DIExpression()) #11, !dbg !1112
  %195 = load i8*, i8** %152, align 8, !dbg !1113, !tbaa !1114
  %196 = load i8*, i8** %153, align 8, !dbg !1113, !tbaa !1115
  %197 = icmp ult i8* %195, %196, !dbg !1113
  br i1 %197, label %198, label %200, !dbg !1113, !prof !1116

; <label>:198:                                    ; preds = %194
  %199 = getelementptr inbounds i8, i8* %195, i64 1, !dbg !1113
  store i8* %199, i8** %152, align 8, !dbg !1113, !tbaa !1114
  store i8 10, i8* %195, align 1, !dbg !1113, !tbaa !943
  br label %219, !dbg !1117

; <label>:200:                                    ; preds = %194
  %201 = call i32 @__overflow(%struct._IO_FILE* nonnull %66, i32 10) #11, !dbg !1113
  %202 = icmp eq i32 %201, -1, !dbg !1118
  br i1 %202, label %203, label %219, !dbg !1117

; <label>:203:                                    ; preds = %200
  %204 = tail call i32* @__errno_location() #18, !dbg !1119
  %205 = load i32, i32* %204, align 4, !dbg !1119, !tbaa !878
  %206 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1119
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %205, i8* %206) #11, !dbg !1119
  unreachable, !dbg !1119

; <label>:207:                                    ; preds = %186
  %208 = getelementptr inbounds [49152 x i8], [49152 x i8]* %8, i64 0, i64 %188, !dbg !1120
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1120, !tbaa !672
  %210 = call i64 @fwrite_unlocked(i8* nonnull %208, i64 1, i64 %192, %struct._IO_FILE* %209) #11, !dbg !1120
  %211 = icmp ult i64 %210, %192, !dbg !1123
  br i1 %211, label %212, label %216, !dbg !1124

; <label>:212:                                    ; preds = %207
  %213 = tail call i32* @__errno_location() #18, !dbg !1125
  %214 = load i32, i32* %213, align 4, !dbg !1125, !tbaa !878
  %215 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1125
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %214, i8* %215) #11, !dbg !1125
  unreachable, !dbg !1125

; <label>:216:                                    ; preds = %207
  %217 = add i64 %192, %187, !dbg !1126
  %218 = add i64 %192, %188, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %218, metadata !1072, metadata !DIExpression()) #11, !dbg !1085
  br label %219

; <label>:219:                                    ; preds = %216, %200, %198
  %220 = phi i64 [ %217, %216 ], [ 0, %200 ], [ 0, %198 ], !dbg !1094
  %221 = phi i64 [ %218, %216 ], [ %188, %200 ], [ %188, %198 ], !dbg !1128
  call void @llvm.dbg.value(metadata i64 %221, metadata !1072, metadata !DIExpression()) #11, !dbg !1085
  %222 = icmp ult i64 %221, %175, !dbg !1086
  br i1 %222, label %186, label %223, !dbg !1087, !llvm.loop !1129

; <label>:223:                                    ; preds = %219, %178, %176, %170
  %224 = phi i64 [ %155, %170 ], [ %155, %178 ], [ %155, %176 ], [ %220, %219 ], !dbg !1032
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !981, metadata !DIExpression()) #11, !dbg !1132
  %225 = load i32, i32* %150, align 8, !dbg !1134, !tbaa !971
  %226 = and i32 %225, 16, !dbg !1134
  %227 = icmp eq i32 %226, 0, !dbg !1135
  br i1 %227, label %228, label %233, !dbg !1136

; <label>:228:                                    ; preds = %223
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !961, metadata !DIExpression()) #11, !dbg !1137
  %229 = and i32 %225, 32, !dbg !1139
  %230 = icmp eq i32 %229, 0, !dbg !1140
  %231 = icmp eq i64 %161, 30720, !dbg !1141
  %232 = and i1 %231, %230, !dbg !1142
  br i1 %232, label %154, label %233, !dbg !1142, !llvm.loop !1143

; <label>:233:                                    ; preds = %228, %223
  %234 = icmp ne i64 %22, 0, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %224, metadata !838, metadata !DIExpression()) #11, !dbg !1032
  %235 = icmp ne i64 %224, 0, !dbg !1148
  %236 = and i1 %234, %235, !dbg !1149
  br i1 %236, label %237, label %250, !dbg !1149

; <label>:237:                                    ; preds = %233
  call void @llvm.dbg.value(metadata i32 10, metadata !1102, metadata !DIExpression()) #11, !dbg !1150
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !1107, metadata !DIExpression()) #11, !dbg !1152
  %238 = load i8*, i8** %152, align 8, !dbg !1153, !tbaa !1114
  %239 = load i8*, i8** %153, align 8, !dbg !1153, !tbaa !1115
  %240 = icmp ult i8* %238, %239, !dbg !1153
  br i1 %240, label %241, label %243, !dbg !1153, !prof !1116

; <label>:241:                                    ; preds = %237
  %242 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !1153
  store i8* %242, i8** %152, align 8, !dbg !1153, !tbaa !1114
  store i8 10, i8* %238, align 1, !dbg !1153, !tbaa !943
  br label %250, !dbg !1154

; <label>:243:                                    ; preds = %237
  %244 = call i32 @__overflow(%struct._IO_FILE* nonnull %66, i32 10) #11, !dbg !1153
  %245 = icmp eq i32 %244, -1, !dbg !1155
  br i1 %245, label %246, label %250, !dbg !1154

; <label>:246:                                    ; preds = %243
  %247 = tail call i32* @__errno_location() #18, !dbg !1156
  %248 = load i32, i32* %247, align 4, !dbg !1156, !tbaa !878
  %249 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1156
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %248, i8* %249) #11, !dbg !1156
  unreachable, !dbg !1156

; <label>:250:                                    ; preds = %243, %241, %233
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !961, metadata !DIExpression()) #11, !dbg !1157
  %251 = load i32, i32* %150, align 8, !dbg !1160, !tbaa !971
  %252 = and i32 %251, 32, !dbg !1160
  %253 = icmp eq i32 %252, 0, !dbg !1161
  br i1 %253, label %258, label %254, !dbg !1162

; <label>:254:                                    ; preds = %250
  %255 = tail call i32* @__errno_location() #18, !dbg !1163
  %256 = load i32, i32* %255, align 4, !dbg !1163, !tbaa !878
  %257 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !1163
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %256, i8* %257) #11, !dbg !1163
  unreachable, !dbg !1163

; <label>:258:                                    ; preds = %250
  call void @llvm.lifetime.end.p0i8(i64 49152, i8* nonnull %149) #11, !dbg !1164
  call void @llvm.lifetime.end.p0i8(i64 30720, i8* nonnull %148) #11, !dbg !1164
  br label %259

; <label>:259:                                    ; preds = %258, %146
  %260 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %64) #11, !dbg !1165
  %261 = icmp eq i32 %260, -1, !dbg !1167
  br i1 %261, label %262, label %271, !dbg !1168

; <label>:262:                                    ; preds = %259
  %263 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !1169
  %264 = icmp eq i32 %263, 0, !dbg !1169
  %265 = tail call i32* @__errno_location() #18, !dbg !1172
  %266 = load i32, i32* %265, align 4, !dbg !1172, !tbaa !878
  br i1 %264, label %267, label %269, !dbg !1173

; <label>:267:                                    ; preds = %262
  %268 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1174
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %266, i8* %268) #11, !dbg !1174
  unreachable, !dbg !1174

; <label>:269:                                    ; preds = %262
  %270 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %51) #11, !dbg !1175
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %266, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %270) #11, !dbg !1175
  unreachable, !dbg !1175

; <label>:271:                                    ; preds = %259
  ret i32 0, !dbg !1176
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

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @base32_encode(i8* noalias nocapture readonly, i64, i8* noalias nocapture, i64) local_unnamed_addr #7 !dbg !58 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %1, metadata !80, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %2, metadata !81, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %3, metadata !82, metadata !DIExpression()), !dbg !1180
  %5 = icmp ne i64 %1, 0, !dbg !1181
  %6 = icmp ne i64 %3, 0, !dbg !1182
  %7 = and i1 %5, %6, !dbg !1182
  br i1 %7, label %8, label %158, !dbg !1183

; <label>:8:                                      ; preds = %4, %151
  %9 = phi i64 [ %149, %151 ], [ %3, %4 ]
  %10 = phi i8* [ %152, %151 ], [ %2, %4 ]
  %11 = phi i64 [ %153, %151 ], [ %1, %4 ]
  %12 = phi i8* [ %157, %151 ], [ %0, %4 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %10, metadata !81, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %11, metadata !80, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %12, metadata !79, metadata !DIExpression()), !dbg !1177
  %13 = load i8, i8* %12, align 1, !dbg !1184, !tbaa !943
  %14 = lshr i8 %13, 3, !dbg !1186
  %15 = zext i8 %14 to i64, !dbg !1187
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %15, !dbg !1187
  %17 = load i8, i8* %16, align 1, !dbg !1187, !tbaa !943
  %18 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %18, metadata !81, metadata !DIExpression()), !dbg !1179
  store i8 %17, i8* %10, align 1, !dbg !1189, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1180
  %19 = icmp eq i64 %9, 1, !dbg !1190
  br i1 %19, label %162, label %20, !dbg !1192

; <label>:20:                                     ; preds = %8
  %21 = load i8, i8* %12, align 1, !dbg !1193, !tbaa !943
  %22 = zext i8 %21 to i64, !dbg !1194
  %23 = shl nuw nsw i64 %22, 2, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %11, metadata !80, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1178
  %24 = icmp ne i64 %11, 1, !dbg !1196
  br i1 %24, label %25, label %30, !dbg !1196

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1197
  %27 = load i8, i8* %26, align 1, !dbg !1197, !tbaa !943
  %28 = lshr i8 %27, 6, !dbg !1198
  %29 = zext i8 %28 to i64, !dbg !1198
  br label %30, !dbg !1196

; <label>:30:                                     ; preds = %20, %25
  %31 = phi i64 [ %29, %25 ], [ 0, %20 ], !dbg !1196
  %32 = add nuw nsw i64 %31, %23, !dbg !1199
  %33 = and i64 %32, 31, !dbg !1200
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %33, !dbg !1201
  %35 = load i8, i8* %34, align 1, !dbg !1201, !tbaa !943
  %36 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %36, metadata !81, metadata !DIExpression()), !dbg !1179
  store i8 %35, i8* %18, align 1, !dbg !1203, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1180
  %37 = icmp eq i64 %9, 2, !dbg !1204
  br i1 %37, label %162, label %38, !dbg !1206

; <label>:38:                                     ; preds = %30
  br i1 %24, label %39, label %47, !dbg !1207

; <label>:39:                                     ; preds = %38
  %40 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1208
  %41 = load i8, i8* %40, align 1, !dbg !1208, !tbaa !943
  %42 = lshr i8 %41, 1, !dbg !1209
  %43 = and i8 %42, 31, !dbg !1210
  %44 = zext i8 %43 to i64, !dbg !1211
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %44, !dbg !1211
  %46 = load i8, i8* %45, align 1, !dbg !1211, !tbaa !943
  br label %47, !dbg !1207

; <label>:47:                                     ; preds = %38, %39
  %48 = phi i8 [ %46, %39 ], [ 61, %38 ], !dbg !1207
  %49 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %49, metadata !81, metadata !DIExpression()), !dbg !1179
  store i8 %48, i8* %36, align 1, !dbg !1213, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1180
  %50 = icmp eq i64 %9, 3, !dbg !1214
  br i1 %50, label %162, label %51, !dbg !1216

; <label>:51:                                     ; preds = %47
  br i1 %24, label %52, label %70, !dbg !1217

; <label>:52:                                     ; preds = %51
  %53 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1218
  %54 = load i8, i8* %53, align 1, !dbg !1218, !tbaa !943
  %55 = zext i8 %54 to i64, !dbg !1219
  %56 = shl nuw nsw i64 %55, 4, !dbg !1220
  %57 = add i64 %11, -2, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %57, metadata !80, metadata !DIExpression()), !dbg !1178
  %58 = icmp eq i64 %57, 0, !dbg !1221
  br i1 %58, label %64, label %59, !dbg !1221

; <label>:59:                                     ; preds = %52
  %60 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1222
  %61 = load i8, i8* %60, align 1, !dbg !1222, !tbaa !943
  %62 = lshr i8 %61, 4, !dbg !1223
  %63 = zext i8 %62 to i64, !dbg !1223
  br label %64, !dbg !1221

; <label>:64:                                     ; preds = %52, %59
  %65 = phi i64 [ %63, %59 ], [ 0, %52 ], !dbg !1221
  %66 = add nuw nsw i64 %65, %56, !dbg !1224
  %67 = and i64 %66, 31, !dbg !1225
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %67, !dbg !1226
  %69 = load i8, i8* %68, align 1, !dbg !1226, !tbaa !943
  br label %70, !dbg !1217

; <label>:70:                                     ; preds = %51, %64
  %71 = phi i64 [ %57, %64 ], [ 0, %51 ], !dbg !1227
  %72 = phi i8 [ %69, %64 ], [ 61, %51 ], !dbg !1217
  call void @llvm.dbg.value(metadata i64 %71, metadata !80, metadata !DIExpression()), !dbg !1178
  %73 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %73, metadata !81, metadata !DIExpression()), !dbg !1179
  store i8 %72, i8* %49, align 1, !dbg !1229, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1180
  %74 = icmp eq i64 %9, 4, !dbg !1230
  br i1 %74, label %162, label %75, !dbg !1232

; <label>:75:                                     ; preds = %70
  %76 = icmp eq i64 %71, 0, !dbg !1233
  br i1 %76, label %95, label %77, !dbg !1233

; <label>:77:                                     ; preds = %75
  %78 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1234
  %79 = load i8, i8* %78, align 1, !dbg !1234, !tbaa !943
  %80 = zext i8 %79 to i64, !dbg !1235
  %81 = shl nuw nsw i64 %80, 1, !dbg !1236
  %82 = add i64 %71, -1, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %82, metadata !80, metadata !DIExpression()), !dbg !1178
  %83 = icmp eq i64 %82, 0, !dbg !1237
  br i1 %83, label %89, label %84, !dbg !1237

; <label>:84:                                     ; preds = %77
  %85 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1238
  %86 = load i8, i8* %85, align 1, !dbg !1238, !tbaa !943
  %87 = lshr i8 %86, 7, !dbg !1239
  %88 = zext i8 %87 to i64, !dbg !1239
  br label %89, !dbg !1237

; <label>:89:                                     ; preds = %77, %84
  %90 = phi i64 [ %88, %84 ], [ 0, %77 ], !dbg !1237
  %91 = add nuw nsw i64 %90, %81, !dbg !1240
  %92 = and i64 %91, 31, !dbg !1241
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %92, !dbg !1242
  %94 = load i8, i8* %93, align 1, !dbg !1242, !tbaa !943
  br label %95, !dbg !1233

; <label>:95:                                     ; preds = %75, %89
  %96 = phi i64 [ %82, %89 ], [ 0, %75 ], !dbg !1227
  %97 = phi i8 [ %94, %89 ], [ 61, %75 ], !dbg !1233
  call void @llvm.dbg.value(metadata i64 %96, metadata !80, metadata !DIExpression()), !dbg !1178
  %98 = getelementptr inbounds i8, i8* %10, i64 5, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %98, metadata !81, metadata !DIExpression()), !dbg !1179
  store i8 %97, i8* %73, align 1, !dbg !1244, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !1180
  %99 = icmp eq i64 %9, 5, !dbg !1245
  br i1 %99, label %162, label %100, !dbg !1247

; <label>:100:                                    ; preds = %95
  %101 = icmp ne i64 %96, 0, !dbg !1248
  br i1 %101, label %102, label %110, !dbg !1248

; <label>:102:                                    ; preds = %100
  %103 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1249
  %104 = load i8, i8* %103, align 1, !dbg !1249, !tbaa !943
  %105 = lshr i8 %104, 2, !dbg !1250
  %106 = and i8 %105, 31, !dbg !1251
  %107 = zext i8 %106 to i64, !dbg !1252
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %107, !dbg !1252
  %109 = load i8, i8* %108, align 1, !dbg !1252, !tbaa !943
  br label %110, !dbg !1248

; <label>:110:                                    ; preds = %100, %102
  %111 = phi i8 [ %109, %102 ], [ 61, %100 ], !dbg !1248
  %112 = getelementptr inbounds i8, i8* %10, i64 6, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %112, metadata !81, metadata !DIExpression()), !dbg !1179
  store i8 %111, i8* %98, align 1, !dbg !1254, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1180
  %113 = icmp eq i64 %9, 6, !dbg !1255
  br i1 %113, label %162, label %114, !dbg !1257

; <label>:114:                                    ; preds = %110
  br i1 %101, label %115, label %133, !dbg !1258

; <label>:115:                                    ; preds = %114
  %116 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1259
  %117 = load i8, i8* %116, align 1, !dbg !1259, !tbaa !943
  %118 = zext i8 %117 to i64, !dbg !1260
  %119 = shl nuw nsw i64 %118, 3, !dbg !1261
  %120 = add i64 %96, -1, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %120, metadata !80, metadata !DIExpression()), !dbg !1178
  %121 = icmp eq i64 %120, 0, !dbg !1262
  br i1 %121, label %127, label %122, !dbg !1262

; <label>:122:                                    ; preds = %115
  %123 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1263
  %124 = load i8, i8* %123, align 1, !dbg !1263, !tbaa !943
  %125 = lshr i8 %124, 5, !dbg !1264
  %126 = zext i8 %125 to i64, !dbg !1264
  br label %127, !dbg !1262

; <label>:127:                                    ; preds = %115, %122
  %128 = phi i64 [ %126, %122 ], [ 0, %115 ], !dbg !1262
  %129 = add nuw nsw i64 %128, %119, !dbg !1265
  %130 = and i64 %129, 31, !dbg !1266
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %130, !dbg !1267
  %132 = load i8, i8* %131, align 1, !dbg !1267, !tbaa !943
  br label %133, !dbg !1258

; <label>:133:                                    ; preds = %114, %127
  %134 = phi i64 [ %120, %127 ], [ 0, %114 ], !dbg !1227
  %135 = phi i8 [ %132, %127 ], [ 61, %114 ], !dbg !1258
  call void @llvm.dbg.value(metadata i64 %134, metadata !80, metadata !DIExpression()), !dbg !1178
  %136 = getelementptr inbounds i8, i8* %10, i64 7, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %136, metadata !81, metadata !DIExpression()), !dbg !1179
  store i8 %135, i8* %112, align 1, !dbg !1269, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1180
  %137 = icmp eq i64 %9, 7, !dbg !1270
  br i1 %137, label %162, label %138, !dbg !1272

; <label>:138:                                    ; preds = %133
  %139 = icmp ne i64 %134, 0, !dbg !1273
  br i1 %139, label %140, label %147, !dbg !1273

; <label>:140:                                    ; preds = %138
  %141 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1274
  %142 = load i8, i8* %141, align 1, !dbg !1274, !tbaa !943
  %143 = and i8 %142, 31, !dbg !1275
  %144 = zext i8 %143 to i64, !dbg !1276
  %145 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %144, !dbg !1276
  %146 = load i8, i8* %145, align 1, !dbg !1276, !tbaa !943
  br label %147, !dbg !1273

; <label>:147:                                    ; preds = %138, %140
  %148 = phi i8 [ %146, %140 ], [ 61, %138 ], !dbg !1273
  store i8 %148, i8* %136, align 1, !dbg !1277, !tbaa !943
  %149 = add i64 %9, -8, !dbg !1278
  %150 = icmp eq i64 %149, 0, !dbg !1278
  br i1 %150, label %162, label %151, !dbg !1280

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1281
  %153 = add i64 %134, -1, !dbg !1282
  %154 = icmp eq i64 %153, 0, !dbg !1284
  %155 = xor i1 %139, true, !dbg !1284
  %156 = or i1 %154, %155, !dbg !1284
  %157 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %157, metadata !79, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %149, metadata !82, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %152, metadata !81, metadata !DIExpression()), !dbg !1179
  br i1 %156, label %160, label %8, !dbg !1183, !llvm.loop !1287

; <label>:158:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !81, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %3, metadata !82, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 undef, metadata !82, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* undef, metadata !81, metadata !DIExpression()), !dbg !1179
  %159 = icmp eq i64 %3, 0, !dbg !1289
  br i1 %159, label %162, label %160, !dbg !1291

; <label>:160:                                    ; preds = %151, %158
  %161 = phi i8* [ %2, %158 ], [ %152, %151 ]
  store i8 0, i8* %161, align 1, !dbg !1292, !tbaa !943
  br label %162, !dbg !1293

; <label>:162:                                    ; preds = %8, %30, %47, %70, %95, %110, %133, %147, %158, %160
  ret void, !dbg !1294
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @base32_encode_alloc(i8* nocapture readonly, i64, i8** nocapture) local_unnamed_addr #7 !dbg !1295 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1299, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %1, metadata !1300, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8** %2, metadata !1301, metadata !DIExpression()), !dbg !1305
  %4 = add i64 %1, 4, !dbg !1306
  %5 = udiv i64 %4, 5, !dbg !1306
  %6 = shl i64 %5, 3, !dbg !1306
  %7 = or i64 %6, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %7, metadata !1302, metadata !DIExpression()), !dbg !1308
  %8 = icmp ult i64 %7, %1, !dbg !1309
  br i1 %8, label %9, label %10, !dbg !1311

; <label>:9:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1312, !tbaa !672
  br label %14, !dbg !1314

; <label>:10:                                     ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !1315
  store i8* %11, i8** %2, align 8, !dbg !1316, !tbaa !672
  %12 = icmp eq i8* %11, null, !dbg !1317
  br i1 %12, label %14, label %13, !dbg !1319

; <label>:13:                                     ; preds = %10
  tail call void @base32_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1320
  br label %14, !dbg !1321

; <label>:14:                                     ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ], !dbg !1322
  ret i64 %15, !dbg !1323
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @isbase32(i8 signext) local_unnamed_addr #9 !dbg !1324 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1328, metadata !DIExpression()), !dbg !1329
  %2 = zext i8 %0 to i64, !dbg !1330
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %2, !dbg !1330
  %4 = load i8, i8* %3, align 1, !dbg !1330, !tbaa !943
  %5 = icmp sgt i8 %4, -1, !dbg !1331
  ret i1 %5, !dbg !1332
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @base32_decode_ctx_init(%struct.base32_decode_context* nocapture) local_unnamed_addr #7 !dbg !1333 {
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1342, metadata !DIExpression()), !dbg !1343
  %2 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1344
  store i32 0, i32* %2, align 4, !dbg !1345, !tbaa !1346
  ret void, !dbg !1348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base32_decode_ctx(%struct.base32_decode_context*, i8* noalias, i64, i8* noalias, i64* nocapture) local_unnamed_addr #7 !dbg !1349 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1353, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8* %1, metadata !1354, metadata !DIExpression()), !dbg !1368
  %8 = ptrtoint i8* %1 to i64
  call void @llvm.dbg.value(metadata i64 %2, metadata !1355, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8* %3, metadata !1356, metadata !DIExpression()), !dbg !1370
  store i8* %3, i8** %6, align 8, !tbaa !672
  call void @llvm.dbg.value(metadata i64* %4, metadata !1357, metadata !DIExpression()), !dbg !1371
  %9 = bitcast i64* %7 to i8*, !dbg !1372
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1372
  %10 = load i64, i64* %4, align 8, !dbg !1373, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %10, metadata !1358, metadata !DIExpression()), !dbg !1374
  store i64 %10, i64* %7, align 8, !dbg !1374, !tbaa !932
  %11 = icmp ne %struct.base32_decode_context* %0, null, !dbg !1375
  call void @llvm.dbg.value(metadata i8 0, metadata !1360, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 0, metadata !1361, metadata !DIExpression()), !dbg !1377
  %12 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0
  br i1 %11, label %13, label %17, !dbg !1378

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %12, align 4, !dbg !1379, !tbaa !1346
  call void @llvm.dbg.value(metadata i32 %14, metadata !1361, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %2, metadata !1355, metadata !DIExpression()), !dbg !1369
  %15 = icmp eq i64 %2, 0, !dbg !1382
  %16 = icmp ne i32 %14, 0, !dbg !1383
  br label %17, !dbg !1383

; <label>:17:                                     ; preds = %5, %13
  %18 = phi i1 [ %16, %13 ], [ false, %5 ]
  %19 = phi i1 [ %15, %13 ], [ false, %5 ]
  %20 = or i1 %18, %19
  %21 = xor i1 %11, true
  %22 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 0
  br label %23, !dbg !1384

; <label>:23:                                     ; preds = %117, %17
  %24 = phi i64 [ %10, %17 ], [ %120, %117 ], !dbg !1385
  %25 = phi i64 [ %8, %17 ], [ %118, %117 ]
  %26 = phi i64 [ %2, %17 ], [ %119, %117 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !1358, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %24, metadata !1362, metadata !DIExpression()), !dbg !1386
  br i1 %20, label %39, label %27, !dbg !1387

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i64 %24, metadata !1358, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %24, metadata !1362, metadata !DIExpression()), !dbg !1386
  %28 = inttoptr i64 %25 to i8*, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %28, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %26, metadata !1355, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8** %6, metadata !1356, metadata !DIExpression(DW_OP_deref)), !dbg !1370
  call void @llvm.dbg.value(metadata i64* %7, metadata !1358, metadata !DIExpression(DW_OP_deref)), !dbg !1374
  %29 = call fastcc zeroext i1 @decode_8(i8* %28, i64 %26, i8** nonnull %6, i64* nonnull %7), !dbg !1393
  br i1 %29, label %30, label %39, !dbg !1394

; <label>:30:                                     ; preds = %27, %30
  %31 = phi i8* [ %33, %30 ], [ %28, %27 ]
  %32 = phi i64 [ %34, %30 ], [ %26, %27 ]
  call void @llvm.dbg.value(metadata i64 %32, metadata !1355, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8* %31, metadata !1354, metadata !DIExpression()), !dbg !1368
  %33 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !1395
  call void @llvm.dbg.value(metadata i8* %33, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %32, metadata !1355, metadata !DIExpression()), !dbg !1369
  %34 = add i64 %32, -8, !dbg !1396
  %35 = load i64, i64* %7, align 8, !dbg !1397, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %35, metadata !1358, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %35, metadata !1362, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %33, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %34, metadata !1355, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8** %6, metadata !1356, metadata !DIExpression(DW_OP_deref)), !dbg !1370
  call void @llvm.dbg.value(metadata i64* %7, metadata !1358, metadata !DIExpression(DW_OP_deref)), !dbg !1374
  %36 = call fastcc zeroext i1 @decode_8(i8* nonnull %33, i64 %34, i8** nonnull %6, i64* nonnull %7), !dbg !1393
  br i1 %36, label %30, label %37, !dbg !1394, !llvm.loop !1398

; <label>:37:                                     ; preds = %30
  %38 = ptrtoint i8* %33 to i64, !dbg !1395
  br label %39, !dbg !1394

; <label>:39:                                     ; preds = %27, %37, %23
  %40 = phi i64 [ %25, %23 ], [ %38, %37 ], [ %25, %27 ]
  %41 = phi i64 [ %26, %23 ], [ %34, %37 ], [ %26, %27 ]
  %42 = phi i64 [ %24, %23 ], [ %35, %37 ], [ %24, %27 ], !dbg !1401
  call void @llvm.dbg.value(metadata i64 %42, metadata !1362, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %41, metadata !1355, metadata !DIExpression()), !dbg !1369
  %43 = icmp eq i64 %41, 0, !dbg !1402
  %44 = xor i1 %43, true, !dbg !1404
  %45 = or i1 %19, %44, !dbg !1404
  br i1 %45, label %46, label %121, !dbg !1404

; <label>:46:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %41, metadata !1355, metadata !DIExpression()), !dbg !1369
  %47 = inttoptr i64 %40 to i8*, !dbg !1405
  br i1 %43, label %56, label %48, !dbg !1407

; <label>:48:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i8* %47, metadata !1354, metadata !DIExpression()), !dbg !1368
  %49 = load i8, i8* %47, align 1, !dbg !1408, !tbaa !943
  %50 = icmp ne i8 %49, 10, !dbg !1409
  %51 = or i1 %50, %21, !dbg !1410
  br i1 %51, label %56, label %52, !dbg !1410

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %53, metadata !1354, metadata !DIExpression()), !dbg !1368
  %54 = ptrtoint i8* %53 to i64, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %41, metadata !1355, metadata !DIExpression()), !dbg !1369
  %55 = add i64 %41, -1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %55, metadata !1355, metadata !DIExpression()), !dbg !1369
  br label %117, !dbg !1414, !llvm.loop !1415

; <label>:56:                                     ; preds = %46, %48
  %57 = load i64, i64* %7, align 8, !dbg !1417, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %57, metadata !1358, metadata !DIExpression()), !dbg !1374
  %58 = load i8*, i8** %6, align 8, !dbg !1418, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %58, metadata !1356, metadata !DIExpression()), !dbg !1370
  %59 = sub i64 %57, %42, !dbg !1418
  %60 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !1418
  call void @llvm.dbg.value(metadata i8* %60, metadata !1356, metadata !DIExpression()), !dbg !1370
  store i8* %60, i8** %6, align 8, !dbg !1418, !tbaa !672
  call void @llvm.dbg.value(metadata i64 %42, metadata !1358, metadata !DIExpression()), !dbg !1374
  store i64 %42, i64* %7, align 8, !dbg !1419, !tbaa !932
  call void @llvm.dbg.value(metadata i8* %47, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %41, metadata !1355, metadata !DIExpression()), !dbg !1369
  %61 = getelementptr inbounds i8, i8* %47, i64 %41, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %61, metadata !1364, metadata !DIExpression()), !dbg !1421
  br i1 %11, label %62, label %100, !dbg !1422

; <label>:62:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8** undef, metadata !1354, metadata !DIExpression(DW_OP_deref)), !dbg !1368
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1423, metadata !DIExpression()) #11, !dbg !1439
  call void @llvm.dbg.value(metadata i8** undef, metadata !1429, metadata !DIExpression()) #11, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %61, metadata !1430, metadata !DIExpression()) #11, !dbg !1443
  %63 = load i32, i32* %12, align 4, !dbg !1444, !tbaa !1346, !noalias !1446
  switch i32 %63, label %75 [
    i32 8, label %64
    i32 0, label %65
  ], !dbg !1449

; <label>:64:                                     ; preds = %62
  store i32 0, i32* %12, align 4, !dbg !1450, !tbaa !1346, !noalias !1446
  br label %65, !dbg !1451

; <label>:65:                                     ; preds = %64, %62
  call void @llvm.dbg.value(metadata i8* %47, metadata !1432, metadata !DIExpression()) #11, !dbg !1452
  %66 = ptrtoint i8* %61 to i64, !dbg !1453
  %67 = sub i64 %66, %40, !dbg !1453
  %68 = icmp sgt i64 %67, 7, !dbg !1455
  br i1 %68, label %69, label %75, !dbg !1456

; <label>:69:                                     ; preds = %65
  %70 = tail call i8* @memchr(i8* %47, i32 10, i64 8) #15, !dbg !1457
  %71 = icmp eq i8* %70, null, !dbg !1458
  br i1 %71, label %72, label %75, !dbg !1459

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds i8, i8* %47, i64 8, !dbg !1460
  %74 = ptrtoint i8* %73 to i64, !dbg !1460
  call void @llvm.dbg.value(metadata i8* %103, metadata !1366, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %102, metadata !1355, metadata !DIExpression()), !dbg !1369
  br label %109, !dbg !1463

; <label>:75:                                     ; preds = %62, %69, %65
  %76 = phi i32 [ 0, %69 ], [ 0, %65 ], [ %63, %62 ]
  call void @llvm.dbg.value(metadata i8* %47, metadata !1435, metadata !DIExpression()) #11, !dbg !1465
  %77 = icmp sgt i64 %41, 0, !dbg !1466
  br i1 %77, label %78, label %95, !dbg !1467

; <label>:78:                                     ; preds = %75, %86
  %79 = phi i32 [ %87, %86 ], [ %76, %75 ]
  %80 = phi i8* [ %83, %86 ], [ %47, %75 ]
  br label %81, !dbg !1468

; <label>:81:                                     ; preds = %78, %93
  %82 = phi i8* [ %83, %93 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8* %82, metadata !1435, metadata !DIExpression()) #11, !dbg !1465
  %83 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1468
  %84 = load i8, i8* %82, align 1, !dbg !1469, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %84, metadata !1437, metadata !DIExpression()) #11, !dbg !1470
  %85 = icmp eq i8 %84, 10, !dbg !1471
  br i1 %85, label %93, label %86, !dbg !1473

; <label>:86:                                     ; preds = %81
  %87 = add i32 %79, 1, !dbg !1474
  store i32 %87, i32* %12, align 4, !dbg !1474, !tbaa !1346, !noalias !1446
  %88 = zext i32 %79 to i64, !dbg !1476
  %89 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 %88, !dbg !1476
  store i8 %84, i8* %89, align 1, !dbg !1477, !tbaa !943, !noalias !1446
  %90 = icmp ne i32 %87, 8, !dbg !1478
  %91 = icmp ult i8* %83, %61, !dbg !1466
  %92 = and i1 %90, %91, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %83, metadata !1435, metadata !DIExpression()) #11, !dbg !1465
  br i1 %92, label %78, label %95, !dbg !1480

; <label>:93:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i8* %83, metadata !1435, metadata !DIExpression()) #11, !dbg !1465
  %94 = icmp ult i8* %83, %61, !dbg !1466
  br i1 %94, label %81, label %95, !dbg !1467

; <label>:95:                                     ; preds = %93, %86, %75
  %96 = phi i32 [ %76, %75 ], [ %79, %93 ], [ %87, %86 ], !dbg !1481
  %97 = phi i8* [ %47, %75 ], [ %83, %86 ], [ %83, %93 ], !dbg !1482
  call void @llvm.dbg.value(metadata i8* %97, metadata !1435, metadata !DIExpression()) #11, !dbg !1465
  %98 = ptrtoint i8* %97 to i64, !dbg !1483
  %99 = zext i32 %96 to i64, !dbg !1484
  br label %100

; <label>:100:                                    ; preds = %95, %56
  %101 = phi i64 [ %40, %56 ], [ %98, %95 ]
  %102 = phi i64 [ %41, %56 ], [ %99, %95 ]
  %103 = phi i8* [ %47, %56 ], [ %22, %95 ], !dbg !1485
  call void @llvm.dbg.value(metadata i8* %103, metadata !1366, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %102, metadata !1355, metadata !DIExpression()), !dbg !1369
  %104 = icmp eq i64 %102, 0, !dbg !1486
  br i1 %104, label %121, label %105, !dbg !1487

; <label>:105:                                    ; preds = %100
  %106 = icmp ugt i64 %102, 7, !dbg !1488
  %107 = or i1 %19, %106, !dbg !1463
  %108 = or i1 %107, %21, !dbg !1463
  br i1 %108, label %109, label %121, !dbg !1463

; <label>:109:                                    ; preds = %72, %105
  %110 = phi i64 [ %74, %72 ], [ %101, %105 ]
  %111 = phi i64 [ 8, %72 ], [ %102, %105 ]
  %112 = phi i8* [ %47, %72 ], [ %103, %105 ]
  call void @llvm.dbg.value(metadata i64 %102, metadata !1355, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8** %6, metadata !1356, metadata !DIExpression(DW_OP_deref)), !dbg !1370
  call void @llvm.dbg.value(metadata i64* %7, metadata !1358, metadata !DIExpression(DW_OP_deref)), !dbg !1374
  %113 = call fastcc zeroext i1 @decode_8(i8* %112, i64 %111, i8** nonnull %6, i64* nonnull %7), !dbg !1489
  br i1 %113, label %114, label %121, !dbg !1491

; <label>:114:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8** undef, metadata !1354, metadata !DIExpression(DW_OP_deref)), !dbg !1368
  %115 = ptrtoint i8* %61 to i64, !dbg !1492
  %116 = sub i64 %115, %110, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %116, metadata !1355, metadata !DIExpression()), !dbg !1369
  br label %117, !dbg !1493

; <label>:117:                                    ; preds = %52, %114
  %118 = phi i64 [ %54, %52 ], [ %110, %114 ]
  %119 = phi i64 [ %55, %52 ], [ %116, %114 ]
  %120 = load i64, i64* %7, align 8, !dbg !1385, !tbaa !932
  br label %23

; <label>:121:                                    ; preds = %100, %105, %109, %39
  %122 = phi i64 [ %41, %39 ], [ 0, %100 ], [ 0, %105 ], [ %111, %109 ]
  %123 = load i64, i64* %7, align 8, !dbg !1494, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %123, metadata !1358, metadata !DIExpression()), !dbg !1374
  %124 = load i64, i64* %4, align 8, !dbg !1495, !tbaa !932
  %125 = sub i64 %124, %123, !dbg !1495
  store i64 %125, i64* %4, align 8, !dbg !1495, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %119, metadata !1355, metadata !DIExpression()), !dbg !1369
  %126 = icmp eq i64 %122, 0, !dbg !1496
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1497
  ret i1 %126, !dbg !1498
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @decode_8(i8* noalias nocapture readonly, i64, i8** nocapture, i64* nocapture) unnamed_addr #7 !dbg !1499 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1504, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %1, metadata !1505, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i8** %2, metadata !1506, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64* %3, metadata !1507, metadata !DIExpression()), !dbg !1512
  %5 = load i8*, i8** %2, align 8, !dbg !1513, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %5, metadata !1508, metadata !DIExpression()), !dbg !1514
  %6 = icmp ult i64 %1, 8, !dbg !1515
  br i1 %6, label %180, label %7, !dbg !1517

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %0, align 1, !dbg !1518, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %8, metadata !1328, metadata !DIExpression()), !dbg !1520
  %9 = zext i8 %8 to i64, !dbg !1522
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %9, !dbg !1522
  %11 = load i8, i8* %10, align 1, !dbg !1522, !tbaa !943
  %12 = icmp sgt i8 %11, -1, !dbg !1523
  br i1 %12, label %13, label %180, !dbg !1524

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1525
  %15 = load i8, i8* %14, align 1, !dbg !1525, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %15, metadata !1328, metadata !DIExpression()), !dbg !1526
  %16 = zext i8 %15 to i64, !dbg !1528
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %16, !dbg !1528
  %18 = load i8, i8* %17, align 1, !dbg !1528, !tbaa !943
  %19 = icmp sgt i8 %18, -1, !dbg !1529
  br i1 %19, label %20, label %180, !dbg !1530

; <label>:20:                                     ; preds = %13
  %21 = load i64, i64* %3, align 8, !dbg !1531, !tbaa !932
  %22 = icmp eq i64 %21, 0, !dbg !1531
  br i1 %22, label %30, label %23, !dbg !1533

; <label>:23:                                     ; preds = %20
  %24 = shl i8 %11, 3, !dbg !1534
  %25 = lshr i8 %18, 2
  %26 = or i8 %25, %24, !dbg !1536
  %27 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1537
  call void @llvm.dbg.value(metadata i8* %27, metadata !1508, metadata !DIExpression()), !dbg !1514
  store i8 %26, i8* %5, align 1, !dbg !1538, !tbaa !943
  %28 = load i64, i64* %3, align 8, !dbg !1539, !tbaa !932
  %29 = add i64 %28, -1, !dbg !1539
  store i64 %29, i64* %3, align 8, !dbg !1539, !tbaa !932
  br label %30, !dbg !1540

; <label>:30:                                     ; preds = %20, %23
  %31 = phi i64 [ %29, %23 ], [ 0, %20 ]
  %32 = phi i8* [ %27, %23 ], [ %5, %20 ], !dbg !1541
  call void @llvm.dbg.value(metadata i8* %32, metadata !1508, metadata !DIExpression()), !dbg !1514
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1542
  %34 = load i8, i8* %33, align 1, !dbg !1542, !tbaa !943
  %35 = icmp eq i8 %34, 61, !dbg !1544
  br i1 %35, label %36, label %57, !dbg !1545

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1546
  %38 = load i8, i8* %37, align 1, !dbg !1546, !tbaa !943
  %39 = icmp eq i8 %38, 61, !dbg !1549
  br i1 %39, label %40, label %56, !dbg !1550

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1551
  %42 = load i8, i8* %41, align 1, !dbg !1551, !tbaa !943
  %43 = icmp eq i8 %42, 61, !dbg !1552
  br i1 %43, label %44, label %56, !dbg !1553

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1554
  %46 = load i8, i8* %45, align 1, !dbg !1554, !tbaa !943
  %47 = icmp eq i8 %46, 61, !dbg !1555
  br i1 %47, label %48, label %56, !dbg !1556

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1557
  %50 = load i8, i8* %49, align 1, !dbg !1557, !tbaa !943
  %51 = icmp eq i8 %50, 61, !dbg !1558
  br i1 %51, label %52, label %56, !dbg !1559

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1560
  %54 = load i8, i8* %53, align 1, !dbg !1560, !tbaa !943
  %55 = icmp eq i8 %54, 61, !dbg !1561
  br i1 %55, label %178, label %56, !dbg !1562

; <label>:56:                                     ; preds = %52, %48, %44, %40, %36
  store i8* %32, i8** %2, align 8, !dbg !1563, !tbaa !672
  br label %180, !dbg !1563

; <label>:57:                                     ; preds = %30
  call void @llvm.dbg.value(metadata i8 %34, metadata !1328, metadata !DIExpression()), !dbg !1565
  %58 = zext i8 %34 to i64, !dbg !1569
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %58, !dbg !1569
  %60 = load i8, i8* %59, align 1, !dbg !1569, !tbaa !943
  %61 = icmp sgt i8 %60, -1, !dbg !1570
  br i1 %61, label %62, label %69, !dbg !1571

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1572
  %64 = load i8, i8* %63, align 1, !dbg !1572, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %64, metadata !1328, metadata !DIExpression()), !dbg !1573
  %65 = zext i8 %64 to i64, !dbg !1575
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %65, !dbg !1575
  %67 = load i8, i8* %66, align 1, !dbg !1575, !tbaa !943
  %68 = icmp sgt i8 %67, -1, !dbg !1576
  br i1 %68, label %70, label %69, !dbg !1577

; <label>:69:                                     ; preds = %57, %62
  store i8* %32, i8** %2, align 8, !dbg !1578, !tbaa !672
  br label %180, !dbg !1578

; <label>:70:                                     ; preds = %62
  %71 = icmp eq i64 %31, 0, !dbg !1580
  br i1 %71, label %81, label %72, !dbg !1582

; <label>:72:                                     ; preds = %70
  %73 = shl i8 %18, 6, !dbg !1583
  %74 = shl i8 %60, 1, !dbg !1585
  %75 = or i8 %74, %73, !dbg !1586
  %76 = lshr i8 %67, 4
  %77 = or i8 %75, %76, !dbg !1587
  %78 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %78, metadata !1508, metadata !DIExpression()), !dbg !1514
  store i8 %77, i8* %32, align 1, !dbg !1589, !tbaa !943
  %79 = load i64, i64* %3, align 8, !dbg !1590, !tbaa !932
  %80 = add i64 %79, -1, !dbg !1590
  store i64 %80, i64* %3, align 8, !dbg !1590, !tbaa !932
  br label %81, !dbg !1591

; <label>:81:                                     ; preds = %70, %72
  %82 = phi i64 [ %80, %72 ], [ 0, %70 ]
  %83 = phi i8* [ %78, %72 ], [ %32, %70 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8* %83, metadata !1508, metadata !DIExpression()), !dbg !1514
  %84 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1593
  %85 = load i8, i8* %84, align 1, !dbg !1593, !tbaa !943
  %86 = icmp eq i8 %85, 61, !dbg !1595
  br i1 %86, label %87, label %100, !dbg !1596

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1597
  %89 = load i8, i8* %88, align 1, !dbg !1597, !tbaa !943
  %90 = icmp eq i8 %89, 61, !dbg !1600
  br i1 %90, label %91, label %99, !dbg !1601

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1602
  %93 = load i8, i8* %92, align 1, !dbg !1602, !tbaa !943
  %94 = icmp eq i8 %93, 61, !dbg !1603
  br i1 %94, label %95, label %99, !dbg !1604

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1605
  %97 = load i8, i8* %96, align 1, !dbg !1605, !tbaa !943
  %98 = icmp eq i8 %97, 61, !dbg !1606
  br i1 %98, label %178, label %99, !dbg !1607

; <label>:99:                                     ; preds = %95, %91, %87
  store i8* %83, i8** %2, align 8, !dbg !1608, !tbaa !672
  br label %180, !dbg !1608

; <label>:100:                                    ; preds = %81
  call void @llvm.dbg.value(metadata i8 %85, metadata !1328, metadata !DIExpression()), !dbg !1610
  %101 = zext i8 %85 to i64, !dbg !1614
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %101, !dbg !1614
  %103 = load i8, i8* %102, align 1, !dbg !1614, !tbaa !943
  %104 = icmp sgt i8 %103, -1, !dbg !1615
  br i1 %104, label %106, label %105, !dbg !1616

; <label>:105:                                    ; preds = %100
  store i8* %83, i8** %2, align 8, !dbg !1617, !tbaa !672
  br label %180, !dbg !1617

; <label>:106:                                    ; preds = %100
  %107 = icmp eq i64 %82, 0, !dbg !1619
  br i1 %107, label %115, label %108, !dbg !1621

; <label>:108:                                    ; preds = %106
  %109 = shl i8 %67, 4, !dbg !1622
  %110 = lshr i8 %103, 1
  %111 = or i8 %110, %109, !dbg !1624
  %112 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %112, metadata !1508, metadata !DIExpression()), !dbg !1514
  store i8 %111, i8* %83, align 1, !dbg !1626, !tbaa !943
  %113 = load i64, i64* %3, align 8, !dbg !1627, !tbaa !932
  %114 = add i64 %113, -1, !dbg !1627
  store i64 %114, i64* %3, align 8, !dbg !1627, !tbaa !932
  br label %115, !dbg !1628

; <label>:115:                                    ; preds = %106, %108
  %116 = phi i64 [ %114, %108 ], [ 0, %106 ]
  %117 = phi i8* [ %112, %108 ], [ %83, %106 ], !dbg !1629
  call void @llvm.dbg.value(metadata i8* %117, metadata !1508, metadata !DIExpression()), !dbg !1514
  %118 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1630
  %119 = load i8, i8* %118, align 1, !dbg !1630, !tbaa !943
  %120 = icmp eq i8 %119, 61, !dbg !1632
  br i1 %120, label %121, label %130, !dbg !1633

; <label>:121:                                    ; preds = %115
  %122 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1634
  %123 = load i8, i8* %122, align 1, !dbg !1634, !tbaa !943
  %124 = icmp eq i8 %123, 61, !dbg !1637
  br i1 %124, label %125, label %129, !dbg !1638

; <label>:125:                                    ; preds = %121
  %126 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1639
  %127 = load i8, i8* %126, align 1, !dbg !1639, !tbaa !943
  %128 = icmp eq i8 %127, 61, !dbg !1640
  br i1 %128, label %178, label %129, !dbg !1641

; <label>:129:                                    ; preds = %125, %121
  store i8* %117, i8** %2, align 8, !dbg !1642, !tbaa !672
  br label %180, !dbg !1642

; <label>:130:                                    ; preds = %115
  call void @llvm.dbg.value(metadata i8 %119, metadata !1328, metadata !DIExpression()), !dbg !1644
  %131 = zext i8 %119 to i64, !dbg !1648
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %131, !dbg !1648
  %133 = load i8, i8* %132, align 1, !dbg !1648, !tbaa !943
  %134 = icmp sgt i8 %133, -1, !dbg !1649
  br i1 %134, label %135, label %142, !dbg !1650

; <label>:135:                                    ; preds = %130
  %136 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1651
  %137 = load i8, i8* %136, align 1, !dbg !1651, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %137, metadata !1328, metadata !DIExpression()), !dbg !1652
  %138 = zext i8 %137 to i64, !dbg !1654
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %138, !dbg !1654
  %140 = load i8, i8* %139, align 1, !dbg !1654, !tbaa !943
  %141 = icmp sgt i8 %140, -1, !dbg !1655
  br i1 %141, label %143, label %142, !dbg !1656

; <label>:142:                                    ; preds = %130, %135
  store i8* %117, i8** %2, align 8, !dbg !1657, !tbaa !672
  br label %180, !dbg !1657

; <label>:143:                                    ; preds = %135
  %144 = icmp eq i64 %116, 0, !dbg !1659
  br i1 %144, label %154, label %145, !dbg !1661

; <label>:145:                                    ; preds = %143
  %146 = shl i8 %103, 7, !dbg !1662
  %147 = shl i8 %133, 2, !dbg !1664
  %148 = lshr i8 %140, 3
  %149 = or i8 %148, %147, !dbg !1665
  %150 = or i8 %149, %146, !dbg !1666
  %151 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %151, metadata !1508, metadata !DIExpression()), !dbg !1514
  store i8 %150, i8* %117, align 1, !dbg !1668, !tbaa !943
  %152 = load i64, i64* %3, align 8, !dbg !1669, !tbaa !932
  %153 = add i64 %152, -1, !dbg !1669
  store i64 %153, i64* %3, align 8, !dbg !1669, !tbaa !932
  br label %154, !dbg !1670

; <label>:154:                                    ; preds = %143, %145
  %155 = phi i64 [ %153, %145 ], [ 0, %143 ]
  %156 = phi i8* [ %151, %145 ], [ %117, %143 ], !dbg !1671
  call void @llvm.dbg.value(metadata i8* %156, metadata !1508, metadata !DIExpression()), !dbg !1514
  %157 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1672
  %158 = load i8, i8* %157, align 1, !dbg !1672, !tbaa !943
  %159 = icmp eq i8 %158, 61, !dbg !1674
  br i1 %159, label %178, label %160, !dbg !1675

; <label>:160:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1328, metadata !DIExpression()), !dbg !1676
  %161 = zext i8 %158 to i64, !dbg !1680
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %161, !dbg !1680
  %163 = load i8, i8* %162, align 1, !dbg !1680, !tbaa !943
  %164 = icmp sgt i8 %163, -1, !dbg !1681
  br i1 %164, label %166, label %165, !dbg !1682

; <label>:165:                                    ; preds = %160
  store i8* %156, i8** %2, align 8, !dbg !1683, !tbaa !672
  br label %180, !dbg !1683

; <label>:166:                                    ; preds = %160
  %167 = icmp eq i64 %155, 0, !dbg !1685
  br i1 %167, label %178, label %168, !dbg !1687

; <label>:168:                                    ; preds = %166
  %169 = load i8, i8* %136, align 1, !dbg !1688, !tbaa !943
  %170 = zext i8 %169 to i64, !dbg !1690
  %171 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %170, !dbg !1690
  %172 = load i8, i8* %171, align 1, !dbg !1690, !tbaa !943
  %173 = shl i8 %172, 5, !dbg !1691
  %174 = or i8 %173, %163, !dbg !1692
  %175 = getelementptr inbounds i8, i8* %156, i64 1, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %175, metadata !1508, metadata !DIExpression()), !dbg !1514
  store i8 %174, i8* %156, align 1, !dbg !1694, !tbaa !943
  %176 = load i64, i64* %3, align 8, !dbg !1695, !tbaa !932
  %177 = add i64 %176, -1, !dbg !1695
  store i64 %177, i64* %3, align 8, !dbg !1695, !tbaa !932
  br label %178, !dbg !1696

; <label>:178:                                    ; preds = %52, %95, %125, %166, %154, %168
  %179 = phi i8* [ %32, %52 ], [ %83, %95 ], [ %117, %125 ], [ %175, %168 ], [ %156, %166 ], [ %156, %154 ], !dbg !1697
  call void @llvm.dbg.value(metadata i8* %179, metadata !1508, metadata !DIExpression()), !dbg !1514
  store i8* %179, i8** %2, align 8, !dbg !1698, !tbaa !672
  br label %180, !dbg !1699

; <label>:180:                                    ; preds = %7, %13, %4, %178, %165, %142, %129, %105, %99, %69, %56
  %181 = phi i1 [ false, %56 ], [ true, %178 ], [ false, %99 ], [ false, %129 ], [ false, %165 ], [ false, %142 ], [ false, %105 ], [ false, %69 ], [ false, %4 ], [ false, %13 ], [ false, %7 ], !dbg !1700
  ret i1 %181, !dbg !1701
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base32_decode_alloc_ctx(%struct.base32_decode_context*, i8*, i64, i8** nocapture, i64*) local_unnamed_addr #7 !dbg !1702 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1706, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8* %1, metadata !1707, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %2, metadata !1708, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8** %3, metadata !1709, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i64* %4, metadata !1710, metadata !DIExpression()), !dbg !1716
  %7 = bitcast i64* %6 to i8*, !dbg !1717
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !1717
  %8 = lshr i64 %2, 3, !dbg !1718
  %9 = mul nuw i64 %8, 5, !dbg !1719
  %10 = add i64 %9, 5, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %10, metadata !1711, metadata !DIExpression()), !dbg !1721
  store i64 %10, i64* %6, align 8, !dbg !1721, !tbaa !932
  %11 = tail call noalias i8* @malloc(i64 %10) #11, !dbg !1722
  store i8* %11, i8** %3, align 8, !dbg !1723, !tbaa !672
  %12 = icmp eq i8* %11, null, !dbg !1724
  br i1 %12, label %21, label %13, !dbg !1726

; <label>:13:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i64* %6, metadata !1711, metadata !DIExpression(DW_OP_deref)), !dbg !1721
  %14 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !1727
  br i1 %14, label %17, label %15, !dbg !1729

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1730, !tbaa !672
  tail call void @free(i8* %16) #11, !dbg !1732
  store i8* null, i8** %3, align 8, !dbg !1733, !tbaa !672
  br label %21, !dbg !1734

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1735
  br i1 %18, label %21, label %19, !dbg !1737

; <label>:19:                                     ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1738, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %20, metadata !1711, metadata !DIExpression()), !dbg !1721
  store i64 %20, i64* %4, align 8, !dbg !1739, !tbaa !932
  br label %21, !dbg !1740

; <label>:21:                                     ; preds = %19, %17, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %17 ], [ true, %19 ], !dbg !1741
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !1742
  ret i1 %22, !dbg !1742
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1743 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1745, metadata !DIExpression()), !dbg !1746
  store i8* %0, i8** @file_name, align 8, !dbg !1747, !tbaa !672
  ret void, !dbg !1748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1749 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1753, metadata !DIExpression()), !dbg !1754
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1755, !tbaa !1756
  ret void, !dbg !1758
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1759 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1764, !tbaa !672
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1765
  %3 = icmp eq i32 %2, 0, !dbg !1766
  br i1 %3, label %22, label %4, !dbg !1767

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1768, !tbaa !1756, !range !1769
  %6 = icmp eq i8 %5, 0, !dbg !1768
  br i1 %6, label %11, label %7, !dbg !1770

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #18, !dbg !1771
  %9 = load i32, i32* %8, align 4, !dbg !1771, !tbaa !878
  %10 = icmp eq i32 %9, 32, !dbg !1772
  br i1 %10, label %22, label %11, !dbg !1773

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 5) #11, !dbg !1774
  call void @llvm.dbg.value(metadata i8* %12, metadata !1761, metadata !DIExpression()), !dbg !1775
  %13 = load i8*, i8** @file_name, align 8, !dbg !1776, !tbaa !672
  %14 = icmp eq i8* %13, null, !dbg !1776
  %15 = tail call i32* @__errno_location() #18, !dbg !1778
  %16 = load i32, i32* %15, align 4, !dbg !1778, !tbaa !878
  br i1 %14, label %19, label %17, !dbg !1779

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1780
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1781
  br label %20, !dbg !1781

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.57, i64 0, i64 0), i8* %12) #11, !dbg !1782
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1783, !tbaa !878
  tail call void @_exit(i32 %21) #16, !dbg !1784
  unreachable, !dbg !1784

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1785, !tbaa !672
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1787
  %25 = icmp eq i32 %24, 0, !dbg !1788
  br i1 %25, label %28, label %26, !dbg !1789

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1790, !tbaa !878
  tail call void @_exit(i32 %27) #16, !dbg !1791
  unreachable, !dbg !1791

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1792
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1793 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1801, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %1, metadata !1802, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %2, metadata !1803, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i32 %3, metadata !1804, metadata !DIExpression()), !dbg !1810
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %5, metadata !1805, metadata !DIExpression()), !dbg !1811
  ret void, !dbg !1812
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1813 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1851, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %1, metadata !1852, metadata !DIExpression()), !dbg !1854
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1855
  br i1 %3, label %7, label %4, !dbg !1857

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %5, metadata !1801, metadata !DIExpression()) #11, !dbg !1859
  call void @llvm.dbg.value(metadata i64 0, metadata !1802, metadata !DIExpression()) #11, !dbg !1861
  call void @llvm.dbg.value(metadata i64 0, metadata !1803, metadata !DIExpression()) #11, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %1, metadata !1804, metadata !DIExpression()) #11, !dbg !1863
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %6, metadata !1805, metadata !DIExpression()) #11, !dbg !1864
  br label %7, !dbg !1865

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1866
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1867 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1869, metadata !DIExpression()), !dbg !1872
  %2 = icmp eq i8* %0, null, !dbg !1873
  br i1 %2, label %3, label %6, !dbg !1875

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1876, !tbaa !672
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1878
  tail call void @abort() #16, !dbg !1879
  unreachable, !dbg !1879

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %7, metadata !1870, metadata !DIExpression()), !dbg !1881
  %8 = icmp eq i8* %7, null, !dbg !1882
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1883
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %10, metadata !1871, metadata !DIExpression()), !dbg !1885
  %11 = ptrtoint i8* %10 to i64, !dbg !1886
  %12 = ptrtoint i8* %0 to i64, !dbg !1886
  %13 = sub i64 %11, %12, !dbg !1886
  %14 = icmp sgt i64 %13, 6, !dbg !1888
  br i1 %14, label %15, label %24, !dbg !1889

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1890
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #15, !dbg !1891
  %18 = icmp eq i32 %17, 0, !dbg !1892
  br i1 %18, label %19, label %24, !dbg !1893

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1869, metadata !DIExpression()), !dbg !1872
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #15, !dbg !1894
  %21 = icmp eq i32 %20, 0, !dbg !1897
  br i1 %21, label %22, label %24, !dbg !1898

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1899
  call void @llvm.dbg.value(metadata i8* %23, metadata !1869, metadata !DIExpression()), !dbg !1872
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1901, !tbaa !672
  br label %24, !dbg !1902

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1869, metadata !DIExpression()), !dbg !1872
  store i8* %25, i8** @program_name, align 8, !dbg !1903, !tbaa !672
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1904, !tbaa !672
  ret void, !dbg !1905
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1906 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1911, metadata !DIExpression()), !dbg !1914
  %2 = tail call i32* @__errno_location() #18, !dbg !1915
  %3 = load i32, i32* %2, align 4, !dbg !1915, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %3, metadata !1912, metadata !DIExpression()), !dbg !1916
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1917
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1917
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1917
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1918
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1913, metadata !DIExpression()), !dbg !1919
  store i32 %3, i32* %2, align 4, !dbg !1920, !tbaa !878
  ret %struct.quoting_options* %8, !dbg !1921
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1922 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1928, metadata !DIExpression()), !dbg !1929
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1930
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1930
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1931
  %5 = load i32, i32* %4, align 8, !dbg !1931, !tbaa !1932
  ret i32 %5, !dbg !1934
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1935 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1939, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %1, metadata !1940, metadata !DIExpression()), !dbg !1942
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1943
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1943
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1944
  store i32 %1, i32* %5, align 8, !dbg !1945, !tbaa !1932
  ret void, !dbg !1946
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1947 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1951, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 %1, metadata !1952, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 %2, metadata !1953, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %1, metadata !1954, metadata !DIExpression()), !dbg !1962
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1963
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1963
  %6 = lshr i8 %1, 5, !dbg !1964
  %7 = zext i8 %6 to i64, !dbg !1964
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1965
  call void @llvm.dbg.value(metadata i32* %8, metadata !1955, metadata !DIExpression()), !dbg !1966
  %9 = and i8 %1, 31, !dbg !1967
  %10 = zext i8 %9 to i32, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %10, metadata !1957, metadata !DIExpression()), !dbg !1968
  %11 = load i32, i32* %8, align 4, !dbg !1969, !tbaa !878
  %12 = lshr i32 %11, %10, !dbg !1970
  %13 = and i32 %12, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %13, metadata !1958, metadata !DIExpression()), !dbg !1972
  %14 = and i32 %2, 1, !dbg !1973
  %15 = xor i32 %13, %14, !dbg !1974
  %16 = shl i32 %15, %10, !dbg !1975
  %17 = xor i32 %16, %11, !dbg !1976
  store i32 %17, i32* %8, align 4, !dbg !1976, !tbaa !878
  ret i32 %13, !dbg !1977
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1978 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1982, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32 %1, metadata !1983, metadata !DIExpression()), !dbg !1986
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1987
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1989
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1982, metadata !DIExpression()), !dbg !1985
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1990
  %6 = load i32, i32* %5, align 4, !dbg !1990, !tbaa !1991
  call void @llvm.dbg.value(metadata i32 %6, metadata !1984, metadata !DIExpression()), !dbg !1992
  store i32 %1, i32* %5, align 4, !dbg !1993, !tbaa !1991
  ret i32 %6, !dbg !1994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1995 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1999, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8* %1, metadata !2000, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8* %2, metadata !2001, metadata !DIExpression()), !dbg !2004
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2005
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2007
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1999, metadata !DIExpression()), !dbg !2002
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2008
  store i32 10, i32* %6, align 8, !dbg !2009, !tbaa !1932
  %7 = icmp ne i8* %1, null, !dbg !2010
  %8 = icmp ne i8* %2, null, !dbg !2012
  %9 = and i1 %7, %8, !dbg !2013
  br i1 %9, label %11, label %10, !dbg !2013

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !2014
  unreachable, !dbg !2014

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2015
  store i8* %1, i8** %12, align 8, !dbg !2016, !tbaa !2017
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2018
  store i8* %2, i8** %13, align 8, !dbg !2019, !tbaa !2020
  ret void, !dbg !2021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2022 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2026, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %1, metadata !2027, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8* %2, metadata !2028, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %3, metadata !2029, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2030, metadata !DIExpression()), !dbg !2038
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2039
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2039
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2031, metadata !DIExpression()), !dbg !2040
  %8 = tail call i32* @__errno_location() #18, !dbg !2041
  %9 = load i32, i32* %8, align 4, !dbg !2041, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %9, metadata !2032, metadata !DIExpression()), !dbg !2042
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2043
  %11 = load i32, i32* %10, align 8, !dbg !2043, !tbaa !1932
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2044
  %13 = load i32, i32* %12, align 4, !dbg !2044, !tbaa !1991
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2045
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2046
  %16 = load i8*, i8** %15, align 8, !dbg !2046, !tbaa !2017
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2047
  %18 = load i8*, i8** %17, align 8, !dbg !2047, !tbaa !2020
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %19, metadata !2033, metadata !DIExpression()), !dbg !2049
  store i32 %9, i32* %8, align 4, !dbg !2050, !tbaa !878
  ret i64 %19, !dbg !2051
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2052 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2058, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i64 %1, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %2, metadata !2060, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %3, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %4, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %5, metadata !2063, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32* %6, metadata !2064, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8* %7, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %8, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 0, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 0, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* null, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 0, metadata !2071, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2072, metadata !DIExpression()), !dbg !2135
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2136
  %14 = icmp eq i64 %13, 1, !dbg !2137
  %15 = lshr i32 %5, 1, !dbg !2138
  %16 = trunc i32 %15 to i8, !dbg !2138
  %17 = and i8 %16, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i8 %17, metadata !2074, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 1, metadata !2077, metadata !DIExpression()), !dbg !2141
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2142

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2132
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2133
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2134
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2135
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2143
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2139
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2140
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2141
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %39, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %38, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %37, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %36, metadata !2074, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i64 %35, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %34, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %33, metadata !2071, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %32, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %31, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 0, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8* %30, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %29, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %28, metadata !2062, metadata !DIExpression()), !dbg !2126
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
  ], !dbg !2145

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 1, metadata !2074, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 %36, metadata !2074, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 5, metadata !2062, metadata !DIExpression()), !dbg !2126
  br label %93, !dbg !2146

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2074, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 5, metadata !2062, metadata !DIExpression()), !dbg !2126
  %43 = and i8 %36, 1, !dbg !2147
  %44 = icmp eq i8 %43, 0, !dbg !2147
  br i1 %44, label %45, label %93, !dbg !2146

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2149
  br i1 %46, label %93, label %47, !dbg !2152

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2149, !tbaa !943
  br label %93, !dbg !2149

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %28), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %49, metadata !2065, metadata !DIExpression()), !dbg !2129
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %28), !dbg !2157
  call void @llvm.dbg.value(metadata i8* %50, metadata !2066, metadata !DIExpression()), !dbg !2130
  br label %51, !dbg !2158

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %52, metadata !2065, metadata !DIExpression()), !dbg !2129
  %54 = and i8 %36, 1, !dbg !2159
  %55 = icmp eq i8 %54, 0, !dbg !2159
  br i1 %55, label %56, label %71, !dbg !2161

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 0, metadata !2068, metadata !DIExpression()), !dbg !2131
  %57 = load i8, i8* %52, align 1, !dbg !2162, !tbaa !943
  %58 = icmp eq i8 %57, 0, !dbg !2165
  br i1 %58, label %71, label %59, !dbg !2165

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %62, metadata !2068, metadata !DIExpression()), !dbg !2131
  %63 = icmp ult i64 %62, %40, !dbg !2166
  br i1 %63, label %64, label %66, !dbg !2169

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2166
  store i8 %60, i8* %65, align 1, !dbg !2166, !tbaa !943
  br label %66, !dbg !2166

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2169
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2170
  call void @llvm.dbg.value(metadata i8* %68, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %67, metadata !2068, metadata !DIExpression()), !dbg !2131
  %69 = load i8, i8* %68, align 1, !dbg !2162, !tbaa !943
  %70 = icmp eq i8 %69, 0, !dbg !2165
  br i1 %70, label %71, label %59, !dbg !2165, !llvm.loop !2171

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2131
  call void @llvm.dbg.value(metadata i64 %72, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 1, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8* %53, metadata !2070, metadata !DIExpression()), !dbg !2133
  %73 = call i64 @strlen(i8* %53) #15, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %73, metadata !2071, metadata !DIExpression()), !dbg !2134
  br label %93, !dbg !2174

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2072, metadata !DIExpression()), !dbg !2135
  br label %75, !dbg !2175

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2143
  call void @llvm.dbg.value(metadata i8 %76, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 1, metadata !2074, metadata !DIExpression()), !dbg !2138
  br label %77, !dbg !2176

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2135
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2143
  call void @llvm.dbg.value(metadata i8 %79, metadata !2074, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 %78, metadata !2072, metadata !DIExpression()), !dbg !2135
  %80 = and i8 %79, 1, !dbg !2177
  %81 = icmp eq i8 %80, 0, !dbg !2177
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2179
  br label %83, !dbg !2179

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2180
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2138
  call void @llvm.dbg.value(metadata i8 %85, metadata !2074, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 %84, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 2, metadata !2062, metadata !DIExpression()), !dbg !2126
  %86 = and i8 %85, 1, !dbg !2181
  %87 = icmp eq i8 %86, 0, !dbg !2181
  br i1 %87, label %88, label %93, !dbg !2183

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2184
  br i1 %89, label %93, label %90, !dbg !2187

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2184, !tbaa !943
  br label %93, !dbg !2184

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2138
  br label %93, !dbg !2188

; <label>:92:                                     ; preds = %27
  call void @abort() #16, !dbg !2189
  unreachable, !dbg !2189

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2131
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], !dbg !2143
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2143
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2143
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2190
  call void @llvm.dbg.value(metadata i8 %101, metadata !2074, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %99, metadata !2071, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %97, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %94, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 0, metadata !2067, metadata !DIExpression()), !dbg !2191
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
  br label %121, !dbg !2192

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2193
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2131
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2132
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2139
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2140
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2141
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %125, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %122, metadata !2067, metadata !DIExpression()), !dbg !2191
  %130 = icmp eq i64 %125, -1, !dbg !2194
  br i1 %130, label %131, label %135, !dbg !2195

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2196
  %133 = load i8, i8* %132, align 1, !dbg !2196, !tbaa !943
  %134 = icmp eq i8 %133, 0, !dbg !2197
  br i1 %134, label %617, label %137, !dbg !2198

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2199
  br i1 %136, label %617, label %137, !dbg !2198

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2083, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, metadata !2084, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 0, metadata !2085, metadata !DIExpression()), !dbg !2202
  br i1 %107, label %138, label %153, !dbg !2203

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2205
  %140 = and i1 %108, %130, !dbg !2206
  br i1 %140, label %141, label %143, !dbg !2206

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %142, metadata !2061, metadata !DIExpression()), !dbg !2125
  br label %143, !dbg !2208

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2061, metadata !DIExpression()), !dbg !2125
  %145 = icmp ugt i64 %139, %144, !dbg !2209
  br i1 %145, label %153, label %146, !dbg !2210

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2211
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !2212
  %149 = icmp ne i32 %148, 0, !dbg !2213
  %150 = or i1 %149, %110, !dbg !2214
  %151 = xor i1 %149, true, !dbg !2214
  %152 = zext i1 %151 to i8, !dbg !2214
  br i1 %150, label %153, label %661, !dbg !2214

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %155, metadata !2083, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %154, metadata !2061, metadata !DIExpression()), !dbg !2125
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2216
  %157 = load i8, i8* %156, align 1, !dbg !2216, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %157, metadata !2078, metadata !DIExpression()), !dbg !2217
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
  ], !dbg !2218

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2219

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2220

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2084, metadata !DIExpression()), !dbg !2201
  %161 = and i8 %126, 1, !dbg !2224
  %162 = icmp eq i8 %161, 0, !dbg !2224
  %163 = and i1 %114, %162, !dbg !2224
  br i1 %163, label %164, label %180, !dbg !2224

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2226
  br i1 %165, label %166, label %168, !dbg !2230

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2226
  store i8 39, i8* %167, align 1, !dbg !2226, !tbaa !943
  br label %168, !dbg !2226

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %169, metadata !2068, metadata !DIExpression()), !dbg !2131
  %170 = icmp ult i64 %169, %129, !dbg !2231
  br i1 %170, label %171, label %173, !dbg !2234

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2231
  store i8 36, i8* %172, align 1, !dbg !2231, !tbaa !943
  br label %173, !dbg !2231

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %174, metadata !2068, metadata !DIExpression()), !dbg !2131
  %175 = icmp ult i64 %174, %129, !dbg !2235
  br i1 %175, label %176, label %178, !dbg !2238

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2235
  store i8 39, i8* %177, align 1, !dbg !2235, !tbaa !943
  br label %178, !dbg !2235

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %179, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 1, metadata !2075, metadata !DIExpression()), !dbg !2139
  br label %180, !dbg !2239

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2190
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2190
  call void @llvm.dbg.value(metadata i8 %182, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %181, metadata !2068, metadata !DIExpression()), !dbg !2131
  %183 = icmp ult i64 %181, %129, !dbg !2240
  br i1 %183, label %184, label %186, !dbg !2243

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2240
  store i8 92, i8* %185, align 1, !dbg !2240, !tbaa !943
  br label %186, !dbg !2240

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %187, metadata !2068, metadata !DIExpression()), !dbg !2131
  br i1 %104, label %188, label %478, !dbg !2244

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2246
  %190 = icmp ult i64 %189, %154, !dbg !2247
  br i1 %190, label %191, label %467, !dbg !2248

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2249
  %193 = load i8, i8* %192, align 1, !dbg !2249, !tbaa !943
  %194 = add i8 %193, -48, !dbg !2250
  %195 = icmp ult i8 %194, 10, !dbg !2250
  br i1 %195, label %196, label %467, !dbg !2250

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2251
  br i1 %197, label %198, label %200, !dbg !2255

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2251
  store i8 48, i8* %199, align 1, !dbg !2251, !tbaa !943
  br label %200, !dbg !2251

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %201, metadata !2068, metadata !DIExpression()), !dbg !2131
  %202 = icmp ult i64 %201, %129, !dbg !2256
  br i1 %202, label %203, label %205, !dbg !2259

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2256
  store i8 48, i8* %204, align 1, !dbg !2256, !tbaa !943
  br label %205, !dbg !2256

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %206, metadata !2068, metadata !DIExpression()), !dbg !2131
  br label %467, !dbg !2260

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2261

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2262

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2263

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2265

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2267
  %213 = icmp ult i64 %212, %154, !dbg !2268
  br i1 %213, label %214, label %467, !dbg !2269

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2270
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2271
  %217 = load i8, i8* %216, align 1, !dbg !2271, !tbaa !943
  %218 = icmp eq i8 %217, 63, !dbg !2272
  br i1 %218, label %219, label %467, !dbg !2273

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2274
  %221 = load i8, i8* %220, align 1, !dbg !2274, !tbaa !943
  %222 = sext i8 %221 to i32, !dbg !2274
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
  ], !dbg !2275

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2276

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2078, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %212, metadata !2067, metadata !DIExpression()), !dbg !2191
  %225 = icmp ult i64 %123, %129, !dbg !2278
  br i1 %225, label %226, label %228, !dbg !2281

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2278
  store i8 63, i8* %227, align 1, !dbg !2278, !tbaa !943
  br label %228, !dbg !2278

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %229, metadata !2068, metadata !DIExpression()), !dbg !2131
  %230 = icmp ult i64 %229, %129, !dbg !2282
  br i1 %230, label %231, label %233, !dbg !2285

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2282
  store i8 34, i8* %232, align 1, !dbg !2282, !tbaa !943
  br label %233, !dbg !2282

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %234, metadata !2068, metadata !DIExpression()), !dbg !2131
  %235 = icmp ult i64 %234, %129, !dbg !2286
  br i1 %235, label %236, label %238, !dbg !2289

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2286
  store i8 34, i8* %237, align 1, !dbg !2286, !tbaa !943
  br label %238, !dbg !2286

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %239, metadata !2068, metadata !DIExpression()), !dbg !2131
  %240 = icmp ult i64 %239, %129, !dbg !2290
  br i1 %240, label %241, label %243, !dbg !2293

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2290
  store i8 63, i8* %242, align 1, !dbg !2290, !tbaa !943
  br label %243, !dbg !2290

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %244, metadata !2068, metadata !DIExpression()), !dbg !2131
  br label %467, !dbg !2294

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2082, metadata !DIExpression()), !dbg !2295
  br label %255, !dbg !2296

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2082, metadata !DIExpression()), !dbg !2295
  br label %255, !dbg !2297

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2082, metadata !DIExpression()), !dbg !2295
  br label %253, !dbg !2298

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2082, metadata !DIExpression()), !dbg !2295
  br label %253, !dbg !2299

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2082, metadata !DIExpression()), !dbg !2295
  br label %255, !dbg !2300

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2082, metadata !DIExpression()), !dbg !2295
  br i1 %114, label %251, label %252, !dbg !2301

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2302

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2305

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2307
  call void @llvm.dbg.value(metadata i8 %254, metadata !2082, metadata !DIExpression()), !dbg !2295
  br i1 %113, label %255, label %661, !dbg !2308

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2307
  call void @llvm.dbg.value(metadata i8 %256, metadata !2082, metadata !DIExpression()), !dbg !2295
  br i1 %103, label %524, label %478, !dbg !2310

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2311
  br i1 %258, label %259, label %264, !dbg !2313

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2314, !tbaa !943
  %261 = icmp ne i8 %260, 0, !dbg !2315
  %262 = icmp ne i64 %122, 0, !dbg !2316
  %263 = or i1 %262, %261, !dbg !2318
  br i1 %263, label %467, label %270, !dbg !2318

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2319
  %266 = icmp ne i64 %122, 0, !dbg !2316
  %267 = or i1 %266, %265, !dbg !2313
  br i1 %267, label %467, label %270, !dbg !2313

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2316
  br i1 %269, label %270, label %467, !dbg !2320

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2085, metadata !DIExpression()), !dbg !2202
  br label %271, !dbg !2321

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2307
  call void @llvm.dbg.value(metadata i8 %272, metadata !2085, metadata !DIExpression()), !dbg !2202
  br i1 %113, label %467, label %661, !dbg !2322

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 1, metadata !2085, metadata !DIExpression()), !dbg !2202
  br i1 %114, label %274, label %467, !dbg !2324

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2325

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2328
  %277 = icmp ne i64 %124, 0, !dbg !2330
  %278 = or i1 %277, %276, !dbg !2331
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2331
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %280, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %279, metadata !2069, metadata !DIExpression()), !dbg !2132
  %281 = icmp ult i64 %123, %280, !dbg !2332
  br i1 %281, label %282, label %284, !dbg !2335

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2332
  store i8 39, i8* %283, align 1, !dbg !2332, !tbaa !943
  br label %284, !dbg !2332

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %285, metadata !2068, metadata !DIExpression()), !dbg !2131
  %286 = icmp ult i64 %285, %280, !dbg !2336
  br i1 %286, label %287, label %289, !dbg !2339

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2336
  store i8 92, i8* %288, align 1, !dbg !2336, !tbaa !943
  br label %289, !dbg !2336

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %290, metadata !2068, metadata !DIExpression()), !dbg !2131
  %291 = icmp ult i64 %290, %280, !dbg !2340
  br i1 %291, label %292, label %294, !dbg !2343

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2340
  store i8 39, i8* %293, align 1, !dbg !2340, !tbaa !943
  br label %294, !dbg !2340

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %295, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2139
  br label %467, !dbg !2344

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2345

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2086, metadata !DIExpression()), !dbg !2346
  %298 = tail call i16** @__ctype_b_loc() #18, !dbg !2347
  %299 = load i16*, i16** %298, align 8, !dbg !2347, !tbaa !672
  %300 = zext i8 %157 to i64, !dbg !2347
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2347
  %302 = load i16, i16* %301, align 2, !dbg !2347, !tbaa !2349
  %303 = lshr i16 %302, 14, !dbg !2350
  %304 = trunc i16 %303 to i8, !dbg !2350
  %305 = and i8 %304, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i8 %305, metadata !2089, metadata !DIExpression()), !dbg !2351
  br label %359, !dbg !2352

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2353
  store i64 0, i64* %10, align 8, !dbg !2354
  call void @llvm.dbg.value(metadata i64 0, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 1, metadata !2089, metadata !DIExpression()), !dbg !2351
  %307 = icmp eq i64 %154, -1, !dbg !2355
  br i1 %307, label %308, label %310, !dbg !2357

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %309, metadata !2061, metadata !DIExpression()), !dbg !2125
  br label %310, !dbg !2359

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2360
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  br label %312, !dbg !2361

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2362
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2363
  call void @llvm.dbg.value(metadata i8 %314, metadata !2089, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2364
  %315 = add i64 %313, %122, !dbg !2365
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2366
  %317 = sub i64 %311, %315, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2090, metadata !DIExpression(DW_OP_deref)), !dbg !2368
  call void @llvm.dbg.value(metadata i32* %12, metadata !2108, metadata !DIExpression(DW_OP_deref)), !dbg !2369
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %318, metadata !2111, metadata !DIExpression()), !dbg !2371
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2372

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  %320 = icmp ugt i64 %311, %315, !dbg !2373
  br i1 %320, label %321, label %344, !dbg !2375

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2086, metadata !DIExpression()), !dbg !2346
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2376
  %325 = load i8, i8* %324, align 1, !dbg !2376, !tbaa !943
  %326 = icmp eq i8 %325, 0, !dbg !2375
  br i1 %326, label %344, label %327, !dbg !2377

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %328, metadata !2086, metadata !DIExpression()), !dbg !2346
  %329 = add i64 %328, %122, !dbg !2379
  %330 = icmp ult i64 %329, %311, !dbg !2373
  br i1 %330, label %321, label %344, !dbg !2375, !llvm.loop !2380

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2381
  %333 = and i1 %116, %332, !dbg !2384
  call void @llvm.dbg.value(metadata i64 1, metadata !2112, metadata !DIExpression()), !dbg !2385
  br i1 %333, label %334, label %347, !dbg !2384

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2112, metadata !DIExpression()), !dbg !2385
  %336 = add i64 %335, %315, !dbg !2386
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2387
  %338 = load i8, i8* %337, align 1, !dbg !2387, !tbaa !943
  %339 = sext i8 %338 to i32, !dbg !2387
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2388

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %341, metadata !2112, metadata !DIExpression()), !dbg !2385
  %342 = icmp ult i64 %341, %318, !dbg !2381
  br i1 %342, label %334, label %347, !dbg !2390, !llvm.loop !2391

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %314, metadata !2089, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i64 %313, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %314, metadata !2089, metadata !DIExpression()), !dbg !2351
  br label %344, !dbg !2393

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2089, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i64 %352, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2393
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2394, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %348, metadata !2108, metadata !DIExpression()), !dbg !2369
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2396
  %350 = icmp eq i32 %349, 0, !dbg !2396
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2397
  call void @llvm.dbg.value(metadata i8 %351, metadata !2089, metadata !DIExpression()), !dbg !2351
  %352 = add i64 %318, %313, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %352, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %351, metadata !2089, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i64 %352, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2393
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2090, metadata !DIExpression(DW_OP_deref)), !dbg !2368
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !2399
  %354 = icmp eq i32 %353, 0, !dbg !2400
  br i1 %354, label %312, label %355, !dbg !2401, !llvm.loop !2402

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2404
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 2, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 2, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 2, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 2, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 2, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %94, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %94, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %94, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %94, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %94, metadata !2062, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %100, metadata !2072, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %311, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %351, metadata !2089, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i64 %352, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2393
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2404
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2405
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2406
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2406
  call void @llvm.dbg.value(metadata i8 %362, metadata !2089, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i64 %361, metadata !2086, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %360, metadata !2061, metadata !DIExpression()), !dbg !2125
  %363 = and i8 %362, 1, !dbg !2407
  %364 = icmp ne i8 %363, 0, !dbg !2407
  call void @llvm.dbg.value(metadata i8 %363, metadata !2085, metadata !DIExpression()), !dbg !2202
  %365 = icmp ult i64 %361, 2, !dbg !2408
  %366 = or i1 %364, %115, !dbg !2409
  %367 = and i1 %365, %366, !dbg !2410
  br i1 %367, label %467, label %368, !dbg !2410

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %369, metadata !2119, metadata !DIExpression()), !dbg !2412
  br label %370, !dbg !2413

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2414
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2418
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2139
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2414
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2420
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2201
  call void @llvm.dbg.value(metadata i8 %376, metadata !2084, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 %375, metadata !2083, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %374, metadata !2078, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %373, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %372, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %371, metadata !2067, metadata !DIExpression()), !dbg !2191
  br i1 %366, label %423, label %377, !dbg !2424

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2425

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2084, metadata !DIExpression()), !dbg !2201
  %379 = and i8 %373, 1, !dbg !2428
  %380 = icmp eq i8 %379, 0, !dbg !2428
  %381 = and i1 %114, %380, !dbg !2428
  br i1 %381, label %382, label %398, !dbg !2428

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2430
  br i1 %383, label %384, label %386, !dbg !2434

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2430
  store i8 39, i8* %385, align 1, !dbg !2430, !tbaa !943
  br label %386, !dbg !2430

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %387, metadata !2068, metadata !DIExpression()), !dbg !2131
  %388 = icmp ult i64 %387, %129, !dbg !2435
  br i1 %388, label %389, label %391, !dbg !2438

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2435
  store i8 36, i8* %390, align 1, !dbg !2435, !tbaa !943
  br label %391, !dbg !2435

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %392, metadata !2068, metadata !DIExpression()), !dbg !2131
  %393 = icmp ult i64 %392, %129, !dbg !2439
  br i1 %393, label %394, label %396, !dbg !2442

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2439
  store i8 39, i8* %395, align 1, !dbg !2439, !tbaa !943
  br label %396, !dbg !2439

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %397, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 1, metadata !2075, metadata !DIExpression()), !dbg !2139
  br label %398, !dbg !2443

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2190
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2190
  call void @llvm.dbg.value(metadata i8 %400, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %399, metadata !2068, metadata !DIExpression()), !dbg !2131
  %401 = icmp ult i64 %399, %129, !dbg !2444
  br i1 %401, label %402, label %404, !dbg !2447

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2444
  store i8 92, i8* %403, align 1, !dbg !2444, !tbaa !943
  br label %404, !dbg !2444

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %405, metadata !2068, metadata !DIExpression()), !dbg !2131
  %406 = icmp ult i64 %405, %129, !dbg !2448
  br i1 %406, label %407, label %411, !dbg !2451

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2448
  %409 = or i8 %408, 48, !dbg !2448
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2448
  store i8 %409, i8* %410, align 1, !dbg !2448, !tbaa !943
  br label %411, !dbg !2448

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %412, metadata !2068, metadata !DIExpression()), !dbg !2131
  %413 = icmp ult i64 %412, %129, !dbg !2452
  br i1 %413, label %414, label %419, !dbg !2455

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2452
  %416 = and i8 %415, 7, !dbg !2452
  %417 = or i8 %416, 48, !dbg !2452
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2452
  store i8 %417, i8* %418, align 1, !dbg !2452, !tbaa !943
  br label %419, !dbg !2452

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %420, metadata !2068, metadata !DIExpression()), !dbg !2131
  %421 = and i8 %374, 7, !dbg !2456
  %422 = or i8 %421, 48, !dbg !2457
  call void @llvm.dbg.value(metadata i8 %422, metadata !2078, metadata !DIExpression()), !dbg !2217
  br label %432, !dbg !2458

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2459
  %425 = icmp eq i8 %424, 0, !dbg !2459
  br i1 %425, label %432, label %426, !dbg !2460

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2461
  br i1 %427, label %428, label %430, !dbg !2464

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2461
  store i8 92, i8* %429, align 1, !dbg !2461, !tbaa !943
  br label %430, !dbg !2461

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %431, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, metadata !2083, metadata !DIExpression()), !dbg !2200
  br label %432, !dbg !2465

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2466
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2139
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2467
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2468
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2470
  call void @llvm.dbg.value(metadata i8 %437, metadata !2084, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 %436, metadata !2083, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %435, metadata !2078, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %434, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %433, metadata !2068, metadata !DIExpression()), !dbg !2131
  %438 = add i64 %371, 1, !dbg !2471
  %439 = icmp ugt i64 %369, %438, !dbg !2473
  br i1 %439, label %440, label %562, !dbg !2474

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2475
  %442 = icmp ne i8 %441, 0, !dbg !2475
  %443 = and i8 %437, 1, !dbg !2475
  %444 = icmp eq i8 %443, 0, !dbg !2475
  %445 = and i1 %442, %444, !dbg !2475
  br i1 %445, label %446, label %457, !dbg !2475

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2478
  br i1 %447, label %448, label %450, !dbg !2482

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2478
  store i8 39, i8* %449, align 1, !dbg !2478, !tbaa !943
  br label %450, !dbg !2478

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %451, metadata !2068, metadata !DIExpression()), !dbg !2131
  %452 = icmp ult i64 %451, %129, !dbg !2483
  br i1 %452, label %453, label %455, !dbg !2486

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2483
  store i8 39, i8* %454, align 1, !dbg !2483, !tbaa !943
  br label %455, !dbg !2483

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %456, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2139
  br label %457, !dbg !2487

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2488
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2190
  call void @llvm.dbg.value(metadata i8 %459, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %458, metadata !2068, metadata !DIExpression()), !dbg !2131
  %460 = icmp ult i64 %458, %129, !dbg !2489
  br i1 %460, label %461, label %463, !dbg !2491

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2489
  store i8 %435, i8* %462, align 1, !dbg !2489, !tbaa !943
  br label %463, !dbg !2489

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %464, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %438, metadata !2067, metadata !DIExpression()), !dbg !2191
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2492
  %466 = load i8, i8* %465, align 1, !dbg !2492, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %466, metadata !2078, metadata !DIExpression()), !dbg !2217
  br label %370, !dbg !2493, !llvm.loop !2494

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2497
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2190
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2132
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2498
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2190
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2190
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2215
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2215
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2215
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %476, metadata !2085, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %475, metadata !2084, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 %155, metadata !2083, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %474, metadata !2078, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %473, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %472, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %471, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %470, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %469, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %468, metadata !2067, metadata !DIExpression()), !dbg !2191
  br i1 %105, label %489, label %478, !dbg !2499

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
  br i1 %112, label %490, label %512, !dbg !2501

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2502

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
  %501 = lshr i8 %494, 5, !dbg !2503
  %502 = zext i8 %501 to i64, !dbg !2503
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2504
  %504 = load i32, i32* %503, align 4, !dbg !2504, !tbaa !878
  %505 = and i8 %494, 31, !dbg !2505
  %506 = zext i8 %505 to i32, !dbg !2505
  %507 = shl i32 1, %506, !dbg !2506
  %508 = and i32 %504, %507, !dbg !2506
  %509 = icmp eq i32 %508, 0, !dbg !2506
  %510 = icmp eq i8 %155, 0, !dbg !2507
  %511 = and i1 %510, %509, !dbg !2508
  br i1 %511, label %562, label %524, !dbg !2508

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
  %523 = icmp eq i8 %155, 0, !dbg !2507
  br i1 %523, label %562, label %524, !dbg !2509

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2510
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2190
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2132
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2498
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2139
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2140
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2511
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2215
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %532, metadata !2085, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %531, metadata !2078, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %530, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %529, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %528, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %527, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %526, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %525, metadata !2067, metadata !DIExpression()), !dbg !2191
  br i1 %110, label %534, label %661, !dbg !2514

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2084, metadata !DIExpression()), !dbg !2201
  %535 = and i8 %529, 1, !dbg !2516
  %536 = icmp eq i8 %535, 0, !dbg !2516
  %537 = and i1 %114, %536, !dbg !2516
  br i1 %537, label %538, label %554, !dbg !2516

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2518
  br i1 %539, label %540, label %542, !dbg !2522

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2518
  store i8 39, i8* %541, align 1, !dbg !2518, !tbaa !943
  br label %542, !dbg !2518

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %543, metadata !2068, metadata !DIExpression()), !dbg !2131
  %544 = icmp ult i64 %543, %533, !dbg !2523
  br i1 %544, label %545, label %547, !dbg !2526

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2523
  store i8 36, i8* %546, align 1, !dbg !2523, !tbaa !943
  br label %547, !dbg !2523

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %548, metadata !2068, metadata !DIExpression()), !dbg !2131
  %549 = icmp ult i64 %548, %533, !dbg !2527
  br i1 %549, label %550, label %552, !dbg !2530

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2527
  store i8 39, i8* %551, align 1, !dbg !2527, !tbaa !943
  br label %552, !dbg !2527

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %553, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 1, metadata !2075, metadata !DIExpression()), !dbg !2139
  br label %554, !dbg !2531

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2488
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2190
  call void @llvm.dbg.value(metadata i8 %556, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %555, metadata !2068, metadata !DIExpression()), !dbg !2131
  %557 = icmp ult i64 %555, %533, !dbg !2532
  br i1 %557, label %558, label %560, !dbg !2535

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2532
  store i8 92, i8* %559, align 1, !dbg !2532, !tbaa !943
  br label %560, !dbg !2532

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %561, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %572, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %571, metadata !2085, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %570, metadata !2084, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 %569, metadata !2078, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %568, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %567, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %566, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %565, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %564, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %563, metadata !2067, metadata !DIExpression()), !dbg !2191
  br label %589, !dbg !2536

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2510
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2190
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2132
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2498
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2139
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2140
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2539
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2215
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2215
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %571, metadata !2085, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %570, metadata !2084, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 %569, metadata !2078, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 %568, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %567, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %566, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %565, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %564, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %563, metadata !2067, metadata !DIExpression()), !dbg !2191
  %573 = and i8 %567, 1, !dbg !2536
  %574 = icmp ne i8 %573, 0, !dbg !2536
  %575 = and i8 %570, 1, !dbg !2536
  %576 = icmp eq i8 %575, 0, !dbg !2536
  %577 = and i1 %574, %576, !dbg !2536
  br i1 %577, label %578, label %589, !dbg !2536

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2540
  br i1 %579, label %580, label %582, !dbg !2544

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2540
  store i8 39, i8* %581, align 1, !dbg !2540, !tbaa !943
  br label %582, !dbg !2540

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %583, metadata !2068, metadata !DIExpression()), !dbg !2131
  %584 = icmp ult i64 %583, %572, !dbg !2545
  br i1 %584, label %585, label %587, !dbg !2548

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2545
  store i8 39, i8* %586, align 1, !dbg !2545, !tbaa !943
  br label %587, !dbg !2545

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %588, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2139
  br label %589, !dbg !2549

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2488
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2190
  call void @llvm.dbg.value(metadata i8 %598, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %597, metadata !2068, metadata !DIExpression()), !dbg !2131
  %599 = icmp ult i64 %597, %590, !dbg !2550
  br i1 %599, label %600, label %602, !dbg !2553

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2550
  store i8 %592, i8* %601, align 1, !dbg !2550, !tbaa !943
  br label %602, !dbg !2550

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %603, metadata !2068, metadata !DIExpression()), !dbg !2131
  %604 = and i8 %591, 1, !dbg !2554
  %605 = icmp eq i8 %604, 0, !dbg !2554
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2556
  call void @llvm.dbg.value(metadata i8 %606, metadata !2077, metadata !DIExpression()), !dbg !2141
  br label %607, !dbg !2557

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2510
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2190
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2132
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2498
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2139
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2190
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2141
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %614, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %613, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %612, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %611, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %610, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %609, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %608, metadata !2067, metadata !DIExpression()), !dbg !2191
  %616 = add i64 %608, 1, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %616, metadata !2067, metadata !DIExpression()), !dbg !2191
  br label %121, !dbg !2559, !llvm.loop !2560

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %618, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %618, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %125, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %125, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %126, metadata !2075, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %127, metadata !2076, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 %128, metadata !2077, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  %619 = icmp eq i64 %123, 0, !dbg !2562
  %620 = and i1 %114, %619, !dbg !2564
  %621 = xor i1 %620, true, !dbg !2564
  %622 = or i1 %110, %621, !dbg !2564
  br i1 %622, label %623, label %661, !dbg !2564

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2565
  %625 = xor i1 %624, true, !dbg !2565
  %626 = and i8 %127, 1, !dbg !2567
  %627 = icmp eq i8 %626, 0, !dbg !2567
  %628 = or i1 %627, %625, !dbg !2565
  br i1 %628, label %638, label %629, !dbg !2565

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2568
  %631 = icmp eq i8 %630, 0, !dbg !2568
  br i1 %631, label %634, label %632, !dbg !2571

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %618, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %618, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %618, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %618, metadata !2061, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %95, metadata !2065, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %96, metadata !2066, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %124, metadata !2069, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %125, metadata !2061, metadata !DIExpression()), !dbg !2125
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2572
  br label %671, !dbg !2573

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2574
  %636 = icmp ne i64 %124, 0, !dbg !2576
  %637 = and i1 %636, %635, !dbg !2577
  br i1 %637, label %27, label %638, !dbg !2577

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %129, metadata !2059, metadata !DIExpression()), !dbg !2123
  %639 = icmp ne i8* %98, null, !dbg !2578
  %640 = and i1 %639, %110, !dbg !2580
  br i1 %640, label %641, label %656, !dbg !2580

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %123, metadata !2068, metadata !DIExpression()), !dbg !2131
  %642 = load i8, i8* %98, align 1, !dbg !2581, !tbaa !943
  %643 = icmp eq i8 %642, 0, !dbg !2584
  br i1 %643, label %656, label %644, !dbg !2584

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %647, metadata !2068, metadata !DIExpression()), !dbg !2131
  %648 = icmp ult i64 %647, %129, !dbg !2585
  br i1 %648, label %649, label %651, !dbg !2588

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2585
  store i8 %645, i8* %650, align 1, !dbg !2585, !tbaa !943
  br label %651, !dbg !2585

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2588
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2589
  call void @llvm.dbg.value(metadata i8* %653, metadata !2070, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %652, metadata !2068, metadata !DIExpression()), !dbg !2131
  %654 = load i8, i8* %653, align 1, !dbg !2581, !tbaa !943
  %655 = icmp eq i8 %654, 0, !dbg !2584
  br i1 %655, label %656, label %644, !dbg !2584, !llvm.loop !2590

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2131
  call void @llvm.dbg.value(metadata i64 %657, metadata !2068, metadata !DIExpression()), !dbg !2131
  %658 = icmp ult i64 %657, %129, !dbg !2592
  br i1 %658, label %659, label %671, !dbg !2594

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2595
  store i8 0, i8* %660, align 1, !dbg !2596, !tbaa !943
  br label %671, !dbg !2595

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2059, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %663, metadata !2061, metadata !DIExpression()), !dbg !2125
  %665 = icmp ne i32 %662, 2, !dbg !2597
  %666 = icmp eq i8 %102, 0, !dbg !2599
  %667 = or i1 %665, %666, !dbg !2600
  call void @llvm.dbg.value(metadata i32 4, metadata !2062, metadata !DIExpression()), !dbg !2126
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %668, metadata !2062, metadata !DIExpression()), !dbg !2126
  %669 = and i32 %5, -3, !dbg !2601
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2602
  br label %671, !dbg !2603

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2604
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2605 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 %1, metadata !2610, metadata !DIExpression()), !dbg !2614
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2615
  call void @llvm.dbg.value(metadata i8* %3, metadata !2611, metadata !DIExpression()), !dbg !2616
  %4 = icmp eq i8* %3, %0, !dbg !2617
  br i1 %4, label %5, label %71, !dbg !2619

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %6, metadata !2612, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8* %6, metadata !2622, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* null, metadata !2628, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 85, metadata !2629, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 84, metadata !2630, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 70, metadata !2631, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 45, metadata !2632, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 56, metadata !2633, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 0, metadata !2634, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2635, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 0, metadata !2636, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8 0, metadata !2637, metadata !DIExpression()), !dbg !2650
  %7 = load i8, i8* %6, align 1, !dbg !2651, !tbaa !943
  %8 = and i8 %7, -33, !dbg !2651
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2651

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2653, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* null, metadata !2658, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 84, metadata !2659, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 70, metadata !2660, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 45, metadata !2661, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 56, metadata !2662, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 0, metadata !2665, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2666, metadata !DIExpression()), !dbg !2679
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2680
  %11 = load i8, i8* %10, align 1, !dbg !2680, !tbaa !943
  %12 = and i8 %11, -33, !dbg !2680
  %13 = icmp eq i8 %12, 84, !dbg !2680
  br i1 %13, label %14, label %68, !dbg !2680

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2682, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8* null, metadata !2687, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 70, metadata !2688, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 45, metadata !2689, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 56, metadata !2690, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8 0, metadata !2691, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 0, metadata !2692, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 0, metadata !2693, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2694, metadata !DIExpression()), !dbg !2706
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2707
  %16 = load i8, i8* %15, align 1, !dbg !2707, !tbaa !943
  %17 = and i8 %16, -33, !dbg !2707
  %18 = icmp eq i8 %17, 70, !dbg !2707
  br i1 %18, label %19, label %68, !dbg !2707

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2709, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* null, metadata !2714, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 45, metadata !2715, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 56, metadata !2716, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2717, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8 0, metadata !2718, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 0, metadata !2719, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2731
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2732
  %21 = load i8, i8* %20, align 1, !dbg !2732, !tbaa !943
  %22 = icmp eq i8 %21, 45, !dbg !2732
  br i1 %22, label %23, label %68, !dbg !2734

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2735, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8* null, metadata !2740, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 56, metadata !2741, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2745, metadata !DIExpression()), !dbg !2755
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2756
  %25 = load i8, i8* %24, align 1, !dbg !2756, !tbaa !943
  %26 = icmp eq i8 %25, 56, !dbg !2756
  br i1 %26, label %27, label %68, !dbg !2758

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2759, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* null, metadata !2764, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2765, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8 0, metadata !2766, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2767, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 0, metadata !2768, metadata !DIExpression()), !dbg !2777
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2778
  %29 = load i8, i8* %28, align 1, !dbg !2778, !tbaa !943
  %30 = icmp eq i8 %29, 0, !dbg !2778
  br i1 %30, label %31, label %68, !dbg !2780

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2781, !tbaa !943
  %33 = icmp eq i8 %32, 96, !dbg !2782
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2781
  br label %71, !dbg !2783

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2653, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8* null, metadata !2658, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 66, metadata !2659, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8 49, metadata !2660, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 56, metadata !2661, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 48, metadata !2662, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 51, metadata !2663, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 48, metadata !2664, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8 0, metadata !2665, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8 0, metadata !2666, metadata !DIExpression()), !dbg !2796
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2797
  %37 = load i8, i8* %36, align 1, !dbg !2797, !tbaa !943
  %38 = and i8 %37, -33, !dbg !2797
  %39 = icmp eq i8 %38, 66, !dbg !2797
  br i1 %39, label %40, label %68, !dbg !2797

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2682, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* null, metadata !2687, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 49, metadata !2688, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8 56, metadata !2689, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 48, metadata !2690, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8 51, metadata !2691, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8 48, metadata !2692, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 0, metadata !2693, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8 0, metadata !2694, metadata !DIExpression()), !dbg !2807
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2808
  %42 = load i8, i8* %41, align 1, !dbg !2808, !tbaa !943
  %43 = icmp eq i8 %42, 49, !dbg !2808
  br i1 %43, label %44, label %68, !dbg !2809

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2709, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* null, metadata !2714, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 56, metadata !2715, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 48, metadata !2716, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 51, metadata !2717, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 48, metadata !2718, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2719, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2818
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2819
  %46 = load i8, i8* %45, align 1, !dbg !2819, !tbaa !943
  %47 = icmp eq i8 %46, 56, !dbg !2819
  br i1 %47, label %48, label %68, !dbg !2820

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2735, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* null, metadata !2740, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 48, metadata !2741, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 51, metadata !2742, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 48, metadata !2743, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 0, metadata !2745, metadata !DIExpression()), !dbg !2828
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2829
  %50 = load i8, i8* %49, align 1, !dbg !2829, !tbaa !943
  %51 = icmp eq i8 %50, 48, !dbg !2829
  br i1 %51, label %52, label %68, !dbg !2830

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2759, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* null, metadata !2764, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 51, metadata !2765, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8 48, metadata !2766, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 0, metadata !2767, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 0, metadata !2768, metadata !DIExpression()), !dbg !2837
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2838
  %54 = load i8, i8* %53, align 1, !dbg !2838, !tbaa !943
  %55 = icmp eq i8 %54, 51, !dbg !2838
  br i1 %55, label %56, label %68, !dbg !2839

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2840, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8* null, metadata !2845, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 48, metadata !2846, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8 0, metadata !2847, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2848, metadata !DIExpression()), !dbg !2856
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2857
  %58 = load i8, i8* %57, align 1, !dbg !2857, !tbaa !943
  %59 = icmp eq i8 %58, 48, !dbg !2857
  br i1 %59, label %60, label %68, !dbg !2859

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2860, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* null, metadata !2865, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 0, metadata !2866, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 0, metadata !2867, metadata !DIExpression()), !dbg !2874
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2875
  %62 = load i8, i8* %61, align 1, !dbg !2875, !tbaa !943
  %63 = icmp eq i8 %62, 0, !dbg !2875
  br i1 %63, label %64, label %68, !dbg !2877

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2878, !tbaa !943
  %66 = icmp eq i8 %65, 96, !dbg !2879
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2878
  br label %71, !dbg !2880

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2881
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2882
  br label %71, !dbg !2883

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2884
  ret i8* %72, !dbg !2885
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2886 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2890, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2892, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()) #11, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %1, metadata !2901, metadata !DIExpression()) #11, !dbg !2911
  call void @llvm.dbg.value(metadata i64* null, metadata !2902, metadata !DIExpression()) #11, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2903, metadata !DIExpression()) #11, !dbg !2913
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2914
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2914
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2904, metadata !DIExpression()) #11, !dbg !2915
  %6 = tail call i32* @__errno_location() #18, !dbg !2916
  %7 = load i32, i32* %6, align 4, !dbg !2916, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %7, metadata !2905, metadata !DIExpression()) #11, !dbg !2917
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2918
  %9 = load i32, i32* %8, align 4, !dbg !2918, !tbaa !1991
  %10 = or i32 %9, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i32 %10, metadata !2906, metadata !DIExpression()) #11, !dbg !2920
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2921
  %12 = load i32, i32* %11, align 8, !dbg !2921, !tbaa !1932
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2922
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2923
  %15 = load i8*, i8** %14, align 8, !dbg !2923, !tbaa !2017
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2924
  %17 = load i8*, i8** %16, align 8, !dbg !2924, !tbaa !2020
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2925
  %19 = add i64 %18, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %19, metadata !2907, metadata !DIExpression()) #11, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %19, metadata !2928, metadata !DIExpression()) #11, !dbg !2933
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %20, metadata !2908, metadata !DIExpression()) #11, !dbg !2936
  %21 = load i32, i32* %11, align 8, !dbg !2937, !tbaa !1932
  %22 = load i8*, i8** %14, align 8, !dbg !2938, !tbaa !2017
  %23 = load i8*, i8** %16, align 8, !dbg !2939, !tbaa !2020
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2940
  store i32 %7, i32* %6, align 4, !dbg !2941, !tbaa !878
  ret i8* %20, !dbg !2942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2901, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64* %2, metadata !2902, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2903, metadata !DIExpression()), !dbg !2946
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2947
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2947
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2904, metadata !DIExpression()), !dbg !2948
  %7 = tail call i32* @__errno_location() #18, !dbg !2949
  %8 = load i32, i32* %7, align 4, !dbg !2949, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %8, metadata !2905, metadata !DIExpression()), !dbg !2950
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2951
  %10 = load i32, i32* %9, align 4, !dbg !2951, !tbaa !1991
  %11 = icmp ne i64* %2, null, !dbg !2952
  %12 = xor i1 %11, true, !dbg !2952
  %13 = zext i1 %12 to i32, !dbg !2952
  %14 = or i32 %10, %13, !dbg !2953
  call void @llvm.dbg.value(metadata i32 %14, metadata !2906, metadata !DIExpression()), !dbg !2954
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2955
  %16 = load i32, i32* %15, align 8, !dbg !2955, !tbaa !1932
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2956
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2957
  %19 = load i8*, i8** %18, align 8, !dbg !2957, !tbaa !2017
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2958
  %21 = load i8*, i8** %20, align 8, !dbg !2958, !tbaa !2020
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2959
  %23 = add i64 %22, 1, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %23, metadata !2907, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %23, metadata !2928, metadata !DIExpression()) #11, !dbg !2962
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %24, metadata !2908, metadata !DIExpression()), !dbg !2965
  %25 = load i32, i32* %15, align 8, !dbg !2966, !tbaa !1932
  %26 = load i8*, i8** %18, align 8, !dbg !2967, !tbaa !2017
  %27 = load i8*, i8** %20, align 8, !dbg !2968, !tbaa !2020
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2969
  store i32 %8, i32* %7, align 4, !dbg !2970, !tbaa !878
  br i1 %11, label %29, label %30, !dbg !2971

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2972, !tbaa !932
  br label %30, !dbg !2974

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2976 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2980, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2978, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 1, metadata !2979, metadata !DIExpression()), !dbg !2982
  %2 = load i32, i32* @nslots, align 4, !dbg !2983, !tbaa !878
  %3 = icmp sgt i32 %2, 1, !dbg !2986
  br i1 %3, label %4, label %12, !dbg !2987

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2979, metadata !DIExpression()), !dbg !2982
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2988
  %7 = load i8*, i8** %6, align 8, !dbg !2988, !tbaa !2989
  tail call void @free(i8* %7) #11, !dbg !2991
  %8 = add nuw nsw i64 %5, 1, !dbg !2992
  call void @llvm.dbg.value(metadata i32 undef, metadata !2979, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2982
  %9 = load i32, i32* @nslots, align 4, !dbg !2983, !tbaa !878
  %10 = sext i32 %9 to i64, !dbg !2986
  %11 = icmp slt i64 %8, %10, !dbg !2986
  br i1 %11, label %4, label %12, !dbg !2987, !llvm.loop !2993

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2995
  %14 = load i8*, i8** %13, align 8, !dbg !2995, !tbaa !2989
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2997
  br i1 %15, label %17, label %16, !dbg !2998

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2999
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3001, !tbaa !3002
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3003, !tbaa !2989
  br label %17, !dbg !3004

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3005
  br i1 %18, label %21, label %19, !dbg !3007

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3008
  tail call void @free(i8* %20) #11, !dbg !3010
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3011, !tbaa !672
  br label %21, !dbg !3012

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3013, !tbaa !878
  ret void, !dbg !3014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %1, metadata !3020, metadata !DIExpression()), !dbg !3022
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3023
  ret i8* %3, !dbg !3024
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3029, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8* %1, metadata !3030, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %2, metadata !3031, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3032, metadata !DIExpression()), !dbg !3047
  %5 = tail call i32* @__errno_location() #18, !dbg !3048
  %6 = load i32, i32* %5, align 4, !dbg !3048, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %6, metadata !3033, metadata !DIExpression()), !dbg !3049
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3050, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3034, metadata !DIExpression()), !dbg !3051
  %8 = icmp slt i32 %0, 0, !dbg !3052
  br i1 %8, label %9, label %10, !dbg !3054

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3055
  unreachable, !dbg !3055

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3056, !tbaa !878
  %12 = icmp sgt i32 %11, %0, !dbg !3057
  br i1 %12, label %34, label %13, !dbg !3058

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3059
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3038, metadata !DIExpression()), !dbg !3060
  %15 = icmp eq i32 %0, 2147483647, !dbg !3061
  br i1 %15, label %16, label %17, !dbg !3063

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3064
  unreachable, !dbg !3064

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3065
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3065
  %20 = add nsw i32 %0, 1, !dbg !3066
  %21 = sext i32 %20 to i64, !dbg !3067
  %22 = shl nsw i64 %21, 4, !dbg !3068
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3069
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3069
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3034, metadata !DIExpression()), !dbg !3051
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3070, !tbaa !672
  br i1 %14, label %25, label %26, !dbg !3071

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3072, !tbaa.struct !3074
  br label %26, !dbg !3075

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3076, !tbaa !878
  %28 = sext i32 %27 to i64, !dbg !3077
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3077
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3078
  %31 = sub nsw i32 %20, %27, !dbg !3079
  %32 = sext i32 %31 to i64, !dbg !3080
  %33 = shl nsw i64 %32, 4, !dbg !3081
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3078
  store i32 %20, i32* @nslots, align 4, !dbg !3082, !tbaa !878
  br label %34, !dbg !3083

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3084
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3034, metadata !DIExpression()), !dbg !3051
  %36 = sext i32 %0 to i64, !dbg !3085
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3086
  %38 = load i64, i64* %37, align 8, !dbg !3086, !tbaa !3002
  call void @llvm.dbg.value(metadata i64 %38, metadata !3039, metadata !DIExpression()), !dbg !3087
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3088
  %40 = load i8*, i8** %39, align 8, !dbg !3088, !tbaa !2989
  call void @llvm.dbg.value(metadata i8* %40, metadata !3041, metadata !DIExpression()), !dbg !3089
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3090
  %42 = load i32, i32* %41, align 4, !dbg !3090, !tbaa !1991
  %43 = or i32 %42, 1, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %43, metadata !3042, metadata !DIExpression()), !dbg !3092
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3093
  %45 = load i32, i32* %44, align 8, !dbg !3093, !tbaa !1932
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3094
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3095
  %48 = load i8*, i8** %47, align 8, !dbg !3095, !tbaa !2017
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3096
  %50 = load i8*, i8** %49, align 8, !dbg !3096, !tbaa !2020
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3097
  call void @llvm.dbg.value(metadata i64 %51, metadata !3043, metadata !DIExpression()), !dbg !3098
  %52 = icmp ugt i64 %38, %51, !dbg !3099
  br i1 %52, label %63, label %53, !dbg !3101

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %54, metadata !3039, metadata !DIExpression()), !dbg !3087
  store i64 %54, i64* %37, align 8, !dbg !3104, !tbaa !3002
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3105
  br i1 %55, label %57, label %56, !dbg !3107

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3108
  br label %57, !dbg !3108

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2928, metadata !DIExpression()) #11, !dbg !3109
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %58, metadata !3041, metadata !DIExpression()), !dbg !3089
  store i8* %58, i8** %39, align 8, !dbg !3112, !tbaa !2989
  %59 = load i32, i32* %44, align 8, !dbg !3113, !tbaa !1932
  %60 = load i8*, i8** %47, align 8, !dbg !3114, !tbaa !2017
  %61 = load i8*, i8** %49, align 8, !dbg !3115, !tbaa !2020
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3116
  br label %63, !dbg !3117

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3118
  call void @llvm.dbg.value(metadata i8* %64, metadata !3041, metadata !DIExpression()), !dbg !3089
  store i32 %6, i32* %5, align 4, !dbg !3119, !tbaa !878
  ret i8* %64, !dbg !3120
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %1, metadata !3126, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %2, metadata !3127, metadata !DIExpression()), !dbg !3130
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3131
  ret i8* %4, !dbg !3132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3133 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3137, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()) #11, !dbg !3139
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #11, !dbg !3141
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3142
  ret i8* %2, !dbg !3143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3144 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3148, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %1, metadata !3149, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 0, metadata !3125, metadata !DIExpression()) #11, !dbg !3152
  call void @llvm.dbg.value(metadata i8* %0, metadata !3126, metadata !DIExpression()) #11, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()) #11, !dbg !3155
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3156
  ret i8* %3, !dbg !3157
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3158 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3162, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %1, metadata !3163, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8* %2, metadata !3164, metadata !DIExpression()), !dbg !3168
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3169
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3169
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3165, metadata !DIExpression(DW_OP_deref)), !dbg !3170
  call void @llvm.dbg.value(metadata i32 %1, metadata !3171, metadata !DIExpression()) #11, !dbg !3177
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3179, !alias.scope !3180
  %6 = icmp eq i32 %1, 10, !dbg !3183
  br i1 %6, label %7, label %8, !dbg !3185

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3186, !noalias !3180
  unreachable, !dbg !3186

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3187
  store i32 %1, i32* %9, align 8, !dbg !3188, !tbaa !1932, !alias.scope !3180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3165, metadata !DIExpression(DW_OP_deref)), !dbg !3170
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3176, metadata !DIExpression(DW_OP_deref)), !dbg !3179
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3190
  ret i8* %10, !dbg !3191
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3192 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3196, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %1, metadata !3197, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8* %2, metadata !3198, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %3, metadata !3199, metadata !DIExpression()), !dbg !3204
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3205
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3200, metadata !DIExpression(DW_OP_deref)), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %1, metadata !3171, metadata !DIExpression()) #11, !dbg !3207
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3209, !alias.scope !3210
  %7 = icmp eq i32 %1, 10, !dbg !3213
  br i1 %7, label %8, label %9, !dbg !3214

; <label>:8:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3215, !noalias !3210
  unreachable, !dbg !3215

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3216
  store i32 %1, i32* %10, align 8, !dbg !3217, !tbaa !1932, !alias.scope !3210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3200, metadata !DIExpression(DW_OP_deref)), !dbg !3206
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3176, metadata !DIExpression(DW_OP_deref)), !dbg !3209
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3218
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3219
  ret i8* %11, !dbg !3220
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3221 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3225, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %1, metadata !3226, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i32 0, metadata !3162, metadata !DIExpression()) #11, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %0, metadata !3163, metadata !DIExpression()) #11, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()) #11, !dbg !3232
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3233
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3165, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %0, metadata !3171, metadata !DIExpression()) #11, !dbg !3235
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3237, !alias.scope !3238
  %5 = icmp eq i32 %0, 10, !dbg !3241
  br i1 %5, label %6, label %7, !dbg !3242

; <label>:6:                                      ; preds = %2
  tail call void @abort() #16, !dbg !3243, !noalias !3238
  unreachable, !dbg !3243

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3244
  store i32 %0, i32* %8, align 8, !dbg !3245, !tbaa !1932, !alias.scope !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3165, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3176, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3237
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3246
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3247
  ret i8* %9, !dbg !3248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3249 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8* %1, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %2, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3196, metadata !DIExpression()) #11, !dbg !3259
  call void @llvm.dbg.value(metadata i32 %0, metadata !3197, metadata !DIExpression()) #11, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %1, metadata !3198, metadata !DIExpression()) #11, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %2, metadata !3199, metadata !DIExpression()) #11, !dbg !3263
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3264
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3200, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %0, metadata !3171, metadata !DIExpression()) #11, !dbg !3266
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3268, !alias.scope !3269
  %6 = icmp eq i32 %0, 10, !dbg !3272
  br i1 %6, label %7, label %8, !dbg !3273

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3274, !noalias !3269
  unreachable, !dbg !3274

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3275
  store i32 %0, i32* %9, align 8, !dbg !3276, !tbaa !1932, !alias.scope !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3200, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3176, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3268
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3277
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3278
  ret i8* %10, !dbg !3279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3280 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 %2, metadata !3286, metadata !DIExpression()), !dbg !3290
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3291
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3292, !tbaa.struct !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1951, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 %2, metadata !1952, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 1, metadata !1953, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 %2, metadata !1954, metadata !DIExpression()), !dbg !3299
  %6 = lshr i8 %2, 5, !dbg !3300
  %7 = zext i8 %6 to i64, !dbg !3300
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3301
  call void @llvm.dbg.value(metadata i32* %8, metadata !1955, metadata !DIExpression()), !dbg !3302
  %9 = and i8 %2, 31, !dbg !3303
  %10 = zext i8 %9 to i32, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %10, metadata !1957, metadata !DIExpression()), !dbg !3304
  %11 = load i32, i32* %8, align 4, !dbg !3305, !tbaa !878
  %12 = lshr i32 %11, %10, !dbg !3306
  %13 = and i32 %12, 1, !dbg !3307
  call void @llvm.dbg.value(metadata i32 %13, metadata !1958, metadata !DIExpression()), !dbg !3308
  %14 = xor i32 %13, 1, !dbg !3309
  %15 = shl i32 %14, %10, !dbg !3310
  %16 = xor i32 %15, %11, !dbg !3311
  store i32 %16, i32* %8, align 4, !dbg !3311, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3294
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3312
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3313
  ret i8* %17, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3315 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 %1, metadata !3320, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #11, !dbg !3323
  call void @llvm.dbg.value(metadata i64 -1, metadata !3285, metadata !DIExpression()) #11, !dbg !3325
  call void @llvm.dbg.value(metadata i8 %1, metadata !3286, metadata !DIExpression()) #11, !dbg !3326
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3327
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3328, !tbaa.struct !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3287, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1951, metadata !DIExpression()) #11, !dbg !3330
  call void @llvm.dbg.value(metadata i8 %1, metadata !1952, metadata !DIExpression()) #11, !dbg !3332
  call void @llvm.dbg.value(metadata i32 1, metadata !1953, metadata !DIExpression()) #11, !dbg !3333
  call void @llvm.dbg.value(metadata i8 %1, metadata !1954, metadata !DIExpression()) #11, !dbg !3334
  %5 = lshr i8 %1, 5, !dbg !3335
  %6 = zext i8 %5 to i64, !dbg !3335
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3336
  call void @llvm.dbg.value(metadata i32* %7, metadata !1955, metadata !DIExpression()) #11, !dbg !3337
  %8 = and i8 %1, 31, !dbg !3338
  %9 = zext i8 %8 to i32, !dbg !3338
  call void @llvm.dbg.value(metadata i32 %9, metadata !1957, metadata !DIExpression()) #11, !dbg !3339
  %10 = load i32, i32* %7, align 4, !dbg !3340, !tbaa !878
  %11 = lshr i32 %10, %9, !dbg !3341
  %12 = and i32 %11, 1, !dbg !3342
  call void @llvm.dbg.value(metadata i32 %12, metadata !1958, metadata !DIExpression()) #11, !dbg !3343
  %13 = xor i32 %12, 1, !dbg !3344
  %14 = shl i32 %13, %9, !dbg !3345
  %15 = xor i32 %14, %10, !dbg !3346
  store i32 %15, i32* %7, align 4, !dbg !3346, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3287, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3329
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3347
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3348
  ret i8* %16, !dbg !3349
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3350 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()) #11, !dbg !3354
  call void @llvm.dbg.value(metadata i8 58, metadata !3320, metadata !DIExpression()) #11, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #11, !dbg !3357
  call void @llvm.dbg.value(metadata i64 -1, metadata !3285, metadata !DIExpression()) #11, !dbg !3359
  call void @llvm.dbg.value(metadata i8 58, metadata !3286, metadata !DIExpression()) #11, !dbg !3360
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3362, !tbaa.struct !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3287, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3363
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1951, metadata !DIExpression()) #11, !dbg !3364
  call void @llvm.dbg.value(metadata i8 58, metadata !1952, metadata !DIExpression()) #11, !dbg !3366
  call void @llvm.dbg.value(metadata i32 1, metadata !1953, metadata !DIExpression()) #11, !dbg !3367
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()) #11, !dbg !3368
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3369
  call void @llvm.dbg.value(metadata i32* %4, metadata !1955, metadata !DIExpression()) #11, !dbg !3370
  call void @llvm.dbg.value(metadata i32 26, metadata !1957, metadata !DIExpression()) #11, !dbg !3371
  %5 = load i32, i32* %4, align 4, !dbg !3372, !tbaa !878
  %6 = or i32 %5, 67108864, !dbg !3373
  store i32 %6, i32* %4, align 4, !dbg !3373, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3287, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3363
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3374
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3375
  ret i8* %7, !dbg !3376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3377 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3379, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #11, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()) #11, !dbg !3385
  call void @llvm.dbg.value(metadata i8 58, metadata !3286, metadata !DIExpression()) #11, !dbg !3386
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3387
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3387
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3388, !tbaa.struct !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3287, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1951, metadata !DIExpression()) #11, !dbg !3390
  call void @llvm.dbg.value(metadata i8 58, metadata !1952, metadata !DIExpression()) #11, !dbg !3392
  call void @llvm.dbg.value(metadata i32 1, metadata !1953, metadata !DIExpression()) #11, !dbg !3393
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()) #11, !dbg !3394
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3395
  call void @llvm.dbg.value(metadata i32* %5, metadata !1955, metadata !DIExpression()) #11, !dbg !3396
  call void @llvm.dbg.value(metadata i32 26, metadata !1957, metadata !DIExpression()) #11, !dbg !3397
  %6 = load i32, i32* %5, align 4, !dbg !3398, !tbaa !878
  %7 = or i32 %6, 67108864, !dbg !3399
  store i32 %7, i32* %5, align 4, !dbg !3399, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3287, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3389
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3400
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3401
  ret i8* %8, !dbg !3402
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3403 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3176, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %0, metadata !3405, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 %1, metadata !3406, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %2, metadata !3407, metadata !DIExpression()), !dbg !3413
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3414
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3414
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3415
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3415
  call void @llvm.dbg.value(metadata i32 %1, metadata !3171, metadata !DIExpression()) #11, !dbg !3416
  call void @llvm.dbg.value(metadata i32 0, metadata !3176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3409
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3409, !alias.scope !3417
  %8 = icmp eq i32 %1, 10, !dbg !3420
  br i1 %8, label %9, label %10, !dbg !3421

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3422, !noalias !3417
  unreachable, !dbg !3422

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3409
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3415
  store i32 %1, i32* %11, align 8, !dbg !3415
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3415
  %13 = bitcast i32* %12 to i8*, !dbg !3415
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3415
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3408, metadata !DIExpression(DW_OP_deref)), !dbg !3423
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1951, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8 58, metadata !1952, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i32 1, metadata !1953, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()), !dbg !3428
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3429
  call void @llvm.dbg.value(metadata i32* %14, metadata !1955, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 26, metadata !1957, metadata !DIExpression()), !dbg !3431
  %15 = load i32, i32* %14, align 4, !dbg !3432, !tbaa !878
  %16 = or i32 %15, 67108864, !dbg !3433
  store i32 %16, i32* %14, align 4, !dbg !3433, !tbaa !878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3408, metadata !DIExpression(DW_OP_deref)), !dbg !3423
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3435
  ret i8* %17, !dbg !3436
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3437 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8* %1, metadata !3442, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8* %2, metadata !3443, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8* %3, metadata !3444, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()) #11, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %1, metadata !3454, metadata !DIExpression()) #11, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %2, metadata !3455, metadata !DIExpression()) #11, !dbg !3462
  call void @llvm.dbg.value(metadata i8* %3, metadata !3456, metadata !DIExpression()) #11, !dbg !3463
  call void @llvm.dbg.value(metadata i64 -1, metadata !3457, metadata !DIExpression()) #11, !dbg !3464
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3465
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3465
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3466, !tbaa.struct !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3458, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3467
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1999, metadata !DIExpression()) #11, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %1, metadata !2000, metadata !DIExpression()) #11, !dbg !3470
  call void @llvm.dbg.value(metadata i8* %2, metadata !2001, metadata !DIExpression()) #11, !dbg !3471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1999, metadata !DIExpression()) #11, !dbg !3468
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3472
  store i32 10, i32* %7, align 8, !dbg !3473, !tbaa !1932
  %8 = icmp ne i8* %1, null, !dbg !3474
  %9 = icmp ne i8* %2, null, !dbg !3475
  %10 = and i1 %8, %9, !dbg !3476
  br i1 %10, label %12, label %11, !dbg !3476

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3477
  unreachable, !dbg !3477

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3478
  store i8* %1, i8** %13, align 8, !dbg !3479, !tbaa !2017
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3480
  store i8* %2, i8** %14, align 8, !dbg !3481, !tbaa !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3458, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3467
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3482
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3483
  ret i8* %15, !dbg !3484
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3450 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %1, metadata !3454, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8* %2, metadata !3455, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8* %3, metadata !3456, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %4, metadata !3457, metadata !DIExpression()), !dbg !3489
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3490
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3491, !tbaa.struct !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3458, metadata !DIExpression(DW_OP_deref)), !dbg !3492
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1999, metadata !DIExpression()) #11, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %1, metadata !2000, metadata !DIExpression()) #11, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %2, metadata !2001, metadata !DIExpression()) #11, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1999, metadata !DIExpression()) #11, !dbg !3493
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3497
  store i32 10, i32* %8, align 8, !dbg !3498, !tbaa !1932
  %9 = icmp ne i8* %1, null, !dbg !3499
  %10 = icmp ne i8* %2, null, !dbg !3500
  %11 = and i1 %9, %10, !dbg !3501
  br i1 %11, label %13, label %12, !dbg !3501

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3502
  unreachable, !dbg !3502

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3503
  store i8* %1, i8** %14, align 8, !dbg !3504, !tbaa !2017
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3505
  store i8* %2, i8** %15, align 8, !dbg !3506, !tbaa !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3458, metadata !DIExpression(DW_OP_deref)), !dbg !3492
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3507
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3508
  ret i8* %16, !dbg !3509
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3510 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3514, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8* %1, metadata !3515, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %2, metadata !3516, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 0, metadata !3441, metadata !DIExpression()) #11, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %0, metadata !3442, metadata !DIExpression()) #11, !dbg !3522
  call void @llvm.dbg.value(metadata i8* %1, metadata !3443, metadata !DIExpression()) #11, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %2, metadata !3444, metadata !DIExpression()) #11, !dbg !3524
  call void @llvm.dbg.value(metadata i32 0, metadata !3449, metadata !DIExpression()) #11, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %0, metadata !3454, metadata !DIExpression()) #11, !dbg !3527
  call void @llvm.dbg.value(metadata i8* %1, metadata !3455, metadata !DIExpression()) #11, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %2, metadata !3456, metadata !DIExpression()) #11, !dbg !3529
  call void @llvm.dbg.value(metadata i64 -1, metadata !3457, metadata !DIExpression()) #11, !dbg !3530
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3531
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3532, !tbaa.struct !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3458, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1999, metadata !DIExpression()) #11, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %0, metadata !2000, metadata !DIExpression()) #11, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %1, metadata !2001, metadata !DIExpression()) #11, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1999, metadata !DIExpression()) #11, !dbg !3534
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3538
  store i32 10, i32* %6, align 8, !dbg !3539, !tbaa !1932
  %7 = icmp ne i8* %0, null, !dbg !3540
  %8 = icmp ne i8* %1, null, !dbg !3541
  %9 = and i1 %7, %8, !dbg !3542
  br i1 %9, label %11, label %10, !dbg !3542

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3543
  unreachable, !dbg !3543

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3544
  store i8* %0, i8** %12, align 8, !dbg !3545, !tbaa !2017
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3546
  store i8* %1, i8** %13, align 8, !dbg !3547, !tbaa !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3458, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3533
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3549
  ret i8* %14, !dbg !3550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3551 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3555, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8* %1, metadata !3556, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8* %2, metadata !3557, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %3, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3449, metadata !DIExpression()) #11, !dbg !3563
  call void @llvm.dbg.value(metadata i8* %0, metadata !3454, metadata !DIExpression()) #11, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %1, metadata !3455, metadata !DIExpression()) #11, !dbg !3566
  call void @llvm.dbg.value(metadata i8* %2, metadata !3456, metadata !DIExpression()) #11, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %3, metadata !3457, metadata !DIExpression()) #11, !dbg !3568
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3569
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3569
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3570, !tbaa.struct !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3458, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3571
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1999, metadata !DIExpression()) #11, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %0, metadata !2000, metadata !DIExpression()) #11, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %1, metadata !2001, metadata !DIExpression()) #11, !dbg !3575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1999, metadata !DIExpression()) #11, !dbg !3572
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3576
  store i32 10, i32* %7, align 8, !dbg !3577, !tbaa !1932
  %8 = icmp ne i8* %0, null, !dbg !3578
  %9 = icmp ne i8* %1, null, !dbg !3579
  %10 = and i1 %8, %9, !dbg !3580
  br i1 %10, label %12, label %11, !dbg !3580

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3581
  unreachable, !dbg !3581

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3582
  store i8* %0, i8** %13, align 8, !dbg !3583, !tbaa !2017
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3584
  store i8* %1, i8** %14, align 8, !dbg !3585, !tbaa !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3458, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3571
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3586
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3587
  ret i8* %15, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %2, metadata !3595, metadata !DIExpression()), !dbg !3598
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3599
  ret i8* %4, !dbg !3600
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 %1, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 0, metadata !3593, metadata !DIExpression()) #11, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()) #11, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %1, metadata !3595, metadata !DIExpression()) #11, !dbg !3612
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3613
  ret i8* %3, !dbg !3614
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3615 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3619, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i8* %1, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()) #11, !dbg !3623
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()) #11, !dbg !3625
  call void @llvm.dbg.value(metadata i64 -1, metadata !3595, metadata !DIExpression()) #11, !dbg !3626
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3627
  ret i8* %3, !dbg !3628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3629 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 0, metadata !3619, metadata !DIExpression()) #11, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %0, metadata !3620, metadata !DIExpression()) #11, !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3593, metadata !DIExpression()) #11, !dbg !3638
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()) #11, !dbg !3640
  call void @llvm.dbg.value(metadata i64 -1, metadata !3595, metadata !DIExpression()) #11, !dbg !3641
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3642
  ret i8* %2, !dbg !3643
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3644 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3683, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i8* %1, metadata !3684, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i8* %2, metadata !3685, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i8* %3, metadata !3686, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8** %4, metadata !3687, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %5, metadata !3688, metadata !DIExpression()), !dbg !3694
  %7 = icmp eq i8* %1, null, !dbg !3695
  br i1 %7, label %10, label %8, !dbg !3697

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3698
  br label %12, !dbg !3698

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.93, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3699
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i32 5) #11, !dbg !3700
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3700
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.95, i64 0, i64 0), i32 5) #11, !dbg !3701
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3701
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
  ], !dbg !3702

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !3703
  unreachable, !dbg !3703

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.96, i64 0, i64 0), i32 5) #11, !dbg !3705
  %20 = load i8*, i8** %4, align 8, !dbg !3705, !tbaa !672
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3705
  br label %146, !dbg !3706

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.97, i64 0, i64 0), i32 5) #11, !dbg !3707
  %24 = load i8*, i8** %4, align 8, !dbg !3707, !tbaa !672
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3707
  %26 = load i8*, i8** %25, align 8, !dbg !3707, !tbaa !672
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3707
  br label %146, !dbg !3708

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.98, i64 0, i64 0), i32 5) #11, !dbg !3709
  %30 = load i8*, i8** %4, align 8, !dbg !3709, !tbaa !672
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3709
  %32 = load i8*, i8** %31, align 8, !dbg !3709, !tbaa !672
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3709
  %34 = load i8*, i8** %33, align 8, !dbg !3709, !tbaa !672
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3709
  br label %146, !dbg !3710

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.99, i64 0, i64 0), i32 5) #11, !dbg !3711
  %38 = load i8*, i8** %4, align 8, !dbg !3711, !tbaa !672
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3711
  %40 = load i8*, i8** %39, align 8, !dbg !3711, !tbaa !672
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3711
  %42 = load i8*, i8** %41, align 8, !dbg !3711, !tbaa !672
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3711
  %44 = load i8*, i8** %43, align 8, !dbg !3711, !tbaa !672
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3711
  br label %146, !dbg !3712

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.100, i64 0, i64 0), i32 5) #11, !dbg !3713
  %48 = load i8*, i8** %4, align 8, !dbg !3713, !tbaa !672
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3713
  %50 = load i8*, i8** %49, align 8, !dbg !3713, !tbaa !672
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3713
  %52 = load i8*, i8** %51, align 8, !dbg !3713, !tbaa !672
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3713
  %54 = load i8*, i8** %53, align 8, !dbg !3713, !tbaa !672
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3713
  %56 = load i8*, i8** %55, align 8, !dbg !3713, !tbaa !672
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3713
  br label %146, !dbg !3714

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.101, i64 0, i64 0), i32 5) #11, !dbg !3715
  %60 = load i8*, i8** %4, align 8, !dbg !3715, !tbaa !672
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3715
  %62 = load i8*, i8** %61, align 8, !dbg !3715, !tbaa !672
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3715
  %64 = load i8*, i8** %63, align 8, !dbg !3715, !tbaa !672
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3715
  %66 = load i8*, i8** %65, align 8, !dbg !3715, !tbaa !672
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3715
  %68 = load i8*, i8** %67, align 8, !dbg !3715, !tbaa !672
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3715
  %70 = load i8*, i8** %69, align 8, !dbg !3715, !tbaa !672
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3715
  br label %146, !dbg !3716

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.102, i64 0, i64 0), i32 5) #11, !dbg !3717
  %74 = load i8*, i8** %4, align 8, !dbg !3717, !tbaa !672
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3717
  %76 = load i8*, i8** %75, align 8, !dbg !3717, !tbaa !672
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3717
  %78 = load i8*, i8** %77, align 8, !dbg !3717, !tbaa !672
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3717
  %80 = load i8*, i8** %79, align 8, !dbg !3717, !tbaa !672
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3717
  %82 = load i8*, i8** %81, align 8, !dbg !3717, !tbaa !672
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3717
  %84 = load i8*, i8** %83, align 8, !dbg !3717, !tbaa !672
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3717
  %86 = load i8*, i8** %85, align 8, !dbg !3717, !tbaa !672
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3717
  br label %146, !dbg !3718

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.103, i64 0, i64 0), i32 5) #11, !dbg !3719
  %90 = load i8*, i8** %4, align 8, !dbg !3719, !tbaa !672
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3719
  %92 = load i8*, i8** %91, align 8, !dbg !3719, !tbaa !672
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3719
  %94 = load i8*, i8** %93, align 8, !dbg !3719, !tbaa !672
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3719
  %96 = load i8*, i8** %95, align 8, !dbg !3719, !tbaa !672
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3719
  %98 = load i8*, i8** %97, align 8, !dbg !3719, !tbaa !672
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3719
  %100 = load i8*, i8** %99, align 8, !dbg !3719, !tbaa !672
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3719
  %102 = load i8*, i8** %101, align 8, !dbg !3719, !tbaa !672
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3719
  %104 = load i8*, i8** %103, align 8, !dbg !3719, !tbaa !672
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3719
  br label %146, !dbg !3720

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.104, i64 0, i64 0), i32 5) #11, !dbg !3721
  %108 = load i8*, i8** %4, align 8, !dbg !3721, !tbaa !672
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3721
  %110 = load i8*, i8** %109, align 8, !dbg !3721, !tbaa !672
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3721
  %112 = load i8*, i8** %111, align 8, !dbg !3721, !tbaa !672
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3721
  %114 = load i8*, i8** %113, align 8, !dbg !3721, !tbaa !672
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3721
  %116 = load i8*, i8** %115, align 8, !dbg !3721, !tbaa !672
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3721
  %118 = load i8*, i8** %117, align 8, !dbg !3721, !tbaa !672
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3721
  %120 = load i8*, i8** %119, align 8, !dbg !3721, !tbaa !672
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3721
  %122 = load i8*, i8** %121, align 8, !dbg !3721, !tbaa !672
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3721
  %124 = load i8*, i8** %123, align 8, !dbg !3721, !tbaa !672
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3721
  br label %146, !dbg !3722

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.105, i64 0, i64 0), i32 5) #11, !dbg !3723
  %128 = load i8*, i8** %4, align 8, !dbg !3723, !tbaa !672
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3723
  %130 = load i8*, i8** %129, align 8, !dbg !3723, !tbaa !672
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3723
  %132 = load i8*, i8** %131, align 8, !dbg !3723, !tbaa !672
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3723
  %134 = load i8*, i8** %133, align 8, !dbg !3723, !tbaa !672
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3723
  %136 = load i8*, i8** %135, align 8, !dbg !3723, !tbaa !672
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3723
  %138 = load i8*, i8** %137, align 8, !dbg !3723, !tbaa !672
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3723
  %140 = load i8*, i8** %139, align 8, !dbg !3723, !tbaa !672
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3723
  %142 = load i8*, i8** %141, align 8, !dbg !3723, !tbaa !672
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3723
  %144 = load i8*, i8** %143, align 8, !dbg !3723, !tbaa !672
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3723
  br label %146, !dbg !3724

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3726 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3730, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i8* %1, metadata !3731, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i8* %2, metadata !3732, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8* %3, metadata !3733, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8** %4, metadata !3734, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 0, metadata !3735, metadata !DIExpression()), !dbg !3741
  br label %6, !dbg !3742

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3744
  call void @llvm.dbg.value(metadata i64 %7, metadata !3735, metadata !DIExpression()), !dbg !3741
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3746
  %9 = load i8*, i8** %8, align 8, !dbg !3746, !tbaa !672
  %10 = icmp eq i8* %9, null, !dbg !3747
  %11 = add i64 %7, 1, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %11, metadata !3735, metadata !DIExpression()), !dbg !3741
  br i1 %10, label %12, label %6, !dbg !3747, !llvm.loop !3749

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3735, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %7, metadata !3735, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %7, metadata !3735, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %7, metadata !3735, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %7, metadata !3735, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %7, metadata !3735, metadata !DIExpression()), !dbg !3741
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3751
  ret void, !dbg !3752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3753 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3764, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i8* %1, metadata !3765, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i8* %2, metadata !3766, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8* %3, metadata !3767, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3768, metadata !DIExpression()), !dbg !3776
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3777
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3777
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3770, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 0, metadata !3769, metadata !DIExpression()), !dbg !3779
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3769, metadata !DIExpression()), !dbg !3779
  %11 = load i32, i32* %8, align 8, !dbg !3780
  %12 = icmp ult i32 %11, 41, !dbg !3780
  br i1 %12, label %13, label %18, !dbg !3780

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3780
  %15 = sext i32 %11 to i64, !dbg !3780
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3780
  %17 = add i32 %11, 8, !dbg !3780
  store i32 %17, i32* %8, align 8, !dbg !3780
  br label %21, !dbg !3780

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3780
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3780
  store i8* %20, i8** %10, align 8, !dbg !3780
  br label %21, !dbg !3780

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3780
  %25 = load i8*, i8** %24, align 8, !dbg !3780
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3783
  store i8* %25, i8** %26, align 16, !dbg !3784, !tbaa !672
  %27 = icmp eq i8* %25, null, !dbg !3785
  br i1 %27, label %30, label %28, !dbg !3786

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 1, metadata !3769, metadata !DIExpression()), !dbg !3779
  %29 = icmp ult i32 %22, 41, !dbg !3780
  br i1 %29, label %35, label %32, !dbg !3780

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3787
  call void @llvm.dbg.value(metadata i64 %31, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %31, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3788
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3789
  ret void, !dbg !3789

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3780
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3780
  store i8* %34, i8** %10, align 8, !dbg !3780
  br label %40, !dbg !3780

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3780
  %37 = sext i32 %22 to i64, !dbg !3780
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3780
  %39 = add i32 %22, 8, !dbg !3780
  store i32 %39, i32* %8, align 8, !dbg !3780
  br label %40, !dbg !3780

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3780
  %44 = load i8*, i8** %43, align 8, !dbg !3780
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3783
  store i8* %44, i8** %45, align 8, !dbg !3784, !tbaa !672
  %46 = icmp eq i8* %44, null, !dbg !3785
  br i1 %46, label %30, label %47, !dbg !3786

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 2, metadata !3769, metadata !DIExpression()), !dbg !3779
  %48 = icmp ult i32 %41, 41, !dbg !3780
  br i1 %48, label %52, label %49, !dbg !3780

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3780
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3780
  store i8* %51, i8** %10, align 8, !dbg !3780
  br label %57, !dbg !3780

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3780
  %54 = sext i32 %41 to i64, !dbg !3780
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3780
  %56 = add i32 %41, 8, !dbg !3780
  store i32 %56, i32* %8, align 8, !dbg !3780
  br label %57, !dbg !3780

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3780
  %61 = load i8*, i8** %60, align 8, !dbg !3780
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3783
  store i8* %61, i8** %62, align 16, !dbg !3784, !tbaa !672
  %63 = icmp eq i8* %61, null, !dbg !3785
  br i1 %63, label %30, label %64, !dbg !3786

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 3, metadata !3769, metadata !DIExpression()), !dbg !3779
  %65 = icmp ult i32 %58, 41, !dbg !3780
  br i1 %65, label %69, label %66, !dbg !3780

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3780
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3780
  store i8* %68, i8** %10, align 8, !dbg !3780
  br label %74, !dbg !3780

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3780
  %71 = sext i32 %58 to i64, !dbg !3780
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3780
  %73 = add i32 %58, 8, !dbg !3780
  store i32 %73, i32* %8, align 8, !dbg !3780
  br label %74, !dbg !3780

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3780
  %78 = load i8*, i8** %77, align 8, !dbg !3780
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3783
  store i8* %78, i8** %79, align 8, !dbg !3784, !tbaa !672
  %80 = icmp eq i8* %78, null, !dbg !3785
  br i1 %80, label %30, label %81, !dbg !3786

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 4, metadata !3769, metadata !DIExpression()), !dbg !3779
  %82 = icmp ult i32 %75, 41, !dbg !3780
  br i1 %82, label %86, label %83, !dbg !3780

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3780
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3780
  store i8* %85, i8** %10, align 8, !dbg !3780
  br label %91, !dbg !3780

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3780
  %88 = sext i32 %75 to i64, !dbg !3780
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3780
  %90 = add i32 %75, 8, !dbg !3780
  store i32 %90, i32* %8, align 8, !dbg !3780
  br label %91, !dbg !3780

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3780
  %95 = load i8*, i8** %94, align 8, !dbg !3780
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3783
  store i8* %95, i8** %96, align 16, !dbg !3784, !tbaa !672
  %97 = icmp eq i8* %95, null, !dbg !3785
  br i1 %97, label %30, label %98, !dbg !3786

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 5, metadata !3769, metadata !DIExpression()), !dbg !3779
  %99 = icmp ult i32 %92, 41, !dbg !3780
  br i1 %99, label %103, label %100, !dbg !3780

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3780
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3780
  store i8* %102, i8** %10, align 8, !dbg !3780
  br label %108, !dbg !3780

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3780
  %105 = sext i32 %92 to i64, !dbg !3780
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3780
  %107 = add i32 %92, 8, !dbg !3780
  store i32 %107, i32* %8, align 8, !dbg !3780
  br label %108, !dbg !3780

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3780
  %111 = load i8*, i8** %110, align 8, !dbg !3780
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3783
  store i8* %111, i8** %112, align 8, !dbg !3784, !tbaa !672
  %113 = icmp eq i8* %111, null, !dbg !3785
  br i1 %113, label %30, label %114, !dbg !3786

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 6, metadata !3769, metadata !DIExpression()), !dbg !3779
  %115 = load i8*, i8** %10, align 8, !dbg !3780
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3780
  store i8* %116, i8** %10, align 8, !dbg !3780
  %117 = bitcast i8* %115 to i8**, !dbg !3780
  %118 = load i8*, i8** %117, align 8, !dbg !3780
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3783
  store i8* %118, i8** %119, align 16, !dbg !3784, !tbaa !672
  %120 = icmp eq i8* %118, null, !dbg !3785
  br i1 %120, label %30, label %121, !dbg !3786

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 7, metadata !3769, metadata !DIExpression()), !dbg !3779
  %122 = load i8*, i8** %10, align 8, !dbg !3780
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3780
  store i8* %123, i8** %10, align 8, !dbg !3780
  %124 = bitcast i8* %122 to i8**, !dbg !3780
  %125 = load i8*, i8** %124, align 8, !dbg !3780
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3783
  store i8* %125, i8** %126, align 8, !dbg !3784, !tbaa !672
  %127 = icmp eq i8* %125, null, !dbg !3785
  br i1 %127, label %30, label %128, !dbg !3786

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 8, metadata !3769, metadata !DIExpression()), !dbg !3779
  %129 = load i8*, i8** %10, align 8, !dbg !3780
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3780
  store i8* %130, i8** %10, align 8, !dbg !3780
  %131 = bitcast i8* %129 to i8**, !dbg !3780
  %132 = load i8*, i8** %131, align 8, !dbg !3780
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3783
  store i8* %132, i8** %133, align 16, !dbg !3784, !tbaa !672
  %134 = icmp eq i8* %132, null, !dbg !3785
  br i1 %134, label %30, label %135, !dbg !3786

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 9, metadata !3769, metadata !DIExpression()), !dbg !3779
  %136 = load i8*, i8** %10, align 8, !dbg !3780
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3780
  store i8* %137, i8** %10, align 8, !dbg !3780
  %138 = bitcast i8* %136 to i8**, !dbg !3780
  %139 = load i8*, i8** %138, align 8, !dbg !3780
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3783
  store i8* %139, i8** %140, align 8, !dbg !3784, !tbaa !672
  %141 = icmp eq i8* %139, null, !dbg !3785
  %142 = select i1 %141, i64 9, i64 10, !dbg !3786
  br label %30, !dbg !3786
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3790 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3794, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8* %1, metadata !3795, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i8* %2, metadata !3796, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8* %3, metadata !3797, metadata !DIExpression()), !dbg !3807
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3808
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3808
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3798, metadata !DIExpression()), !dbg !3809
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3810
  call void @llvm.va_start(i8* nonnull %6), !dbg !3810
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3811
  call void @llvm.va_end(i8* nonnull %6), !dbg !3812
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3813
  ret void, !dbg !3813
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3814 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.108, i64 0, i64 0), i32 5) #11, !dbg !3815
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.109, i64 0, i64 0)) #11, !dbg !3815
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.110, i64 0, i64 0), i32 5) #11, !dbg !3816
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.111, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.112, i64 0, i64 0)) #11, !dbg !3816
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.113, i64 0, i64 0), i32 5) #11, !dbg !3817
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3817, !tbaa !672
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3817
  ret void, !dbg !3818
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3819 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3823, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()), !dbg !3826
  %3 = udiv i64 9223372036854775807, %1, !dbg !3827
  %4 = icmp ult i64 %3, %0, !dbg !3827
  br i1 %4, label %5, label %6, !dbg !3829

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3830
  unreachable, !dbg !3830

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %7, metadata !3832, metadata !DIExpression()) #11, !dbg !3839
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3841
  call void @llvm.dbg.value(metadata i8* %8, metadata !3838, metadata !DIExpression()) #11, !dbg !3842
  %9 = icmp eq i8* %8, null, !dbg !3843
  %10 = icmp ne i64 %7, 0, !dbg !3845
  %11 = and i1 %10, %9, !dbg !3846
  br i1 %11, label %12, label %13, !dbg !3846

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !3847
  unreachable, !dbg !3847

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3833 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3832, metadata !DIExpression()), !dbg !3849
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3850
  call void @llvm.dbg.value(metadata i8* %2, metadata !3838, metadata !DIExpression()), !dbg !3851
  %3 = icmp eq i8* %2, null, !dbg !3852
  %4 = icmp ne i64 %0, 0, !dbg !3853
  %5 = and i1 %4, %3, !dbg !3854
  br i1 %5, label %6, label %7, !dbg !3854

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3855
  unreachable, !dbg !3855

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3856
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %1, metadata !3862, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %2, metadata !3863, metadata !DIExpression()), !dbg !3866
  %4 = udiv i64 9223372036854775807, %2, !dbg !3867
  %5 = icmp ult i64 %4, %1, !dbg !3867
  br i1 %5, label %6, label %7, !dbg !3869

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !3870
  unreachable, !dbg !3870

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3871
  call void @llvm.dbg.value(metadata i8* %0, metadata !3872, metadata !DIExpression()) #11, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %8, metadata !3877, metadata !DIExpression()) #11, !dbg !3880
  %9 = icmp eq i64 %8, 0, !dbg !3881
  %10 = icmp ne i8* %0, null, !dbg !3883
  %11 = and i1 %10, %9, !dbg !3884
  br i1 %11, label %12, label %13, !dbg !3884

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3885
  br label %19, !dbg !3887

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3888
  call void @llvm.dbg.value(metadata i8* %14, metadata !3872, metadata !DIExpression()) #11, !dbg !3878
  %15 = icmp eq i8* %14, null, !dbg !3889
  %16 = icmp ne i64 %8, 0, !dbg !3891
  %17 = and i1 %16, %15, !dbg !3892
  br i1 %17, label %18, label %19, !dbg !3892

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3893
  unreachable, !dbg !3893

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3894
  ret i8* %20, !dbg !3895
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3873 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3872, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %1, metadata !3877, metadata !DIExpression()), !dbg !3897
  %3 = icmp eq i64 %1, 0, !dbg !3898
  %4 = icmp ne i8* %0, null, !dbg !3899
  %5 = and i1 %4, %3, !dbg !3900
  br i1 %5, label %6, label %7, !dbg !3900

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3901
  br label %13, !dbg !3902

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %8, metadata !3872, metadata !DIExpression()), !dbg !3896
  %9 = icmp eq i8* %8, null, !dbg !3904
  %10 = icmp ne i64 %1, 0, !dbg !3905
  %11 = and i1 %10, %9, !dbg !3906
  br i1 %11, label %12, label %13, !dbg !3906

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3907
  unreachable, !dbg !3907

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3908
  ret i8* %14, !dbg !3909
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !200 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !205, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64* %1, metadata !206, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %2, metadata !207, metadata !DIExpression()), !dbg !3912
  %4 = load i64, i64* %1, align 8, !dbg !3913, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %4, metadata !208, metadata !DIExpression()), !dbg !3914
  %5 = icmp eq i8* %0, null, !dbg !3915
  br i1 %5, label %6, label %20, !dbg !3917

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3918
  br i1 %7, label %8, label %13, !dbg !3921

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %9, metadata !208, metadata !DIExpression()), !dbg !3914
  %10 = icmp ugt i64 %2, 128, !dbg !3924
  %11 = zext i1 %10 to i64, !dbg !3924
  %12 = add nuw nsw i64 %9, %11, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %12, metadata !208, metadata !DIExpression()), !dbg !3914
  br label %13, !dbg !3926

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3927
  call void @llvm.dbg.value(metadata i64 %14, metadata !208, metadata !DIExpression()), !dbg !3914
  %15 = udiv i64 9223372036854775807, %2, !dbg !3928
  %16 = icmp ult i64 %15, %14, !dbg !3928
  br i1 %16, label %19, label %17, !dbg !3930

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !208, metadata !DIExpression()), !dbg !3914
  store i64 %14, i64* %1, align 8, !dbg !3931, !tbaa !932
  %18 = mul i64 %14, %2, !dbg !3932
  call void @llvm.dbg.value(metadata i8* %0, metadata !3872, metadata !DIExpression()) #11, !dbg !3933
  call void @llvm.dbg.value(metadata i64 %28, metadata !3877, metadata !DIExpression()) #11, !dbg !3935
  br label %31, !dbg !3936

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3937
  unreachable, !dbg !3937

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3938
  %22 = icmp ugt i64 %21, %4, !dbg !3941
  br i1 %22, label %24, label %23, !dbg !3942

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #16, !dbg !3943
  unreachable, !dbg !3943

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3944
  %26 = add i64 %4, 1, !dbg !3945
  %27 = add i64 %26, %25, !dbg !3946
  call void @llvm.dbg.value(metadata i64 %27, metadata !208, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %27, metadata !208, metadata !DIExpression()), !dbg !3914
  store i64 %27, i64* %1, align 8, !dbg !3931, !tbaa !932
  %28 = mul i64 %27, %2, !dbg !3932
  call void @llvm.dbg.value(metadata i8* %0, metadata !3872, metadata !DIExpression()) #11, !dbg !3933
  call void @llvm.dbg.value(metadata i64 %28, metadata !3877, metadata !DIExpression()) #11, !dbg !3935
  %29 = icmp eq i64 %28, 0, !dbg !3947
  br i1 %29, label %30, label %31, !dbg !3936

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3948
  br label %38, !dbg !3949

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3950
  call void @llvm.dbg.value(metadata i8* %33, metadata !3872, metadata !DIExpression()) #11, !dbg !3933
  %34 = icmp eq i8* %33, null, !dbg !3951
  %35 = icmp ne i64 %32, 0, !dbg !3952
  %36 = and i1 %35, %34, !dbg !3953
  br i1 %36, label %37, label %38, !dbg !3953

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #16, !dbg !3954
  unreachable, !dbg !3954

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3955
  ret i8* %39, !dbg !3956
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3957 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %0, metadata !3832, metadata !DIExpression()) #11, !dbg !3961
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3963
  call void @llvm.dbg.value(metadata i8* %2, metadata !3838, metadata !DIExpression()) #11, !dbg !3964
  %3 = icmp eq i8* %2, null, !dbg !3965
  %4 = icmp ne i64 %0, 0, !dbg !3966
  %5 = and i1 %4, %3, !dbg !3967
  br i1 %5, label %6, label %7, !dbg !3967

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3968
  unreachable, !dbg !3968

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3969
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3970 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3974, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64* %1, metadata !3975, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i8* %0, metadata !205, metadata !DIExpression()) #11, !dbg !3978
  call void @llvm.dbg.value(metadata i64* %1, metadata !206, metadata !DIExpression()) #11, !dbg !3980
  call void @llvm.dbg.value(metadata i64 1, metadata !207, metadata !DIExpression()) #11, !dbg !3981
  %3 = load i64, i64* %1, align 8, !dbg !3982, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %3, metadata !208, metadata !DIExpression()) #11, !dbg !3983
  %4 = icmp eq i8* %0, null, !dbg !3984
  br i1 %4, label %5, label %12, !dbg !3985

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3986
  br i1 %6, label %9, label %7, !dbg !3987

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !208, metadata !DIExpression()) #11, !dbg !3983
  %8 = icmp slt i64 %3, 0, !dbg !3988
  br i1 %8, label %11, label %9, !dbg !3989

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !208, metadata !DIExpression()) #11, !dbg !3983
  store i64 %10, i64* %1, align 8, !dbg !3990, !tbaa !932
  call void @llvm.dbg.value(metadata i8* %0, metadata !3872, metadata !DIExpression()) #11, !dbg !3991
  call void @llvm.dbg.value(metadata i64 %18, metadata !3877, metadata !DIExpression()) #11, !dbg !3993
  br label %21, !dbg !3994

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3995
  unreachable, !dbg !3995

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3996
  br i1 %13, label %15, label %14, !dbg !3997

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #16, !dbg !3998
  unreachable, !dbg !3998

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3999
  %17 = add i64 %3, 1, !dbg !4000
  %18 = add i64 %17, %16, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %18, metadata !208, metadata !DIExpression()) #11, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %18, metadata !208, metadata !DIExpression()) #11, !dbg !3983
  store i64 %18, i64* %1, align 8, !dbg !3990, !tbaa !932
  call void @llvm.dbg.value(metadata i8* %0, metadata !3872, metadata !DIExpression()) #11, !dbg !3991
  call void @llvm.dbg.value(metadata i64 %18, metadata !3877, metadata !DIExpression()) #11, !dbg !3993
  %19 = icmp eq i64 %18, 0, !dbg !4002
  br i1 %19, label %20, label %21, !dbg !3994

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !4003
  br label %28, !dbg !4004

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !4005
  call void @llvm.dbg.value(metadata i8* %23, metadata !3872, metadata !DIExpression()) #11, !dbg !3991
  %24 = icmp eq i8* %23, null, !dbg !4006
  %25 = icmp ne i64 %22, 0, !dbg !4007
  %26 = and i1 %25, %24, !dbg !4008
  br i1 %26, label %27, label %28, !dbg !4008

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #16, !dbg !4009
  unreachable, !dbg !4009

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4010
  ret i8* %29, !dbg !4011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4012 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %0, metadata !3832, metadata !DIExpression()) #11, !dbg !4016
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %2, metadata !3838, metadata !DIExpression()) #11, !dbg !4019
  %3 = icmp eq i8* %2, null, !dbg !4020
  %4 = icmp ne i64 %0, 0, !dbg !4021
  %5 = and i1 %4, %3, !dbg !4022
  br i1 %5, label %6, label %7, !dbg !4022

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4023
  unreachable, !dbg !4023

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4024
  ret i8* %2, !dbg !4025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4026 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4028, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4032
  %3 = udiv i64 9223372036854775807, %1, !dbg !4033
  %4 = icmp ult i64 %3, %0, !dbg !4033
  br i1 %4, label %8, label %5, !dbg !4035

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4036
  call void @llvm.dbg.value(metadata i8* %6, metadata !4030, metadata !DIExpression()), !dbg !4037
  %7 = icmp eq i8* %6, null, !dbg !4038
  br i1 %7, label %8, label %9, !dbg !4039

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !4040
  unreachable, !dbg !4040

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4042 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4048, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %1, metadata !4049, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3832, metadata !DIExpression()) #11, !dbg !4052
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4054
  call void @llvm.dbg.value(metadata i8* %3, metadata !3838, metadata !DIExpression()) #11, !dbg !4055
  %4 = icmp eq i8* %3, null, !dbg !4056
  %5 = icmp ne i64 %1, 0, !dbg !4057
  %6 = and i1 %5, %4, !dbg !4058
  br i1 %6, label %7, label %8, !dbg !4058

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4059
  unreachable, !dbg !4059

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4060
  ret i8* %3, !dbg !4061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4062 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4064, metadata !DIExpression()), !dbg !4065
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !4066
  %3 = add i64 %2, 1, !dbg !4067
  call void @llvm.dbg.value(metadata i8* %0, metadata !4048, metadata !DIExpression()) #11, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %3, metadata !4049, metadata !DIExpression()) #11, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %3, metadata !3832, metadata !DIExpression()) #11, !dbg !4071
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4073
  call void @llvm.dbg.value(metadata i8* %4, metadata !3838, metadata !DIExpression()) #11, !dbg !4074
  %5 = icmp eq i8* %4, null, !dbg !4075
  %6 = icmp ne i64 %3, 0, !dbg !4076
  %7 = and i1 %6, %5, !dbg !4077
  br i1 %7, label %8, label %9, !dbg !4077

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4078
  unreachable, !dbg !4078

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4079
  ret i8* %4, !dbg !4080
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4081 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4083, !tbaa !878
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.124, i64 0, i64 0), i32 5) #11, !dbg !4084
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), i8* %2) #11, !dbg !4085
  tail call void @abort() #16, !dbg !4086
  unreachable, !dbg !4086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !4087 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4092, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i32 %1, metadata !4093, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %2, metadata !4094, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 %3, metadata !4095, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i8* %4, metadata !4096, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8* %5, metadata !4097, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i32 %6, metadata !4098, metadata !DIExpression()), !dbg !4108
  %9 = bitcast i64* %8 to i8*, !dbg !4109
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !4109
  call void @llvm.dbg.value(metadata i64* %8, metadata !4101, metadata !DIExpression(DW_OP_deref)), !dbg !4110
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !4111
  call void @llvm.dbg.value(metadata i32 %10, metadata !4099, metadata !DIExpression()), !dbg !4112
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4113

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #18, !dbg !4114
  br label %27, !dbg !4113

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4117, !tbaa !932
  call void @llvm.dbg.value(metadata i64 %14, metadata !4101, metadata !DIExpression()), !dbg !4110
  %15 = icmp ult i64 %14, %2, !dbg !4121
  %16 = icmp ugt i64 %14, %3, !dbg !4122
  %17 = or i1 %15, %16, !dbg !4123
  br i1 %17, label %18, label %36, !dbg !4123

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4099, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %14, metadata !4101, metadata !DIExpression()), !dbg !4110
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4124
  %20 = tail call i32* @__errno_location() #18, !dbg !4127
  br i1 %19, label %21, label %22, !dbg !4128

; <label>:21:                                     ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4129, !tbaa !878
  br label %27, !dbg !4130

; <label>:22:                                     ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4131, !tbaa !878
  br label %27

; <label>:23:                                     ; preds = %7
  %24 = tail call i32* @__errno_location() #18, !dbg !4132
  store i32 75, i32* %24, align 4, !dbg !4134, !tbaa !878
  br label %27, !dbg !4132

; <label>:25:                                     ; preds = %7
  %26 = tail call i32* @__errno_location() #18, !dbg !4135
  store i32 0, i32* %26, align 4, !dbg !4137, !tbaa !878
  br label %27, !dbg !4135

; <label>:27:                                     ; preds = %11, %21, %22, %23, %25
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %24, %23 ], [ %26, %25 ], !dbg !4114
  %29 = icmp eq i32 %6, 0, !dbg !4138
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4138
  %31 = load i32, i32* %28, align 4, !dbg !4114, !tbaa !878
  %32 = icmp eq i32 %31, 22, !dbg !4139
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4114
  %34 = call i8* @quote(i8* %0) #11, !dbg !4140
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i64 0, i64 0), i8* %5, i8* %34) #11, !dbg !4141
  %35 = load i64, i64* %8, align 8, !dbg !4142, !tbaa !932
  br label %36, !dbg !4143

; <label>:36:                                     ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4142
  call void @llvm.dbg.value(metadata i64 %37, metadata !4101, metadata !DIExpression()), !dbg !4110
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !4144
  ret i64 %37, !dbg !4145
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !4146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4150, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 %1, metadata !4151, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %2, metadata !4152, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i8* %3, metadata !4153, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i8* %4, metadata !4154, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i32 %5, metadata !4155, metadata !DIExpression()), !dbg !4161
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4162
  ret i64 %7, !dbg !4163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !4164 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4170, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i8** %1, metadata !4171, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 %2, metadata !4172, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata i64* %3, metadata !4173, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i8* %4, metadata !4174, metadata !DIExpression()), !dbg !4192
  %7 = bitcast i8** %6 to i8*, !dbg !4193
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4193
  call void @llvm.dbg.value(metadata i32 0, metadata !4178, metadata !DIExpression()), !dbg !4194
  %8 = icmp ult i32 %2, 37, !dbg !4195
  br i1 %8, label %10, label %9, !dbg !4195

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.132, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #16, !dbg !4195
  unreachable, !dbg !4195

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4198
  call void @llvm.dbg.value(metadata i8** %25, metadata !4176, metadata !DIExpression()), !dbg !4199
  %12 = tail call i32* @__errno_location() #18, !dbg !4200
  store i32 0, i32* %12, align 4, !dbg !4201, !tbaa !878
  call void @llvm.dbg.value(metadata i8* %0, metadata !4179, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i8* %0, metadata !4182, metadata !DIExpression(DW_OP_deref)), !dbg !4203
  %13 = tail call i16** @__ctype_b_loc() #18, !dbg !4204
  %14 = load i16*, i16** %13, align 8, !tbaa !672
  br label %15, !dbg !4205

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4206
  %17 = load i8, i8* %16, align 1, !dbg !4206, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %17, metadata !4182, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i8* %16, metadata !4179, metadata !DIExpression()), !dbg !4202
  %18 = zext i8 %17 to i64, !dbg !4204
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4204
  %20 = load i16, i16* %19, align 2, !dbg !4204, !tbaa !2349
  %21 = and i16 %20, 8192, !dbg !4204
  %22 = icmp eq i16 %21, 0, !dbg !4205
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %23, metadata !4179, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i8* %23, metadata !4182, metadata !DIExpression(DW_OP_deref)), !dbg !4203
  br i1 %22, label %24, label %15, !dbg !4205, !llvm.loop !4208

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4198
  %26 = icmp eq i8 %17, 45, !dbg !4210
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4212, metadata !DIExpression()) #11, !dbg !4221
  call void @llvm.dbg.value(metadata i8** %25, metadata !4219, metadata !DIExpression()) #11, !dbg !4221
  call void @llvm.dbg.value(metadata i32 %2, metadata !4220, metadata !DIExpression()) #11, !dbg !4221
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %28, metadata !4177, metadata !DIExpression()), !dbg !4224
  %29 = load i8*, i8** %25, align 8, !dbg !4225, !tbaa !672
  %30 = icmp eq i8* %29, %0, !dbg !4227
  br i1 %30, label %31, label %40, !dbg !4228

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4229
  br i1 %32, label %265, label %33, !dbg !4232

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4233, !tbaa !943
  %35 = icmp eq i8 %34, 0, !dbg !4233
  br i1 %35, label %265, label %36, !dbg !4234

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4233
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #15, !dbg !4235
  %39 = icmp eq i8* %38, null, !dbg !4235
  br i1 %39, label %265, label %47, !dbg !4236

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4237, !tbaa !878
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4239

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4178, metadata !DIExpression()), !dbg !4194
  br label %43, !dbg !4240

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4242
  call void @llvm.dbg.value(metadata i32 %44, metadata !4178, metadata !DIExpression()), !dbg !4194
  %45 = icmp eq i8* %4, null, !dbg !4243
  br i1 %45, label %46, label %47, !dbg !4245

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4177, metadata !DIExpression()), !dbg !4224
  store i64 %28, i64* %3, align 8, !dbg !4246, !tbaa !932
  br label %265, !dbg !4248

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4249, !tbaa !943
  %51 = sext i8 %50 to i32, !dbg !4249
  %52 = icmp eq i8 %50, 0, !dbg !4250
  br i1 %52, label %262, label %53, !dbg !4251

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4183, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 1, metadata !4186, metadata !DIExpression()), !dbg !4253
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #15, !dbg !4254
  %55 = icmp eq i8* %54, null, !dbg !4254
  br i1 %55, label %56, label %58, !dbg !4256

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4177, metadata !DIExpression()), !dbg !4224
  store i64 %49, i64* %3, align 8, !dbg !4257, !tbaa !932
  %57 = or i32 %48, 2, !dbg !4259
  br label %265, !dbg !4260

; <label>:58:                                     ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !4261

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #15, !dbg !4262
  %61 = icmp eq i8* %60, null, !dbg !4262
  br i1 %61, label %72, label %62, !dbg !4265

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4266
  %64 = load i8, i8* %63, align 1, !dbg !4266, !tbaa !943
  %65 = sext i8 %64 to i32, !dbg !4266
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4267

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4268
  %68 = load i8, i8* %67, align 1, !dbg !4268, !tbaa !943
  %69 = icmp eq i8 %68, 66, !dbg !4271
  %70 = select i1 %69, i64 3, i64 1, !dbg !4272
  br label %72, !dbg !4272

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4183, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 2, metadata !4186, metadata !DIExpression()), !dbg !4253
  br label %72, !dbg !4273

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  switch i32 %51, label %251 [
    i32 98, label %75
    i32 66, label %80
    i32 99, label %253
    i32 69, label %85
    i32 71, label %111
    i32 103, label %111
    i32 107, label %125
    i32 75, label %125
    i32 77, label %131
    i32 109, label %131
    i32 80, label %141
    i32 84, label %163
    i32 116, label %163
    i32 119, label %181
    i32 89, label %187
    i32 90, label %221
  ], !dbg !4274

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4275, metadata !DIExpression()), !dbg !4281
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4284
  %77 = shl i64 %49, 9, !dbg !4286
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4287
  %79 = zext i1 %76 to i32, !dbg !4287
  call void @llvm.dbg.value(metadata i32 %79, metadata !4187, metadata !DIExpression()), !dbg !4288
  br label %253, !dbg !4289

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4275, metadata !DIExpression()), !dbg !4290
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4292
  %82 = shl i64 %49, 10, !dbg !4293
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4294
  %84 = zext i1 %81 to i32, !dbg !4294
  call void @llvm.dbg.value(metadata i32 %84, metadata !4187, metadata !DIExpression()), !dbg !4288
  br label %253, !dbg !4295

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !4296, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4306
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 6, metadata !4296, metadata !DIExpression()), !dbg !4304
  %87 = icmp ult i64 %86, %49, !dbg !4307
  %88 = mul i64 %49, %73, !dbg !4309
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4310
  call void @llvm.dbg.value(metadata i32 5, metadata !4296, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 5, metadata !4296, metadata !DIExpression()), !dbg !4304
  %90 = icmp ult i64 %86, %89, !dbg !4307
  %91 = mul i64 %89, %73, !dbg !4309
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4310
  %93 = or i1 %87, %90, !dbg !4311
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4304
  %94 = icmp ult i64 %86, %92, !dbg !4307
  %95 = mul i64 %92, %73, !dbg !4309
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4310
  %97 = or i1 %93, %94, !dbg !4311
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4304
  %98 = icmp ult i64 %86, %96, !dbg !4307
  %99 = mul i64 %96, %73, !dbg !4309
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4310
  %101 = or i1 %97, %98, !dbg !4311
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4304
  %102 = icmp ult i64 %86, %100, !dbg !4307
  %103 = mul i64 %100, %73, !dbg !4309
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4310
  %105 = or i1 %101, %102, !dbg !4311
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4304
  %106 = icmp ult i64 %86, %104, !dbg !4307
  %107 = mul i64 %104, %73, !dbg !4309
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4310
  %109 = or i1 %105, %106, !dbg !4311
  %110 = zext i1 %109 to i32, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %110, metadata !4303, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4296, metadata !DIExpression()), !dbg !4304
  br label %253, !dbg !4312

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4315
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4313
  %113 = icmp ult i64 %112, %49, !dbg !4316
  %114 = mul i64 %49, %73, !dbg !4318
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4319
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4313
  %116 = icmp ult i64 %112, %115, !dbg !4316
  %117 = mul i64 %115, %73, !dbg !4318
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4319
  %119 = or i1 %113, %116, !dbg !4320
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4313
  %120 = icmp ult i64 %112, %118, !dbg !4316
  %121 = mul i64 %118, %73, !dbg !4318
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4319
  %123 = or i1 %119, %120, !dbg !4320
  %124 = zext i1 %123 to i32, !dbg !4320
  call void @llvm.dbg.value(metadata i32 %124, metadata !4303, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 0, metadata !4296, metadata !DIExpression()), !dbg !4313
  br label %253, !dbg !4312

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4323
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 undef, metadata !4296, metadata !DIExpression()), !dbg !4321
  %127 = icmp ult i64 %126, %49, !dbg !4324
  %128 = mul i64 %49, %73, !dbg !4326
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4327
  %130 = zext i1 %127 to i32, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %130, metadata !4303, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 undef, metadata !4296, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4321
  br label %253, !dbg !4312

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4330
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4328
  %133 = icmp ult i64 %132, %49, !dbg !4331
  %134 = mul i64 %49, %73, !dbg !4333
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4334
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4328
  %136 = icmp ult i64 %132, %135, !dbg !4331
  %137 = mul i64 %135, %73, !dbg !4333
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4334
  %139 = or i1 %133, %136, !dbg !4335
  %140 = zext i1 %139 to i32, !dbg !4335
  call void @llvm.dbg.value(metadata i32 %140, metadata !4303, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 0, metadata !4296, metadata !DIExpression()), !dbg !4328
  br label %253, !dbg !4312

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !4296, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4338
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 5, metadata !4296, metadata !DIExpression()), !dbg !4336
  %143 = icmp ult i64 %142, %49, !dbg !4339
  %144 = mul i64 %49, %73, !dbg !4341
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4342
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4336
  %146 = icmp ult i64 %142, %145, !dbg !4339
  %147 = mul i64 %145, %73, !dbg !4341
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4342
  %149 = or i1 %143, %146, !dbg !4343
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4336
  %150 = icmp ult i64 %142, %148, !dbg !4339
  %151 = mul i64 %148, %73, !dbg !4341
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4342
  %153 = or i1 %149, %150, !dbg !4343
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4336
  %154 = icmp ult i64 %142, %152, !dbg !4339
  %155 = mul i64 %152, %73, !dbg !4341
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4342
  %157 = or i1 %153, %154, !dbg !4343
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4336
  %158 = icmp ult i64 %142, %156, !dbg !4339
  %159 = mul i64 %156, %73, !dbg !4341
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4342
  %161 = or i1 %157, %158, !dbg !4343
  %162 = zext i1 %161 to i32, !dbg !4343
  call void @llvm.dbg.value(metadata i32 %162, metadata !4303, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 0, metadata !4296, metadata !DIExpression()), !dbg !4336
  br label %253, !dbg !4312

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4346
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4344
  %165 = icmp ult i64 %164, %49, !dbg !4347
  %166 = mul i64 %49, %73, !dbg !4349
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4350
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4344
  %168 = icmp ult i64 %164, %167, !dbg !4347
  %169 = mul i64 %167, %73, !dbg !4349
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4350
  %171 = or i1 %165, %168, !dbg !4351
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4344
  %172 = icmp ult i64 %164, %170, !dbg !4347
  %173 = mul i64 %170, %73, !dbg !4349
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4350
  %175 = or i1 %171, %172, !dbg !4351
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4344
  %176 = icmp ult i64 %164, %174, !dbg !4347
  %177 = mul i64 %174, %73, !dbg !4349
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4350
  %179 = or i1 %175, %176, !dbg !4351
  %180 = zext i1 %179 to i32, !dbg !4351
  call void @llvm.dbg.value(metadata i32 %180, metadata !4303, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 0, metadata !4296, metadata !DIExpression()), !dbg !4344
  br label %253, !dbg !4312

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4275, metadata !DIExpression()), !dbg !4352
  %182 = icmp slt i64 %49, 0, !dbg !4354
  %183 = shl i64 %49, 1, !dbg !4355
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4356
  %185 = lshr i64 %49, 63, !dbg !4356
  %186 = trunc i64 %185 to i32, !dbg !4356
  call void @llvm.dbg.value(metadata i32 %186, metadata !4187, metadata !DIExpression()), !dbg !4288
  br label %253, !dbg !4357

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !4296, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4360
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 8, metadata !4296, metadata !DIExpression()), !dbg !4358
  %189 = icmp ult i64 %188, %49, !dbg !4361
  %190 = mul i64 %49, %73, !dbg !4363
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4364
  call void @llvm.dbg.value(metadata i32 7, metadata !4296, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 7, metadata !4296, metadata !DIExpression()), !dbg !4358
  %192 = icmp ult i64 %188, %191, !dbg !4361
  %193 = mul i64 %191, %73, !dbg !4363
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4364
  %195 = or i1 %189, %192, !dbg !4365
  call void @llvm.dbg.value(metadata i32 6, metadata !4296, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 6, metadata !4296, metadata !DIExpression()), !dbg !4358
  %196 = icmp ult i64 %188, %194, !dbg !4361
  %197 = mul i64 %194, %73, !dbg !4363
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4364
  %199 = or i1 %195, %196, !dbg !4365
  call void @llvm.dbg.value(metadata i32 5, metadata !4296, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 5, metadata !4296, metadata !DIExpression()), !dbg !4358
  %200 = icmp ult i64 %188, %198, !dbg !4361
  %201 = mul i64 %198, %73, !dbg !4363
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4364
  %203 = or i1 %199, %200, !dbg !4365
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4358
  %204 = icmp ult i64 %188, %202, !dbg !4361
  %205 = mul i64 %202, %73, !dbg !4363
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4364
  %207 = or i1 %203, %204, !dbg !4365
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4358
  %208 = icmp ult i64 %188, %206, !dbg !4361
  %209 = mul i64 %206, %73, !dbg !4363
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4364
  %211 = or i1 %207, %208, !dbg !4365
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4358
  %212 = icmp ult i64 %188, %210, !dbg !4361
  %213 = mul i64 %210, %73, !dbg !4363
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4364
  %215 = or i1 %211, %212, !dbg !4365
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4358
  %216 = icmp ult i64 %188, %214, !dbg !4361
  %217 = mul i64 %214, %73, !dbg !4363
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4364
  %219 = or i1 %215, %216, !dbg !4365
  %220 = zext i1 %219 to i32, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %220, metadata !4303, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 0, metadata !4296, metadata !DIExpression()), !dbg !4358
  br label %253, !dbg !4312

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !4296, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4368
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i32 7, metadata !4296, metadata !DIExpression()), !dbg !4366
  %223 = icmp ult i64 %222, %49, !dbg !4369
  %224 = mul i64 %49, %73, !dbg !4371
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4372
  call void @llvm.dbg.value(metadata i32 6, metadata !4296, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 6, metadata !4296, metadata !DIExpression()), !dbg !4366
  %226 = icmp ult i64 %222, %225, !dbg !4369
  %227 = mul i64 %225, %73, !dbg !4371
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4372
  %229 = or i1 %223, %226, !dbg !4373
  call void @llvm.dbg.value(metadata i32 5, metadata !4296, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 5, metadata !4296, metadata !DIExpression()), !dbg !4366
  %230 = icmp ult i64 %222, %228, !dbg !4369
  %231 = mul i64 %228, %73, !dbg !4371
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4372
  %233 = or i1 %229, %230, !dbg !4373
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 4, metadata !4296, metadata !DIExpression()), !dbg !4366
  %234 = icmp ult i64 %222, %232, !dbg !4369
  %235 = mul i64 %232, %73, !dbg !4371
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4372
  %237 = or i1 %233, %234, !dbg !4373
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 3, metadata !4296, metadata !DIExpression()), !dbg !4366
  %238 = icmp ult i64 %222, %236, !dbg !4369
  %239 = mul i64 %236, %73, !dbg !4371
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4372
  %241 = or i1 %237, %238, !dbg !4373
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 2, metadata !4296, metadata !DIExpression()), !dbg !4366
  %242 = icmp ult i64 %222, %240, !dbg !4369
  %243 = mul i64 %240, %73, !dbg !4371
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4372
  %245 = or i1 %241, %242, !dbg !4373
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 1, metadata !4296, metadata !DIExpression()), !dbg !4366
  %246 = icmp ult i64 %222, %244, !dbg !4369
  %247 = mul i64 %244, %73, !dbg !4371
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4372
  %249 = or i1 %245, %246, !dbg !4373
  %250 = zext i1 %249 to i32, !dbg !4373
  call void @llvm.dbg.value(metadata i32 %250, metadata !4303, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i32 0, metadata !4296, metadata !DIExpression()), !dbg !4366
  br label %253, !dbg !4312

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4177, metadata !DIExpression()), !dbg !4224
  store i64 %49, i64* %3, align 8, !dbg !4374, !tbaa !932
  %252 = or i32 %48, 2, !dbg !4375
  br label %265, !dbg !4376

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !4377
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !4378
  call void @llvm.dbg.value(metadata i32 %255, metadata !4187, metadata !DIExpression()), !dbg !4288
  %256 = or i32 %255, %48, !dbg !4312
  call void @llvm.dbg.value(metadata i32 %256, metadata !4178, metadata !DIExpression()), !dbg !4194
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4379
  store i8* %257, i8** %25, align 8, !dbg !4379, !tbaa !672
  %258 = load i8, i8* %257, align 1, !dbg !4380, !tbaa !943
  %259 = icmp eq i8 %258, 0, !dbg !4380
  %260 = or i32 %256, 2, !dbg !4382
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4383
  call void @llvm.dbg.value(metadata i32 %261, metadata !4178, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i32 %261, metadata !4178, metadata !DIExpression()), !dbg !4194
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !4384
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !4194
  call void @llvm.dbg.value(metadata i32 %264, metadata !4178, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %263, metadata !4177, metadata !DIExpression()), !dbg !4224
  store i64 %263, i64* %3, align 8, !dbg !4385, !tbaa !932
  br label %265, !dbg !4386

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !4387
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4388
  ret i32 %266, !dbg !4388
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4389 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4392, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %1, metadata !4393, metadata !DIExpression()), !dbg !4399
  %3 = icmp eq i64 %0, 0, !dbg !4400
  %4 = icmp eq i64 %1, 0, !dbg !4401
  %5 = or i1 %3, %4, !dbg !4402
  br i1 %5, label %12, label %6, !dbg !4402

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %7, metadata !4395, metadata !DIExpression()), !dbg !4404
  %8 = udiv i64 %7, %1, !dbg !4405
  %9 = icmp eq i64 %8, %0, !dbg !4407
  br i1 %9, label %12, label %10, !dbg !4408

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !4409
  store i32 12, i32* %11, align 4, !dbg !4411, !tbaa !878
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4392, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %13, metadata !4393, metadata !DIExpression()), !dbg !4399
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4412
  call void @llvm.dbg.value(metadata i8* %15, metadata !4394, metadata !DIExpression()), !dbg !4413
  br label %16, !dbg !4414

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4415
  ret i8* %17, !dbg !4416
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4417 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4456, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 0, metadata !4457, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i32 0, metadata !4459, metadata !DIExpression()), !dbg !4462
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %2, metadata !4458, metadata !DIExpression()), !dbg !4464
  %3 = icmp slt i32 %2, 0, !dbg !4465
  br i1 %3, label %4, label %6, !dbg !4467

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4468
  br label %24, !dbg !4469

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4470
  %8 = icmp eq i32 %7, 0, !dbg !4470
  br i1 %8, label %13, label %9, !dbg !4472

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4473
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4474
  %12 = icmp eq i64 %11, -1, !dbg !4475
  br i1 %12, label %16, label %13, !dbg !4476

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4477
  %15 = icmp eq i32 %14, 0, !dbg !4477
  br i1 %15, label %16, label %18, !dbg !4478

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4457, metadata !DIExpression()), !dbg !4461
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4479
  call void @llvm.dbg.value(metadata i32 %21, metadata !4459, metadata !DIExpression()), !dbg !4462
  br label %24, !dbg !4480

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !4481
  %20 = load i32, i32* %19, align 4, !dbg !4481, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %20, metadata !4457, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i32 %20, metadata !4457, metadata !DIExpression()), !dbg !4461
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4479
  call void @llvm.dbg.value(metadata i32 %21, metadata !4459, metadata !DIExpression()), !dbg !4462
  %22 = icmp eq i32 %20, 0, !dbg !4482
  br i1 %22, label %24, label %23, !dbg !4480

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4484, !tbaa !878
  call void @llvm.dbg.value(metadata i32 -1, metadata !4459, metadata !DIExpression()), !dbg !4462
  br label %24, !dbg !4486

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4487
  ret i32 %25, !dbg !4488
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4489 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4528, metadata !DIExpression()), !dbg !4529
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4530
  br i1 %2, label %6, label %3, !dbg !4532

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4533
  %5 = icmp eq i32 %4, 0, !dbg !4533
  br i1 %5, label %6, label %8, !dbg !4534

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4535
  br label %17, !dbg !4536

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4537, metadata !DIExpression()) #11, !dbg !4542
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4544
  %10 = load i32, i32* %9, align 8, !dbg !4544, !tbaa !971
  %11 = and i32 %10, 256, !dbg !4546
  %12 = icmp eq i32 %11, 0, !dbg !4546
  br i1 %12, label %15, label %13, !dbg !4547

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4548
  br label %15, !dbg !4548

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4549
  br label %17, !dbg !4550

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4551
  ret i32 %18, !dbg !4552
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4553 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4592, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 %1, metadata !4593, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 %2, metadata !4594, metadata !DIExpression()), !dbg !4600
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4601
  %5 = load i8*, i8** %4, align 8, !dbg !4601, !tbaa !4602
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4603
  %7 = load i8*, i8** %6, align 8, !dbg !4603, !tbaa !4604
  %8 = icmp eq i8* %5, %7, !dbg !4605
  br i1 %8, label %9, label %28, !dbg !4606

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4607
  %11 = load i8*, i8** %10, align 8, !dbg !4607, !tbaa !1114
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4608
  %13 = load i8*, i8** %12, align 8, !dbg !4608, !tbaa !4609
  %14 = icmp eq i8* %11, %13, !dbg !4610
  br i1 %14, label %15, label %28, !dbg !4611

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4612
  %17 = load i8*, i8** %16, align 8, !dbg !4612, !tbaa !4613
  %18 = icmp eq i8* %17, null, !dbg !4614
  br i1 %18, label %19, label %28, !dbg !4615

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4616
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4617
  call void @llvm.dbg.value(metadata i64 %21, metadata !4595, metadata !DIExpression()), !dbg !4618
  %22 = icmp eq i64 %21, -1, !dbg !4619
  br i1 %22, label %30, label %23, !dbg !4621

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4622
  %25 = load i32, i32* %24, align 8, !dbg !4623, !tbaa !971
  %26 = and i32 %25, -17, !dbg !4623
  store i32 %26, i32* %24, align 8, !dbg !4623, !tbaa !971
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4624
  store i64 %21, i64* %27, align 8, !dbg !4625, !tbaa !4626
  br label %30, !dbg !4627

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4628
  br label %30, !dbg !4629

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4630
  ret i32 %31, !dbg !4631
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4632 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4649, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.value(metadata i8* %1, metadata !4650, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %2, metadata !4651, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4652, metadata !DIExpression()), !dbg !4661
  %6 = bitcast i32* %5 to i8*, !dbg !4662
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4662
  %7 = icmp eq i32* %0, null, !dbg !4663
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4665
  call void @llvm.dbg.value(metadata i32* %8, metadata !4649, metadata !DIExpression()), !dbg !4658
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4666
  call void @llvm.dbg.value(metadata i64 %9, metadata !4653, metadata !DIExpression()), !dbg !4667
  %10 = icmp ugt i64 %9, -3, !dbg !4668
  %11 = icmp ne i64 %2, 0, !dbg !4669
  %12 = and i1 %11, %10, !dbg !4670
  br i1 %12, label %13, label %18, !dbg !4670

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4671
  br i1 %14, label %18, label %15, !dbg !4672

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4673, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %16, metadata !4655, metadata !DIExpression()), !dbg !4674
  %17 = zext i8 %16 to i32, !dbg !4675
  store i32 %17, i32* %8, align 4, !dbg !4676, !tbaa !878
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4677
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4678
  ret i64 %19, !dbg !4678
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4679 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4718, metadata !DIExpression()), !dbg !4723
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4724
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4725, metadata !DIExpression()), !dbg !4728
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4730
  %4 = load i32, i32* %3, align 8, !dbg !4730, !tbaa !971
  %5 = and i32 %4, 32, !dbg !4730
  %6 = icmp eq i32 %5, 0, !dbg !4731
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4732
  %8 = icmp ne i32 %7, 0, !dbg !4733
  br i1 %6, label %9, label %19, !dbg !4734

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4736
  %11 = xor i1 %8, true, !dbg !4737
  %12 = or i1 %10, %11, !dbg !4737
  %13 = sext i1 %8 to i32, !dbg !4737
  br i1 %12, label %22, label %14, !dbg !4737

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !4738
  %16 = load i32, i32* %15, align 4, !dbg !4738, !tbaa !878
  %17 = icmp ne i32 %16, 9, !dbg !4739
  %18 = sext i1 %17 to i32, !dbg !4740
  br label %22, !dbg !4740

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4741

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !4743
  store i32 0, i32* %21, align 4, !dbg !4745, !tbaa !878
  br label %22, !dbg !4743

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4746
  ret i32 %23, !dbg !4747
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4748 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4753, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i8 1, metadata !4754, metadata !DIExpression()), !dbg !4757
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4758
  call void @llvm.dbg.value(metadata i8* %2, metadata !4755, metadata !DIExpression()), !dbg !4759
  %3 = icmp eq i8* %2, null, !dbg !4760
  br i1 %3, label %11, label %4, !dbg !4762

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0)) #15, !dbg !4763
  %6 = icmp eq i32 %5, 0, !dbg !4768
  br i1 %6, label %10, label %7, !dbg !4769

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0)) #15, !dbg !4770
  %9 = icmp eq i32 %8, 0, !dbg !4771
  br i1 %9, label %10, label %11, !dbg !4772

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4754, metadata !DIExpression()), !dbg !4757
  br label %11, !dbg !4773

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4775 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4781
  call void @llvm.dbg.value(metadata i8* %1, metadata !4780, metadata !DIExpression()), !dbg !4782
  %2 = icmp eq i8* %1, null, !dbg !4783
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.151, i64 0, i64 0), i8* %1, !dbg !4785
  call void @llvm.dbg.value(metadata i8* %3, metadata !4780, metadata !DIExpression()), !dbg !4782
  %4 = load i8, i8* %3, align 1, !dbg !4786, !tbaa !943
  %5 = icmp eq i8 %4, 0, !dbg !4790
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i8* %3, !dbg !4791
  call void @llvm.dbg.value(metadata i8* %6, metadata !4780, metadata !DIExpression()), !dbg !4782
  ret i8* %6, !dbg !4792
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
attributes #9 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !52, !67, !88, !97, !184, !104, !110, !187, !177, !195, !212, !214, !225, !229, !231, !233, !235, !237, !240, !242, !244}
!llvm.ident = !{!633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633}
!llvm.module.flags = !{!634, !635, !636, !637, !638}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 47, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !34)
!3 = !DIFile(filename: "src/base64.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!29 = !{!30, !32, !33}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !{!0}
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1536, elements: !48)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !38, line: 50, size: 256, elements: !39)
!38 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!39 = !{!40, !43, !45, !47}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !38, line: 52, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !37, file: !38, line: 55, baseType: !44, size: 32, offset: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !37, file: !38, line: 56, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !37, file: !38, line: 57, baseType: !44, size: 32, offset: 192)
!48 = !{!49}
!49 = !DISubrange(count: 6)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "Version", scope: !52, file: !53, line: 2, type: !41, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !55)
!53 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!54 = !{}
!55 = !{!50}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "b32str", scope: !58, file: !59, line: 68, type: !83, isLocal: true, isDefinition: true)
!58 = distinct !DISubprogram(name: "base32_encode", scope: !59, file: !59, line: 65, type: !60, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !67, retainedNodes: !78)
!59 = !DIFile(filename: "lib/base32.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !63, !66, !63}
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 62, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !69, globals: !70)
!68 = !DIFile(filename: "./lib/base32.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!69 = !{!32, !30}
!70 = !{!56, !71}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "b32", scope: !67, file: !59, line: 209, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, elements: !76)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !{!77}
!77 = !DISubrange(count: 256)
!78 = !{!79, !80, !81, !82}
!79 = !DILocalVariable(name: "in", arg: 1, scope: !58, file: !59, line: 65, type: !62)
!80 = !DILocalVariable(name: "inlen", arg: 2, scope: !58, file: !59, line: 65, type: !63)
!81 = !DILocalVariable(name: "out", arg: 3, scope: !58, file: !59, line: 66, type: !66)
!82 = !DILocalVariable(name: "outlen", arg: 4, scope: !58, file: !59, line: 66, type: !63)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 32)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "file_name", scope: !88, file: !93, line: 46, type: !41, isLocal: true, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !90)
!89 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!90 = !{!86, !91}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !88, file: !93, line: 56, type: !94, isLocal: true, isDefinition: true)
!93 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!94 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "exit_failure", scope: !97, file: !100, line: 24, type: !101, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !99)
!98 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!99 = !{!95}
!100 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "program_name", scope: !104, file: !107, line: 33, type: !41, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !69, globals: !106)
!105 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!106 = !{!102}
!107 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !110, file: !138, line: 85, type: !171, isLocal: false, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !133, globals: !135)
!111 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!112 = !{!5, !113, !118}
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 46, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!121 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!122 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!125 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!126 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!127 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!128 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!129 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!132 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!133 = !{!44, !134, !63, !30}
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !{!108, !136, !143, !155, !157, !160, !167, !169}
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !110, file: !138, line: 101, type: !139, isLocal: false, isDefinition: true)
!138 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 320, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!141 = !{!142}
!142 = !DISubrange(count: 10)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !110, file: !138, line: 1052, type: !145, isLocal: false, isDefinition: true)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !138, line: 65, size: 448, elements: !146)
!146 = !{!147, !148, !149, !153, !154}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !145, file: !138, line: 68, baseType: !5, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !138, line: 71, baseType: !44, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !145, file: !138, line: 75, baseType: !150, size: 256, offset: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !145, file: !138, line: 78, baseType: !41, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !145, file: !138, line: 81, baseType: !41, size: 64, offset: 384)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !110, file: !138, line: 116, type: !145, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "slot0", scope: !110, file: !138, line: 842, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !76)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "slotvec", scope: !110, file: !138, line: 845, type: !162, isLocal: true, isDefinition: true)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !138, line: 834, size: 128, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !163, file: !138, line: 836, baseType: !63, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !138, line: 837, baseType: !30, size: 64, offset: 64)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "nslots", scope: !110, file: !138, line: 843, type: !44, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "slotvec0", scope: !110, file: !138, line: 844, type: !163, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 704, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!173 = !{!174}
!174 = !DISubrange(count: 11)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !177, file: !180, line: 26, type: !181, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !179)
!178 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!179 = !{!175}
!180 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 47)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186)
!185 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!186 = !{!20}
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !194)
!188 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!189 = !{!190}
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !191, line: 41, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!192 = !{!193}
!193 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!194 = !{!32}
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !211)
!196 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!197 = !{!198}
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !200, file: !199, line: 186, baseType: !7, size: 32, elements: !209)
!199 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!200 = distinct !DISubprogram(name: "x2nrealloc", scope: !199, file: !199, line: 174, type: !201, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !204)
!201 = !DISubroutineType(types: !202)
!202 = !{!32, !32, !203, !63}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!204 = !{!205, !206, !207, !208}
!205 = !DILocalVariable(name: "p", arg: 1, scope: !200, file: !199, line: 174, type: !32)
!206 = !DILocalVariable(name: "pn", arg: 2, scope: !200, file: !199, line: 174, type: !203)
!207 = !DILocalVariable(name: "s", arg: 3, scope: !200, file: !199, line: 174, type: !63)
!208 = !DILocalVariable(name: "n", scope: !200, file: !199, line: 176, type: !63)
!209 = !{!210}
!210 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!211 = !{!63, !30, !32}
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!213 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !216)
!215 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!216 = !{!217}
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !218, line: 26, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!219 = !{!220, !221, !222, !223, !224}
!220 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!221 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!222 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!223 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!224 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !227, retainedTypes: !228)
!226 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!227 = !{!217, !118}
!228 = !{!44, !134}
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !194)
!230 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!232 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !194)
!234 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !194)
!236 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !239)
!238 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!239 = !{!63}
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!241 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!243 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !194)
!245 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!246 = !{!247}
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !248, line: 41, baseType: !7, size: 32, elements: !249)
!248 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!250 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!251 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!252 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!253 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!254 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!255 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!256 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!257 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!258 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!259 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!260 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!261 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!262 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!263 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!266 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!267 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!268 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!269 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!270 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!271 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!272 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!273 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!274 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!275 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!278 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!279 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!280 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!281 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!282 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!283 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!284 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!285 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!286 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!287 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!288 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!289 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!290 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!291 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!292 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!293 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!294 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!295 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!296 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!297 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!298 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!299 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!358 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!363 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!364 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!365 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!366 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!367 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!368 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!369 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!370 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!371 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!372 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!445 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!518 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!519 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!520 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!521 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!522 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!523 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!524 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!525 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!526 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!527 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!528 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!529 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!530 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!531 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!532 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!534 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!535 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!536 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!537 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!538 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!539 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!565 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!566 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!567 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!568 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!569 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!574 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!575 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!576 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!577 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!633 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!634 = !{i32 2, !"Dwarf Version", i32 4}
!635 = !{i32 2, !"Debug Info Version", i32 3}
!636 = !{i32 1, !"wchar_size", i32 4}
!637 = !{i32 7, !"PIC Level", i32 2}
!638 = !{i32 7, !"PIE Level", i32 2}
!639 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !640, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !44}
!642 = !{!643}
!643 = !DILocalVariable(name: "status", arg: 1, scope: !639, file: !3, line: 59, type: !44)
!644 = !DILocalVariable(name: "infomap", scope: !645, file: !646, line: 632, type: !660)
!645 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !646, file: !646, line: 630, type: !647, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !649)
!646 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!647 = !DISubroutineType(types: !648)
!648 = !{null, !41}
!649 = !{!650, !644, !651, !652, !659}
!650 = !DILocalVariable(name: "program", arg: 1, scope: !645, file: !646, line: 630, type: !41)
!651 = !DILocalVariable(name: "node", scope: !645, file: !646, line: 642, type: !41)
!652 = !DILocalVariable(name: "map_prog", scope: !645, file: !646, line: 643, type: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !645, file: !646, line: 632, size: 128, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !655, file: !646, line: 632, baseType: !41, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !646, line: 632, baseType: !41, size: 64, offset: 64)
!659 = !DILocalVariable(name: "lc_messages", scope: !645, file: !646, line: 655, type: !41)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 896, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 7)
!663 = !DILocation(line: 632, column: 67, scope: !645, inlinedAt: !664)
!664 = distinct !DILocation(line: 89, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 64, column: 5)
!666 = distinct !DILexicalBlock(scope: !639, file: !3, line: 61, column: 7)
!667 = !DILocation(line: 59, column: 12, scope: !639)
!668 = !DILocation(line: 61, column: 14, scope: !666)
!669 = !DILocation(line: 61, column: 7, scope: !639)
!670 = !DILocation(line: 62, column: 5, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !3, line: 62, column: 5)
!672 = !{!673, !673, i64 0}
!673 = !{!"any pointer", !674, i64 0}
!674 = !{!"omnipotent char", !675, i64 0}
!675 = !{!"Simple C/C++ TBAA"}
!676 = !DILocation(line: 65, column: 7, scope: !665)
!677 = !DILocation(line: 580, column: 3, scope: !678, inlinedAt: !681)
!678 = distinct !DISubprogram(name: "emit_stdin_note", scope: !646, file: !646, line: 578, type: !679, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !54)
!679 = !DISubroutineType(types: !680)
!680 = !{null}
!681 = distinct !DILocation(line: 70, column: 7, scope: !665)
!682 = !DILocation(line: 587, column: 3, scope: !683, inlinedAt: !684)
!683 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !646, file: !646, line: 585, type: !679, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !54)
!684 = distinct !DILocation(line: 71, column: 7, scope: !665)
!685 = !DILocation(line: 73, column: 7, scope: !665)
!686 = !DILocation(line: 80, column: 7, scope: !665)
!687 = !DILocation(line: 81, column: 7, scope: !665)
!688 = !DILocation(line: 82, column: 7, scope: !665)
!689 = !DILocation(line: 632, column: 3, scope: !645, inlinedAt: !664)
!690 = !DILocation(line: 643, column: 36, scope: !645, inlinedAt: !664)
!691 = !DILocation(line: 643, column: 25, scope: !645, inlinedAt: !664)
!692 = !DILocation(line: 645, column: 33, scope: !645, inlinedAt: !664)
!693 = !DILocation(line: 645, column: 3, scope: !645, inlinedAt: !664)
!694 = !DILocation(line: 646, column: 13, scope: !645, inlinedAt: !664)
!695 = !DILocation(line: 645, column: 20, scope: !645, inlinedAt: !664)
!696 = !{!697, !673, i64 0}
!697 = !{!"infomap", !673, i64 0, !673, i64 8}
!698 = !DILocation(line: 645, column: 10, scope: !645, inlinedAt: !664)
!699 = !DILocation(line: 645, column: 28, scope: !645, inlinedAt: !664)
!700 = distinct !{!700, !701, !702}
!701 = !DILocation(line: 645, column: 3, scope: !645)
!702 = !DILocation(line: 646, column: 13, scope: !645)
!703 = !DILocation(line: 648, column: 17, scope: !704, inlinedAt: !664)
!704 = distinct !DILexicalBlock(scope: !645, file: !646, line: 648, column: 7)
!705 = !{!697, !673, i64 8}
!706 = !DILocation(line: 648, column: 7, scope: !704, inlinedAt: !664)
!707 = !DILocation(line: 648, column: 7, scope: !645, inlinedAt: !664)
!708 = !DILocation(line: 642, column: 15, scope: !645, inlinedAt: !664)
!709 = !DILocation(line: 651, column: 3, scope: !645, inlinedAt: !664)
!710 = !DILocation(line: 655, column: 29, scope: !645, inlinedAt: !664)
!711 = !DILocation(line: 655, column: 15, scope: !645, inlinedAt: !664)
!712 = !DILocation(line: 656, column: 7, scope: !713, inlinedAt: !664)
!713 = distinct !DILexicalBlock(scope: !645, file: !646, line: 656, column: 7)
!714 = !DILocation(line: 656, column: 19, scope: !713, inlinedAt: !664)
!715 = !DILocation(line: 656, column: 22, scope: !713, inlinedAt: !664)
!716 = !DILocation(line: 656, column: 7, scope: !645, inlinedAt: !664)
!717 = !DILocation(line: 662, column: 7, scope: !718, inlinedAt: !664)
!718 = distinct !DILexicalBlock(scope: !713, file: !646, line: 657, column: 5)
!719 = !DILocation(line: 664, column: 5, scope: !718, inlinedAt: !664)
!720 = !DILocation(line: 665, column: 3, scope: !645, inlinedAt: !664)
!721 = !DILocation(line: 667, column: 3, scope: !645, inlinedAt: !664)
!722 = !DILocation(line: 669, column: 1, scope: !645, inlinedAt: !664)
!723 = !DILocation(line: 92, column: 3, scope: !639)
!724 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 265, type: !725, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !728)
!725 = !DISubroutineType(types: !726)
!726 = !{!44, !44, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!728 = !{!729, !730, !731, !732, !787, !788, !789, !790}
!729 = !DILocalVariable(name: "argc", arg: 1, scope: !724, file: !3, line: 265, type: !44)
!730 = !DILocalVariable(name: "argv", arg: 2, scope: !724, file: !3, line: 265, type: !727)
!731 = !DILocalVariable(name: "opt", scope: !724, file: !3, line: 267, type: !44)
!732 = !DILocalVariable(name: "input_fh", scope: !724, file: !3, line: 268, type: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !735, line: 7, baseType: !736)
!735 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !737, line: 49, size: 1728, elements: !738)
!737 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !754, !756, !757, !758, !762, !763, !764, !768, !771, !773, !776, !779, !780, !781, !782, !783}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !736, file: !737, line: 51, baseType: !44, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !736, file: !737, line: 54, baseType: !30, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !736, file: !737, line: 55, baseType: !30, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !736, file: !737, line: 56, baseType: !30, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !736, file: !737, line: 57, baseType: !30, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !736, file: !737, line: 58, baseType: !30, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !736, file: !737, line: 59, baseType: !30, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !736, file: !737, line: 60, baseType: !30, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !736, file: !737, line: 61, baseType: !30, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !736, file: !737, line: 64, baseType: !30, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !736, file: !737, line: 65, baseType: !30, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !736, file: !737, line: 66, baseType: !30, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !736, file: !737, line: 68, baseType: !752, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !737, line: 36, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !736, file: !737, line: 70, baseType: !755, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !736, file: !737, line: 72, baseType: !44, size: 32, offset: 896)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !736, file: !737, line: 73, baseType: !44, size: 32, offset: 928)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !736, file: !737, line: 74, baseType: !759, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !760, line: 150, baseType: !761)
!760 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!761 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !736, file: !737, line: 77, baseType: !134, size: 16, offset: 1024)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !736, file: !737, line: 78, baseType: !75, size: 8, offset: 1040)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !736, file: !737, line: 79, baseType: !765, size: 8, offset: 1048)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 1)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !736, file: !737, line: 81, baseType: !769, size: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !737, line: 43, baseType: null)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !736, file: !737, line: 89, baseType: !772, size: 64, offset: 1152)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !760, line: 151, baseType: !761)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !736, file: !737, line: 91, baseType: !774, size: 64, offset: 1216)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !737, line: 37, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !736, file: !737, line: 92, baseType: !777, size: 64, offset: 1280)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !737, line: 38, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !736, file: !737, line: 93, baseType: !755, size: 64, offset: 1344)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !736, file: !737, line: 94, baseType: !32, size: 64, offset: 1408)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !736, file: !737, line: 95, baseType: !63, size: 64, offset: 1472)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !736, file: !737, line: 96, baseType: !44, size: 32, offset: 1536)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !736, file: !737, line: 98, baseType: !784, size: 160, offset: 1568)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 20)
!787 = !DILocalVariable(name: "infile", scope: !724, file: !3, line: 269, type: !41)
!788 = !DILocalVariable(name: "decode", scope: !724, file: !3, line: 272, type: !94)
!789 = !DILocalVariable(name: "ignore_garbage", scope: !724, file: !3, line: 274, type: !94)
!790 = !DILocalVariable(name: "wrap_column", scope: !724, file: !3, line: 276, type: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !792, line: 102, baseType: !793)
!792 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !760, line: 72, baseType: !65)
!794 = !DILocalVariable(name: "inbuf", scope: !795, file: !3, line: 207, type: !823)
!795 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 205, type: !796, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !733, !733, !94}
!798 = !{!799, !800, !801, !794, !802, !806, !807, !814, !816, !817, !818}
!799 = !DILocalVariable(name: "in", arg: 1, scope: !795, file: !3, line: 205, type: !733)
!800 = !DILocalVariable(name: "out", arg: 2, scope: !795, file: !3, line: 205, type: !733)
!801 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !795, file: !3, line: 205, type: !94)
!802 = !DILocalVariable(name: "outbuf", scope: !795, file: !3, line: 208, type: !803)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 40960, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 5120)
!806 = !DILocalVariable(name: "sum", scope: !795, file: !3, line: 209, type: !63)
!807 = !DILocalVariable(name: "ctx", scope: !795, file: !3, line: 210, type: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !809, line: 31, size: 96, elements: !810)
!809 = !DIFile(filename: "./lib/base32.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !808, file: !809, line: 33, baseType: !7, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !808, file: !809, line: 34, baseType: !813, size: 64, offset: 32)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !151)
!814 = !DILocalVariable(name: "ok", scope: !815, file: !3, line: 216, type: !94)
!815 = distinct !DILexicalBlock(scope: !795, file: !3, line: 215, column: 5)
!816 = !DILocalVariable(name: "n", scope: !815, file: !3, line: 217, type: !63)
!817 = !DILocalVariable(name: "k", scope: !815, file: !3, line: 218, type: !7)
!818 = !DILocalVariable(name: "i", scope: !819, file: !3, line: 227, type: !63)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 227, column: 15)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 226, column: 13)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 225, column: 15)
!822 = distinct !DILexicalBlock(scope: !815, file: !3, line: 222, column: 9)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 65536, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 8192)
!826 = !DILocation(line: 207, column: 8, scope: !795, inlinedAt: !827)
!827 = distinct !DILocation(line: 337, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !724, file: !3, line: 336, column: 7)
!829 = !DILocation(line: 208, column: 8, scope: !795, inlinedAt: !827)
!830 = !DILocalVariable(name: "inbuf", scope: !831, file: !3, line: 168, type: !846)
!831 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 165, type: !832, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !733, !733, !791}
!834 = !{!835, !836, !837, !838, !830, !839, !843, !844}
!835 = !DILocalVariable(name: "in", arg: 1, scope: !831, file: !3, line: 165, type: !733)
!836 = !DILocalVariable(name: "out", arg: 2, scope: !831, file: !3, line: 165, type: !733)
!837 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !831, file: !3, line: 165, type: !791)
!838 = !DILocalVariable(name: "current_column", scope: !831, file: !3, line: 167, type: !63)
!839 = !DILocalVariable(name: "outbuf", scope: !831, file: !3, line: 169, type: !840)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 393216, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 49152)
!843 = !DILocalVariable(name: "sum", scope: !831, file: !3, line: 170, type: !63)
!844 = !DILocalVariable(name: "n", scope: !845, file: !3, line: 174, type: !63)
!845 = distinct !DILexicalBlock(scope: !831, file: !3, line: 173, column: 5)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 245760, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 30720)
!849 = !DILocation(line: 168, column: 8, scope: !831, inlinedAt: !850)
!850 = distinct !DILocation(line: 339, column: 5, scope: !828)
!851 = !DILocation(line: 169, column: 8, scope: !831, inlinedAt: !850)
!852 = !DILocation(line: 265, column: 11, scope: !724)
!853 = !DILocation(line: 265, column: 24, scope: !724)
!854 = !DILocation(line: 272, column: 8, scope: !724)
!855 = !DILocation(line: 274, column: 8, scope: !724)
!856 = !DILocation(line: 276, column: 13, scope: !724)
!857 = !DILocation(line: 279, column: 21, scope: !724)
!858 = !DILocation(line: 279, column: 3, scope: !724)
!859 = !DILocation(line: 280, column: 3, scope: !724)
!860 = !DILocation(line: 281, column: 3, scope: !724)
!861 = !DILocation(line: 282, column: 3, scope: !724)
!862 = !DILocation(line: 284, column: 3, scope: !724)
!863 = !DILocation(line: 286, column: 3, scope: !724)
!864 = !DILocation(line: 286, column: 17, scope: !724)
!865 = !DILocation(line: 267, column: 7, scope: !724)
!866 = distinct !{!866, !863, !867}
!867 = !DILocation(line: 309, column: 7, scope: !724)
!868 = !DILocation(line: 294, column: 35, scope: !869)
!869 = distinct !DILexicalBlock(scope: !724, file: !3, line: 288, column: 7)
!870 = !DILocation(line: 295, column: 35, scope: !869)
!871 = !DILocation(line: 294, column: 23, scope: !869)
!872 = !DILocation(line: 296, column: 9, scope: !869)
!873 = !DILocation(line: 302, column: 7, scope: !869)
!874 = !DILocation(line: 304, column: 7, scope: !869)
!875 = !DILocation(line: 307, column: 9, scope: !869)
!876 = !DILocation(line: 311, column: 14, scope: !877)
!877 = distinct !DILexicalBlock(scope: !724, file: !3, line: 311, column: 7)
!878 = !{!879, !879, i64 0}
!879 = !{!"int", !674, i64 0}
!880 = !DILocation(line: 311, column: 12, scope: !877)
!881 = !DILocation(line: 311, column: 21, scope: !877)
!882 = !DILocation(line: 311, column: 7, scope: !724)
!883 = !DILocation(line: 313, column: 20, scope: !884)
!884 = distinct !DILexicalBlock(scope: !877, file: !3, line: 312, column: 5)
!885 = !DILocation(line: 313, column: 55, scope: !884)
!886 = !DILocation(line: 313, column: 50, scope: !884)
!887 = !DILocation(line: 313, column: 43, scope: !884)
!888 = !DILocation(line: 313, column: 7, scope: !884)
!889 = !DILocation(line: 314, column: 7, scope: !884)
!890 = !DILocation(line: 317, column: 14, scope: !891)
!891 = distinct !DILexicalBlock(scope: !724, file: !3, line: 317, column: 7)
!892 = !DILocation(line: 317, column: 7, scope: !724)
!893 = !DILocation(line: 318, column: 14, scope: !891)
!894 = !DILocation(line: 269, column: 15, scope: !724)
!895 = !DILocation(line: 318, column: 5, scope: !891)
!896 = !DILocation(line: 0, scope: !891)
!897 = !DILocation(line: 322, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !724, file: !3, line: 322, column: 7)
!899 = !DILocation(line: 322, column: 7, scope: !724)
!900 = !DILocation(line: 325, column: 18, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 323, column: 5)
!902 = !DILocation(line: 268, column: 9, scope: !724)
!903 = !DILocation(line: 326, column: 5, scope: !901)
!904 = !DILocation(line: 329, column: 18, scope: !905)
!905 = distinct !DILexicalBlock(scope: !898, file: !3, line: 328, column: 5)
!906 = !DILocation(line: 330, column: 20, scope: !907)
!907 = distinct !DILexicalBlock(scope: !905, file: !3, line: 330, column: 11)
!908 = !DILocation(line: 330, column: 11, scope: !905)
!909 = !DILocation(line: 331, column: 9, scope: !907)
!910 = !DILocation(line: 0, scope: !905)
!911 = !DILocation(line: 334, column: 3, scope: !724)
!912 = !DILocation(line: 336, column: 7, scope: !828)
!913 = !DILocation(line: 0, scope: !828)
!914 = !DILocation(line: 336, column: 7, scope: !724)
!915 = !DILocation(line: 337, column: 34, scope: !828)
!916 = !DILocation(line: 205, column: 18, scope: !795, inlinedAt: !827)
!917 = !DILocation(line: 205, column: 28, scope: !795, inlinedAt: !827)
!918 = !DILocation(line: 205, column: 38, scope: !795, inlinedAt: !827)
!919 = !DILocation(line: 207, column: 3, scope: !795, inlinedAt: !827)
!920 = !DILocation(line: 208, column: 3, scope: !795, inlinedAt: !827)
!921 = !DILocation(line: 210, column: 3, scope: !795, inlinedAt: !827)
!922 = !DILocation(line: 210, column: 30, scope: !795, inlinedAt: !827)
!923 = !DILocation(line: 212, column: 3, scope: !795, inlinedAt: !827)
!924 = !DILocation(line: 214, column: 3, scope: !795, inlinedAt: !827)
!925 = !DILocation(line: 217, column: 7, scope: !815, inlinedAt: !827)
!926 = !DILocation(line: 209, column: 10, scope: !795, inlinedAt: !827)
!927 = !DILocation(line: 221, column: 7, scope: !815, inlinedAt: !827)
!928 = !DILocation(line: 0, scope: !822, inlinedAt: !827)
!929 = !DILocation(line: 223, column: 15, scope: !822, inlinedAt: !827)
!930 = !DILocation(line: 217, column: 14, scope: !815, inlinedAt: !827)
!931 = !DILocation(line: 223, column: 13, scope: !822, inlinedAt: !827)
!932 = !{!933, !933, i64 0}
!933 = !{!"long", !674, i64 0}
!934 = !DILocation(line: 225, column: 15, scope: !822, inlinedAt: !827)
!935 = !DILocation(line: 227, column: 27, scope: !819, inlinedAt: !827)
!936 = !DILocation(line: 227, column: 45, scope: !937, inlinedAt: !827)
!937 = distinct !DILexicalBlock(scope: !819, file: !3, line: 227, column: 15)
!938 = !DILocation(line: 227, column: 40, scope: !937, inlinedAt: !827)
!939 = !DILocation(line: 229, column: 41, scope: !940, inlinedAt: !827)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 229, column: 23)
!941 = distinct !DILexicalBlock(scope: !937, file: !3, line: 228, column: 17)
!942 = !DILocation(line: 229, column: 31, scope: !940, inlinedAt: !827)
!943 = !{!674, !674, i64 0}
!944 = !DILocation(line: 229, column: 23, scope: !940, inlinedAt: !827)
!945 = !DILocation(line: 229, column: 65, scope: !940, inlinedAt: !827)
!946 = !DILocation(line: 229, column: 47, scope: !940, inlinedAt: !827)
!947 = !DILocation(line: 230, column: 22, scope: !940, inlinedAt: !827)
!948 = !DILocation(line: 230, column: 21, scope: !940, inlinedAt: !827)
!949 = !DILocation(line: 232, column: 42, scope: !940, inlinedAt: !827)
!950 = !DILocation(line: 232, column: 63, scope: !940, inlinedAt: !827)
!951 = !DILocation(line: 232, column: 68, scope: !940, inlinedAt: !827)
!952 = !DILocation(line: 232, column: 72, scope: !940, inlinedAt: !827)
!953 = !DILocation(line: 232, column: 21, scope: !940, inlinedAt: !827)
!954 = !DILocation(line: 227, column: 34, scope: !937, inlinedAt: !827)
!955 = !DILocation(line: 0, scope: !819, inlinedAt: !827)
!956 = distinct !{!956, !957, !958}
!957 = !DILocation(line: 227, column: 15, scope: !819)
!958 = !DILocation(line: 233, column: 17, scope: !819)
!959 = !DILocation(line: 236, column: 18, scope: !822, inlinedAt: !827)
!960 = !DILocation(line: 236, column: 15, scope: !822, inlinedAt: !827)
!961 = !DILocalVariable(name: "__stream", arg: 1, scope: !962, file: !963, line: 135, type: !733)
!962 = distinct !DISubprogram(name: "ferror_unlocked", scope: !963, file: !963, line: 135, type: !964, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !966)
!963 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!964 = !DISubroutineType(types: !965)
!965 = !{!44, !733}
!966 = !{!961}
!967 = !DILocation(line: 135, column: 1, scope: !962, inlinedAt: !968)
!968 = distinct !DILocation(line: 238, column: 15, scope: !969, inlinedAt: !827)
!969 = distinct !DILexicalBlock(scope: !822, file: !3, line: 238, column: 15)
!970 = !DILocation(line: 137, column: 10, scope: !962, inlinedAt: !968)
!971 = !{!972, !879, i64 0}
!972 = !{!"_IO_FILE", !879, i64 0, !673, i64 8, !673, i64 16, !673, i64 24, !673, i64 32, !673, i64 40, !673, i64 48, !673, i64 56, !673, i64 64, !673, i64 72, !673, i64 80, !673, i64 88, !673, i64 96, !673, i64 104, !879, i64 112, !879, i64 116, !933, i64 120, !973, i64 128, !674, i64 130, !674, i64 131, !673, i64 136, !933, i64 144, !673, i64 152, !673, i64 160, !673, i64 168, !673, i64 176, !933, i64 184, !879, i64 192, !674, i64 196}
!973 = !{!"short", !674, i64 0}
!974 = !DILocation(line: 238, column: 15, scope: !969, inlinedAt: !827)
!975 = !DILocation(line: 238, column: 15, scope: !822, inlinedAt: !827)
!976 = !DILocation(line: 239, column: 13, scope: !969, inlinedAt: !827)
!977 = !DILocation(line: 241, column: 18, scope: !815, inlinedAt: !827)
!978 = !DILocation(line: 130, column: 10, scope: !979, inlinedAt: !982)
!979 = distinct !DISubprogram(name: "feof_unlocked", scope: !963, file: !963, line: 128, type: !964, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !980)
!980 = !{!981}
!981 = !DILocalVariable(name: "__stream", arg: 1, scope: !979, file: !963, line: 128, type: !733)
!982 = distinct !DILocation(line: 241, column: 52, scope: !815, inlinedAt: !827)
!983 = !DILocation(line: 241, column: 51, scope: !815, inlinedAt: !827)
!984 = !DILocation(line: 241, column: 48, scope: !815, inlinedAt: !827)
!985 = !DILocation(line: 128, column: 1, scope: !979, inlinedAt: !982)
!986 = distinct !{!986, !987, !988}
!987 = !DILocation(line: 221, column: 7, scope: !815)
!988 = !DILocation(line: 241, column: 61, scope: !815)
!989 = !DILocation(line: 218, column: 20, scope: !815, inlinedAt: !827)
!990 = !DILocation(line: 128, column: 1, scope: !979, inlinedAt: !991)
!991 = distinct !DILocation(line: 247, column: 29, scope: !992, inlinedAt: !827)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 247, column: 7)
!993 = distinct !DILexicalBlock(scope: !815, file: !3, line: 247, column: 7)
!994 = !DILocation(line: 130, column: 10, scope: !979, inlinedAt: !991)
!995 = !DILocation(line: 247, column: 28, scope: !992, inlinedAt: !827)
!996 = !DILocation(line: 247, column: 25, scope: !992, inlinedAt: !827)
!997 = !DILocation(line: 247, column: 21, scope: !992, inlinedAt: !827)
!998 = !DILocation(line: 247, column: 7, scope: !993, inlinedAt: !827)
!999 = distinct !{!999, !1000, !1001}
!1000 = !DILocation(line: 247, column: 7, scope: !993)
!1001 = !DILocation(line: 259, column: 9, scope: !993)
!1002 = !DILocation(line: 249, column: 29, scope: !1003, inlinedAt: !827)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 249, column: 15)
!1004 = distinct !DILexicalBlock(scope: !992, file: !3, line: 248, column: 9)
!1005 = !DILocation(line: 249, column: 22, scope: !1003, inlinedAt: !827)
!1006 = !DILocation(line: 251, column: 13, scope: !1004, inlinedAt: !827)
!1007 = !DILocation(line: 252, column: 49, scope: !1004, inlinedAt: !827)
!1008 = !DILocation(line: 252, column: 47, scope: !1004, inlinedAt: !827)
!1009 = !DILocation(line: 252, column: 16, scope: !1004, inlinedAt: !827)
!1010 = !DILocation(line: 254, column: 15, scope: !1011, inlinedAt: !827)
!1011 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 254, column: 15)
!1012 = !DILocation(line: 254, column: 44, scope: !1011, inlinedAt: !827)
!1013 = !DILocation(line: 254, column: 42, scope: !1011, inlinedAt: !827)
!1014 = !DILocation(line: 254, column: 15, scope: !1004, inlinedAt: !827)
!1015 = !DILocation(line: 255, column: 13, scope: !1011, inlinedAt: !827)
!1016 = !DILocation(line: 247, column: 41, scope: !992, inlinedAt: !827)
!1017 = !DILocation(line: 257, column: 15, scope: !1004, inlinedAt: !827)
!1018 = !DILocation(line: 258, column: 13, scope: !1019, inlinedAt: !827)
!1019 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 257, column: 15)
!1020 = !DILocation(line: 260, column: 5, scope: !795, inlinedAt: !827)
!1021 = !DILocation(line: 128, column: 1, scope: !979, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 261, column: 11, scope: !795, inlinedAt: !827)
!1023 = !DILocation(line: 260, column: 5, scope: !815, inlinedAt: !827)
!1024 = distinct !{!1024, !1025, !1026}
!1025 = !DILocation(line: 214, column: 3, scope: !795)
!1026 = !DILocation(line: 261, column: 20, scope: !795)
!1027 = !DILocation(line: 262, column: 1, scope: !795, inlinedAt: !827)
!1028 = !DILocation(line: 337, column: 5, scope: !828)
!1029 = !DILocation(line: 165, column: 18, scope: !831, inlinedAt: !850)
!1030 = !DILocation(line: 165, column: 28, scope: !831, inlinedAt: !850)
!1031 = !DILocation(line: 165, column: 43, scope: !831, inlinedAt: !850)
!1032 = !DILocation(line: 167, column: 10, scope: !831, inlinedAt: !850)
!1033 = !DILocation(line: 168, column: 3, scope: !831, inlinedAt: !850)
!1034 = !DILocation(line: 169, column: 3, scope: !831, inlinedAt: !850)
!1035 = !DILocation(line: 172, column: 3, scope: !831, inlinedAt: !850)
!1036 = !DILocation(line: 170, column: 10, scope: !831, inlinedAt: !850)
!1037 = !DILocation(line: 177, column: 7, scope: !845, inlinedAt: !850)
!1038 = !DILocation(line: 0, scope: !1039, inlinedAt: !850)
!1039 = distinct !DILexicalBlock(scope: !845, file: !3, line: 178, column: 9)
!1040 = !DILocation(line: 179, column: 15, scope: !1039, inlinedAt: !850)
!1041 = !DILocation(line: 174, column: 14, scope: !845, inlinedAt: !850)
!1042 = !DILocation(line: 180, column: 15, scope: !1039, inlinedAt: !850)
!1043 = !DILocation(line: 128, column: 1, scope: !979, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 182, column: 15, scope: !845, inlinedAt: !850)
!1045 = !DILocation(line: 130, column: 10, scope: !979, inlinedAt: !1044)
!1046 = !DILocation(line: 182, column: 15, scope: !845, inlinedAt: !850)
!1047 = !DILocation(line: 182, column: 25, scope: !845, inlinedAt: !850)
!1048 = !DILocation(line: 135, column: 1, scope: !962, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 182, column: 29, scope: !845, inlinedAt: !850)
!1050 = !DILocation(line: 137, column: 10, scope: !962, inlinedAt: !1049)
!1051 = !DILocation(line: 182, column: 29, scope: !845, inlinedAt: !850)
!1052 = !DILocation(line: 182, column: 48, scope: !845, inlinedAt: !850)
!1053 = !DILocation(line: 182, column: 41, scope: !845, inlinedAt: !850)
!1054 = distinct !{!1054, !1055, !1056}
!1055 = !DILocation(line: 177, column: 7, scope: !845)
!1056 = !DILocation(line: 182, column: 63, scope: !845)
!1057 = !DILocation(line: 184, column: 15, scope: !1058, inlinedAt: !850)
!1058 = distinct !DILexicalBlock(scope: !845, file: !3, line: 184, column: 11)
!1059 = !DILocation(line: 184, column: 11, scope: !845, inlinedAt: !850)
!1060 = !DILocation(line: 188, column: 44, scope: !1061, inlinedAt: !850)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 185, column: 9)
!1062 = !DILocation(line: 188, column: 11, scope: !1061, inlinedAt: !850)
!1063 = !DILocalVariable(name: "buffer", arg: 1, scope: !1064, file: !3, line: 130, type: !41)
!1064 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 130, type: !1065, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !41, !63, !791, !203, !733}
!1067 = !{!1063, !1068, !1069, !1070, !1071, !1072, !1073, !1078}
!1068 = !DILocalVariable(name: "len", arg: 2, scope: !1064, file: !3, line: 130, type: !63)
!1069 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1064, file: !3, line: 131, type: !791)
!1070 = !DILocalVariable(name: "current_column", arg: 4, scope: !1064, file: !3, line: 131, type: !203)
!1071 = !DILocalVariable(name: "out", arg: 5, scope: !1064, file: !3, line: 131, type: !733)
!1072 = !DILocalVariable(name: "written", scope: !1064, file: !3, line: 133, type: !63)
!1073 = !DILocalVariable(name: "cols_remaining", scope: !1074, file: !3, line: 144, type: !791)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 143, column: 7)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 142, column: 5)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 142, column: 5)
!1077 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 135, column: 7)
!1078 = !DILocalVariable(name: "to_write", scope: !1074, file: !3, line: 145, type: !63)
!1079 = !DILocation(line: 130, column: 25, scope: !1064, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 190, column: 11, scope: !1061, inlinedAt: !850)
!1081 = !DILocation(line: 130, column: 40, scope: !1064, inlinedAt: !1080)
!1082 = !DILocation(line: 131, column: 23, scope: !1064, inlinedAt: !1080)
!1083 = !DILocation(line: 131, column: 66, scope: !1064, inlinedAt: !1080)
!1084 = !DILocation(line: 135, column: 7, scope: !1064, inlinedAt: !1080)
!1085 = !DILocation(line: 133, column: 10, scope: !1064, inlinedAt: !1080)
!1086 = !DILocation(line: 142, column: 31, scope: !1075, inlinedAt: !1080)
!1087 = !DILocation(line: 142, column: 5, scope: !1076, inlinedAt: !1080)
!1088 = !DILocation(line: 138, column: 11, scope: !1089, inlinedAt: !1080)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 138, column: 11)
!1090 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 136, column: 5)
!1091 = !DILocation(line: 138, column: 43, scope: !1089, inlinedAt: !1080)
!1092 = !DILocation(line: 138, column: 11, scope: !1090, inlinedAt: !1080)
!1093 = !DILocation(line: 139, column: 9, scope: !1089, inlinedAt: !1080)
!1094 = !DILocation(line: 0, scope: !1061, inlinedAt: !850)
!1095 = !DILocation(line: 144, column: 48, scope: !1074, inlinedAt: !1080)
!1096 = !DILocation(line: 144, column: 19, scope: !1074, inlinedAt: !1080)
!1097 = !DILocation(line: 145, column: 16, scope: !1074, inlinedAt: !1080)
!1098 = !DILocation(line: 146, column: 20, scope: !1074, inlinedAt: !1080)
!1099 = !DILocation(line: 148, column: 22, scope: !1100, inlinedAt: !1080)
!1100 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 148, column: 13)
!1101 = !DILocation(line: 148, column: 13, scope: !1074, inlinedAt: !1080)
!1102 = !DILocalVariable(name: "__c", arg: 1, scope: !1103, file: !963, line: 91, type: !44)
!1103 = distinct !DISubprogram(name: "fputc_unlocked", scope: !963, file: !963, line: 91, type: !1104, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!44, !44, !733}
!1106 = !{!1102, !1107}
!1107 = !DILocalVariable(name: "__stream", arg: 2, scope: !1103, file: !963, line: 91, type: !733)
!1108 = !DILocation(line: 91, column: 21, scope: !1103, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 150, column: 17, scope: !1110, inlinedAt: !1080)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 150, column: 17)
!1111 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 149, column: 11)
!1112 = !DILocation(line: 91, column: 32, scope: !1103, inlinedAt: !1109)
!1113 = !DILocation(line: 93, column: 10, scope: !1103, inlinedAt: !1109)
!1114 = !{!972, !673, i64 40}
!1115 = !{!972, !673, i64 48}
!1116 = !{!"branch_weights", i32 2000, i32 1}
!1117 = !DILocation(line: 150, column: 17, scope: !1111, inlinedAt: !1080)
!1118 = !DILocation(line: 150, column: 35, scope: !1110, inlinedAt: !1080)
!1119 = !DILocation(line: 151, column: 15, scope: !1110, inlinedAt: !1080)
!1120 = !DILocation(line: 156, column: 17, scope: !1121, inlinedAt: !1080)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 156, column: 17)
!1122 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 155, column: 11)
!1123 = !DILocation(line: 156, column: 64, scope: !1121, inlinedAt: !1080)
!1124 = !DILocation(line: 156, column: 17, scope: !1122, inlinedAt: !1080)
!1125 = !DILocation(line: 157, column: 15, scope: !1121, inlinedAt: !1080)
!1126 = !DILocation(line: 158, column: 29, scope: !1122, inlinedAt: !1080)
!1127 = !DILocation(line: 159, column: 21, scope: !1122, inlinedAt: !1080)
!1128 = !DILocation(line: 0, scope: !1122, inlinedAt: !1080)
!1129 = distinct !{!1129, !1130, !1131}
!1130 = !DILocation(line: 142, column: 5, scope: !1076)
!1131 = !DILocation(line: 161, column: 7, scope: !1076)
!1132 = !DILocation(line: 128, column: 1, scope: !979, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 194, column: 11, scope: !831, inlinedAt: !850)
!1134 = !DILocation(line: 130, column: 10, scope: !979, inlinedAt: !1133)
!1135 = !DILocation(line: 194, column: 11, scope: !831, inlinedAt: !850)
!1136 = !DILocation(line: 194, column: 21, scope: !831, inlinedAt: !850)
!1137 = !DILocation(line: 135, column: 1, scope: !962, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 194, column: 25, scope: !831, inlinedAt: !850)
!1139 = !DILocation(line: 137, column: 10, scope: !962, inlinedAt: !1138)
!1140 = !DILocation(line: 194, column: 25, scope: !831, inlinedAt: !850)
!1141 = !DILocation(line: 194, column: 44, scope: !831, inlinedAt: !850)
!1142 = !DILocation(line: 194, column: 37, scope: !831, inlinedAt: !850)
!1143 = distinct !{!1143, !1144, !1145}
!1144 = !DILocation(line: 172, column: 3, scope: !831)
!1145 = !DILocation(line: 194, column: 60, scope: !831)
!1146 = !DILocation(line: 197, column: 7, scope: !1147, inlinedAt: !850)
!1147 = distinct !DILexicalBlock(scope: !831, file: !3, line: 197, column: 7)
!1148 = !DILocation(line: 197, column: 37, scope: !1147, inlinedAt: !850)
!1149 = !DILocation(line: 197, column: 19, scope: !1147, inlinedAt: !850)
!1150 = !DILocation(line: 91, column: 21, scope: !1103, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 197, column: 44, scope: !1147, inlinedAt: !850)
!1152 = !DILocation(line: 91, column: 32, scope: !1103, inlinedAt: !1151)
!1153 = !DILocation(line: 93, column: 10, scope: !1103, inlinedAt: !1151)
!1154 = !DILocation(line: 197, column: 7, scope: !831, inlinedAt: !850)
!1155 = !DILocation(line: 197, column: 62, scope: !1147, inlinedAt: !850)
!1156 = !DILocation(line: 198, column: 5, scope: !1147, inlinedAt: !850)
!1157 = !DILocation(line: 135, column: 1, scope: !962, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 200, column: 7, scope: !1159, inlinedAt: !850)
!1159 = distinct !DILexicalBlock(scope: !831, file: !3, line: 200, column: 7)
!1160 = !DILocation(line: 137, column: 10, scope: !962, inlinedAt: !1158)
!1161 = !DILocation(line: 200, column: 7, scope: !1159, inlinedAt: !850)
!1162 = !DILocation(line: 200, column: 7, scope: !831, inlinedAt: !850)
!1163 = !DILocation(line: 201, column: 5, scope: !1159, inlinedAt: !850)
!1164 = !DILocation(line: 202, column: 1, scope: !831, inlinedAt: !850)
!1165 = !DILocation(line: 341, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !724, file: !3, line: 341, column: 7)
!1167 = !DILocation(line: 341, column: 25, scope: !1166)
!1168 = !DILocation(line: 341, column: 7, scope: !724)
!1169 = !DILocation(line: 343, column: 11, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 343, column: 11)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 342, column: 5)
!1172 = !DILocation(line: 0, scope: !1170)
!1173 = !DILocation(line: 343, column: 11, scope: !1171)
!1174 = !DILocation(line: 344, column: 9, scope: !1170)
!1175 = !DILocation(line: 346, column: 9, scope: !1170)
!1176 = !DILocation(line: 350, column: 1, scope: !724)
!1177 = !DILocation(line: 65, column: 37, scope: !58)
!1178 = !DILocation(line: 65, column: 48, scope: !58)
!1179 = !DILocation(line: 66, column: 31, scope: !58)
!1180 = !DILocation(line: 66, column: 43, scope: !58)
!1181 = !DILocation(line: 71, column: 10, scope: !58)
!1182 = !DILocation(line: 71, column: 16, scope: !58)
!1183 = !DILocation(line: 71, column: 3, scope: !58)
!1184 = !DILocation(line: 73, column: 34, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !58, file: !59, line: 72, column: 5)
!1186 = !DILocation(line: 73, column: 41, scope: !1185)
!1187 = !DILocation(line: 73, column: 16, scope: !1185)
!1188 = !DILocation(line: 73, column: 11, scope: !1185)
!1189 = !DILocation(line: 73, column: 14, scope: !1185)
!1190 = !DILocation(line: 74, column: 12, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 74, column: 11)
!1192 = !DILocation(line: 74, column: 11, scope: !1185)
!1193 = !DILocation(line: 76, column: 35, scope: !1185)
!1194 = !DILocation(line: 76, column: 25, scope: !1185)
!1195 = !DILocation(line: 76, column: 42, scope: !1185)
!1196 = !DILocation(line: 77, column: 27, scope: !1185)
!1197 = !DILocation(line: 77, column: 47, scope: !1185)
!1198 = !DILocation(line: 77, column: 54, scope: !1185)
!1199 = !DILocation(line: 77, column: 24, scope: !1185)
!1200 = !DILocation(line: 78, column: 23, scope: !1185)
!1201 = !DILocation(line: 76, column: 16, scope: !1185)
!1202 = !DILocation(line: 76, column: 11, scope: !1185)
!1203 = !DILocation(line: 76, column: 14, scope: !1185)
!1204 = !DILocation(line: 79, column: 12, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 79, column: 11)
!1206 = !DILocation(line: 79, column: 11, scope: !1185)
!1207 = !DILocation(line: 82, column: 10, scope: !1185)
!1208 = !DILocation(line: 83, column: 30, scope: !1185)
!1209 = !DILocation(line: 83, column: 37, scope: !1185)
!1210 = !DILocation(line: 83, column: 43, scope: !1185)
!1211 = !DILocation(line: 83, column: 12, scope: !1185)
!1212 = !DILocation(line: 81, column: 11, scope: !1185)
!1213 = !DILocation(line: 81, column: 14, scope: !1185)
!1214 = !DILocation(line: 85, column: 12, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 85, column: 11)
!1216 = !DILocation(line: 85, column: 11, scope: !1185)
!1217 = !DILocation(line: 88, column: 10, scope: !1185)
!1218 = !DILocation(line: 89, column: 31, scope: !1185)
!1219 = !DILocation(line: 89, column: 21, scope: !1185)
!1220 = !DILocation(line: 89, column: 38, scope: !1185)
!1221 = !DILocation(line: 90, column: 23, scope: !1185)
!1222 = !DILocation(line: 90, column: 43, scope: !1185)
!1223 = !DILocation(line: 90, column: 50, scope: !1185)
!1224 = !DILocation(line: 90, column: 20, scope: !1185)
!1225 = !DILocation(line: 91, column: 19, scope: !1185)
!1226 = !DILocation(line: 89, column: 12, scope: !1185)
!1227 = !DILocation(line: 0, scope: !1185)
!1228 = !DILocation(line: 87, column: 11, scope: !1185)
!1229 = !DILocation(line: 87, column: 14, scope: !1185)
!1230 = !DILocation(line: 93, column: 12, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 93, column: 11)
!1232 = !DILocation(line: 93, column: 11, scope: !1185)
!1233 = !DILocation(line: 96, column: 10, scope: !1185)
!1234 = !DILocation(line: 97, column: 31, scope: !1185)
!1235 = !DILocation(line: 97, column: 21, scope: !1185)
!1236 = !DILocation(line: 97, column: 38, scope: !1185)
!1237 = !DILocation(line: 98, column: 23, scope: !1185)
!1238 = !DILocation(line: 98, column: 43, scope: !1185)
!1239 = !DILocation(line: 98, column: 50, scope: !1185)
!1240 = !DILocation(line: 98, column: 20, scope: !1185)
!1241 = !DILocation(line: 99, column: 19, scope: !1185)
!1242 = !DILocation(line: 97, column: 12, scope: !1185)
!1243 = !DILocation(line: 95, column: 11, scope: !1185)
!1244 = !DILocation(line: 95, column: 14, scope: !1185)
!1245 = !DILocation(line: 101, column: 12, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 101, column: 11)
!1247 = !DILocation(line: 101, column: 11, scope: !1185)
!1248 = !DILocation(line: 104, column: 10, scope: !1185)
!1249 = !DILocation(line: 105, column: 30, scope: !1185)
!1250 = !DILocation(line: 105, column: 37, scope: !1185)
!1251 = !DILocation(line: 105, column: 43, scope: !1185)
!1252 = !DILocation(line: 105, column: 12, scope: !1185)
!1253 = !DILocation(line: 103, column: 11, scope: !1185)
!1254 = !DILocation(line: 103, column: 14, scope: !1185)
!1255 = !DILocation(line: 107, column: 12, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 107, column: 11)
!1257 = !DILocation(line: 107, column: 11, scope: !1185)
!1258 = !DILocation(line: 110, column: 10, scope: !1185)
!1259 = !DILocation(line: 111, column: 31, scope: !1185)
!1260 = !DILocation(line: 111, column: 21, scope: !1185)
!1261 = !DILocation(line: 111, column: 38, scope: !1185)
!1262 = !DILocation(line: 112, column: 23, scope: !1185)
!1263 = !DILocation(line: 112, column: 43, scope: !1185)
!1264 = !DILocation(line: 112, column: 50, scope: !1185)
!1265 = !DILocation(line: 112, column: 20, scope: !1185)
!1266 = !DILocation(line: 113, column: 19, scope: !1185)
!1267 = !DILocation(line: 111, column: 12, scope: !1185)
!1268 = !DILocation(line: 109, column: 11, scope: !1185)
!1269 = !DILocation(line: 109, column: 14, scope: !1185)
!1270 = !DILocation(line: 115, column: 12, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 115, column: 11)
!1272 = !DILocation(line: 115, column: 11, scope: !1185)
!1273 = !DILocation(line: 117, column: 16, scope: !1185)
!1274 = !DILocation(line: 117, column: 41, scope: !1185)
!1275 = !DILocation(line: 117, column: 48, scope: !1185)
!1276 = !DILocation(line: 117, column: 24, scope: !1185)
!1277 = !DILocation(line: 117, column: 14, scope: !1185)
!1278 = !DILocation(line: 118, column: 12, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 118, column: 11)
!1280 = !DILocation(line: 118, column: 11, scope: !1185)
!1281 = !DILocation(line: 117, column: 11, scope: !1185)
!1282 = !DILocation(line: 121, column: 14, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 120, column: 11)
!1284 = !DILocation(line: 122, column: 11, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1185, file: !59, line: 122, column: 11)
!1286 = !DILocation(line: 123, column: 12, scope: !1285)
!1287 = distinct !{!1287, !1183, !1288}
!1288 = !DILocation(line: 124, column: 5, scope: !58)
!1289 = !DILocation(line: 126, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !58, file: !59, line: 126, column: 7)
!1291 = !DILocation(line: 126, column: 7, scope: !58)
!1292 = !DILocation(line: 127, column: 10, scope: !1290)
!1293 = !DILocation(line: 127, column: 5, scope: !1290)
!1294 = !DILocation(line: 128, column: 1, scope: !58)
!1295 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !59, file: !59, line: 140, type: !1296, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !67, retainedNodes: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!63, !41, !63, !727}
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DILocalVariable(name: "in", arg: 1, scope: !1295, file: !59, line: 140, type: !41)
!1300 = !DILocalVariable(name: "inlen", arg: 2, scope: !1295, file: !59, line: 140, type: !63)
!1301 = !DILocalVariable(name: "out", arg: 3, scope: !1295, file: !59, line: 140, type: !727)
!1302 = !DILocalVariable(name: "outlen", scope: !1295, file: !59, line: 142, type: !63)
!1303 = !DILocation(line: 140, column: 34, scope: !1295)
!1304 = !DILocation(line: 140, column: 45, scope: !1295)
!1305 = !DILocation(line: 140, column: 59, scope: !1295)
!1306 = !DILocation(line: 142, column: 23, scope: !1295)
!1307 = !DILocation(line: 142, column: 21, scope: !1295)
!1308 = !DILocation(line: 142, column: 10, scope: !1295)
!1309 = !DILocation(line: 150, column: 13, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1295, file: !59, line: 150, column: 7)
!1311 = !DILocation(line: 150, column: 7, scope: !1295)
!1312 = !DILocation(line: 152, column: 12, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !59, line: 151, column: 5)
!1314 = !DILocation(line: 153, column: 7, scope: !1313)
!1315 = !DILocation(line: 156, column: 10, scope: !1295)
!1316 = !DILocation(line: 156, column: 8, scope: !1295)
!1317 = !DILocation(line: 157, column: 8, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1295, file: !59, line: 157, column: 7)
!1319 = !DILocation(line: 157, column: 7, scope: !1295)
!1320 = !DILocation(line: 160, column: 3, scope: !1295)
!1321 = !DILocation(line: 162, column: 3, scope: !1295)
!1322 = !DILocation(line: 0, scope: !1318)
!1323 = !DILocation(line: 163, column: 1, scope: !1295)
!1324 = distinct !DISubprogram(name: "isbase32", scope: !59, file: !59, line: 286, type: !1325, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !67, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!94, !31}
!1327 = !{!1328}
!1328 = !DILocalVariable(name: "ch", arg: 1, scope: !1324, file: !59, line: 286, type: !31)
!1329 = !DILocation(line: 286, column: 16, scope: !1324)
!1330 = !DILocation(line: 288, column: 49, scope: !1324)
!1331 = !DILocation(line: 288, column: 46, scope: !1324)
!1332 = !DILocation(line: 288, column: 3, scope: !1324)
!1333 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !59, file: !59, line: 293, type: !1334, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !67, retainedNodes: !1341)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !809, line: 31, size: 96, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1337, file: !809, line: 33, baseType: !7, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1337, file: !809, line: 34, baseType: !813, size: 64, offset: 32)
!1341 = !{!1342}
!1342 = !DILocalVariable(name: "ctx", arg: 1, scope: !1333, file: !59, line: 293, type: !1336)
!1343 = !DILocation(line: 293, column: 55, scope: !1333)
!1344 = !DILocation(line: 295, column: 8, scope: !1333)
!1345 = !DILocation(line: 295, column: 10, scope: !1333)
!1346 = !{!1347, !879, i64 0}
!1347 = !{!"base32_decode_context", !879, i64 0, !674, i64 4}
!1348 = !DILocation(line: 296, column: 1, scope: !1333)
!1349 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !59, file: !59, line: 470, type: !1350, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !67, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!94, !1336, !62, !63, !66, !203}
!1352 = !{!1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1364, !1366}
!1353 = !DILocalVariable(name: "ctx", arg: 1, scope: !1349, file: !59, line: 470, type: !1336)
!1354 = !DILocalVariable(name: "in", arg: 2, scope: !1349, file: !59, line: 471, type: !62)
!1355 = !DILocalVariable(name: "inlen", arg: 3, scope: !1349, file: !59, line: 471, type: !63)
!1356 = !DILocalVariable(name: "out", arg: 4, scope: !1349, file: !59, line: 472, type: !66)
!1357 = !DILocalVariable(name: "outlen", arg: 5, scope: !1349, file: !59, line: 472, type: !203)
!1358 = !DILocalVariable(name: "outleft", scope: !1349, file: !59, line: 474, type: !63)
!1359 = !DILocalVariable(name: "ignore_newlines", scope: !1349, file: !59, line: 475, type: !94)
!1360 = !DILocalVariable(name: "flush_ctx", scope: !1349, file: !59, line: 476, type: !94)
!1361 = !DILocalVariable(name: "ctx_i", scope: !1349, file: !59, line: 477, type: !7)
!1362 = !DILocalVariable(name: "outleft_save", scope: !1363, file: !59, line: 488, type: !63)
!1363 = distinct !DILexicalBlock(scope: !1349, file: !59, line: 487, column: 5)
!1364 = !DILocalVariable(name: "in_end", scope: !1365, file: !59, line: 521, type: !41)
!1365 = distinct !DILexicalBlock(scope: !1363, file: !59, line: 520, column: 7)
!1366 = !DILocalVariable(name: "non_nl", scope: !1365, file: !59, line: 522, type: !41)
!1367 = !DILocation(line: 470, column: 50, scope: !1349)
!1368 = !DILocation(line: 471, column: 41, scope: !1349)
!1369 = !DILocation(line: 471, column: 52, scope: !1349)
!1370 = !DILocation(line: 472, column: 35, scope: !1349)
!1371 = !DILocation(line: 472, column: 48, scope: !1349)
!1372 = !DILocation(line: 474, column: 3, scope: !1349)
!1373 = !DILocation(line: 474, column: 20, scope: !1349)
!1374 = !DILocation(line: 474, column: 10, scope: !1349)
!1375 = !DILocation(line: 475, column: 30, scope: !1349)
!1376 = !DILocation(line: 476, column: 8, scope: !1349)
!1377 = !DILocation(line: 477, column: 16, scope: !1349)
!1378 = !DILocation(line: 479, column: 7, scope: !1349)
!1379 = !DILocation(line: 481, column: 20, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !59, line: 480, column: 5)
!1381 = distinct !DILexicalBlock(scope: !1349, file: !59, line: 479, column: 7)
!1382 = !DILocation(line: 482, column: 25, scope: !1380)
!1383 = !DILocation(line: 483, column: 5, scope: !1380)
!1384 = !DILocation(line: 486, column: 3, scope: !1349)
!1385 = !DILocation(line: 488, column: 29, scope: !1363)
!1386 = !DILocation(line: 488, column: 14, scope: !1363)
!1387 = !DILocation(line: 489, column: 22, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1363, file: !59, line: 489, column: 11)
!1389 = !DILocation(line: 496, column: 30, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !59, line: 496, column: 19)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !59, line: 492, column: 13)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !59, line: 490, column: 9)
!1393 = !DILocation(line: 496, column: 20, scope: !1390)
!1394 = !DILocation(line: 496, column: 19, scope: !1391)
!1395 = !DILocation(line: 499, column: 18, scope: !1391)
!1396 = !DILocation(line: 500, column: 21, scope: !1391)
!1397 = !DILocation(line: 495, column: 30, scope: !1391)
!1398 = distinct !{!1398, !1399, !1400}
!1399 = !DILocation(line: 491, column: 11, scope: !1392)
!1400 = !DILocation(line: 501, column: 13, scope: !1392)
!1401 = !DILocation(line: 0, scope: !1363)
!1402 = !DILocation(line: 504, column: 17, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1363, file: !59, line: 504, column: 11)
!1404 = !DILocation(line: 504, column: 22, scope: !1403)
!1405 = !DILocation(line: 0, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1363, file: !59, line: 509, column: 11)
!1407 = !DILocation(line: 509, column: 17, scope: !1406)
!1408 = !DILocation(line: 509, column: 20, scope: !1406)
!1409 = !DILocation(line: 509, column: 24, scope: !1406)
!1410 = !DILocation(line: 509, column: 32, scope: !1406)
!1411 = !DILocation(line: 511, column: 11, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !59, line: 510, column: 9)
!1413 = !DILocation(line: 512, column: 11, scope: !1412)
!1414 = !DILocation(line: 513, column: 11, scope: !1412)
!1415 = distinct !{!1415, !1384, !1416}
!1416 = !DILocation(line: 542, column: 5, scope: !1349)
!1417 = !DILocation(line: 517, column: 29, scope: !1363)
!1418 = !DILocation(line: 517, column: 11, scope: !1363)
!1419 = !DILocation(line: 518, column: 15, scope: !1363)
!1420 = !DILocation(line: 521, column: 33, scope: !1365)
!1421 = !DILocation(line: 521, column: 21, scope: !1365)
!1422 = !DILocation(line: 524, column: 13, scope: !1365)
!1423 = !DILocalVariable(name: "ctx", arg: 1, scope: !1424, file: !59, line: 306, type: !1336)
!1424 = distinct !DISubprogram(name: "get_8", scope: !59, file: !59, line: 306, type: !1425, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !67, retainedNodes: !1428)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!30, !1336, !1427, !62, !203}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1428 = !{!1423, !1429, !1430, !1431, !1432, !1435, !1437}
!1429 = !DILocalVariable(name: "in", arg: 2, scope: !1424, file: !59, line: 307, type: !1427)
!1430 = !DILocalVariable(name: "in_end", arg: 3, scope: !1424, file: !59, line: 307, type: !62)
!1431 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1424, file: !59, line: 308, type: !203)
!1432 = !DILocalVariable(name: "t", scope: !1433, file: !59, line: 315, type: !41)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !59, line: 314, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1424, file: !59, line: 313, column: 7)
!1435 = !DILocalVariable(name: "p", scope: !1436, file: !59, line: 327, type: !41)
!1436 = distinct !DILexicalBlock(scope: !1424, file: !59, line: 325, column: 3)
!1437 = !DILocalVariable(name: "c", scope: !1438, file: !59, line: 330, type: !31)
!1438 = distinct !DILexicalBlock(scope: !1436, file: !59, line: 329, column: 7)
!1439 = !DILocation(line: 306, column: 38, scope: !1424, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 525, column: 20, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1365, file: !59, line: 524, column: 13)
!1442 = !DILocation(line: 307, column: 30, scope: !1424, inlinedAt: !1440)
!1443 = !DILocation(line: 307, column: 55, scope: !1424, inlinedAt: !1440)
!1444 = !DILocation(line: 310, column: 12, scope: !1445, inlinedAt: !1440)
!1445 = distinct !DILexicalBlock(scope: !1424, file: !59, line: 310, column: 7)
!1446 = !{!1447}
!1447 = distinct !{!1447, !1448, !"get_8: argument 0"}
!1448 = distinct !{!1448, !"get_8"}
!1449 = !DILocation(line: 310, column: 7, scope: !1424, inlinedAt: !1440)
!1450 = !DILocation(line: 311, column: 12, scope: !1445, inlinedAt: !1440)
!1451 = !DILocation(line: 313, column: 7, scope: !1424, inlinedAt: !1440)
!1452 = !DILocation(line: 315, column: 19, scope: !1433, inlinedAt: !1440)
!1453 = !DILocation(line: 316, column: 23, scope: !1454, inlinedAt: !1440)
!1454 = distinct !DILexicalBlock(scope: !1433, file: !59, line: 316, column: 11)
!1455 = !DILocation(line: 316, column: 13, scope: !1454, inlinedAt: !1440)
!1456 = !DILocation(line: 316, column: 29, scope: !1454, inlinedAt: !1440)
!1457 = !DILocation(line: 316, column: 32, scope: !1454, inlinedAt: !1440)
!1458 = !DILocation(line: 316, column: 52, scope: !1454, inlinedAt: !1440)
!1459 = !DILocation(line: 316, column: 11, scope: !1433, inlinedAt: !1440)
!1460 = !DILocation(line: 319, column: 15, scope: !1461, inlinedAt: !1440)
!1461 = distinct !DILexicalBlock(scope: !1454, file: !59, line: 317, column: 9)
!1462 = !DILocation(line: 522, column: 21, scope: !1365)
!1463 = !DILocation(line: 532, column: 38, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1365, file: !59, line: 532, column: 13)
!1465 = !DILocation(line: 327, column: 17, scope: !1436, inlinedAt: !1440)
!1466 = !DILocation(line: 328, column: 14, scope: !1436, inlinedAt: !1440)
!1467 = !DILocation(line: 328, column: 5, scope: !1436, inlinedAt: !1440)
!1468 = !DILocation(line: 330, column: 20, scope: !1438, inlinedAt: !1440)
!1469 = !DILocation(line: 330, column: 18, scope: !1438, inlinedAt: !1440)
!1470 = !DILocation(line: 330, column: 14, scope: !1438, inlinedAt: !1440)
!1471 = !DILocation(line: 331, column: 15, scope: !1472, inlinedAt: !1440)
!1472 = distinct !DILexicalBlock(scope: !1438, file: !59, line: 331, column: 13)
!1473 = !DILocation(line: 331, column: 13, scope: !1438, inlinedAt: !1440)
!1474 = !DILocation(line: 333, column: 28, scope: !1475, inlinedAt: !1440)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !59, line: 332, column: 11)
!1476 = !DILocation(line: 333, column: 13, scope: !1475, inlinedAt: !1440)
!1477 = !DILocation(line: 333, column: 32, scope: !1475, inlinedAt: !1440)
!1478 = !DILocation(line: 334, column: 24, scope: !1479, inlinedAt: !1440)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !59, line: 334, column: 17)
!1480 = !DILocation(line: 334, column: 17, scope: !1475, inlinedAt: !1440)
!1481 = !DILocation(line: 340, column: 27, scope: !1436, inlinedAt: !1440)
!1482 = !DILocation(line: 0, scope: !1436, inlinedAt: !1440)
!1483 = !DILocation(line: 339, column: 9, scope: !1436, inlinedAt: !1440)
!1484 = !DILocation(line: 340, column: 22, scope: !1436, inlinedAt: !1440)
!1485 = !DILocation(line: 0, scope: !1441)
!1486 = !DILocation(line: 532, column: 19, scope: !1464)
!1487 = !DILocation(line: 532, column: 24, scope: !1464)
!1488 = !DILocation(line: 532, column: 34, scope: !1464)
!1489 = !DILocation(line: 537, column: 14, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1365, file: !59, line: 537, column: 13)
!1491 = !DILocation(line: 537, column: 13, scope: !1365)
!1492 = !DILocation(line: 540, column: 24, scope: !1365)
!1493 = !DILocation(line: 541, column: 7, scope: !1363)
!1494 = !DILocation(line: 544, column: 14, scope: !1349)
!1495 = !DILocation(line: 544, column: 11, scope: !1349)
!1496 = !DILocation(line: 546, column: 16, scope: !1349)
!1497 = !DILocation(line: 547, column: 1, scope: !1349)
!1498 = !DILocation(line: 546, column: 3, scope: !1349)
!1499 = distinct !DISubprogram(name: "decode_8", scope: !59, file: !59, line: 360, type: !1500, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !67, retainedNodes: !1503)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!94, !62, !63, !1502, !203}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1503 = !{!1504, !1505, !1506, !1507, !1508}
!1504 = !DILocalVariable(name: "in", arg: 1, scope: !1499, file: !59, line: 360, type: !62)
!1505 = !DILocalVariable(name: "inlen", arg: 2, scope: !1499, file: !59, line: 360, type: !63)
!1506 = !DILocalVariable(name: "outp", arg: 3, scope: !1499, file: !59, line: 361, type: !1502)
!1507 = !DILocalVariable(name: "outleft", arg: 4, scope: !1499, file: !59, line: 361, type: !203)
!1508 = !DILocalVariable(name: "out", scope: !1499, file: !59, line: 363, type: !30)
!1509 = !DILocation(line: 360, column: 32, scope: !1499)
!1510 = !DILocation(line: 360, column: 43, scope: !1499)
!1511 = !DILocation(line: 361, column: 27, scope: !1499)
!1512 = !DILocation(line: 361, column: 41, scope: !1499)
!1513 = !DILocation(line: 363, column: 15, scope: !1499)
!1514 = !DILocation(line: 363, column: 9, scope: !1499)
!1515 = !DILocation(line: 364, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1499, file: !59, line: 364, column: 7)
!1517 = !DILocation(line: 364, column: 7, scope: !1499)
!1518 = !DILocation(line: 367, column: 18, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1499, file: !59, line: 367, column: 7)
!1520 = !DILocation(line: 286, column: 16, scope: !1324, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 367, column: 8, scope: !1519)
!1522 = !DILocation(line: 288, column: 49, scope: !1324, inlinedAt: !1521)
!1523 = !DILocation(line: 288, column: 46, scope: !1324, inlinedAt: !1521)
!1524 = !DILocation(line: 367, column: 25, scope: !1519)
!1525 = !DILocation(line: 367, column: 39, scope: !1519)
!1526 = !DILocation(line: 286, column: 16, scope: !1324, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 367, column: 29, scope: !1519)
!1528 = !DILocation(line: 288, column: 49, scope: !1324, inlinedAt: !1527)
!1529 = !DILocation(line: 288, column: 46, scope: !1324, inlinedAt: !1527)
!1530 = !DILocation(line: 367, column: 7, scope: !1499)
!1531 = !DILocation(line: 370, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1499, file: !59, line: 370, column: 7)
!1533 = !DILocation(line: 370, column: 7, scope: !1499)
!1534 = !DILocation(line: 372, column: 40, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !59, line: 371, column: 5)
!1536 = !DILocation(line: 373, column: 17, scope: !1535)
!1537 = !DILocation(line: 372, column: 11, scope: !1535)
!1538 = !DILocation(line: 372, column: 14, scope: !1535)
!1539 = !DILocation(line: 374, column: 7, scope: !1535)
!1540 = !DILocation(line: 375, column: 5, scope: !1535)
!1541 = !DILocation(line: 0, scope: !1499)
!1542 = !DILocation(line: 377, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1499, file: !59, line: 377, column: 7)
!1544 = !DILocation(line: 377, column: 13, scope: !1543)
!1545 = !DILocation(line: 377, column: 7, scope: !1499)
!1546 = !DILocation(line: 379, column: 11, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !59, line: 379, column: 11)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !59, line: 378, column: 5)
!1549 = !DILocation(line: 379, column: 17, scope: !1547)
!1550 = !DILocation(line: 379, column: 24, scope: !1547)
!1551 = !DILocation(line: 379, column: 27, scope: !1547)
!1552 = !DILocation(line: 379, column: 33, scope: !1547)
!1553 = !DILocation(line: 379, column: 40, scope: !1547)
!1554 = !DILocation(line: 379, column: 43, scope: !1547)
!1555 = !DILocation(line: 379, column: 49, scope: !1547)
!1556 = !DILocation(line: 380, column: 11, scope: !1547)
!1557 = !DILocation(line: 380, column: 14, scope: !1547)
!1558 = !DILocation(line: 380, column: 20, scope: !1547)
!1559 = !DILocation(line: 380, column: 27, scope: !1547)
!1560 = !DILocation(line: 380, column: 30, scope: !1547)
!1561 = !DILocation(line: 380, column: 36, scope: !1547)
!1562 = !DILocation(line: 379, column: 11, scope: !1548)
!1563 = !DILocation(line: 381, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1547, file: !59, line: 381, column: 9)
!1565 = !DILocation(line: 286, column: 16, scope: !1324, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 385, column: 12, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !59, line: 385, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1543, file: !59, line: 384, column: 5)
!1569 = !DILocation(line: 288, column: 49, scope: !1324, inlinedAt: !1566)
!1570 = !DILocation(line: 288, column: 46, scope: !1324, inlinedAt: !1566)
!1571 = !DILocation(line: 385, column: 29, scope: !1567)
!1572 = !DILocation(line: 385, column: 43, scope: !1567)
!1573 = !DILocation(line: 286, column: 16, scope: !1324, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 385, column: 33, scope: !1567)
!1575 = !DILocation(line: 288, column: 49, scope: !1324, inlinedAt: !1574)
!1576 = !DILocation(line: 288, column: 46, scope: !1324, inlinedAt: !1574)
!1577 = !DILocation(line: 385, column: 11, scope: !1568)
!1578 = !DILocation(line: 386, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1567, file: !59, line: 386, column: 9)
!1580 = !DILocation(line: 388, column: 11, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1568, file: !59, line: 388, column: 11)
!1582 = !DILocation(line: 388, column: 11, scope: !1568)
!1583 = !DILocation(line: 390, column: 44, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !59, line: 389, column: 9)
!1585 = !DILocation(line: 391, column: 46, scope: !1584)
!1586 = !DILocation(line: 391, column: 21, scope: !1584)
!1587 = !DILocation(line: 392, column: 21, scope: !1584)
!1588 = !DILocation(line: 390, column: 15, scope: !1584)
!1589 = !DILocation(line: 390, column: 18, scope: !1584)
!1590 = !DILocation(line: 393, column: 11, scope: !1584)
!1591 = !DILocation(line: 394, column: 9, scope: !1584)
!1592 = !DILocation(line: 0, scope: !1535)
!1593 = !DILocation(line: 396, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1568, file: !59, line: 396, column: 11)
!1595 = !DILocation(line: 396, column: 17, scope: !1594)
!1596 = !DILocation(line: 396, column: 11, scope: !1568)
!1597 = !DILocation(line: 398, column: 15, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !59, line: 398, column: 15)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !59, line: 397, column: 9)
!1600 = !DILocation(line: 398, column: 21, scope: !1598)
!1601 = !DILocation(line: 398, column: 28, scope: !1598)
!1602 = !DILocation(line: 398, column: 31, scope: !1598)
!1603 = !DILocation(line: 398, column: 37, scope: !1598)
!1604 = !DILocation(line: 398, column: 44, scope: !1598)
!1605 = !DILocation(line: 398, column: 47, scope: !1598)
!1606 = !DILocation(line: 398, column: 53, scope: !1598)
!1607 = !DILocation(line: 398, column: 15, scope: !1599)
!1608 = !DILocation(line: 399, column: 13, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1598, file: !59, line: 399, column: 13)
!1610 = !DILocation(line: 286, column: 16, scope: !1324, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 403, column: 16, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !59, line: 403, column: 15)
!1613 = distinct !DILexicalBlock(scope: !1594, file: !59, line: 402, column: 9)
!1614 = !DILocation(line: 288, column: 49, scope: !1324, inlinedAt: !1611)
!1615 = !DILocation(line: 288, column: 46, scope: !1324, inlinedAt: !1611)
!1616 = !DILocation(line: 403, column: 15, scope: !1613)
!1617 = !DILocation(line: 404, column: 13, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !59, line: 404, column: 13)
!1619 = !DILocation(line: 406, column: 15, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1613, file: !59, line: 406, column: 15)
!1621 = !DILocation(line: 406, column: 15, scope: !1613)
!1622 = !DILocation(line: 408, column: 48, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !59, line: 407, column: 13)
!1624 = !DILocation(line: 409, column: 25, scope: !1623)
!1625 = !DILocation(line: 408, column: 19, scope: !1623)
!1626 = !DILocation(line: 408, column: 22, scope: !1623)
!1627 = !DILocation(line: 410, column: 15, scope: !1623)
!1628 = !DILocation(line: 411, column: 13, scope: !1623)
!1629 = !DILocation(line: 0, scope: !1584)
!1630 = !DILocation(line: 413, column: 15, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1613, file: !59, line: 413, column: 15)
!1632 = !DILocation(line: 413, column: 21, scope: !1631)
!1633 = !DILocation(line: 413, column: 15, scope: !1613)
!1634 = !DILocation(line: 415, column: 19, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !59, line: 415, column: 19)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !59, line: 414, column: 13)
!1637 = !DILocation(line: 415, column: 25, scope: !1635)
!1638 = !DILocation(line: 415, column: 32, scope: !1635)
!1639 = !DILocation(line: 415, column: 35, scope: !1635)
!1640 = !DILocation(line: 415, column: 41, scope: !1635)
!1641 = !DILocation(line: 415, column: 19, scope: !1636)
!1642 = !DILocation(line: 416, column: 17, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1635, file: !59, line: 416, column: 17)
!1644 = !DILocation(line: 286, column: 16, scope: !1324, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 420, column: 20, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !59, line: 420, column: 19)
!1647 = distinct !DILexicalBlock(scope: !1631, file: !59, line: 419, column: 13)
!1648 = !DILocation(line: 288, column: 49, scope: !1324, inlinedAt: !1645)
!1649 = !DILocation(line: 288, column: 46, scope: !1324, inlinedAt: !1645)
!1650 = !DILocation(line: 420, column: 37, scope: !1646)
!1651 = !DILocation(line: 420, column: 51, scope: !1646)
!1652 = !DILocation(line: 286, column: 16, scope: !1324, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 420, column: 41, scope: !1646)
!1654 = !DILocation(line: 288, column: 49, scope: !1324, inlinedAt: !1653)
!1655 = !DILocation(line: 288, column: 46, scope: !1324, inlinedAt: !1653)
!1656 = !DILocation(line: 420, column: 19, scope: !1647)
!1657 = !DILocation(line: 421, column: 17, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1646, file: !59, line: 421, column: 17)
!1659 = !DILocation(line: 423, column: 19, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1647, file: !59, line: 423, column: 19)
!1661 = !DILocation(line: 423, column: 19, scope: !1647)
!1662 = !DILocation(line: 425, column: 52, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !59, line: 424, column: 17)
!1664 = !DILocation(line: 426, column: 54, scope: !1663)
!1665 = !DILocation(line: 426, column: 29, scope: !1663)
!1666 = !DILocation(line: 427, column: 29, scope: !1663)
!1667 = !DILocation(line: 425, column: 23, scope: !1663)
!1668 = !DILocation(line: 425, column: 26, scope: !1663)
!1669 = !DILocation(line: 428, column: 19, scope: !1663)
!1670 = !DILocation(line: 429, column: 17, scope: !1663)
!1671 = !DILocation(line: 0, scope: !1623)
!1672 = !DILocation(line: 431, column: 19, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1647, file: !59, line: 431, column: 19)
!1674 = !DILocation(line: 431, column: 25, scope: !1673)
!1675 = !DILocation(line: 431, column: 19, scope: !1647)
!1676 = !DILocation(line: 286, column: 16, scope: !1324, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 433, column: 24, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !59, line: 433, column: 23)
!1679 = distinct !DILexicalBlock(scope: !1673, file: !59, line: 432, column: 17)
!1680 = !DILocation(line: 288, column: 49, scope: !1324, inlinedAt: !1677)
!1681 = !DILocation(line: 288, column: 46, scope: !1324, inlinedAt: !1677)
!1682 = !DILocation(line: 433, column: 23, scope: !1679)
!1683 = !DILocation(line: 434, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !59, line: 434, column: 21)
!1685 = !DILocation(line: 436, column: 23, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !59, line: 436, column: 23)
!1687 = !DILocation(line: 436, column: 23, scope: !1679)
!1688 = !DILocation(line: 438, column: 48, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !59, line: 437, column: 21)
!1690 = !DILocation(line: 438, column: 34, scope: !1689)
!1691 = !DILocation(line: 438, column: 56, scope: !1689)
!1692 = !DILocation(line: 439, column: 33, scope: !1689)
!1693 = !DILocation(line: 438, column: 27, scope: !1689)
!1694 = !DILocation(line: 438, column: 30, scope: !1689)
!1695 = !DILocation(line: 440, column: 23, scope: !1689)
!1696 = !DILocation(line: 441, column: 21, scope: !1689)
!1697 = !DILocation(line: 0, scope: !1663)
!1698 = !DILocation(line: 447, column: 9, scope: !1499)
!1699 = !DILocation(line: 448, column: 3, scope: !1499)
!1700 = !DILocation(line: 0, scope: !1519)
!1701 = !DILocation(line: 449, column: 1, scope: !1499)
!1702 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !59, file: !59, line: 561, type: !1703, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !67, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!94, !1336, !41, !63, !727, !203}
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711}
!1706 = !DILocalVariable(name: "ctx", arg: 1, scope: !1702, file: !59, line: 561, type: !1336)
!1707 = !DILocalVariable(name: "in", arg: 2, scope: !1702, file: !59, line: 562, type: !41)
!1708 = !DILocalVariable(name: "inlen", arg: 3, scope: !1702, file: !59, line: 562, type: !63)
!1709 = !DILocalVariable(name: "out", arg: 4, scope: !1702, file: !59, line: 562, type: !727)
!1710 = !DILocalVariable(name: "outlen", arg: 5, scope: !1702, file: !59, line: 563, type: !203)
!1711 = !DILocalVariable(name: "needlen", scope: !1702, file: !59, line: 570, type: !63)
!1712 = !DILocation(line: 561, column: 56, scope: !1702)
!1713 = !DILocation(line: 562, column: 38, scope: !1702)
!1714 = !DILocation(line: 562, column: 49, scope: !1702)
!1715 = !DILocation(line: 562, column: 63, scope: !1702)
!1716 = !DILocation(line: 563, column: 34, scope: !1702)
!1717 = !DILocation(line: 570, column: 3, scope: !1702)
!1718 = !DILocation(line: 570, column: 31, scope: !1702)
!1719 = !DILocation(line: 570, column: 22, scope: !1702)
!1720 = !DILocation(line: 570, column: 36, scope: !1702)
!1721 = !DILocation(line: 570, column: 10, scope: !1702)
!1722 = !DILocation(line: 572, column: 10, scope: !1702)
!1723 = !DILocation(line: 572, column: 8, scope: !1702)
!1724 = !DILocation(line: 573, column: 8, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1702, file: !59, line: 573, column: 7)
!1726 = !DILocation(line: 573, column: 7, scope: !1702)
!1727 = !DILocation(line: 576, column: 8, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1702, file: !59, line: 576, column: 7)
!1729 = !DILocation(line: 576, column: 7, scope: !1702)
!1730 = !DILocation(line: 578, column: 13, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !59, line: 577, column: 5)
!1732 = !DILocation(line: 578, column: 7, scope: !1731)
!1733 = !DILocation(line: 579, column: 12, scope: !1731)
!1734 = !DILocation(line: 580, column: 7, scope: !1731)
!1735 = !DILocation(line: 583, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1702, file: !59, line: 583, column: 7)
!1737 = !DILocation(line: 583, column: 7, scope: !1702)
!1738 = !DILocation(line: 584, column: 15, scope: !1736)
!1739 = !DILocation(line: 584, column: 13, scope: !1736)
!1740 = !DILocation(line: 584, column: 5, scope: !1736)
!1741 = !DILocation(line: 0, scope: !1725)
!1742 = !DILocation(line: 587, column: 1, scope: !1702)
!1743 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !93, file: !93, line: 51, type: !647, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !88, retainedNodes: !1744)
!1744 = !{!1745}
!1745 = !DILocalVariable(name: "file", arg: 1, scope: !1743, file: !93, line: 51, type: !41)
!1746 = !DILocation(line: 51, column: 41, scope: !1743)
!1747 = !DILocation(line: 53, column: 13, scope: !1743)
!1748 = !DILocation(line: 54, column: 1, scope: !1743)
!1749 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !93, file: !93, line: 88, type: !1750, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !88, retainedNodes: !1752)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !94}
!1752 = !{!1753}
!1753 = !DILocalVariable(name: "ignore", arg: 1, scope: !1749, file: !93, line: 88, type: !94)
!1754 = !DILocation(line: 88, column: 37, scope: !1749)
!1755 = !DILocation(line: 90, column: 16, scope: !1749)
!1756 = !{!1757, !1757, i64 0}
!1757 = !{!"_Bool", !674, i64 0}
!1758 = !DILocation(line: 91, column: 1, scope: !1749)
!1759 = distinct !DISubprogram(name: "close_stdout", scope: !93, file: !93, line: 117, type: !679, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !88, retainedNodes: !1760)
!1760 = !{!1761}
!1761 = !DILocalVariable(name: "write_error", scope: !1762, file: !93, line: 122, type: !41)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !93, line: 121, column: 5)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !93, line: 119, column: 7)
!1764 = !DILocation(line: 119, column: 21, scope: !1763)
!1765 = !DILocation(line: 119, column: 7, scope: !1763)
!1766 = !DILocation(line: 119, column: 29, scope: !1763)
!1767 = !DILocation(line: 120, column: 7, scope: !1763)
!1768 = !DILocation(line: 120, column: 12, scope: !1763)
!1769 = !{i8 0, i8 2}
!1770 = !DILocation(line: 120, column: 25, scope: !1763)
!1771 = !DILocation(line: 120, column: 28, scope: !1763)
!1772 = !DILocation(line: 120, column: 34, scope: !1763)
!1773 = !DILocation(line: 119, column: 7, scope: !1759)
!1774 = !DILocation(line: 122, column: 33, scope: !1762)
!1775 = !DILocation(line: 122, column: 19, scope: !1762)
!1776 = !DILocation(line: 123, column: 11, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1762, file: !93, line: 123, column: 11)
!1778 = !DILocation(line: 0, scope: !1777)
!1779 = !DILocation(line: 123, column: 11, scope: !1762)
!1780 = !DILocation(line: 124, column: 36, scope: !1777)
!1781 = !DILocation(line: 124, column: 9, scope: !1777)
!1782 = !DILocation(line: 127, column: 9, scope: !1777)
!1783 = !DILocation(line: 129, column: 14, scope: !1762)
!1784 = !DILocation(line: 129, column: 7, scope: !1762)
!1785 = !DILocation(line: 134, column: 42, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1759, file: !93, line: 134, column: 7)
!1787 = !DILocation(line: 134, column: 28, scope: !1786)
!1788 = !DILocation(line: 134, column: 50, scope: !1786)
!1789 = !DILocation(line: 134, column: 7, scope: !1759)
!1790 = !DILocation(line: 135, column: 12, scope: !1786)
!1791 = !DILocation(line: 135, column: 5, scope: !1786)
!1792 = !DILocation(line: 136, column: 1, scope: !1759)
!1793 = distinct !DISubprogram(name: "fdadvise", scope: !1794, file: !1794, line: 31, type: !1795, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !1800)
!1794 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !44, !1797, !1797, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1798, line: 63, baseType: !759)
!1798 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1800 = !{!1801, !1802, !1803, !1804, !1805}
!1801 = !DILocalVariable(name: "fd", arg: 1, scope: !1793, file: !1794, line: 31, type: !44)
!1802 = !DILocalVariable(name: "offset", arg: 2, scope: !1793, file: !1794, line: 31, type: !1797)
!1803 = !DILocalVariable(name: "len", arg: 3, scope: !1793, file: !1794, line: 31, type: !1797)
!1804 = !DILocalVariable(name: "advice", arg: 4, scope: !1793, file: !1794, line: 31, type: !1799)
!1805 = !DILocalVariable(name: "__x", scope: !1806, file: !1794, line: 34, type: !44)
!1806 = distinct !DILexicalBlock(scope: !1793, file: !1794, line: 34, column: 3)
!1807 = !DILocation(line: 31, column: 15, scope: !1793)
!1808 = !DILocation(line: 31, column: 25, scope: !1793)
!1809 = !DILocation(line: 31, column: 39, scope: !1793)
!1810 = !DILocation(line: 31, column: 54, scope: !1793)
!1811 = !DILocation(line: 34, column: 3, scope: !1806)
!1812 = !DILocation(line: 36, column: 1, scope: !1793)
!1813 = distinct !DISubprogram(name: "fadvise", scope: !1794, file: !1794, line: 39, type: !1814, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !1850)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !1816, !1799}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !735, line: 7, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !737, line: 49, size: 1728, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1818, file: !737, line: 51, baseType: !44, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1818, file: !737, line: 54, baseType: !30, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1818, file: !737, line: 55, baseType: !30, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1818, file: !737, line: 56, baseType: !30, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1818, file: !737, line: 57, baseType: !30, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1818, file: !737, line: 58, baseType: !30, size: 64, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1818, file: !737, line: 59, baseType: !30, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1818, file: !737, line: 60, baseType: !30, size: 64, offset: 448)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1818, file: !737, line: 61, baseType: !30, size: 64, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1818, file: !737, line: 64, baseType: !30, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1818, file: !737, line: 65, baseType: !30, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1818, file: !737, line: 66, baseType: !30, size: 64, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1818, file: !737, line: 68, baseType: !752, size: 64, offset: 768)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1818, file: !737, line: 70, baseType: !1834, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1818, file: !737, line: 72, baseType: !44, size: 32, offset: 896)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1818, file: !737, line: 73, baseType: !44, size: 32, offset: 928)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1818, file: !737, line: 74, baseType: !759, size: 64, offset: 960)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1818, file: !737, line: 77, baseType: !134, size: 16, offset: 1024)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1818, file: !737, line: 78, baseType: !75, size: 8, offset: 1040)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1818, file: !737, line: 79, baseType: !765, size: 8, offset: 1048)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1818, file: !737, line: 81, baseType: !769, size: 64, offset: 1088)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1818, file: !737, line: 89, baseType: !772, size: 64, offset: 1152)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1818, file: !737, line: 91, baseType: !774, size: 64, offset: 1216)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1818, file: !737, line: 92, baseType: !777, size: 64, offset: 1280)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1818, file: !737, line: 93, baseType: !1834, size: 64, offset: 1344)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1818, file: !737, line: 94, baseType: !32, size: 64, offset: 1408)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1818, file: !737, line: 95, baseType: !63, size: 64, offset: 1472)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1818, file: !737, line: 96, baseType: !44, size: 32, offset: 1536)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1818, file: !737, line: 98, baseType: !784, size: 160, offset: 1568)
!1850 = !{!1851, !1852}
!1851 = !DILocalVariable(name: "fp", arg: 1, scope: !1813, file: !1794, line: 39, type: !1816)
!1852 = !DILocalVariable(name: "advice", arg: 2, scope: !1813, file: !1794, line: 39, type: !1799)
!1853 = !DILocation(line: 39, column: 16, scope: !1813)
!1854 = !DILocation(line: 39, column: 30, scope: !1813)
!1855 = !DILocation(line: 41, column: 7, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1813, file: !1794, line: 41, column: 7)
!1857 = !DILocation(line: 41, column: 7, scope: !1813)
!1858 = !DILocation(line: 42, column: 15, scope: !1856)
!1859 = !DILocation(line: 31, column: 15, scope: !1793, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 42, column: 5, scope: !1856)
!1861 = !DILocation(line: 31, column: 25, scope: !1793, inlinedAt: !1860)
!1862 = !DILocation(line: 31, column: 39, scope: !1793, inlinedAt: !1860)
!1863 = !DILocation(line: 31, column: 54, scope: !1793, inlinedAt: !1860)
!1864 = !DILocation(line: 34, column: 3, scope: !1806, inlinedAt: !1860)
!1865 = !DILocation(line: 42, column: 5, scope: !1856)
!1866 = !DILocation(line: 43, column: 1, scope: !1813)
!1867 = distinct !DISubprogram(name: "set_program_name", scope: !107, file: !107, line: 39, type: !647, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !104, retainedNodes: !1868)
!1868 = !{!1869, !1870, !1871}
!1869 = !DILocalVariable(name: "argv0", arg: 1, scope: !1867, file: !107, line: 39, type: !41)
!1870 = !DILocalVariable(name: "slash", scope: !1867, file: !107, line: 46, type: !41)
!1871 = !DILocalVariable(name: "base", scope: !1867, file: !107, line: 47, type: !41)
!1872 = !DILocation(line: 39, column: 31, scope: !1867)
!1873 = !DILocation(line: 51, column: 13, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1867, file: !107, line: 51, column: 7)
!1875 = !DILocation(line: 51, column: 7, scope: !1867)
!1876 = !DILocation(line: 55, column: 14, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !107, line: 52, column: 5)
!1878 = !DILocation(line: 54, column: 7, scope: !1877)
!1879 = !DILocation(line: 56, column: 7, scope: !1877)
!1880 = !DILocation(line: 59, column: 11, scope: !1867)
!1881 = !DILocation(line: 46, column: 15, scope: !1867)
!1882 = !DILocation(line: 60, column: 17, scope: !1867)
!1883 = !DILocation(line: 60, column: 33, scope: !1867)
!1884 = !DILocation(line: 60, column: 11, scope: !1867)
!1885 = !DILocation(line: 47, column: 15, scope: !1867)
!1886 = !DILocation(line: 61, column: 12, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1867, file: !107, line: 61, column: 7)
!1888 = !DILocation(line: 61, column: 20, scope: !1887)
!1889 = !DILocation(line: 61, column: 25, scope: !1887)
!1890 = !DILocation(line: 61, column: 42, scope: !1887)
!1891 = !DILocation(line: 61, column: 28, scope: !1887)
!1892 = !DILocation(line: 61, column: 61, scope: !1887)
!1893 = !DILocation(line: 61, column: 7, scope: !1867)
!1894 = !DILocation(line: 64, column: 11, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !107, line: 64, column: 11)
!1896 = distinct !DILexicalBlock(scope: !1887, file: !107, line: 62, column: 5)
!1897 = !DILocation(line: 64, column: 36, scope: !1895)
!1898 = !DILocation(line: 64, column: 11, scope: !1896)
!1899 = !DILocation(line: 66, column: 24, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !107, line: 65, column: 9)
!1901 = !DILocation(line: 70, column: 41, scope: !1900)
!1902 = !DILocation(line: 72, column: 9, scope: !1900)
!1903 = !DILocation(line: 84, column: 16, scope: !1867)
!1904 = !DILocation(line: 90, column: 27, scope: !1867)
!1905 = !DILocation(line: 92, column: 1, scope: !1867)
!1906 = distinct !DISubprogram(name: "clone_quoting_options", scope: !138, file: !138, line: 122, type: !1907, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !1910)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!1909, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!1910 = !{!1911, !1912, !1913}
!1911 = !DILocalVariable(name: "o", arg: 1, scope: !1906, file: !138, line: 122, type: !1909)
!1912 = !DILocalVariable(name: "e", scope: !1906, file: !138, line: 124, type: !44)
!1913 = !DILocalVariable(name: "p", scope: !1906, file: !138, line: 125, type: !1909)
!1914 = !DILocation(line: 122, column: 48, scope: !1906)
!1915 = !DILocation(line: 124, column: 11, scope: !1906)
!1916 = !DILocation(line: 124, column: 7, scope: !1906)
!1917 = !DILocation(line: 125, column: 40, scope: !1906)
!1918 = !DILocation(line: 125, column: 31, scope: !1906)
!1919 = !DILocation(line: 125, column: 27, scope: !1906)
!1920 = !DILocation(line: 127, column: 9, scope: !1906)
!1921 = !DILocation(line: 128, column: 3, scope: !1906)
!1922 = distinct !DISubprogram(name: "get_quoting_style", scope: !138, file: !138, line: 133, type: !1923, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !1927)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!5, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "o", arg: 1, scope: !1922, file: !138, line: 133, type: !1925)
!1929 = !DILocation(line: 133, column: 50, scope: !1922)
!1930 = !DILocation(line: 135, column: 11, scope: !1922)
!1931 = !DILocation(line: 135, column: 46, scope: !1922)
!1932 = !{!1933, !674, i64 0}
!1933 = !{!"quoting_options", !674, i64 0, !879, i64 4, !674, i64 8, !673, i64 40, !673, i64 48}
!1934 = !DILocation(line: 135, column: 3, scope: !1922)
!1935 = distinct !DISubprogram(name: "set_quoting_style", scope: !138, file: !138, line: 141, type: !1936, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1909, !5}
!1938 = !{!1939, !1940}
!1939 = !DILocalVariable(name: "o", arg: 1, scope: !1935, file: !138, line: 141, type: !1909)
!1940 = !DILocalVariable(name: "s", arg: 2, scope: !1935, file: !138, line: 141, type: !5)
!1941 = !DILocation(line: 141, column: 44, scope: !1935)
!1942 = !DILocation(line: 141, column: 66, scope: !1935)
!1943 = !DILocation(line: 143, column: 4, scope: !1935)
!1944 = !DILocation(line: 143, column: 39, scope: !1935)
!1945 = !DILocation(line: 143, column: 45, scope: !1935)
!1946 = !DILocation(line: 144, column: 1, scope: !1935)
!1947 = distinct !DISubprogram(name: "set_char_quoting", scope: !138, file: !138, line: 152, type: !1948, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!44, !1909, !31, !44}
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1957, !1958}
!1951 = !DILocalVariable(name: "o", arg: 1, scope: !1947, file: !138, line: 152, type: !1909)
!1952 = !DILocalVariable(name: "c", arg: 2, scope: !1947, file: !138, line: 152, type: !31)
!1953 = !DILocalVariable(name: "i", arg: 3, scope: !1947, file: !138, line: 152, type: !44)
!1954 = !DILocalVariable(name: "uc", scope: !1947, file: !138, line: 154, type: !33)
!1955 = !DILocalVariable(name: "p", scope: !1947, file: !138, line: 155, type: !1956)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1957 = !DILocalVariable(name: "shift", scope: !1947, file: !138, line: 157, type: !44)
!1958 = !DILocalVariable(name: "r", scope: !1947, file: !138, line: 158, type: !44)
!1959 = !DILocation(line: 152, column: 43, scope: !1947)
!1960 = !DILocation(line: 152, column: 51, scope: !1947)
!1961 = !DILocation(line: 152, column: 58, scope: !1947)
!1962 = !DILocation(line: 154, column: 17, scope: !1947)
!1963 = !DILocation(line: 156, column: 6, scope: !1947)
!1964 = !DILocation(line: 156, column: 62, scope: !1947)
!1965 = !DILocation(line: 156, column: 57, scope: !1947)
!1966 = !DILocation(line: 155, column: 17, scope: !1947)
!1967 = !DILocation(line: 157, column: 15, scope: !1947)
!1968 = !DILocation(line: 157, column: 7, scope: !1947)
!1969 = !DILocation(line: 158, column: 12, scope: !1947)
!1970 = !DILocation(line: 158, column: 15, scope: !1947)
!1971 = !DILocation(line: 158, column: 25, scope: !1947)
!1972 = !DILocation(line: 158, column: 7, scope: !1947)
!1973 = !DILocation(line: 159, column: 13, scope: !1947)
!1974 = !DILocation(line: 159, column: 18, scope: !1947)
!1975 = !DILocation(line: 159, column: 23, scope: !1947)
!1976 = !DILocation(line: 159, column: 6, scope: !1947)
!1977 = !DILocation(line: 160, column: 3, scope: !1947)
!1978 = distinct !DISubprogram(name: "set_quoting_flags", scope: !138, file: !138, line: 168, type: !1979, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!44, !1909, !44}
!1981 = !{!1982, !1983, !1984}
!1982 = !DILocalVariable(name: "o", arg: 1, scope: !1978, file: !138, line: 168, type: !1909)
!1983 = !DILocalVariable(name: "i", arg: 2, scope: !1978, file: !138, line: 168, type: !44)
!1984 = !DILocalVariable(name: "r", scope: !1978, file: !138, line: 170, type: !44)
!1985 = !DILocation(line: 168, column: 44, scope: !1978)
!1986 = !DILocation(line: 168, column: 51, scope: !1978)
!1987 = !DILocation(line: 171, column: 8, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1978, file: !138, line: 171, column: 7)
!1989 = !DILocation(line: 171, column: 7, scope: !1978)
!1990 = !DILocation(line: 173, column: 10, scope: !1978)
!1991 = !{!1933, !879, i64 4}
!1992 = !DILocation(line: 170, column: 7, scope: !1978)
!1993 = !DILocation(line: 174, column: 12, scope: !1978)
!1994 = !DILocation(line: 175, column: 3, scope: !1978)
!1995 = distinct !DISubprogram(name: "set_custom_quoting", scope: !138, file: !138, line: 179, type: !1996, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !1909, !41, !41}
!1998 = !{!1999, !2000, !2001}
!1999 = !DILocalVariable(name: "o", arg: 1, scope: !1995, file: !138, line: 179, type: !1909)
!2000 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1995, file: !138, line: 180, type: !41)
!2001 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1995, file: !138, line: 180, type: !41)
!2002 = !DILocation(line: 179, column: 45, scope: !1995)
!2003 = !DILocation(line: 180, column: 33, scope: !1995)
!2004 = !DILocation(line: 180, column: 57, scope: !1995)
!2005 = !DILocation(line: 182, column: 8, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1995, file: !138, line: 182, column: 7)
!2007 = !DILocation(line: 182, column: 7, scope: !1995)
!2008 = !DILocation(line: 184, column: 6, scope: !1995)
!2009 = !DILocation(line: 184, column: 12, scope: !1995)
!2010 = !DILocation(line: 185, column: 8, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1995, file: !138, line: 185, column: 7)
!2012 = !DILocation(line: 185, column: 23, scope: !2011)
!2013 = !DILocation(line: 185, column: 19, scope: !2011)
!2014 = !DILocation(line: 186, column: 5, scope: !2011)
!2015 = !DILocation(line: 187, column: 6, scope: !1995)
!2016 = !DILocation(line: 187, column: 17, scope: !1995)
!2017 = !{!1933, !673, i64 40}
!2018 = !DILocation(line: 188, column: 6, scope: !1995)
!2019 = !DILocation(line: 188, column: 18, scope: !1995)
!2020 = !{!1933, !673, i64 48}
!2021 = !DILocation(line: 189, column: 1, scope: !1995)
!2022 = distinct !DISubprogram(name: "quotearg_buffer", scope: !138, file: !138, line: 784, type: !2023, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!63, !30, !63, !41, !63, !1925}
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033}
!2026 = !DILocalVariable(name: "buffer", arg: 1, scope: !2022, file: !138, line: 784, type: !30)
!2027 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2022, file: !138, line: 784, type: !63)
!2028 = !DILocalVariable(name: "arg", arg: 3, scope: !2022, file: !138, line: 785, type: !41)
!2029 = !DILocalVariable(name: "argsize", arg: 4, scope: !2022, file: !138, line: 785, type: !63)
!2030 = !DILocalVariable(name: "o", arg: 5, scope: !2022, file: !138, line: 786, type: !1925)
!2031 = !DILocalVariable(name: "p", scope: !2022, file: !138, line: 788, type: !1925)
!2032 = !DILocalVariable(name: "e", scope: !2022, file: !138, line: 789, type: !44)
!2033 = !DILocalVariable(name: "r", scope: !2022, file: !138, line: 790, type: !63)
!2034 = !DILocation(line: 784, column: 24, scope: !2022)
!2035 = !DILocation(line: 784, column: 39, scope: !2022)
!2036 = !DILocation(line: 785, column: 30, scope: !2022)
!2037 = !DILocation(line: 785, column: 42, scope: !2022)
!2038 = !DILocation(line: 786, column: 48, scope: !2022)
!2039 = !DILocation(line: 788, column: 37, scope: !2022)
!2040 = !DILocation(line: 788, column: 33, scope: !2022)
!2041 = !DILocation(line: 789, column: 11, scope: !2022)
!2042 = !DILocation(line: 789, column: 7, scope: !2022)
!2043 = !DILocation(line: 791, column: 43, scope: !2022)
!2044 = !DILocation(line: 791, column: 53, scope: !2022)
!2045 = !DILocation(line: 791, column: 60, scope: !2022)
!2046 = !DILocation(line: 792, column: 43, scope: !2022)
!2047 = !DILocation(line: 792, column: 58, scope: !2022)
!2048 = !DILocation(line: 790, column: 14, scope: !2022)
!2049 = !DILocation(line: 790, column: 10, scope: !2022)
!2050 = !DILocation(line: 793, column: 9, scope: !2022)
!2051 = !DILocation(line: 794, column: 3, scope: !2022)
!2052 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !138, file: !138, line: 256, type: !2053, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2057)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!63, !30, !63, !41, !63, !5, !44, !2055, !41, !41}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2057 = !{!2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2082, !2083, !2084, !2085, !2086, !2089, !2090, !2108, !2111, !2112, !2119}
!2058 = !DILocalVariable(name: "buffer", arg: 1, scope: !2052, file: !138, line: 256, type: !30)
!2059 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2052, file: !138, line: 256, type: !63)
!2060 = !DILocalVariable(name: "arg", arg: 3, scope: !2052, file: !138, line: 257, type: !41)
!2061 = !DILocalVariable(name: "argsize", arg: 4, scope: !2052, file: !138, line: 257, type: !63)
!2062 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2052, file: !138, line: 258, type: !5)
!2063 = !DILocalVariable(name: "flags", arg: 6, scope: !2052, file: !138, line: 258, type: !44)
!2064 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2052, file: !138, line: 259, type: !2055)
!2065 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2052, file: !138, line: 260, type: !41)
!2066 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2052, file: !138, line: 261, type: !41)
!2067 = !DILocalVariable(name: "i", scope: !2052, file: !138, line: 263, type: !63)
!2068 = !DILocalVariable(name: "len", scope: !2052, file: !138, line: 264, type: !63)
!2069 = !DILocalVariable(name: "orig_buffersize", scope: !2052, file: !138, line: 265, type: !63)
!2070 = !DILocalVariable(name: "quote_string", scope: !2052, file: !138, line: 266, type: !41)
!2071 = !DILocalVariable(name: "quote_string_len", scope: !2052, file: !138, line: 267, type: !63)
!2072 = !DILocalVariable(name: "backslash_escapes", scope: !2052, file: !138, line: 268, type: !94)
!2073 = !DILocalVariable(name: "unibyte_locale", scope: !2052, file: !138, line: 269, type: !94)
!2074 = !DILocalVariable(name: "elide_outer_quotes", scope: !2052, file: !138, line: 270, type: !94)
!2075 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2052, file: !138, line: 271, type: !94)
!2076 = !DILocalVariable(name: "encountered_single_quote", scope: !2052, file: !138, line: 272, type: !94)
!2077 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2052, file: !138, line: 273, type: !94)
!2078 = !DILocalVariable(name: "c", scope: !2079, file: !138, line: 402, type: !33)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !138, line: 401, column: 5)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !138, line: 400, column: 3)
!2081 = distinct !DILexicalBlock(scope: !2052, file: !138, line: 400, column: 3)
!2082 = !DILocalVariable(name: "esc", scope: !2079, file: !138, line: 403, type: !33)
!2083 = !DILocalVariable(name: "is_right_quote", scope: !2079, file: !138, line: 404, type: !94)
!2084 = !DILocalVariable(name: "escaping", scope: !2079, file: !138, line: 405, type: !94)
!2085 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2079, file: !138, line: 406, type: !94)
!2086 = !DILocalVariable(name: "m", scope: !2087, file: !138, line: 610, type: !63)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 608, column: 11)
!2088 = distinct !DILexicalBlock(scope: !2079, file: !138, line: 426, column: 9)
!2089 = !DILocalVariable(name: "printable", scope: !2087, file: !138, line: 612, type: !94)
!2090 = !DILocalVariable(name: "mbstate", scope: !2091, file: !138, line: 621, type: !2093)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !138, line: 620, column: 15)
!2092 = distinct !DILexicalBlock(scope: !2087, file: !138, line: 614, column: 17)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2094, line: 6, baseType: !2095)
!2094 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2096, line: 21, baseType: !2097)
!2096 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2096, line: 13, size: 64, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2097, file: !2096, line: 15, baseType: !44, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2097, file: !2096, line: 20, baseType: !2101, size: 32, offset: 32)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2097, file: !2096, line: 16, size: 32, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2101, file: !2096, line: 18, baseType: !7, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2101, file: !2096, line: 19, baseType: !2105, size: 32)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 4)
!2108 = !DILocalVariable(name: "w", scope: !2109, file: !138, line: 631, type: !2110)
!2109 = distinct !DILexicalBlock(scope: !2091, file: !138, line: 630, column: 19)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !64, line: 90, baseType: !44)
!2111 = !DILocalVariable(name: "bytes", scope: !2109, file: !138, line: 632, type: !63)
!2112 = !DILocalVariable(name: "j", scope: !2113, file: !138, line: 657, type: !63)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !138, line: 656, column: 27)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !138, line: 654, column: 29)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !138, line: 649, column: 23)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !138, line: 641, column: 30)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !138, line: 636, column: 30)
!2118 = distinct !DILexicalBlock(scope: !2109, file: !138, line: 634, column: 25)
!2119 = !DILocalVariable(name: "ilim", scope: !2120, file: !138, line: 684, type: !63)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !138, line: 681, column: 15)
!2121 = distinct !DILexicalBlock(scope: !2087, file: !138, line: 680, column: 17)
!2122 = !DILocation(line: 256, column: 33, scope: !2052)
!2123 = !DILocation(line: 256, column: 48, scope: !2052)
!2124 = !DILocation(line: 257, column: 39, scope: !2052)
!2125 = !DILocation(line: 257, column: 51, scope: !2052)
!2126 = !DILocation(line: 258, column: 46, scope: !2052)
!2127 = !DILocation(line: 258, column: 65, scope: !2052)
!2128 = !DILocation(line: 259, column: 47, scope: !2052)
!2129 = !DILocation(line: 260, column: 39, scope: !2052)
!2130 = !DILocation(line: 261, column: 39, scope: !2052)
!2131 = !DILocation(line: 264, column: 10, scope: !2052)
!2132 = !DILocation(line: 265, column: 10, scope: !2052)
!2133 = !DILocation(line: 266, column: 15, scope: !2052)
!2134 = !DILocation(line: 267, column: 10, scope: !2052)
!2135 = !DILocation(line: 268, column: 8, scope: !2052)
!2136 = !DILocation(line: 269, column: 25, scope: !2052)
!2137 = !DILocation(line: 269, column: 36, scope: !2052)
!2138 = !DILocation(line: 270, column: 8, scope: !2052)
!2139 = !DILocation(line: 271, column: 8, scope: !2052)
!2140 = !DILocation(line: 272, column: 8, scope: !2052)
!2141 = !DILocation(line: 273, column: 8, scope: !2052)
!2142 = !DILocation(line: 273, column: 3, scope: !2052)
!2143 = !DILocation(line: 0, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2052, file: !138, line: 317, column: 5)
!2145 = !DILocation(line: 316, column: 3, scope: !2052)
!2146 = !DILocation(line: 323, column: 11, scope: !2144)
!2147 = !DILocation(line: 323, column: 12, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !138, line: 323, column: 11)
!2149 = !DILocation(line: 324, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !138, line: 324, column: 9)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !138, line: 324, column: 9)
!2152 = !DILocation(line: 324, column: 9, scope: !2151)
!2153 = !DILocation(line: 362, column: 26, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !138, line: 340, column: 11)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !138, line: 339, column: 13)
!2156 = distinct !DILexicalBlock(scope: !2144, file: !138, line: 338, column: 7)
!2157 = !DILocation(line: 363, column: 27, scope: !2154)
!2158 = !DILocation(line: 364, column: 11, scope: !2154)
!2159 = !DILocation(line: 365, column: 14, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !138, line: 365, column: 13)
!2161 = !DILocation(line: 365, column: 13, scope: !2156)
!2162 = !DILocation(line: 366, column: 43, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !138, line: 366, column: 11)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !138, line: 366, column: 11)
!2165 = !DILocation(line: 366, column: 11, scope: !2164)
!2166 = !DILocation(line: 367, column: 13, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !138, line: 367, column: 13)
!2168 = distinct !DILexicalBlock(scope: !2163, file: !138, line: 367, column: 13)
!2169 = !DILocation(line: 367, column: 13, scope: !2168)
!2170 = !DILocation(line: 366, column: 70, scope: !2163)
!2171 = distinct !{!2171, !2165, !2172}
!2172 = !DILocation(line: 367, column: 13, scope: !2164)
!2173 = !DILocation(line: 370, column: 28, scope: !2156)
!2174 = !DILocation(line: 372, column: 7, scope: !2144)
!2175 = !DILocation(line: 376, column: 7, scope: !2144)
!2176 = !DILocation(line: 379, column: 7, scope: !2144)
!2177 = !DILocation(line: 381, column: 12, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2144, file: !138, line: 381, column: 11)
!2179 = !DILocation(line: 381, column: 11, scope: !2144)
!2180 = !DILocation(line: 0, scope: !2178)
!2181 = !DILocation(line: 386, column: 12, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2144, file: !138, line: 386, column: 11)
!2183 = !DILocation(line: 386, column: 11, scope: !2144)
!2184 = !DILocation(line: 387, column: 9, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !138, line: 387, column: 9)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !138, line: 387, column: 9)
!2187 = !DILocation(line: 387, column: 9, scope: !2186)
!2188 = !DILocation(line: 394, column: 7, scope: !2144)
!2189 = !DILocation(line: 397, column: 7, scope: !2144)
!2190 = !DILocation(line: 0, scope: !2052)
!2191 = !DILocation(line: 263, column: 10, scope: !2052)
!2192 = !DILocation(line: 400, column: 8, scope: !2081)
!2193 = !DILocation(line: 0, scope: !2080)
!2194 = !DILocation(line: 400, column: 27, scope: !2080)
!2195 = !DILocation(line: 400, column: 19, scope: !2080)
!2196 = !DILocation(line: 400, column: 41, scope: !2080)
!2197 = !DILocation(line: 400, column: 48, scope: !2080)
!2198 = !DILocation(line: 400, column: 3, scope: !2081)
!2199 = !DILocation(line: 400, column: 60, scope: !2080)
!2200 = !DILocation(line: 404, column: 12, scope: !2079)
!2201 = !DILocation(line: 405, column: 12, scope: !2079)
!2202 = !DILocation(line: 406, column: 12, scope: !2079)
!2203 = !DILocation(line: 409, column: 11, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2079, file: !138, line: 408, column: 11)
!2205 = !DILocation(line: 411, column: 17, scope: !2204)
!2206 = !DILocation(line: 412, column: 39, scope: !2204)
!2207 = !DILocation(line: 416, column: 32, scope: !2204)
!2208 = !DILocation(line: 412, column: 19, scope: !2204)
!2209 = !DILocation(line: 412, column: 15, scope: !2204)
!2210 = !DILocation(line: 417, column: 11, scope: !2204)
!2211 = !DILocation(line: 417, column: 26, scope: !2204)
!2212 = !DILocation(line: 417, column: 14, scope: !2204)
!2213 = !DILocation(line: 417, column: 63, scope: !2204)
!2214 = !DILocation(line: 408, column: 11, scope: !2079)
!2215 = !DILocation(line: 0, scope: !2079)
!2216 = !DILocation(line: 424, column: 11, scope: !2079)
!2217 = !DILocation(line: 402, column: 21, scope: !2079)
!2218 = !DILocation(line: 425, column: 7, scope: !2079)
!2219 = !DILocation(line: 428, column: 15, scope: !2088)
!2220 = !DILocation(line: 430, column: 15, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !138, line: 430, column: 15)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !138, line: 429, column: 13)
!2223 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 428, column: 15)
!2224 = !DILocation(line: 430, column: 15, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !138, line: 430, column: 15)
!2226 = !DILocation(line: 430, column: 15, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !138, line: 430, column: 15)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !138, line: 430, column: 15)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !138, line: 430, column: 15)
!2230 = !DILocation(line: 430, column: 15, scope: !2228)
!2231 = !DILocation(line: 430, column: 15, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !138, line: 430, column: 15)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !138, line: 430, column: 15)
!2234 = !DILocation(line: 430, column: 15, scope: !2233)
!2235 = !DILocation(line: 430, column: 15, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !138, line: 430, column: 15)
!2237 = distinct !DILexicalBlock(scope: !2229, file: !138, line: 430, column: 15)
!2238 = !DILocation(line: 430, column: 15, scope: !2237)
!2239 = !DILocation(line: 430, column: 15, scope: !2229)
!2240 = !DILocation(line: 430, column: 15, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !138, line: 430, column: 15)
!2242 = distinct !DILexicalBlock(scope: !2221, file: !138, line: 430, column: 15)
!2243 = !DILocation(line: 430, column: 15, scope: !2242)
!2244 = !DILocation(line: 438, column: 19, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2222, file: !138, line: 437, column: 19)
!2246 = !DILocation(line: 438, column: 24, scope: !2245)
!2247 = !DILocation(line: 438, column: 28, scope: !2245)
!2248 = !DILocation(line: 438, column: 38, scope: !2245)
!2249 = !DILocation(line: 438, column: 48, scope: !2245)
!2250 = !DILocation(line: 438, column: 59, scope: !2245)
!2251 = !DILocation(line: 440, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !138, line: 440, column: 19)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !138, line: 440, column: 19)
!2254 = distinct !DILexicalBlock(scope: !2245, file: !138, line: 439, column: 17)
!2255 = !DILocation(line: 440, column: 19, scope: !2253)
!2256 = !DILocation(line: 441, column: 19, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !138, line: 441, column: 19)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !138, line: 441, column: 19)
!2259 = !DILocation(line: 441, column: 19, scope: !2258)
!2260 = !DILocation(line: 442, column: 17, scope: !2254)
!2261 = !DILocation(line: 449, column: 20, scope: !2223)
!2262 = !DILocation(line: 454, column: 11, scope: !2088)
!2263 = !DILocation(line: 457, column: 19, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 455, column: 13)
!2265 = !DILocation(line: 463, column: 19, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2264, file: !138, line: 462, column: 19)
!2267 = !DILocation(line: 463, column: 24, scope: !2266)
!2268 = !DILocation(line: 463, column: 28, scope: !2266)
!2269 = !DILocation(line: 463, column: 38, scope: !2266)
!2270 = !DILocation(line: 463, column: 47, scope: !2266)
!2271 = !DILocation(line: 463, column: 41, scope: !2266)
!2272 = !DILocation(line: 463, column: 52, scope: !2266)
!2273 = !DILocation(line: 462, column: 19, scope: !2264)
!2274 = !DILocation(line: 464, column: 25, scope: !2266)
!2275 = !DILocation(line: 464, column: 17, scope: !2266)
!2276 = !DILocation(line: 471, column: 25, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2266, file: !138, line: 465, column: 19)
!2278 = !DILocation(line: 475, column: 21, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !138, line: 475, column: 21)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !138, line: 475, column: 21)
!2281 = !DILocation(line: 475, column: 21, scope: !2280)
!2282 = !DILocation(line: 476, column: 21, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !138, line: 476, column: 21)
!2284 = distinct !DILexicalBlock(scope: !2277, file: !138, line: 476, column: 21)
!2285 = !DILocation(line: 476, column: 21, scope: !2284)
!2286 = !DILocation(line: 477, column: 21, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !138, line: 477, column: 21)
!2288 = distinct !DILexicalBlock(scope: !2277, file: !138, line: 477, column: 21)
!2289 = !DILocation(line: 477, column: 21, scope: !2288)
!2290 = !DILocation(line: 478, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !138, line: 478, column: 21)
!2292 = distinct !DILexicalBlock(scope: !2277, file: !138, line: 478, column: 21)
!2293 = !DILocation(line: 478, column: 21, scope: !2292)
!2294 = !DILocation(line: 479, column: 21, scope: !2277)
!2295 = !DILocation(line: 403, column: 21, scope: !2079)
!2296 = !DILocation(line: 492, column: 31, scope: !2088)
!2297 = !DILocation(line: 493, column: 31, scope: !2088)
!2298 = !DILocation(line: 495, column: 31, scope: !2088)
!2299 = !DILocation(line: 496, column: 31, scope: !2088)
!2300 = !DILocation(line: 497, column: 31, scope: !2088)
!2301 = !DILocation(line: 500, column: 15, scope: !2088)
!2302 = !DILocation(line: 502, column: 19, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !138, line: 501, column: 13)
!2304 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 500, column: 15)
!2305 = !DILocation(line: 509, column: 33, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 509, column: 15)
!2307 = !DILocation(line: 0, scope: !2088)
!2308 = !DILocation(line: 514, column: 15, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 513, column: 15)
!2310 = !DILocation(line: 518, column: 15, scope: !2088)
!2311 = !DILocation(line: 526, column: 26, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 526, column: 15)
!2313 = !DILocation(line: 526, column: 15, scope: !2088)
!2314 = !DILocation(line: 526, column: 40, scope: !2312)
!2315 = !DILocation(line: 526, column: 47, scope: !2312)
!2316 = !DILocation(line: 530, column: 17, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 530, column: 15)
!2318 = !DILocation(line: 526, column: 18, scope: !2312)
!2319 = !DILocation(line: 526, column: 65, scope: !2312)
!2320 = !DILocation(line: 530, column: 15, scope: !2088)
!2321 = !DILocation(line: 535, column: 11, scope: !2088)
!2322 = !DILocation(line: 549, column: 15, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 548, column: 15)
!2324 = !DILocation(line: 556, column: 15, scope: !2088)
!2325 = !DILocation(line: 558, column: 19, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !138, line: 557, column: 13)
!2327 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 556, column: 15)
!2328 = !DILocation(line: 561, column: 19, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !138, line: 561, column: 19)
!2330 = !DILocation(line: 561, column: 35, scope: !2329)
!2331 = !DILocation(line: 561, column: 30, scope: !2329)
!2332 = !DILocation(line: 570, column: 15, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !138, line: 570, column: 15)
!2334 = distinct !DILexicalBlock(scope: !2326, file: !138, line: 570, column: 15)
!2335 = !DILocation(line: 570, column: 15, scope: !2334)
!2336 = !DILocation(line: 571, column: 15, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !138, line: 571, column: 15)
!2338 = distinct !DILexicalBlock(scope: !2326, file: !138, line: 571, column: 15)
!2339 = !DILocation(line: 571, column: 15, scope: !2338)
!2340 = !DILocation(line: 572, column: 15, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !138, line: 572, column: 15)
!2342 = distinct !DILexicalBlock(scope: !2326, file: !138, line: 572, column: 15)
!2343 = !DILocation(line: 572, column: 15, scope: !2342)
!2344 = !DILocation(line: 574, column: 13, scope: !2326)
!2345 = !DILocation(line: 614, column: 17, scope: !2087)
!2346 = !DILocation(line: 610, column: 20, scope: !2087)
!2347 = !DILocation(line: 617, column: 29, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2092, file: !138, line: 615, column: 15)
!2349 = !{!973, !973, i64 0}
!2350 = !DILocation(line: 617, column: 27, scope: !2348)
!2351 = !DILocation(line: 612, column: 18, scope: !2087)
!2352 = !DILocation(line: 618, column: 15, scope: !2348)
!2353 = !DILocation(line: 621, column: 17, scope: !2091)
!2354 = !DILocation(line: 622, column: 17, scope: !2091)
!2355 = !DILocation(line: 626, column: 29, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2091, file: !138, line: 626, column: 21)
!2357 = !DILocation(line: 626, column: 21, scope: !2091)
!2358 = !DILocation(line: 627, column: 29, scope: !2356)
!2359 = !DILocation(line: 627, column: 19, scope: !2356)
!2360 = !DILocation(line: 0, scope: !2204)
!2361 = !DILocation(line: 629, column: 17, scope: !2091)
!2362 = !DILocation(line: 624, column: 19, scope: !2091)
!2363 = !DILocation(line: 625, column: 27, scope: !2091)
!2364 = !DILocation(line: 631, column: 21, scope: !2109)
!2365 = !DILocation(line: 632, column: 56, scope: !2109)
!2366 = !DILocation(line: 632, column: 50, scope: !2109)
!2367 = !DILocation(line: 633, column: 53, scope: !2109)
!2368 = !DILocation(line: 621, column: 27, scope: !2091)
!2369 = !DILocation(line: 631, column: 29, scope: !2109)
!2370 = !DILocation(line: 632, column: 36, scope: !2109)
!2371 = !DILocation(line: 632, column: 28, scope: !2109)
!2372 = !DILocation(line: 634, column: 25, scope: !2109)
!2373 = !DILocation(line: 644, column: 38, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2116, file: !138, line: 642, column: 23)
!2375 = !DILocation(line: 644, column: 48, scope: !2374)
!2376 = !DILocation(line: 644, column: 51, scope: !2374)
!2377 = !DILocation(line: 644, column: 25, scope: !2374)
!2378 = !DILocation(line: 645, column: 28, scope: !2374)
!2379 = !DILocation(line: 644, column: 34, scope: !2374)
!2380 = distinct !{!2380, !2377, !2378}
!2381 = !DILocation(line: 658, column: 43, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !138, line: 658, column: 29)
!2383 = distinct !DILexicalBlock(scope: !2113, file: !138, line: 658, column: 29)
!2384 = !DILocation(line: 655, column: 29, scope: !2114)
!2385 = !DILocation(line: 657, column: 36, scope: !2113)
!2386 = !DILocation(line: 659, column: 49, scope: !2382)
!2387 = !DILocation(line: 659, column: 39, scope: !2382)
!2388 = !DILocation(line: 659, column: 31, scope: !2382)
!2389 = !DILocation(line: 658, column: 53, scope: !2382)
!2390 = !DILocation(line: 658, column: 29, scope: !2383)
!2391 = distinct !{!2391, !2390, !2392}
!2392 = !DILocation(line: 667, column: 33, scope: !2383)
!2393 = !DILocation(line: 674, column: 19, scope: !2091)
!2394 = !DILocation(line: 670, column: 41, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2115, file: !138, line: 670, column: 29)
!2396 = !DILocation(line: 670, column: 31, scope: !2395)
!2397 = !DILocation(line: 670, column: 29, scope: !2115)
!2398 = !DILocation(line: 672, column: 27, scope: !2115)
!2399 = !DILocation(line: 675, column: 26, scope: !2091)
!2400 = !DILocation(line: 675, column: 24, scope: !2091)
!2401 = !DILocation(line: 674, column: 19, scope: !2109)
!2402 = distinct !{!2402, !2361, !2403}
!2403 = !DILocation(line: 675, column: 44, scope: !2091)
!2404 = !DILocation(line: 676, column: 15, scope: !2092)
!2405 = !DILocation(line: 0, scope: !2356)
!2406 = !DILocation(line: 0, scope: !2091)
!2407 = !DILocation(line: 678, column: 40, scope: !2087)
!2408 = !DILocation(line: 680, column: 19, scope: !2121)
!2409 = !DILocation(line: 680, column: 45, scope: !2121)
!2410 = !DILocation(line: 680, column: 23, scope: !2121)
!2411 = !DILocation(line: 684, column: 33, scope: !2120)
!2412 = !DILocation(line: 684, column: 24, scope: !2120)
!2413 = !DILocation(line: 686, column: 17, scope: !2120)
!2414 = !DILocation(line: 0, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !138, line: 687, column: 19)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !138, line: 686, column: 17)
!2417 = distinct !DILexicalBlock(scope: !2120, file: !138, line: 686, column: 17)
!2418 = !DILocation(line: 0, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2415, file: !138, line: 703, column: 21)
!2420 = !DILocation(line: 0, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !138, line: 696, column: 23)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !138, line: 695, column: 30)
!2423 = distinct !DILexicalBlock(scope: !2415, file: !138, line: 688, column: 25)
!2424 = !DILocation(line: 688, column: 43, scope: !2423)
!2425 = !DILocation(line: 690, column: 25, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !138, line: 690, column: 25)
!2427 = distinct !DILexicalBlock(scope: !2423, file: !138, line: 689, column: 23)
!2428 = !DILocation(line: 690, column: 25, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2426, file: !138, line: 690, column: 25)
!2430 = !DILocation(line: 690, column: 25, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !138, line: 690, column: 25)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !138, line: 690, column: 25)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !138, line: 690, column: 25)
!2434 = !DILocation(line: 690, column: 25, scope: !2432)
!2435 = !DILocation(line: 690, column: 25, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !138, line: 690, column: 25)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !138, line: 690, column: 25)
!2438 = !DILocation(line: 690, column: 25, scope: !2437)
!2439 = !DILocation(line: 690, column: 25, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !138, line: 690, column: 25)
!2441 = distinct !DILexicalBlock(scope: !2433, file: !138, line: 690, column: 25)
!2442 = !DILocation(line: 690, column: 25, scope: !2441)
!2443 = !DILocation(line: 690, column: 25, scope: !2433)
!2444 = !DILocation(line: 690, column: 25, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !138, line: 690, column: 25)
!2446 = distinct !DILexicalBlock(scope: !2426, file: !138, line: 690, column: 25)
!2447 = !DILocation(line: 690, column: 25, scope: !2446)
!2448 = !DILocation(line: 691, column: 25, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !138, line: 691, column: 25)
!2450 = distinct !DILexicalBlock(scope: !2427, file: !138, line: 691, column: 25)
!2451 = !DILocation(line: 691, column: 25, scope: !2450)
!2452 = !DILocation(line: 692, column: 25, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !138, line: 692, column: 25)
!2454 = distinct !DILexicalBlock(scope: !2427, file: !138, line: 692, column: 25)
!2455 = !DILocation(line: 692, column: 25, scope: !2454)
!2456 = !DILocation(line: 693, column: 38, scope: !2427)
!2457 = !DILocation(line: 693, column: 33, scope: !2427)
!2458 = !DILocation(line: 694, column: 23, scope: !2427)
!2459 = !DILocation(line: 695, column: 30, scope: !2422)
!2460 = !DILocation(line: 695, column: 30, scope: !2423)
!2461 = !DILocation(line: 697, column: 25, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !138, line: 697, column: 25)
!2463 = distinct !DILexicalBlock(scope: !2421, file: !138, line: 697, column: 25)
!2464 = !DILocation(line: 697, column: 25, scope: !2463)
!2465 = !DILocation(line: 699, column: 23, scope: !2421)
!2466 = !DILocation(line: 0, scope: !2454)
!2467 = !DILocation(line: 0, scope: !2427)
!2468 = !DILocation(line: 0, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2204, file: !138, line: 418, column: 9)
!2470 = !DILocation(line: 0, scope: !2426)
!2471 = !DILocation(line: 700, column: 35, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2415, file: !138, line: 700, column: 25)
!2473 = !DILocation(line: 700, column: 30, scope: !2472)
!2474 = !DILocation(line: 700, column: 25, scope: !2415)
!2475 = !DILocation(line: 702, column: 21, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !138, line: 702, column: 21)
!2477 = distinct !DILexicalBlock(scope: !2415, file: !138, line: 702, column: 21)
!2478 = !DILocation(line: 702, column: 21, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !138, line: 702, column: 21)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !138, line: 702, column: 21)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !138, line: 702, column: 21)
!2482 = !DILocation(line: 702, column: 21, scope: !2480)
!2483 = !DILocation(line: 702, column: 21, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !138, line: 702, column: 21)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !138, line: 702, column: 21)
!2486 = !DILocation(line: 702, column: 21, scope: !2485)
!2487 = !DILocation(line: 702, column: 21, scope: !2481)
!2488 = !DILocation(line: 0, scope: !2463)
!2489 = !DILocation(line: 703, column: 21, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2419, file: !138, line: 703, column: 21)
!2491 = !DILocation(line: 703, column: 21, scope: !2419)
!2492 = !DILocation(line: 704, column: 25, scope: !2415)
!2493 = !DILocation(line: 686, column: 17, scope: !2416)
!2494 = distinct !{!2494, !2495, !2496}
!2495 = !DILocation(line: 686, column: 17, scope: !2417)
!2496 = !DILocation(line: 705, column: 19, scope: !2417)
!2497 = !DILocation(line: 0, scope: !2081)
!2498 = !DILocation(line: 416, column: 30, scope: !2204)
!2499 = !DILocation(line: 712, column: 34, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2079, file: !138, line: 712, column: 11)
!2501 = !DILocation(line: 714, column: 14, scope: !2500)
!2502 = !DILocation(line: 715, column: 14, scope: !2500)
!2503 = !DILocation(line: 715, column: 35, scope: !2500)
!2504 = !DILocation(line: 715, column: 17, scope: !2500)
!2505 = !DILocation(line: 715, column: 47, scope: !2500)
!2506 = !DILocation(line: 715, column: 65, scope: !2500)
!2507 = !DILocation(line: 716, column: 15, scope: !2500)
!2508 = !DILocation(line: 716, column: 11, scope: !2500)
!2509 = !DILocation(line: 712, column: 11, scope: !2079)
!2510 = !DILocation(line: 400, column: 10, scope: !2081)
!2511 = !DILocation(line: 0, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !138, line: 519, column: 13)
!2513 = distinct !DILexicalBlock(scope: !2088, file: !138, line: 518, column: 15)
!2514 = !DILocation(line: 720, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2079, file: !138, line: 720, column: 7)
!2516 = !DILocation(line: 720, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2515, file: !138, line: 720, column: 7)
!2518 = !DILocation(line: 720, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !138, line: 720, column: 7)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !138, line: 720, column: 7)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !138, line: 720, column: 7)
!2522 = !DILocation(line: 720, column: 7, scope: !2520)
!2523 = !DILocation(line: 720, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !138, line: 720, column: 7)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !138, line: 720, column: 7)
!2526 = !DILocation(line: 720, column: 7, scope: !2525)
!2527 = !DILocation(line: 720, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !138, line: 720, column: 7)
!2529 = distinct !DILexicalBlock(scope: !2521, file: !138, line: 720, column: 7)
!2530 = !DILocation(line: 720, column: 7, scope: !2529)
!2531 = !DILocation(line: 720, column: 7, scope: !2521)
!2532 = !DILocation(line: 720, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !138, line: 720, column: 7)
!2534 = distinct !DILexicalBlock(scope: !2515, file: !138, line: 720, column: 7)
!2535 = !DILocation(line: 720, column: 7, scope: !2534)
!2536 = !DILocation(line: 723, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !138, line: 723, column: 7)
!2538 = distinct !DILexicalBlock(scope: !2079, file: !138, line: 723, column: 7)
!2539 = !DILocation(line: 424, column: 9, scope: !2079)
!2540 = !DILocation(line: 723, column: 7, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !138, line: 723, column: 7)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !138, line: 723, column: 7)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !138, line: 723, column: 7)
!2544 = !DILocation(line: 723, column: 7, scope: !2542)
!2545 = !DILocation(line: 723, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !138, line: 723, column: 7)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !138, line: 723, column: 7)
!2548 = !DILocation(line: 723, column: 7, scope: !2547)
!2549 = !DILocation(line: 723, column: 7, scope: !2543)
!2550 = !DILocation(line: 724, column: 7, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !138, line: 724, column: 7)
!2552 = distinct !DILexicalBlock(scope: !2079, file: !138, line: 724, column: 7)
!2553 = !DILocation(line: 724, column: 7, scope: !2552)
!2554 = !DILocation(line: 726, column: 13, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2079, file: !138, line: 726, column: 11)
!2556 = !DILocation(line: 726, column: 11, scope: !2079)
!2557 = !DILocation(line: 728, column: 5, scope: !2080)
!2558 = !DILocation(line: 400, column: 75, scope: !2080)
!2559 = !DILocation(line: 400, column: 3, scope: !2080)
!2560 = distinct !{!2560, !2198, !2561}
!2561 = !DILocation(line: 728, column: 5, scope: !2081)
!2562 = !DILocation(line: 730, column: 11, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2052, file: !138, line: 730, column: 7)
!2564 = !DILocation(line: 730, column: 16, scope: !2563)
!2565 = !DILocation(line: 738, column: 51, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2052, file: !138, line: 738, column: 7)
!2567 = !DILocation(line: 739, column: 10, scope: !2566)
!2568 = !DILocation(line: 741, column: 11, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !138, line: 741, column: 11)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !138, line: 740, column: 5)
!2571 = !DILocation(line: 741, column: 11, scope: !2570)
!2572 = !DILocation(line: 742, column: 16, scope: !2569)
!2573 = !DILocation(line: 742, column: 9, scope: !2569)
!2574 = !DILocation(line: 746, column: 18, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2569, file: !138, line: 746, column: 16)
!2576 = !DILocation(line: 746, column: 32, scope: !2575)
!2577 = !DILocation(line: 746, column: 29, scope: !2575)
!2578 = !DILocation(line: 755, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2052, file: !138, line: 755, column: 7)
!2580 = !DILocation(line: 755, column: 20, scope: !2579)
!2581 = !DILocation(line: 756, column: 12, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !138, line: 756, column: 5)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !138, line: 756, column: 5)
!2584 = !DILocation(line: 756, column: 5, scope: !2583)
!2585 = !DILocation(line: 757, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !138, line: 757, column: 7)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !138, line: 757, column: 7)
!2588 = !DILocation(line: 757, column: 7, scope: !2587)
!2589 = !DILocation(line: 756, column: 39, scope: !2582)
!2590 = distinct !{!2590, !2584, !2591}
!2591 = !DILocation(line: 757, column: 7, scope: !2583)
!2592 = !DILocation(line: 759, column: 11, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2052, file: !138, line: 759, column: 7)
!2594 = !DILocation(line: 759, column: 7, scope: !2052)
!2595 = !DILocation(line: 760, column: 5, scope: !2593)
!2596 = !DILocation(line: 760, column: 17, scope: !2593)
!2597 = !DILocation(line: 766, column: 21, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2052, file: !138, line: 766, column: 7)
!2599 = !DILocation(line: 766, column: 54, scope: !2598)
!2600 = !DILocation(line: 766, column: 51, scope: !2598)
!2601 = !DILocation(line: 770, column: 42, scope: !2052)
!2602 = !DILocation(line: 768, column: 10, scope: !2052)
!2603 = !DILocation(line: 768, column: 3, scope: !2052)
!2604 = !DILocation(line: 772, column: 1, scope: !2052)
!2605 = distinct !DISubprogram(name: "gettext_quote", scope: !138, file: !138, line: 207, type: !2606, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!41, !41, !5}
!2608 = !{!2609, !2610, !2611, !2612}
!2609 = !DILocalVariable(name: "msgid", arg: 1, scope: !2605, file: !138, line: 207, type: !41)
!2610 = !DILocalVariable(name: "s", arg: 2, scope: !2605, file: !138, line: 207, type: !5)
!2611 = !DILocalVariable(name: "translation", scope: !2605, file: !138, line: 209, type: !41)
!2612 = !DILocalVariable(name: "locale_code", scope: !2605, file: !138, line: 210, type: !41)
!2613 = !DILocation(line: 207, column: 28, scope: !2605)
!2614 = !DILocation(line: 207, column: 54, scope: !2605)
!2615 = !DILocation(line: 209, column: 29, scope: !2605)
!2616 = !DILocation(line: 209, column: 15, scope: !2605)
!2617 = !DILocation(line: 212, column: 19, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2605, file: !138, line: 212, column: 7)
!2619 = !DILocation(line: 212, column: 7, scope: !2605)
!2620 = !DILocation(line: 233, column: 17, scope: !2605)
!2621 = !DILocation(line: 210, column: 15, scope: !2605)
!2622 = !DILocalVariable(name: "s1", arg: 1, scope: !2623, file: !2624, line: 160, type: !41)
!2623 = distinct !DISubprogram(name: "strcaseeq0", scope: !2624, file: !2624, line: 160, type: !2625, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2627)
!2624 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!44, !41, !41, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2627 = !{!2622, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2628 = !DILocalVariable(name: "s2", arg: 2, scope: !2623, file: !2624, line: 160, type: !41)
!2629 = !DILocalVariable(name: "s20", arg: 3, scope: !2623, file: !2624, line: 160, type: !31)
!2630 = !DILocalVariable(name: "s21", arg: 4, scope: !2623, file: !2624, line: 160, type: !31)
!2631 = !DILocalVariable(name: "s22", arg: 5, scope: !2623, file: !2624, line: 160, type: !31)
!2632 = !DILocalVariable(name: "s23", arg: 6, scope: !2623, file: !2624, line: 160, type: !31)
!2633 = !DILocalVariable(name: "s24", arg: 7, scope: !2623, file: !2624, line: 160, type: !31)
!2634 = !DILocalVariable(name: "s25", arg: 8, scope: !2623, file: !2624, line: 160, type: !31)
!2635 = !DILocalVariable(name: "s26", arg: 9, scope: !2623, file: !2624, line: 160, type: !31)
!2636 = !DILocalVariable(name: "s27", arg: 10, scope: !2623, file: !2624, line: 160, type: !31)
!2637 = !DILocalVariable(name: "s28", arg: 11, scope: !2623, file: !2624, line: 160, type: !31)
!2638 = !DILocation(line: 160, column: 25, scope: !2623, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 234, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2605, file: !138, line: 234, column: 7)
!2641 = !DILocation(line: 160, column: 41, scope: !2623, inlinedAt: !2639)
!2642 = !DILocation(line: 160, column: 50, scope: !2623, inlinedAt: !2639)
!2643 = !DILocation(line: 160, column: 60, scope: !2623, inlinedAt: !2639)
!2644 = !DILocation(line: 160, column: 70, scope: !2623, inlinedAt: !2639)
!2645 = !DILocation(line: 160, column: 80, scope: !2623, inlinedAt: !2639)
!2646 = !DILocation(line: 160, column: 90, scope: !2623, inlinedAt: !2639)
!2647 = !DILocation(line: 160, column: 100, scope: !2623, inlinedAt: !2639)
!2648 = !DILocation(line: 160, column: 110, scope: !2623, inlinedAt: !2639)
!2649 = !DILocation(line: 160, column: 120, scope: !2623, inlinedAt: !2639)
!2650 = !DILocation(line: 160, column: 130, scope: !2623, inlinedAt: !2639)
!2651 = !DILocation(line: 162, column: 7, scope: !2652, inlinedAt: !2639)
!2652 = distinct !DILexicalBlock(scope: !2623, file: !2624, line: 162, column: 7)
!2653 = !DILocalVariable(name: "s1", arg: 1, scope: !2654, file: !2624, line: 146, type: !41)
!2654 = distinct !DISubprogram(name: "strcaseeq1", scope: !2624, file: !2624, line: 146, type: !2655, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!44, !41, !41, !31, !31, !31, !31, !31, !31, !31, !31}
!2657 = !{!2653, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2658 = !DILocalVariable(name: "s2", arg: 2, scope: !2654, file: !2624, line: 146, type: !41)
!2659 = !DILocalVariable(name: "s21", arg: 3, scope: !2654, file: !2624, line: 146, type: !31)
!2660 = !DILocalVariable(name: "s22", arg: 4, scope: !2654, file: !2624, line: 146, type: !31)
!2661 = !DILocalVariable(name: "s23", arg: 5, scope: !2654, file: !2624, line: 146, type: !31)
!2662 = !DILocalVariable(name: "s24", arg: 6, scope: !2654, file: !2624, line: 146, type: !31)
!2663 = !DILocalVariable(name: "s25", arg: 7, scope: !2654, file: !2624, line: 146, type: !31)
!2664 = !DILocalVariable(name: "s26", arg: 8, scope: !2654, file: !2624, line: 146, type: !31)
!2665 = !DILocalVariable(name: "s27", arg: 9, scope: !2654, file: !2624, line: 146, type: !31)
!2666 = !DILocalVariable(name: "s28", arg: 10, scope: !2654, file: !2624, line: 146, type: !31)
!2667 = !DILocation(line: 146, column: 25, scope: !2654, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 167, column: 16, scope: !2669, inlinedAt: !2639)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !2624, line: 164, column: 11)
!2670 = distinct !DILexicalBlock(scope: !2652, file: !2624, line: 163, column: 5)
!2671 = !DILocation(line: 146, column: 41, scope: !2654, inlinedAt: !2668)
!2672 = !DILocation(line: 146, column: 50, scope: !2654, inlinedAt: !2668)
!2673 = !DILocation(line: 146, column: 60, scope: !2654, inlinedAt: !2668)
!2674 = !DILocation(line: 146, column: 70, scope: !2654, inlinedAt: !2668)
!2675 = !DILocation(line: 146, column: 80, scope: !2654, inlinedAt: !2668)
!2676 = !DILocation(line: 146, column: 90, scope: !2654, inlinedAt: !2668)
!2677 = !DILocation(line: 146, column: 100, scope: !2654, inlinedAt: !2668)
!2678 = !DILocation(line: 146, column: 110, scope: !2654, inlinedAt: !2668)
!2679 = !DILocation(line: 146, column: 120, scope: !2654, inlinedAt: !2668)
!2680 = !DILocation(line: 148, column: 7, scope: !2681, inlinedAt: !2668)
!2681 = distinct !DILexicalBlock(scope: !2654, file: !2624, line: 148, column: 7)
!2682 = !DILocalVariable(name: "s1", arg: 1, scope: !2683, file: !2624, line: 132, type: !41)
!2683 = distinct !DISubprogram(name: "strcaseeq2", scope: !2624, file: !2624, line: 132, type: !2684, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!44, !41, !41, !31, !31, !31, !31, !31, !31, !31}
!2686 = !{!2682, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694}
!2687 = !DILocalVariable(name: "s2", arg: 2, scope: !2683, file: !2624, line: 132, type: !41)
!2688 = !DILocalVariable(name: "s22", arg: 3, scope: !2683, file: !2624, line: 132, type: !31)
!2689 = !DILocalVariable(name: "s23", arg: 4, scope: !2683, file: !2624, line: 132, type: !31)
!2690 = !DILocalVariable(name: "s24", arg: 5, scope: !2683, file: !2624, line: 132, type: !31)
!2691 = !DILocalVariable(name: "s25", arg: 6, scope: !2683, file: !2624, line: 132, type: !31)
!2692 = !DILocalVariable(name: "s26", arg: 7, scope: !2683, file: !2624, line: 132, type: !31)
!2693 = !DILocalVariable(name: "s27", arg: 8, scope: !2683, file: !2624, line: 132, type: !31)
!2694 = !DILocalVariable(name: "s28", arg: 9, scope: !2683, file: !2624, line: 132, type: !31)
!2695 = !DILocation(line: 132, column: 25, scope: !2683, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 153, column: 16, scope: !2697, inlinedAt: !2668)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !2624, line: 150, column: 11)
!2698 = distinct !DILexicalBlock(scope: !2681, file: !2624, line: 149, column: 5)
!2699 = !DILocation(line: 132, column: 41, scope: !2683, inlinedAt: !2696)
!2700 = !DILocation(line: 132, column: 50, scope: !2683, inlinedAt: !2696)
!2701 = !DILocation(line: 132, column: 60, scope: !2683, inlinedAt: !2696)
!2702 = !DILocation(line: 132, column: 70, scope: !2683, inlinedAt: !2696)
!2703 = !DILocation(line: 132, column: 80, scope: !2683, inlinedAt: !2696)
!2704 = !DILocation(line: 132, column: 90, scope: !2683, inlinedAt: !2696)
!2705 = !DILocation(line: 132, column: 100, scope: !2683, inlinedAt: !2696)
!2706 = !DILocation(line: 132, column: 110, scope: !2683, inlinedAt: !2696)
!2707 = !DILocation(line: 134, column: 7, scope: !2708, inlinedAt: !2696)
!2708 = distinct !DILexicalBlock(scope: !2683, file: !2624, line: 134, column: 7)
!2709 = !DILocalVariable(name: "s1", arg: 1, scope: !2710, file: !2624, line: 118, type: !41)
!2710 = distinct !DISubprogram(name: "strcaseeq3", scope: !2624, file: !2624, line: 118, type: !2711, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!44, !41, !41, !31, !31, !31, !31, !31, !31}
!2713 = !{!2709, !2714, !2715, !2716, !2717, !2718, !2719, !2720}
!2714 = !DILocalVariable(name: "s2", arg: 2, scope: !2710, file: !2624, line: 118, type: !41)
!2715 = !DILocalVariable(name: "s23", arg: 3, scope: !2710, file: !2624, line: 118, type: !31)
!2716 = !DILocalVariable(name: "s24", arg: 4, scope: !2710, file: !2624, line: 118, type: !31)
!2717 = !DILocalVariable(name: "s25", arg: 5, scope: !2710, file: !2624, line: 118, type: !31)
!2718 = !DILocalVariable(name: "s26", arg: 6, scope: !2710, file: !2624, line: 118, type: !31)
!2719 = !DILocalVariable(name: "s27", arg: 7, scope: !2710, file: !2624, line: 118, type: !31)
!2720 = !DILocalVariable(name: "s28", arg: 8, scope: !2710, file: !2624, line: 118, type: !31)
!2721 = !DILocation(line: 118, column: 25, scope: !2710, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 139, column: 16, scope: !2723, inlinedAt: !2696)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !2624, line: 136, column: 11)
!2724 = distinct !DILexicalBlock(scope: !2708, file: !2624, line: 135, column: 5)
!2725 = !DILocation(line: 118, column: 41, scope: !2710, inlinedAt: !2722)
!2726 = !DILocation(line: 118, column: 50, scope: !2710, inlinedAt: !2722)
!2727 = !DILocation(line: 118, column: 60, scope: !2710, inlinedAt: !2722)
!2728 = !DILocation(line: 118, column: 70, scope: !2710, inlinedAt: !2722)
!2729 = !DILocation(line: 118, column: 80, scope: !2710, inlinedAt: !2722)
!2730 = !DILocation(line: 118, column: 90, scope: !2710, inlinedAt: !2722)
!2731 = !DILocation(line: 118, column: 100, scope: !2710, inlinedAt: !2722)
!2732 = !DILocation(line: 120, column: 7, scope: !2733, inlinedAt: !2722)
!2733 = distinct !DILexicalBlock(scope: !2710, file: !2624, line: 120, column: 7)
!2734 = !DILocation(line: 120, column: 7, scope: !2710, inlinedAt: !2722)
!2735 = !DILocalVariable(name: "s1", arg: 1, scope: !2736, file: !2624, line: 104, type: !41)
!2736 = distinct !DISubprogram(name: "strcaseeq4", scope: !2624, file: !2624, line: 104, type: !2737, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!44, !41, !41, !31, !31, !31, !31, !31}
!2739 = !{!2735, !2740, !2741, !2742, !2743, !2744, !2745}
!2740 = !DILocalVariable(name: "s2", arg: 2, scope: !2736, file: !2624, line: 104, type: !41)
!2741 = !DILocalVariable(name: "s24", arg: 3, scope: !2736, file: !2624, line: 104, type: !31)
!2742 = !DILocalVariable(name: "s25", arg: 4, scope: !2736, file: !2624, line: 104, type: !31)
!2743 = !DILocalVariable(name: "s26", arg: 5, scope: !2736, file: !2624, line: 104, type: !31)
!2744 = !DILocalVariable(name: "s27", arg: 6, scope: !2736, file: !2624, line: 104, type: !31)
!2745 = !DILocalVariable(name: "s28", arg: 7, scope: !2736, file: !2624, line: 104, type: !31)
!2746 = !DILocation(line: 104, column: 25, scope: !2736, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 125, column: 16, scope: !2748, inlinedAt: !2722)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !2624, line: 122, column: 11)
!2749 = distinct !DILexicalBlock(scope: !2733, file: !2624, line: 121, column: 5)
!2750 = !DILocation(line: 104, column: 41, scope: !2736, inlinedAt: !2747)
!2751 = !DILocation(line: 104, column: 50, scope: !2736, inlinedAt: !2747)
!2752 = !DILocation(line: 104, column: 60, scope: !2736, inlinedAt: !2747)
!2753 = !DILocation(line: 104, column: 70, scope: !2736, inlinedAt: !2747)
!2754 = !DILocation(line: 104, column: 80, scope: !2736, inlinedAt: !2747)
!2755 = !DILocation(line: 104, column: 90, scope: !2736, inlinedAt: !2747)
!2756 = !DILocation(line: 106, column: 7, scope: !2757, inlinedAt: !2747)
!2757 = distinct !DILexicalBlock(scope: !2736, file: !2624, line: 106, column: 7)
!2758 = !DILocation(line: 106, column: 7, scope: !2736, inlinedAt: !2747)
!2759 = !DILocalVariable(name: "s1", arg: 1, scope: !2760, file: !2624, line: 90, type: !41)
!2760 = distinct !DISubprogram(name: "strcaseeq5", scope: !2624, file: !2624, line: 90, type: !2761, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!44, !41, !41, !31, !31, !31, !31}
!2763 = !{!2759, !2764, !2765, !2766, !2767, !2768}
!2764 = !DILocalVariable(name: "s2", arg: 2, scope: !2760, file: !2624, line: 90, type: !41)
!2765 = !DILocalVariable(name: "s25", arg: 3, scope: !2760, file: !2624, line: 90, type: !31)
!2766 = !DILocalVariable(name: "s26", arg: 4, scope: !2760, file: !2624, line: 90, type: !31)
!2767 = !DILocalVariable(name: "s27", arg: 5, scope: !2760, file: !2624, line: 90, type: !31)
!2768 = !DILocalVariable(name: "s28", arg: 6, scope: !2760, file: !2624, line: 90, type: !31)
!2769 = !DILocation(line: 90, column: 25, scope: !2760, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 111, column: 16, scope: !2771, inlinedAt: !2747)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !2624, line: 108, column: 11)
!2772 = distinct !DILexicalBlock(scope: !2757, file: !2624, line: 107, column: 5)
!2773 = !DILocation(line: 90, column: 41, scope: !2760, inlinedAt: !2770)
!2774 = !DILocation(line: 90, column: 50, scope: !2760, inlinedAt: !2770)
!2775 = !DILocation(line: 90, column: 60, scope: !2760, inlinedAt: !2770)
!2776 = !DILocation(line: 90, column: 70, scope: !2760, inlinedAt: !2770)
!2777 = !DILocation(line: 90, column: 80, scope: !2760, inlinedAt: !2770)
!2778 = !DILocation(line: 92, column: 7, scope: !2779, inlinedAt: !2770)
!2779 = distinct !DILexicalBlock(scope: !2760, file: !2624, line: 92, column: 7)
!2780 = !DILocation(line: 92, column: 7, scope: !2760, inlinedAt: !2770)
!2781 = !DILocation(line: 235, column: 12, scope: !2640)
!2782 = !DILocation(line: 235, column: 21, scope: !2640)
!2783 = !DILocation(line: 235, column: 5, scope: !2640)
!2784 = !DILocation(line: 146, column: 25, scope: !2654, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 167, column: 16, scope: !2669, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 236, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2605, file: !138, line: 236, column: 7)
!2788 = !DILocation(line: 146, column: 41, scope: !2654, inlinedAt: !2785)
!2789 = !DILocation(line: 146, column: 50, scope: !2654, inlinedAt: !2785)
!2790 = !DILocation(line: 146, column: 60, scope: !2654, inlinedAt: !2785)
!2791 = !DILocation(line: 146, column: 70, scope: !2654, inlinedAt: !2785)
!2792 = !DILocation(line: 146, column: 80, scope: !2654, inlinedAt: !2785)
!2793 = !DILocation(line: 146, column: 90, scope: !2654, inlinedAt: !2785)
!2794 = !DILocation(line: 146, column: 100, scope: !2654, inlinedAt: !2785)
!2795 = !DILocation(line: 146, column: 110, scope: !2654, inlinedAt: !2785)
!2796 = !DILocation(line: 146, column: 120, scope: !2654, inlinedAt: !2785)
!2797 = !DILocation(line: 148, column: 7, scope: !2681, inlinedAt: !2785)
!2798 = !DILocation(line: 132, column: 25, scope: !2683, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 153, column: 16, scope: !2697, inlinedAt: !2785)
!2800 = !DILocation(line: 132, column: 41, scope: !2683, inlinedAt: !2799)
!2801 = !DILocation(line: 132, column: 50, scope: !2683, inlinedAt: !2799)
!2802 = !DILocation(line: 132, column: 60, scope: !2683, inlinedAt: !2799)
!2803 = !DILocation(line: 132, column: 70, scope: !2683, inlinedAt: !2799)
!2804 = !DILocation(line: 132, column: 80, scope: !2683, inlinedAt: !2799)
!2805 = !DILocation(line: 132, column: 90, scope: !2683, inlinedAt: !2799)
!2806 = !DILocation(line: 132, column: 100, scope: !2683, inlinedAt: !2799)
!2807 = !DILocation(line: 132, column: 110, scope: !2683, inlinedAt: !2799)
!2808 = !DILocation(line: 134, column: 7, scope: !2708, inlinedAt: !2799)
!2809 = !DILocation(line: 134, column: 7, scope: !2683, inlinedAt: !2799)
!2810 = !DILocation(line: 118, column: 25, scope: !2710, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 139, column: 16, scope: !2723, inlinedAt: !2799)
!2812 = !DILocation(line: 118, column: 41, scope: !2710, inlinedAt: !2811)
!2813 = !DILocation(line: 118, column: 50, scope: !2710, inlinedAt: !2811)
!2814 = !DILocation(line: 118, column: 60, scope: !2710, inlinedAt: !2811)
!2815 = !DILocation(line: 118, column: 70, scope: !2710, inlinedAt: !2811)
!2816 = !DILocation(line: 118, column: 80, scope: !2710, inlinedAt: !2811)
!2817 = !DILocation(line: 118, column: 90, scope: !2710, inlinedAt: !2811)
!2818 = !DILocation(line: 118, column: 100, scope: !2710, inlinedAt: !2811)
!2819 = !DILocation(line: 120, column: 7, scope: !2733, inlinedAt: !2811)
!2820 = !DILocation(line: 120, column: 7, scope: !2710, inlinedAt: !2811)
!2821 = !DILocation(line: 104, column: 25, scope: !2736, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 125, column: 16, scope: !2748, inlinedAt: !2811)
!2823 = !DILocation(line: 104, column: 41, scope: !2736, inlinedAt: !2822)
!2824 = !DILocation(line: 104, column: 50, scope: !2736, inlinedAt: !2822)
!2825 = !DILocation(line: 104, column: 60, scope: !2736, inlinedAt: !2822)
!2826 = !DILocation(line: 104, column: 70, scope: !2736, inlinedAt: !2822)
!2827 = !DILocation(line: 104, column: 80, scope: !2736, inlinedAt: !2822)
!2828 = !DILocation(line: 104, column: 90, scope: !2736, inlinedAt: !2822)
!2829 = !DILocation(line: 106, column: 7, scope: !2757, inlinedAt: !2822)
!2830 = !DILocation(line: 106, column: 7, scope: !2736, inlinedAt: !2822)
!2831 = !DILocation(line: 90, column: 25, scope: !2760, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 111, column: 16, scope: !2771, inlinedAt: !2822)
!2833 = !DILocation(line: 90, column: 41, scope: !2760, inlinedAt: !2832)
!2834 = !DILocation(line: 90, column: 50, scope: !2760, inlinedAt: !2832)
!2835 = !DILocation(line: 90, column: 60, scope: !2760, inlinedAt: !2832)
!2836 = !DILocation(line: 90, column: 70, scope: !2760, inlinedAt: !2832)
!2837 = !DILocation(line: 90, column: 80, scope: !2760, inlinedAt: !2832)
!2838 = !DILocation(line: 92, column: 7, scope: !2779, inlinedAt: !2832)
!2839 = !DILocation(line: 92, column: 7, scope: !2760, inlinedAt: !2832)
!2840 = !DILocalVariable(name: "s1", arg: 1, scope: !2841, file: !2624, line: 76, type: !41)
!2841 = distinct !DISubprogram(name: "strcaseeq6", scope: !2624, file: !2624, line: 76, type: !2842, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!44, !41, !41, !31, !31, !31}
!2844 = !{!2840, !2845, !2846, !2847, !2848}
!2845 = !DILocalVariable(name: "s2", arg: 2, scope: !2841, file: !2624, line: 76, type: !41)
!2846 = !DILocalVariable(name: "s26", arg: 3, scope: !2841, file: !2624, line: 76, type: !31)
!2847 = !DILocalVariable(name: "s27", arg: 4, scope: !2841, file: !2624, line: 76, type: !31)
!2848 = !DILocalVariable(name: "s28", arg: 5, scope: !2841, file: !2624, line: 76, type: !31)
!2849 = !DILocation(line: 76, column: 25, scope: !2841, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 97, column: 16, scope: !2851, inlinedAt: !2832)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !2624, line: 94, column: 11)
!2852 = distinct !DILexicalBlock(scope: !2779, file: !2624, line: 93, column: 5)
!2853 = !DILocation(line: 76, column: 41, scope: !2841, inlinedAt: !2850)
!2854 = !DILocation(line: 76, column: 50, scope: !2841, inlinedAt: !2850)
!2855 = !DILocation(line: 76, column: 60, scope: !2841, inlinedAt: !2850)
!2856 = !DILocation(line: 76, column: 70, scope: !2841, inlinedAt: !2850)
!2857 = !DILocation(line: 78, column: 7, scope: !2858, inlinedAt: !2850)
!2858 = distinct !DILexicalBlock(scope: !2841, file: !2624, line: 78, column: 7)
!2859 = !DILocation(line: 78, column: 7, scope: !2841, inlinedAt: !2850)
!2860 = !DILocalVariable(name: "s1", arg: 1, scope: !2861, file: !2624, line: 62, type: !41)
!2861 = distinct !DISubprogram(name: "strcaseeq7", scope: !2624, file: !2624, line: 62, type: !2862, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!44, !41, !41, !31, !31}
!2864 = !{!2860, !2865, !2866, !2867}
!2865 = !DILocalVariable(name: "s2", arg: 2, scope: !2861, file: !2624, line: 62, type: !41)
!2866 = !DILocalVariable(name: "s27", arg: 3, scope: !2861, file: !2624, line: 62, type: !31)
!2867 = !DILocalVariable(name: "s28", arg: 4, scope: !2861, file: !2624, line: 62, type: !31)
!2868 = !DILocation(line: 62, column: 25, scope: !2861, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 83, column: 16, scope: !2870, inlinedAt: !2850)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !2624, line: 80, column: 11)
!2871 = distinct !DILexicalBlock(scope: !2858, file: !2624, line: 79, column: 5)
!2872 = !DILocation(line: 62, column: 41, scope: !2861, inlinedAt: !2869)
!2873 = !DILocation(line: 62, column: 50, scope: !2861, inlinedAt: !2869)
!2874 = !DILocation(line: 62, column: 60, scope: !2861, inlinedAt: !2869)
!2875 = !DILocation(line: 64, column: 7, scope: !2876, inlinedAt: !2869)
!2876 = distinct !DILexicalBlock(scope: !2861, file: !2624, line: 64, column: 7)
!2877 = !DILocation(line: 236, column: 7, scope: !2605)
!2878 = !DILocation(line: 237, column: 12, scope: !2787)
!2879 = !DILocation(line: 237, column: 21, scope: !2787)
!2880 = !DILocation(line: 237, column: 5, scope: !2787)
!2881 = !DILocation(line: 239, column: 13, scope: !2605)
!2882 = !DILocation(line: 239, column: 11, scope: !2605)
!2883 = !DILocation(line: 239, column: 3, scope: !2605)
!2884 = !DILocation(line: 0, scope: !2605)
!2885 = !DILocation(line: 240, column: 1, scope: !2605)
!2886 = distinct !DISubprogram(name: "quotearg_alloc", scope: !138, file: !138, line: 799, type: !2887, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!30, !41, !63, !1925}
!2889 = !{!2890, !2891, !2892}
!2890 = !DILocalVariable(name: "arg", arg: 1, scope: !2886, file: !138, line: 799, type: !41)
!2891 = !DILocalVariable(name: "argsize", arg: 2, scope: !2886, file: !138, line: 799, type: !63)
!2892 = !DILocalVariable(name: "o", arg: 3, scope: !2886, file: !138, line: 800, type: !1925)
!2893 = !DILocation(line: 799, column: 29, scope: !2886)
!2894 = !DILocation(line: 799, column: 41, scope: !2886)
!2895 = !DILocation(line: 800, column: 47, scope: !2886)
!2896 = !DILocalVariable(name: "arg", arg: 1, scope: !2897, file: !138, line: 812, type: !41)
!2897 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !138, file: !138, line: 812, type: !2898, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!30, !41, !63, !203, !1925}
!2900 = !{!2896, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908}
!2901 = !DILocalVariable(name: "argsize", arg: 2, scope: !2897, file: !138, line: 812, type: !63)
!2902 = !DILocalVariable(name: "size", arg: 3, scope: !2897, file: !138, line: 812, type: !203)
!2903 = !DILocalVariable(name: "o", arg: 4, scope: !2897, file: !138, line: 813, type: !1925)
!2904 = !DILocalVariable(name: "p", scope: !2897, file: !138, line: 815, type: !1925)
!2905 = !DILocalVariable(name: "e", scope: !2897, file: !138, line: 816, type: !44)
!2906 = !DILocalVariable(name: "flags", scope: !2897, file: !138, line: 818, type: !44)
!2907 = !DILocalVariable(name: "bufsize", scope: !2897, file: !138, line: 819, type: !63)
!2908 = !DILocalVariable(name: "buf", scope: !2897, file: !138, line: 823, type: !30)
!2909 = !DILocation(line: 812, column: 33, scope: !2897, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 802, column: 10, scope: !2886)
!2911 = !DILocation(line: 812, column: 45, scope: !2897, inlinedAt: !2910)
!2912 = !DILocation(line: 812, column: 62, scope: !2897, inlinedAt: !2910)
!2913 = !DILocation(line: 813, column: 51, scope: !2897, inlinedAt: !2910)
!2914 = !DILocation(line: 815, column: 37, scope: !2897, inlinedAt: !2910)
!2915 = !DILocation(line: 815, column: 33, scope: !2897, inlinedAt: !2910)
!2916 = !DILocation(line: 816, column: 11, scope: !2897, inlinedAt: !2910)
!2917 = !DILocation(line: 816, column: 7, scope: !2897, inlinedAt: !2910)
!2918 = !DILocation(line: 818, column: 18, scope: !2897, inlinedAt: !2910)
!2919 = !DILocation(line: 818, column: 24, scope: !2897, inlinedAt: !2910)
!2920 = !DILocation(line: 818, column: 7, scope: !2897, inlinedAt: !2910)
!2921 = !DILocation(line: 819, column: 69, scope: !2897, inlinedAt: !2910)
!2922 = !DILocation(line: 820, column: 53, scope: !2897, inlinedAt: !2910)
!2923 = !DILocation(line: 821, column: 49, scope: !2897, inlinedAt: !2910)
!2924 = !DILocation(line: 822, column: 49, scope: !2897, inlinedAt: !2910)
!2925 = !DILocation(line: 819, column: 20, scope: !2897, inlinedAt: !2910)
!2926 = !DILocation(line: 822, column: 62, scope: !2897, inlinedAt: !2910)
!2927 = !DILocation(line: 819, column: 10, scope: !2897, inlinedAt: !2910)
!2928 = !DILocalVariable(name: "n", arg: 1, scope: !2929, file: !199, line: 216, type: !63)
!2929 = distinct !DISubprogram(name: "xcharalloc", scope: !199, file: !199, line: 216, type: !2930, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!30, !63}
!2932 = !{!2928}
!2933 = !DILocation(line: 216, column: 20, scope: !2929, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 823, column: 15, scope: !2897, inlinedAt: !2910)
!2935 = !DILocation(line: 218, column: 10, scope: !2929, inlinedAt: !2934)
!2936 = !DILocation(line: 823, column: 9, scope: !2897, inlinedAt: !2910)
!2937 = !DILocation(line: 824, column: 60, scope: !2897, inlinedAt: !2910)
!2938 = !DILocation(line: 826, column: 32, scope: !2897, inlinedAt: !2910)
!2939 = !DILocation(line: 826, column: 47, scope: !2897, inlinedAt: !2910)
!2940 = !DILocation(line: 824, column: 3, scope: !2897, inlinedAt: !2910)
!2941 = !DILocation(line: 827, column: 9, scope: !2897, inlinedAt: !2910)
!2942 = !DILocation(line: 802, column: 3, scope: !2886)
!2943 = !DILocation(line: 812, column: 33, scope: !2897)
!2944 = !DILocation(line: 812, column: 45, scope: !2897)
!2945 = !DILocation(line: 812, column: 62, scope: !2897)
!2946 = !DILocation(line: 813, column: 51, scope: !2897)
!2947 = !DILocation(line: 815, column: 37, scope: !2897)
!2948 = !DILocation(line: 815, column: 33, scope: !2897)
!2949 = !DILocation(line: 816, column: 11, scope: !2897)
!2950 = !DILocation(line: 816, column: 7, scope: !2897)
!2951 = !DILocation(line: 818, column: 18, scope: !2897)
!2952 = !DILocation(line: 818, column: 27, scope: !2897)
!2953 = !DILocation(line: 818, column: 24, scope: !2897)
!2954 = !DILocation(line: 818, column: 7, scope: !2897)
!2955 = !DILocation(line: 819, column: 69, scope: !2897)
!2956 = !DILocation(line: 820, column: 53, scope: !2897)
!2957 = !DILocation(line: 821, column: 49, scope: !2897)
!2958 = !DILocation(line: 822, column: 49, scope: !2897)
!2959 = !DILocation(line: 819, column: 20, scope: !2897)
!2960 = !DILocation(line: 822, column: 62, scope: !2897)
!2961 = !DILocation(line: 819, column: 10, scope: !2897)
!2962 = !DILocation(line: 216, column: 20, scope: !2929, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 823, column: 15, scope: !2897)
!2964 = !DILocation(line: 218, column: 10, scope: !2929, inlinedAt: !2963)
!2965 = !DILocation(line: 823, column: 9, scope: !2897)
!2966 = !DILocation(line: 824, column: 60, scope: !2897)
!2967 = !DILocation(line: 826, column: 32, scope: !2897)
!2968 = !DILocation(line: 826, column: 47, scope: !2897)
!2969 = !DILocation(line: 824, column: 3, scope: !2897)
!2970 = !DILocation(line: 827, column: 9, scope: !2897)
!2971 = !DILocation(line: 828, column: 7, scope: !2897)
!2972 = !DILocation(line: 829, column: 11, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2897, file: !138, line: 828, column: 7)
!2974 = !DILocation(line: 829, column: 5, scope: !2973)
!2975 = !DILocation(line: 830, column: 3, scope: !2897)
!2976 = distinct !DISubprogram(name: "quotearg_free", scope: !138, file: !138, line: 848, type: !679, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !2977)
!2977 = !{!2978, !2979}
!2978 = !DILocalVariable(name: "sv", scope: !2976, file: !138, line: 850, type: !162)
!2979 = !DILocalVariable(name: "i", scope: !2976, file: !138, line: 851, type: !44)
!2980 = !DILocation(line: 850, column: 24, scope: !2976)
!2981 = !DILocation(line: 850, column: 19, scope: !2976)
!2982 = !DILocation(line: 851, column: 7, scope: !2976)
!2983 = !DILocation(line: 852, column: 19, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !138, line: 852, column: 3)
!2985 = distinct !DILexicalBlock(scope: !2976, file: !138, line: 852, column: 3)
!2986 = !DILocation(line: 852, column: 17, scope: !2984)
!2987 = !DILocation(line: 852, column: 3, scope: !2985)
!2988 = !DILocation(line: 853, column: 17, scope: !2984)
!2989 = !{!2990, !673, i64 8}
!2990 = !{!"slotvec", !933, i64 0, !673, i64 8}
!2991 = !DILocation(line: 853, column: 5, scope: !2984)
!2992 = !DILocation(line: 852, column: 28, scope: !2984)
!2993 = distinct !{!2993, !2987, !2994}
!2994 = !DILocation(line: 853, column: 20, scope: !2985)
!2995 = !DILocation(line: 854, column: 13, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2976, file: !138, line: 854, column: 7)
!2997 = !DILocation(line: 854, column: 17, scope: !2996)
!2998 = !DILocation(line: 854, column: 7, scope: !2976)
!2999 = !DILocation(line: 856, column: 7, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !138, line: 855, column: 5)
!3001 = !DILocation(line: 857, column: 21, scope: !3000)
!3002 = !{!2990, !933, i64 0}
!3003 = !DILocation(line: 858, column: 20, scope: !3000)
!3004 = !DILocation(line: 859, column: 5, scope: !3000)
!3005 = !DILocation(line: 860, column: 10, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2976, file: !138, line: 860, column: 7)
!3007 = !DILocation(line: 860, column: 7, scope: !2976)
!3008 = !DILocation(line: 862, column: 13, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3006, file: !138, line: 861, column: 5)
!3010 = !DILocation(line: 862, column: 7, scope: !3009)
!3011 = !DILocation(line: 863, column: 15, scope: !3009)
!3012 = !DILocation(line: 864, column: 5, scope: !3009)
!3013 = !DILocation(line: 865, column: 10, scope: !2976)
!3014 = !DILocation(line: 866, column: 1, scope: !2976)
!3015 = distinct !DISubprogram(name: "quotearg_n", scope: !138, file: !138, line: 931, type: !3016, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!30, !44, !41}
!3018 = !{!3019, !3020}
!3019 = !DILocalVariable(name: "n", arg: 1, scope: !3015, file: !138, line: 931, type: !44)
!3020 = !DILocalVariable(name: "arg", arg: 2, scope: !3015, file: !138, line: 931, type: !41)
!3021 = !DILocation(line: 931, column: 17, scope: !3015)
!3022 = !DILocation(line: 931, column: 32, scope: !3015)
!3023 = !DILocation(line: 933, column: 10, scope: !3015)
!3024 = !DILocation(line: 933, column: 3, scope: !3015)
!3025 = distinct !DISubprogram(name: "quotearg_n_options", scope: !138, file: !138, line: 877, type: !3026, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!30, !44, !41, !63, !1925}
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3034, !3035, !3038, !3039, !3041, !3042, !3043}
!3029 = !DILocalVariable(name: "n", arg: 1, scope: !3025, file: !138, line: 877, type: !44)
!3030 = !DILocalVariable(name: "arg", arg: 2, scope: !3025, file: !138, line: 877, type: !41)
!3031 = !DILocalVariable(name: "argsize", arg: 3, scope: !3025, file: !138, line: 877, type: !63)
!3032 = !DILocalVariable(name: "options", arg: 4, scope: !3025, file: !138, line: 878, type: !1925)
!3033 = !DILocalVariable(name: "e", scope: !3025, file: !138, line: 880, type: !44)
!3034 = !DILocalVariable(name: "sv", scope: !3025, file: !138, line: 882, type: !162)
!3035 = !DILocalVariable(name: "preallocated", scope: !3036, file: !138, line: 889, type: !94)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !138, line: 888, column: 5)
!3037 = distinct !DILexicalBlock(scope: !3025, file: !138, line: 887, column: 7)
!3038 = !DILocalVariable(name: "nmax", scope: !3036, file: !138, line: 890, type: !44)
!3039 = !DILocalVariable(name: "size", scope: !3040, file: !138, line: 903, type: !63)
!3040 = distinct !DILexicalBlock(scope: !3025, file: !138, line: 902, column: 3)
!3041 = !DILocalVariable(name: "val", scope: !3040, file: !138, line: 904, type: !30)
!3042 = !DILocalVariable(name: "flags", scope: !3040, file: !138, line: 906, type: !44)
!3043 = !DILocalVariable(name: "qsize", scope: !3040, file: !138, line: 907, type: !63)
!3044 = !DILocation(line: 877, column: 25, scope: !3025)
!3045 = !DILocation(line: 877, column: 40, scope: !3025)
!3046 = !DILocation(line: 877, column: 52, scope: !3025)
!3047 = !DILocation(line: 878, column: 51, scope: !3025)
!3048 = !DILocation(line: 880, column: 11, scope: !3025)
!3049 = !DILocation(line: 880, column: 7, scope: !3025)
!3050 = !DILocation(line: 882, column: 24, scope: !3025)
!3051 = !DILocation(line: 882, column: 19, scope: !3025)
!3052 = !DILocation(line: 884, column: 9, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3025, file: !138, line: 884, column: 7)
!3054 = !DILocation(line: 884, column: 7, scope: !3025)
!3055 = !DILocation(line: 885, column: 5, scope: !3053)
!3056 = !DILocation(line: 887, column: 7, scope: !3037)
!3057 = !DILocation(line: 887, column: 14, scope: !3037)
!3058 = !DILocation(line: 887, column: 7, scope: !3025)
!3059 = !DILocation(line: 889, column: 31, scope: !3036)
!3060 = !DILocation(line: 890, column: 11, scope: !3036)
!3061 = !DILocation(line: 892, column: 16, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3036, file: !138, line: 892, column: 11)
!3063 = !DILocation(line: 892, column: 11, scope: !3036)
!3064 = !DILocation(line: 893, column: 9, scope: !3062)
!3065 = !DILocation(line: 895, column: 32, scope: !3036)
!3066 = !DILocation(line: 895, column: 61, scope: !3036)
!3067 = !DILocation(line: 895, column: 58, scope: !3036)
!3068 = !DILocation(line: 895, column: 66, scope: !3036)
!3069 = !DILocation(line: 895, column: 22, scope: !3036)
!3070 = !DILocation(line: 895, column: 15, scope: !3036)
!3071 = !DILocation(line: 896, column: 11, scope: !3036)
!3072 = !DILocation(line: 897, column: 15, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3036, file: !138, line: 896, column: 11)
!3074 = !{i64 0, i64 8, !932, i64 8, i64 8, !672}
!3075 = !DILocation(line: 897, column: 9, scope: !3073)
!3076 = !DILocation(line: 898, column: 20, scope: !3036)
!3077 = !DILocation(line: 898, column: 18, scope: !3036)
!3078 = !DILocation(line: 898, column: 7, scope: !3036)
!3079 = !DILocation(line: 898, column: 38, scope: !3036)
!3080 = !DILocation(line: 898, column: 31, scope: !3036)
!3081 = !DILocation(line: 898, column: 48, scope: !3036)
!3082 = !DILocation(line: 899, column: 14, scope: !3036)
!3083 = !DILocation(line: 900, column: 5, scope: !3036)
!3084 = !DILocation(line: 0, scope: !3025)
!3085 = !DILocation(line: 903, column: 19, scope: !3040)
!3086 = !DILocation(line: 903, column: 25, scope: !3040)
!3087 = !DILocation(line: 903, column: 12, scope: !3040)
!3088 = !DILocation(line: 904, column: 23, scope: !3040)
!3089 = !DILocation(line: 904, column: 11, scope: !3040)
!3090 = !DILocation(line: 906, column: 26, scope: !3040)
!3091 = !DILocation(line: 906, column: 32, scope: !3040)
!3092 = !DILocation(line: 906, column: 9, scope: !3040)
!3093 = !DILocation(line: 908, column: 55, scope: !3040)
!3094 = !DILocation(line: 909, column: 46, scope: !3040)
!3095 = !DILocation(line: 910, column: 55, scope: !3040)
!3096 = !DILocation(line: 911, column: 55, scope: !3040)
!3097 = !DILocation(line: 907, column: 20, scope: !3040)
!3098 = !DILocation(line: 907, column: 12, scope: !3040)
!3099 = !DILocation(line: 913, column: 14, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3040, file: !138, line: 913, column: 9)
!3101 = !DILocation(line: 913, column: 9, scope: !3040)
!3102 = !DILocation(line: 915, column: 35, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !138, line: 914, column: 7)
!3104 = !DILocation(line: 915, column: 20, scope: !3103)
!3105 = !DILocation(line: 916, column: 17, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !138, line: 916, column: 13)
!3107 = !DILocation(line: 916, column: 13, scope: !3103)
!3108 = !DILocation(line: 917, column: 11, scope: !3106)
!3109 = !DILocation(line: 216, column: 20, scope: !2929, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 918, column: 27, scope: !3103)
!3111 = !DILocation(line: 218, column: 10, scope: !2929, inlinedAt: !3110)
!3112 = !DILocation(line: 918, column: 19, scope: !3103)
!3113 = !DILocation(line: 919, column: 69, scope: !3103)
!3114 = !DILocation(line: 921, column: 44, scope: !3103)
!3115 = !DILocation(line: 922, column: 44, scope: !3103)
!3116 = !DILocation(line: 919, column: 9, scope: !3103)
!3117 = !DILocation(line: 923, column: 7, scope: !3103)
!3118 = !DILocation(line: 0, scope: !3040)
!3119 = !DILocation(line: 925, column: 11, scope: !3040)
!3120 = !DILocation(line: 926, column: 5, scope: !3040)
!3121 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !138, file: !138, line: 937, type: !3122, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!30, !44, !41, !63}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "n", arg: 1, scope: !3121, file: !138, line: 937, type: !44)
!3126 = !DILocalVariable(name: "arg", arg: 2, scope: !3121, file: !138, line: 937, type: !41)
!3127 = !DILocalVariable(name: "argsize", arg: 3, scope: !3121, file: !138, line: 937, type: !63)
!3128 = !DILocation(line: 937, column: 21, scope: !3121)
!3129 = !DILocation(line: 937, column: 36, scope: !3121)
!3130 = !DILocation(line: 937, column: 48, scope: !3121)
!3131 = !DILocation(line: 939, column: 10, scope: !3121)
!3132 = !DILocation(line: 939, column: 3, scope: !3121)
!3133 = distinct !DISubprogram(name: "quotearg", scope: !138, file: !138, line: 943, type: !3134, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!30, !41}
!3136 = !{!3137}
!3137 = !DILocalVariable(name: "arg", arg: 1, scope: !3133, file: !138, line: 943, type: !41)
!3138 = !DILocation(line: 943, column: 23, scope: !3133)
!3139 = !DILocation(line: 931, column: 17, scope: !3015, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 945, column: 10, scope: !3133)
!3141 = !DILocation(line: 931, column: 32, scope: !3015, inlinedAt: !3140)
!3142 = !DILocation(line: 933, column: 10, scope: !3015, inlinedAt: !3140)
!3143 = !DILocation(line: 945, column: 3, scope: !3133)
!3144 = distinct !DISubprogram(name: "quotearg_mem", scope: !138, file: !138, line: 949, type: !3145, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!30, !41, !63}
!3147 = !{!3148, !3149}
!3148 = !DILocalVariable(name: "arg", arg: 1, scope: !3144, file: !138, line: 949, type: !41)
!3149 = !DILocalVariable(name: "argsize", arg: 2, scope: !3144, file: !138, line: 949, type: !63)
!3150 = !DILocation(line: 949, column: 27, scope: !3144)
!3151 = !DILocation(line: 949, column: 39, scope: !3144)
!3152 = !DILocation(line: 937, column: 21, scope: !3121, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 951, column: 10, scope: !3144)
!3154 = !DILocation(line: 937, column: 36, scope: !3121, inlinedAt: !3153)
!3155 = !DILocation(line: 937, column: 48, scope: !3121, inlinedAt: !3153)
!3156 = !DILocation(line: 939, column: 10, scope: !3121, inlinedAt: !3153)
!3157 = !DILocation(line: 951, column: 3, scope: !3144)
!3158 = distinct !DISubprogram(name: "quotearg_n_style", scope: !138, file: !138, line: 955, type: !3159, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!30, !44, !5, !41}
!3161 = !{!3162, !3163, !3164, !3165}
!3162 = !DILocalVariable(name: "n", arg: 1, scope: !3158, file: !138, line: 955, type: !44)
!3163 = !DILocalVariable(name: "s", arg: 2, scope: !3158, file: !138, line: 955, type: !5)
!3164 = !DILocalVariable(name: "arg", arg: 3, scope: !3158, file: !138, line: 955, type: !41)
!3165 = !DILocalVariable(name: "o", scope: !3158, file: !138, line: 957, type: !1926)
!3166 = !DILocation(line: 955, column: 23, scope: !3158)
!3167 = !DILocation(line: 955, column: 45, scope: !3158)
!3168 = !DILocation(line: 955, column: 60, scope: !3158)
!3169 = !DILocation(line: 957, column: 3, scope: !3158)
!3170 = !DILocation(line: 957, column: 32, scope: !3158)
!3171 = !DILocalVariable(name: "style", arg: 1, scope: !3172, file: !138, line: 193, type: !5)
!3172 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !138, file: !138, line: 193, type: !3173, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!145, !5}
!3175 = !{!3171, !3176}
!3176 = !DILocalVariable(name: "o", scope: !3172, file: !138, line: 195, type: !145)
!3177 = !DILocation(line: 193, column: 48, scope: !3172, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 957, column: 36, scope: !3158)
!3179 = !DILocation(line: 195, column: 26, scope: !3172, inlinedAt: !3178)
!3180 = !{!3181}
!3181 = distinct !{!3181, !3182, !"quoting_options_from_style: argument 0"}
!3182 = distinct !{!3182, !"quoting_options_from_style"}
!3183 = !DILocation(line: 196, column: 13, scope: !3184, inlinedAt: !3178)
!3184 = distinct !DILexicalBlock(scope: !3172, file: !138, line: 196, column: 7)
!3185 = !DILocation(line: 196, column: 7, scope: !3172, inlinedAt: !3178)
!3186 = !DILocation(line: 197, column: 5, scope: !3184, inlinedAt: !3178)
!3187 = !DILocation(line: 198, column: 5, scope: !3172, inlinedAt: !3178)
!3188 = !DILocation(line: 198, column: 11, scope: !3172, inlinedAt: !3178)
!3189 = !DILocation(line: 958, column: 10, scope: !3158)
!3190 = !DILocation(line: 959, column: 1, scope: !3158)
!3191 = !DILocation(line: 958, column: 3, scope: !3158)
!3192 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !138, file: !138, line: 962, type: !3193, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!30, !44, !5, !41, !63}
!3195 = !{!3196, !3197, !3198, !3199, !3200}
!3196 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !138, line: 962, type: !44)
!3197 = !DILocalVariable(name: "s", arg: 2, scope: !3192, file: !138, line: 962, type: !5)
!3198 = !DILocalVariable(name: "arg", arg: 3, scope: !3192, file: !138, line: 963, type: !41)
!3199 = !DILocalVariable(name: "argsize", arg: 4, scope: !3192, file: !138, line: 963, type: !63)
!3200 = !DILocalVariable(name: "o", scope: !3192, file: !138, line: 965, type: !1926)
!3201 = !DILocation(line: 962, column: 27, scope: !3192)
!3202 = !DILocation(line: 962, column: 49, scope: !3192)
!3203 = !DILocation(line: 963, column: 35, scope: !3192)
!3204 = !DILocation(line: 963, column: 47, scope: !3192)
!3205 = !DILocation(line: 965, column: 3, scope: !3192)
!3206 = !DILocation(line: 965, column: 32, scope: !3192)
!3207 = !DILocation(line: 193, column: 48, scope: !3172, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 965, column: 36, scope: !3192)
!3209 = !DILocation(line: 195, column: 26, scope: !3172, inlinedAt: !3208)
!3210 = !{!3211}
!3211 = distinct !{!3211, !3212, !"quoting_options_from_style: argument 0"}
!3212 = distinct !{!3212, !"quoting_options_from_style"}
!3213 = !DILocation(line: 196, column: 13, scope: !3184, inlinedAt: !3208)
!3214 = !DILocation(line: 196, column: 7, scope: !3172, inlinedAt: !3208)
!3215 = !DILocation(line: 197, column: 5, scope: !3184, inlinedAt: !3208)
!3216 = !DILocation(line: 198, column: 5, scope: !3172, inlinedAt: !3208)
!3217 = !DILocation(line: 198, column: 11, scope: !3172, inlinedAt: !3208)
!3218 = !DILocation(line: 966, column: 10, scope: !3192)
!3219 = !DILocation(line: 967, column: 1, scope: !3192)
!3220 = !DILocation(line: 966, column: 3, scope: !3192)
!3221 = distinct !DISubprogram(name: "quotearg_style", scope: !138, file: !138, line: 970, type: !3222, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!30, !5, !41}
!3224 = !{!3225, !3226}
!3225 = !DILocalVariable(name: "s", arg: 1, scope: !3221, file: !138, line: 970, type: !5)
!3226 = !DILocalVariable(name: "arg", arg: 2, scope: !3221, file: !138, line: 970, type: !41)
!3227 = !DILocation(line: 970, column: 36, scope: !3221)
!3228 = !DILocation(line: 970, column: 51, scope: !3221)
!3229 = !DILocation(line: 955, column: 23, scope: !3158, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 972, column: 10, scope: !3221)
!3231 = !DILocation(line: 955, column: 45, scope: !3158, inlinedAt: !3230)
!3232 = !DILocation(line: 955, column: 60, scope: !3158, inlinedAt: !3230)
!3233 = !DILocation(line: 957, column: 3, scope: !3158, inlinedAt: !3230)
!3234 = !DILocation(line: 957, column: 32, scope: !3158, inlinedAt: !3230)
!3235 = !DILocation(line: 193, column: 48, scope: !3172, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 957, column: 36, scope: !3158, inlinedAt: !3230)
!3237 = !DILocation(line: 195, column: 26, scope: !3172, inlinedAt: !3236)
!3238 = !{!3239}
!3239 = distinct !{!3239, !3240, !"quoting_options_from_style: argument 0"}
!3240 = distinct !{!3240, !"quoting_options_from_style"}
!3241 = !DILocation(line: 196, column: 13, scope: !3184, inlinedAt: !3236)
!3242 = !DILocation(line: 196, column: 7, scope: !3172, inlinedAt: !3236)
!3243 = !DILocation(line: 197, column: 5, scope: !3184, inlinedAt: !3236)
!3244 = !DILocation(line: 198, column: 5, scope: !3172, inlinedAt: !3236)
!3245 = !DILocation(line: 198, column: 11, scope: !3172, inlinedAt: !3236)
!3246 = !DILocation(line: 958, column: 10, scope: !3158, inlinedAt: !3230)
!3247 = !DILocation(line: 959, column: 1, scope: !3158, inlinedAt: !3230)
!3248 = !DILocation(line: 972, column: 3, scope: !3221)
!3249 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !138, file: !138, line: 976, type: !3250, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!30, !5, !41, !63}
!3252 = !{!3253, !3254, !3255}
!3253 = !DILocalVariable(name: "s", arg: 1, scope: !3249, file: !138, line: 976, type: !5)
!3254 = !DILocalVariable(name: "arg", arg: 2, scope: !3249, file: !138, line: 976, type: !41)
!3255 = !DILocalVariable(name: "argsize", arg: 3, scope: !3249, file: !138, line: 976, type: !63)
!3256 = !DILocation(line: 976, column: 40, scope: !3249)
!3257 = !DILocation(line: 976, column: 55, scope: !3249)
!3258 = !DILocation(line: 976, column: 67, scope: !3249)
!3259 = !DILocation(line: 962, column: 27, scope: !3192, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 978, column: 10, scope: !3249)
!3261 = !DILocation(line: 962, column: 49, scope: !3192, inlinedAt: !3260)
!3262 = !DILocation(line: 963, column: 35, scope: !3192, inlinedAt: !3260)
!3263 = !DILocation(line: 963, column: 47, scope: !3192, inlinedAt: !3260)
!3264 = !DILocation(line: 965, column: 3, scope: !3192, inlinedAt: !3260)
!3265 = !DILocation(line: 965, column: 32, scope: !3192, inlinedAt: !3260)
!3266 = !DILocation(line: 193, column: 48, scope: !3172, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 965, column: 36, scope: !3192, inlinedAt: !3260)
!3268 = !DILocation(line: 195, column: 26, scope: !3172, inlinedAt: !3267)
!3269 = !{!3270}
!3270 = distinct !{!3270, !3271, !"quoting_options_from_style: argument 0"}
!3271 = distinct !{!3271, !"quoting_options_from_style"}
!3272 = !DILocation(line: 196, column: 13, scope: !3184, inlinedAt: !3267)
!3273 = !DILocation(line: 196, column: 7, scope: !3172, inlinedAt: !3267)
!3274 = !DILocation(line: 197, column: 5, scope: !3184, inlinedAt: !3267)
!3275 = !DILocation(line: 198, column: 5, scope: !3172, inlinedAt: !3267)
!3276 = !DILocation(line: 198, column: 11, scope: !3172, inlinedAt: !3267)
!3277 = !DILocation(line: 966, column: 10, scope: !3192, inlinedAt: !3260)
!3278 = !DILocation(line: 967, column: 1, scope: !3192, inlinedAt: !3260)
!3279 = !DILocation(line: 978, column: 3, scope: !3249)
!3280 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !138, file: !138, line: 982, type: !3281, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!30, !41, !63, !31}
!3283 = !{!3284, !3285, !3286, !3287}
!3284 = !DILocalVariable(name: "arg", arg: 1, scope: !3280, file: !138, line: 982, type: !41)
!3285 = !DILocalVariable(name: "argsize", arg: 2, scope: !3280, file: !138, line: 982, type: !63)
!3286 = !DILocalVariable(name: "ch", arg: 3, scope: !3280, file: !138, line: 982, type: !31)
!3287 = !DILocalVariable(name: "options", scope: !3280, file: !138, line: 984, type: !145)
!3288 = !DILocation(line: 982, column: 32, scope: !3280)
!3289 = !DILocation(line: 982, column: 44, scope: !3280)
!3290 = !DILocation(line: 982, column: 58, scope: !3280)
!3291 = !DILocation(line: 984, column: 3, scope: !3280)
!3292 = !DILocation(line: 985, column: 13, scope: !3280)
!3293 = !{i64 0, i64 4, !943, i64 4, i64 4, !878, i64 8, i64 32, !943, i64 40, i64 8, !672, i64 48, i64 8, !672}
!3294 = !DILocation(line: 984, column: 26, scope: !3280)
!3295 = !DILocation(line: 152, column: 43, scope: !1947, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 986, column: 3, scope: !3280)
!3297 = !DILocation(line: 152, column: 51, scope: !1947, inlinedAt: !3296)
!3298 = !DILocation(line: 152, column: 58, scope: !1947, inlinedAt: !3296)
!3299 = !DILocation(line: 154, column: 17, scope: !1947, inlinedAt: !3296)
!3300 = !DILocation(line: 156, column: 62, scope: !1947, inlinedAt: !3296)
!3301 = !DILocation(line: 156, column: 57, scope: !1947, inlinedAt: !3296)
!3302 = !DILocation(line: 155, column: 17, scope: !1947, inlinedAt: !3296)
!3303 = !DILocation(line: 157, column: 15, scope: !1947, inlinedAt: !3296)
!3304 = !DILocation(line: 157, column: 7, scope: !1947, inlinedAt: !3296)
!3305 = !DILocation(line: 158, column: 12, scope: !1947, inlinedAt: !3296)
!3306 = !DILocation(line: 158, column: 15, scope: !1947, inlinedAt: !3296)
!3307 = !DILocation(line: 158, column: 25, scope: !1947, inlinedAt: !3296)
!3308 = !DILocation(line: 158, column: 7, scope: !1947, inlinedAt: !3296)
!3309 = !DILocation(line: 159, column: 18, scope: !1947, inlinedAt: !3296)
!3310 = !DILocation(line: 159, column: 23, scope: !1947, inlinedAt: !3296)
!3311 = !DILocation(line: 159, column: 6, scope: !1947, inlinedAt: !3296)
!3312 = !DILocation(line: 987, column: 10, scope: !3280)
!3313 = !DILocation(line: 988, column: 1, scope: !3280)
!3314 = !DILocation(line: 987, column: 3, scope: !3280)
!3315 = distinct !DISubprogram(name: "quotearg_char", scope: !138, file: !138, line: 991, type: !3316, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!30, !41, !31}
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "arg", arg: 1, scope: !3315, file: !138, line: 991, type: !41)
!3320 = !DILocalVariable(name: "ch", arg: 2, scope: !3315, file: !138, line: 991, type: !31)
!3321 = !DILocation(line: 991, column: 28, scope: !3315)
!3322 = !DILocation(line: 991, column: 38, scope: !3315)
!3323 = !DILocation(line: 982, column: 32, scope: !3280, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 993, column: 10, scope: !3315)
!3325 = !DILocation(line: 982, column: 44, scope: !3280, inlinedAt: !3324)
!3326 = !DILocation(line: 982, column: 58, scope: !3280, inlinedAt: !3324)
!3327 = !DILocation(line: 984, column: 3, scope: !3280, inlinedAt: !3324)
!3328 = !DILocation(line: 985, column: 13, scope: !3280, inlinedAt: !3324)
!3329 = !DILocation(line: 984, column: 26, scope: !3280, inlinedAt: !3324)
!3330 = !DILocation(line: 152, column: 43, scope: !1947, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 986, column: 3, scope: !3280, inlinedAt: !3324)
!3332 = !DILocation(line: 152, column: 51, scope: !1947, inlinedAt: !3331)
!3333 = !DILocation(line: 152, column: 58, scope: !1947, inlinedAt: !3331)
!3334 = !DILocation(line: 154, column: 17, scope: !1947, inlinedAt: !3331)
!3335 = !DILocation(line: 156, column: 62, scope: !1947, inlinedAt: !3331)
!3336 = !DILocation(line: 156, column: 57, scope: !1947, inlinedAt: !3331)
!3337 = !DILocation(line: 155, column: 17, scope: !1947, inlinedAt: !3331)
!3338 = !DILocation(line: 157, column: 15, scope: !1947, inlinedAt: !3331)
!3339 = !DILocation(line: 157, column: 7, scope: !1947, inlinedAt: !3331)
!3340 = !DILocation(line: 158, column: 12, scope: !1947, inlinedAt: !3331)
!3341 = !DILocation(line: 158, column: 15, scope: !1947, inlinedAt: !3331)
!3342 = !DILocation(line: 158, column: 25, scope: !1947, inlinedAt: !3331)
!3343 = !DILocation(line: 158, column: 7, scope: !1947, inlinedAt: !3331)
!3344 = !DILocation(line: 159, column: 18, scope: !1947, inlinedAt: !3331)
!3345 = !DILocation(line: 159, column: 23, scope: !1947, inlinedAt: !3331)
!3346 = !DILocation(line: 159, column: 6, scope: !1947, inlinedAt: !3331)
!3347 = !DILocation(line: 987, column: 10, scope: !3280, inlinedAt: !3324)
!3348 = !DILocation(line: 988, column: 1, scope: !3280, inlinedAt: !3324)
!3349 = !DILocation(line: 993, column: 3, scope: !3315)
!3350 = distinct !DISubprogram(name: "quotearg_colon", scope: !138, file: !138, line: 997, type: !3134, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3351)
!3351 = !{!3352}
!3352 = !DILocalVariable(name: "arg", arg: 1, scope: !3350, file: !138, line: 997, type: !41)
!3353 = !DILocation(line: 997, column: 29, scope: !3350)
!3354 = !DILocation(line: 991, column: 28, scope: !3315, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 999, column: 10, scope: !3350)
!3356 = !DILocation(line: 991, column: 38, scope: !3315, inlinedAt: !3355)
!3357 = !DILocation(line: 982, column: 32, scope: !3280, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 993, column: 10, scope: !3315, inlinedAt: !3355)
!3359 = !DILocation(line: 982, column: 44, scope: !3280, inlinedAt: !3358)
!3360 = !DILocation(line: 982, column: 58, scope: !3280, inlinedAt: !3358)
!3361 = !DILocation(line: 984, column: 3, scope: !3280, inlinedAt: !3358)
!3362 = !DILocation(line: 985, column: 13, scope: !3280, inlinedAt: !3358)
!3363 = !DILocation(line: 984, column: 26, scope: !3280, inlinedAt: !3358)
!3364 = !DILocation(line: 152, column: 43, scope: !1947, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 986, column: 3, scope: !3280, inlinedAt: !3358)
!3366 = !DILocation(line: 152, column: 51, scope: !1947, inlinedAt: !3365)
!3367 = !DILocation(line: 152, column: 58, scope: !1947, inlinedAt: !3365)
!3368 = !DILocation(line: 154, column: 17, scope: !1947, inlinedAt: !3365)
!3369 = !DILocation(line: 156, column: 57, scope: !1947, inlinedAt: !3365)
!3370 = !DILocation(line: 155, column: 17, scope: !1947, inlinedAt: !3365)
!3371 = !DILocation(line: 157, column: 7, scope: !1947, inlinedAt: !3365)
!3372 = !DILocation(line: 158, column: 12, scope: !1947, inlinedAt: !3365)
!3373 = !DILocation(line: 159, column: 6, scope: !1947, inlinedAt: !3365)
!3374 = !DILocation(line: 987, column: 10, scope: !3280, inlinedAt: !3358)
!3375 = !DILocation(line: 988, column: 1, scope: !3280, inlinedAt: !3358)
!3376 = !DILocation(line: 999, column: 3, scope: !3350)
!3377 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !138, file: !138, line: 1003, type: !3145, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3378)
!3378 = !{!3379, !3380}
!3379 = !DILocalVariable(name: "arg", arg: 1, scope: !3377, file: !138, line: 1003, type: !41)
!3380 = !DILocalVariable(name: "argsize", arg: 2, scope: !3377, file: !138, line: 1003, type: !63)
!3381 = !DILocation(line: 1003, column: 33, scope: !3377)
!3382 = !DILocation(line: 1003, column: 45, scope: !3377)
!3383 = !DILocation(line: 982, column: 32, scope: !3280, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 1005, column: 10, scope: !3377)
!3385 = !DILocation(line: 982, column: 44, scope: !3280, inlinedAt: !3384)
!3386 = !DILocation(line: 982, column: 58, scope: !3280, inlinedAt: !3384)
!3387 = !DILocation(line: 984, column: 3, scope: !3280, inlinedAt: !3384)
!3388 = !DILocation(line: 985, column: 13, scope: !3280, inlinedAt: !3384)
!3389 = !DILocation(line: 984, column: 26, scope: !3280, inlinedAt: !3384)
!3390 = !DILocation(line: 152, column: 43, scope: !1947, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 986, column: 3, scope: !3280, inlinedAt: !3384)
!3392 = !DILocation(line: 152, column: 51, scope: !1947, inlinedAt: !3391)
!3393 = !DILocation(line: 152, column: 58, scope: !1947, inlinedAt: !3391)
!3394 = !DILocation(line: 154, column: 17, scope: !1947, inlinedAt: !3391)
!3395 = !DILocation(line: 156, column: 57, scope: !1947, inlinedAt: !3391)
!3396 = !DILocation(line: 155, column: 17, scope: !1947, inlinedAt: !3391)
!3397 = !DILocation(line: 157, column: 7, scope: !1947, inlinedAt: !3391)
!3398 = !DILocation(line: 158, column: 12, scope: !1947, inlinedAt: !3391)
!3399 = !DILocation(line: 159, column: 6, scope: !1947, inlinedAt: !3391)
!3400 = !DILocation(line: 987, column: 10, scope: !3280, inlinedAt: !3384)
!3401 = !DILocation(line: 988, column: 1, scope: !3280, inlinedAt: !3384)
!3402 = !DILocation(line: 1005, column: 3, scope: !3377)
!3403 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !138, file: !138, line: 1009, type: !3159, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3404)
!3404 = !{!3405, !3406, !3407, !3408}
!3405 = !DILocalVariable(name: "n", arg: 1, scope: !3403, file: !138, line: 1009, type: !44)
!3406 = !DILocalVariable(name: "s", arg: 2, scope: !3403, file: !138, line: 1009, type: !5)
!3407 = !DILocalVariable(name: "arg", arg: 3, scope: !3403, file: !138, line: 1009, type: !41)
!3408 = !DILocalVariable(name: "options", scope: !3403, file: !138, line: 1011, type: !145)
!3409 = !DILocation(line: 195, column: 26, scope: !3172, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 1012, column: 13, scope: !3403)
!3411 = !DILocation(line: 1009, column: 29, scope: !3403)
!3412 = !DILocation(line: 1009, column: 51, scope: !3403)
!3413 = !DILocation(line: 1009, column: 66, scope: !3403)
!3414 = !DILocation(line: 1011, column: 3, scope: !3403)
!3415 = !DILocation(line: 1012, column: 13, scope: !3403)
!3416 = !DILocation(line: 193, column: 48, scope: !3172, inlinedAt: !3410)
!3417 = !{!3418}
!3418 = distinct !{!3418, !3419, !"quoting_options_from_style: argument 0"}
!3419 = distinct !{!3419, !"quoting_options_from_style"}
!3420 = !DILocation(line: 196, column: 13, scope: !3184, inlinedAt: !3410)
!3421 = !DILocation(line: 196, column: 7, scope: !3172, inlinedAt: !3410)
!3422 = !DILocation(line: 197, column: 5, scope: !3184, inlinedAt: !3410)
!3423 = !DILocation(line: 1011, column: 26, scope: !3403)
!3424 = !DILocation(line: 152, column: 43, scope: !1947, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 1013, column: 3, scope: !3403)
!3426 = !DILocation(line: 152, column: 51, scope: !1947, inlinedAt: !3425)
!3427 = !DILocation(line: 152, column: 58, scope: !1947, inlinedAt: !3425)
!3428 = !DILocation(line: 154, column: 17, scope: !1947, inlinedAt: !3425)
!3429 = !DILocation(line: 156, column: 57, scope: !1947, inlinedAt: !3425)
!3430 = !DILocation(line: 155, column: 17, scope: !1947, inlinedAt: !3425)
!3431 = !DILocation(line: 157, column: 7, scope: !1947, inlinedAt: !3425)
!3432 = !DILocation(line: 158, column: 12, scope: !1947, inlinedAt: !3425)
!3433 = !DILocation(line: 159, column: 6, scope: !1947, inlinedAt: !3425)
!3434 = !DILocation(line: 1014, column: 10, scope: !3403)
!3435 = !DILocation(line: 1015, column: 1, scope: !3403)
!3436 = !DILocation(line: 1014, column: 3, scope: !3403)
!3437 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !138, file: !138, line: 1018, type: !3438, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!30, !44, !41, !41, !41}
!3440 = !{!3441, !3442, !3443, !3444}
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3437, file: !138, line: 1018, type: !44)
!3442 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3437, file: !138, line: 1018, type: !41)
!3443 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3437, file: !138, line: 1019, type: !41)
!3444 = !DILocalVariable(name: "arg", arg: 4, scope: !3437, file: !138, line: 1019, type: !41)
!3445 = !DILocation(line: 1018, column: 24, scope: !3437)
!3446 = !DILocation(line: 1018, column: 39, scope: !3437)
!3447 = !DILocation(line: 1019, column: 32, scope: !3437)
!3448 = !DILocation(line: 1019, column: 57, scope: !3437)
!3449 = !DILocalVariable(name: "n", arg: 1, scope: !3450, file: !138, line: 1026, type: !44)
!3450 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !138, file: !138, line: 1026, type: !3451, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!30, !44, !41, !41, !41, !63}
!3453 = !{!3449, !3454, !3455, !3456, !3457, !3458}
!3454 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3450, file: !138, line: 1026, type: !41)
!3455 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3450, file: !138, line: 1027, type: !41)
!3456 = !DILocalVariable(name: "arg", arg: 4, scope: !3450, file: !138, line: 1028, type: !41)
!3457 = !DILocalVariable(name: "argsize", arg: 5, scope: !3450, file: !138, line: 1028, type: !63)
!3458 = !DILocalVariable(name: "o", scope: !3450, file: !138, line: 1030, type: !145)
!3459 = !DILocation(line: 1026, column: 28, scope: !3450, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 1021, column: 10, scope: !3437)
!3461 = !DILocation(line: 1026, column: 43, scope: !3450, inlinedAt: !3460)
!3462 = !DILocation(line: 1027, column: 36, scope: !3450, inlinedAt: !3460)
!3463 = !DILocation(line: 1028, column: 36, scope: !3450, inlinedAt: !3460)
!3464 = !DILocation(line: 1028, column: 48, scope: !3450, inlinedAt: !3460)
!3465 = !DILocation(line: 1030, column: 3, scope: !3450, inlinedAt: !3460)
!3466 = !DILocation(line: 1030, column: 30, scope: !3450, inlinedAt: !3460)
!3467 = !DILocation(line: 1030, column: 26, scope: !3450, inlinedAt: !3460)
!3468 = !DILocation(line: 179, column: 45, scope: !1995, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 1031, column: 3, scope: !3450, inlinedAt: !3460)
!3470 = !DILocation(line: 180, column: 33, scope: !1995, inlinedAt: !3469)
!3471 = !DILocation(line: 180, column: 57, scope: !1995, inlinedAt: !3469)
!3472 = !DILocation(line: 184, column: 6, scope: !1995, inlinedAt: !3469)
!3473 = !DILocation(line: 184, column: 12, scope: !1995, inlinedAt: !3469)
!3474 = !DILocation(line: 185, column: 8, scope: !2011, inlinedAt: !3469)
!3475 = !DILocation(line: 185, column: 23, scope: !2011, inlinedAt: !3469)
!3476 = !DILocation(line: 185, column: 19, scope: !2011, inlinedAt: !3469)
!3477 = !DILocation(line: 186, column: 5, scope: !2011, inlinedAt: !3469)
!3478 = !DILocation(line: 187, column: 6, scope: !1995, inlinedAt: !3469)
!3479 = !DILocation(line: 187, column: 17, scope: !1995, inlinedAt: !3469)
!3480 = !DILocation(line: 188, column: 6, scope: !1995, inlinedAt: !3469)
!3481 = !DILocation(line: 188, column: 18, scope: !1995, inlinedAt: !3469)
!3482 = !DILocation(line: 1032, column: 10, scope: !3450, inlinedAt: !3460)
!3483 = !DILocation(line: 1033, column: 1, scope: !3450, inlinedAt: !3460)
!3484 = !DILocation(line: 1021, column: 3, scope: !3437)
!3485 = !DILocation(line: 1026, column: 28, scope: !3450)
!3486 = !DILocation(line: 1026, column: 43, scope: !3450)
!3487 = !DILocation(line: 1027, column: 36, scope: !3450)
!3488 = !DILocation(line: 1028, column: 36, scope: !3450)
!3489 = !DILocation(line: 1028, column: 48, scope: !3450)
!3490 = !DILocation(line: 1030, column: 3, scope: !3450)
!3491 = !DILocation(line: 1030, column: 30, scope: !3450)
!3492 = !DILocation(line: 1030, column: 26, scope: !3450)
!3493 = !DILocation(line: 179, column: 45, scope: !1995, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 1031, column: 3, scope: !3450)
!3495 = !DILocation(line: 180, column: 33, scope: !1995, inlinedAt: !3494)
!3496 = !DILocation(line: 180, column: 57, scope: !1995, inlinedAt: !3494)
!3497 = !DILocation(line: 184, column: 6, scope: !1995, inlinedAt: !3494)
!3498 = !DILocation(line: 184, column: 12, scope: !1995, inlinedAt: !3494)
!3499 = !DILocation(line: 185, column: 8, scope: !2011, inlinedAt: !3494)
!3500 = !DILocation(line: 185, column: 23, scope: !2011, inlinedAt: !3494)
!3501 = !DILocation(line: 185, column: 19, scope: !2011, inlinedAt: !3494)
!3502 = !DILocation(line: 186, column: 5, scope: !2011, inlinedAt: !3494)
!3503 = !DILocation(line: 187, column: 6, scope: !1995, inlinedAt: !3494)
!3504 = !DILocation(line: 187, column: 17, scope: !1995, inlinedAt: !3494)
!3505 = !DILocation(line: 188, column: 6, scope: !1995, inlinedAt: !3494)
!3506 = !DILocation(line: 188, column: 18, scope: !1995, inlinedAt: !3494)
!3507 = !DILocation(line: 1032, column: 10, scope: !3450)
!3508 = !DILocation(line: 1033, column: 1, scope: !3450)
!3509 = !DILocation(line: 1032, column: 3, scope: !3450)
!3510 = distinct !DISubprogram(name: "quotearg_custom", scope: !138, file: !138, line: 1036, type: !3511, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!30, !41, !41, !41}
!3513 = !{!3514, !3515, !3516}
!3514 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3510, file: !138, line: 1036, type: !41)
!3515 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3510, file: !138, line: 1036, type: !41)
!3516 = !DILocalVariable(name: "arg", arg: 3, scope: !3510, file: !138, line: 1037, type: !41)
!3517 = !DILocation(line: 1036, column: 30, scope: !3510)
!3518 = !DILocation(line: 1036, column: 54, scope: !3510)
!3519 = !DILocation(line: 1037, column: 30, scope: !3510)
!3520 = !DILocation(line: 1018, column: 24, scope: !3437, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 1039, column: 10, scope: !3510)
!3522 = !DILocation(line: 1018, column: 39, scope: !3437, inlinedAt: !3521)
!3523 = !DILocation(line: 1019, column: 32, scope: !3437, inlinedAt: !3521)
!3524 = !DILocation(line: 1019, column: 57, scope: !3437, inlinedAt: !3521)
!3525 = !DILocation(line: 1026, column: 28, scope: !3450, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 1021, column: 10, scope: !3437, inlinedAt: !3521)
!3527 = !DILocation(line: 1026, column: 43, scope: !3450, inlinedAt: !3526)
!3528 = !DILocation(line: 1027, column: 36, scope: !3450, inlinedAt: !3526)
!3529 = !DILocation(line: 1028, column: 36, scope: !3450, inlinedAt: !3526)
!3530 = !DILocation(line: 1028, column: 48, scope: !3450, inlinedAt: !3526)
!3531 = !DILocation(line: 1030, column: 3, scope: !3450, inlinedAt: !3526)
!3532 = !DILocation(line: 1030, column: 30, scope: !3450, inlinedAt: !3526)
!3533 = !DILocation(line: 1030, column: 26, scope: !3450, inlinedAt: !3526)
!3534 = !DILocation(line: 179, column: 45, scope: !1995, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 1031, column: 3, scope: !3450, inlinedAt: !3526)
!3536 = !DILocation(line: 180, column: 33, scope: !1995, inlinedAt: !3535)
!3537 = !DILocation(line: 180, column: 57, scope: !1995, inlinedAt: !3535)
!3538 = !DILocation(line: 184, column: 6, scope: !1995, inlinedAt: !3535)
!3539 = !DILocation(line: 184, column: 12, scope: !1995, inlinedAt: !3535)
!3540 = !DILocation(line: 185, column: 8, scope: !2011, inlinedAt: !3535)
!3541 = !DILocation(line: 185, column: 23, scope: !2011, inlinedAt: !3535)
!3542 = !DILocation(line: 185, column: 19, scope: !2011, inlinedAt: !3535)
!3543 = !DILocation(line: 186, column: 5, scope: !2011, inlinedAt: !3535)
!3544 = !DILocation(line: 187, column: 6, scope: !1995, inlinedAt: !3535)
!3545 = !DILocation(line: 187, column: 17, scope: !1995, inlinedAt: !3535)
!3546 = !DILocation(line: 188, column: 6, scope: !1995, inlinedAt: !3535)
!3547 = !DILocation(line: 188, column: 18, scope: !1995, inlinedAt: !3535)
!3548 = !DILocation(line: 1032, column: 10, scope: !3450, inlinedAt: !3526)
!3549 = !DILocation(line: 1033, column: 1, scope: !3450, inlinedAt: !3526)
!3550 = !DILocation(line: 1039, column: 3, scope: !3510)
!3551 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !138, file: !138, line: 1043, type: !3552, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!30, !41, !41, !41, !63}
!3554 = !{!3555, !3556, !3557, !3558}
!3555 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3551, file: !138, line: 1043, type: !41)
!3556 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3551, file: !138, line: 1043, type: !41)
!3557 = !DILocalVariable(name: "arg", arg: 3, scope: !3551, file: !138, line: 1044, type: !41)
!3558 = !DILocalVariable(name: "argsize", arg: 4, scope: !3551, file: !138, line: 1044, type: !63)
!3559 = !DILocation(line: 1043, column: 34, scope: !3551)
!3560 = !DILocation(line: 1043, column: 58, scope: !3551)
!3561 = !DILocation(line: 1044, column: 34, scope: !3551)
!3562 = !DILocation(line: 1044, column: 46, scope: !3551)
!3563 = !DILocation(line: 1026, column: 28, scope: !3450, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 1046, column: 10, scope: !3551)
!3565 = !DILocation(line: 1026, column: 43, scope: !3450, inlinedAt: !3564)
!3566 = !DILocation(line: 1027, column: 36, scope: !3450, inlinedAt: !3564)
!3567 = !DILocation(line: 1028, column: 36, scope: !3450, inlinedAt: !3564)
!3568 = !DILocation(line: 1028, column: 48, scope: !3450, inlinedAt: !3564)
!3569 = !DILocation(line: 1030, column: 3, scope: !3450, inlinedAt: !3564)
!3570 = !DILocation(line: 1030, column: 30, scope: !3450, inlinedAt: !3564)
!3571 = !DILocation(line: 1030, column: 26, scope: !3450, inlinedAt: !3564)
!3572 = !DILocation(line: 179, column: 45, scope: !1995, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 1031, column: 3, scope: !3450, inlinedAt: !3564)
!3574 = !DILocation(line: 180, column: 33, scope: !1995, inlinedAt: !3573)
!3575 = !DILocation(line: 180, column: 57, scope: !1995, inlinedAt: !3573)
!3576 = !DILocation(line: 184, column: 6, scope: !1995, inlinedAt: !3573)
!3577 = !DILocation(line: 184, column: 12, scope: !1995, inlinedAt: !3573)
!3578 = !DILocation(line: 185, column: 8, scope: !2011, inlinedAt: !3573)
!3579 = !DILocation(line: 185, column: 23, scope: !2011, inlinedAt: !3573)
!3580 = !DILocation(line: 185, column: 19, scope: !2011, inlinedAt: !3573)
!3581 = !DILocation(line: 186, column: 5, scope: !2011, inlinedAt: !3573)
!3582 = !DILocation(line: 187, column: 6, scope: !1995, inlinedAt: !3573)
!3583 = !DILocation(line: 187, column: 17, scope: !1995, inlinedAt: !3573)
!3584 = !DILocation(line: 188, column: 6, scope: !1995, inlinedAt: !3573)
!3585 = !DILocation(line: 188, column: 18, scope: !1995, inlinedAt: !3573)
!3586 = !DILocation(line: 1032, column: 10, scope: !3450, inlinedAt: !3564)
!3587 = !DILocation(line: 1033, column: 1, scope: !3450, inlinedAt: !3564)
!3588 = !DILocation(line: 1046, column: 3, scope: !3551)
!3589 = distinct !DISubprogram(name: "quote_n_mem", scope: !138, file: !138, line: 1061, type: !3590, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!41, !44, !41, !63}
!3592 = !{!3593, !3594, !3595}
!3593 = !DILocalVariable(name: "n", arg: 1, scope: !3589, file: !138, line: 1061, type: !44)
!3594 = !DILocalVariable(name: "arg", arg: 2, scope: !3589, file: !138, line: 1061, type: !41)
!3595 = !DILocalVariable(name: "argsize", arg: 3, scope: !3589, file: !138, line: 1061, type: !63)
!3596 = !DILocation(line: 1061, column: 18, scope: !3589)
!3597 = !DILocation(line: 1061, column: 33, scope: !3589)
!3598 = !DILocation(line: 1061, column: 45, scope: !3589)
!3599 = !DILocation(line: 1063, column: 10, scope: !3589)
!3600 = !DILocation(line: 1063, column: 3, scope: !3589)
!3601 = distinct !DISubprogram(name: "quote_mem", scope: !138, file: !138, line: 1067, type: !3602, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!41, !41, !63}
!3604 = !{!3605, !3606}
!3605 = !DILocalVariable(name: "arg", arg: 1, scope: !3601, file: !138, line: 1067, type: !41)
!3606 = !DILocalVariable(name: "argsize", arg: 2, scope: !3601, file: !138, line: 1067, type: !63)
!3607 = !DILocation(line: 1067, column: 24, scope: !3601)
!3608 = !DILocation(line: 1067, column: 36, scope: !3601)
!3609 = !DILocation(line: 1061, column: 18, scope: !3589, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 1069, column: 10, scope: !3601)
!3611 = !DILocation(line: 1061, column: 33, scope: !3589, inlinedAt: !3610)
!3612 = !DILocation(line: 1061, column: 45, scope: !3589, inlinedAt: !3610)
!3613 = !DILocation(line: 1063, column: 10, scope: !3589, inlinedAt: !3610)
!3614 = !DILocation(line: 1069, column: 3, scope: !3601)
!3615 = distinct !DISubprogram(name: "quote_n", scope: !138, file: !138, line: 1073, type: !3616, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3618)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!41, !44, !41}
!3618 = !{!3619, !3620}
!3619 = !DILocalVariable(name: "n", arg: 1, scope: !3615, file: !138, line: 1073, type: !44)
!3620 = !DILocalVariable(name: "arg", arg: 2, scope: !3615, file: !138, line: 1073, type: !41)
!3621 = !DILocation(line: 1073, column: 14, scope: !3615)
!3622 = !DILocation(line: 1073, column: 29, scope: !3615)
!3623 = !DILocation(line: 1061, column: 18, scope: !3589, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 1075, column: 10, scope: !3615)
!3625 = !DILocation(line: 1061, column: 33, scope: !3589, inlinedAt: !3624)
!3626 = !DILocation(line: 1061, column: 45, scope: !3589, inlinedAt: !3624)
!3627 = !DILocation(line: 1063, column: 10, scope: !3589, inlinedAt: !3624)
!3628 = !DILocation(line: 1075, column: 3, scope: !3615)
!3629 = distinct !DISubprogram(name: "quote", scope: !138, file: !138, line: 1079, type: !3630, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !110, retainedNodes: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!41, !41}
!3632 = !{!3633}
!3633 = !DILocalVariable(name: "arg", arg: 1, scope: !3629, file: !138, line: 1079, type: !41)
!3634 = !DILocation(line: 1079, column: 20, scope: !3629)
!3635 = !DILocation(line: 1073, column: 14, scope: !3615, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 1081, column: 10, scope: !3629)
!3637 = !DILocation(line: 1073, column: 29, scope: !3615, inlinedAt: !3636)
!3638 = !DILocation(line: 1061, column: 18, scope: !3589, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 1075, column: 10, scope: !3615, inlinedAt: !3636)
!3640 = !DILocation(line: 1061, column: 33, scope: !3589, inlinedAt: !3639)
!3641 = !DILocation(line: 1061, column: 45, scope: !3589, inlinedAt: !3639)
!3642 = !DILocation(line: 1063, column: 10, scope: !3589, inlinedAt: !3639)
!3643 = !DILocation(line: 1081, column: 3, scope: !3629)
!3644 = distinct !DISubprogram(name: "version_etc_arn", scope: !191, file: !191, line: 62, type: !3645, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !3682)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !3647, !41, !41, !41, !3681, !63}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !735, line: 7, baseType: !3649)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !737, line: 49, size: 1728, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3649, file: !737, line: 51, baseType: !44, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3649, file: !737, line: 54, baseType: !30, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3649, file: !737, line: 55, baseType: !30, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3649, file: !737, line: 56, baseType: !30, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3649, file: !737, line: 57, baseType: !30, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3649, file: !737, line: 58, baseType: !30, size: 64, offset: 320)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3649, file: !737, line: 59, baseType: !30, size: 64, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3649, file: !737, line: 60, baseType: !30, size: 64, offset: 448)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3649, file: !737, line: 61, baseType: !30, size: 64, offset: 512)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3649, file: !737, line: 64, baseType: !30, size: 64, offset: 576)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3649, file: !737, line: 65, baseType: !30, size: 64, offset: 640)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3649, file: !737, line: 66, baseType: !30, size: 64, offset: 704)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3649, file: !737, line: 68, baseType: !752, size: 64, offset: 768)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3649, file: !737, line: 70, baseType: !3665, size: 64, offset: 832)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3649, file: !737, line: 72, baseType: !44, size: 32, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3649, file: !737, line: 73, baseType: !44, size: 32, offset: 928)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3649, file: !737, line: 74, baseType: !759, size: 64, offset: 960)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3649, file: !737, line: 77, baseType: !134, size: 16, offset: 1024)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3649, file: !737, line: 78, baseType: !75, size: 8, offset: 1040)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3649, file: !737, line: 79, baseType: !765, size: 8, offset: 1048)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3649, file: !737, line: 81, baseType: !769, size: 64, offset: 1088)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3649, file: !737, line: 89, baseType: !772, size: 64, offset: 1152)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3649, file: !737, line: 91, baseType: !774, size: 64, offset: 1216)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3649, file: !737, line: 92, baseType: !777, size: 64, offset: 1280)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3649, file: !737, line: 93, baseType: !3665, size: 64, offset: 1344)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3649, file: !737, line: 94, baseType: !32, size: 64, offset: 1408)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3649, file: !737, line: 95, baseType: !63, size: 64, offset: 1472)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3649, file: !737, line: 96, baseType: !44, size: 32, offset: 1536)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3649, file: !737, line: 98, baseType: !784, size: 160, offset: 1568)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688}
!3683 = !DILocalVariable(name: "stream", arg: 1, scope: !3644, file: !191, line: 62, type: !3647)
!3684 = !DILocalVariable(name: "command_name", arg: 2, scope: !3644, file: !191, line: 63, type: !41)
!3685 = !DILocalVariable(name: "package", arg: 3, scope: !3644, file: !191, line: 63, type: !41)
!3686 = !DILocalVariable(name: "version", arg: 4, scope: !3644, file: !191, line: 64, type: !41)
!3687 = !DILocalVariable(name: "authors", arg: 5, scope: !3644, file: !191, line: 65, type: !3681)
!3688 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3644, file: !191, line: 65, type: !63)
!3689 = !DILocation(line: 62, column: 24, scope: !3644)
!3690 = !DILocation(line: 63, column: 30, scope: !3644)
!3691 = !DILocation(line: 63, column: 56, scope: !3644)
!3692 = !DILocation(line: 64, column: 30, scope: !3644)
!3693 = !DILocation(line: 65, column: 39, scope: !3644)
!3694 = !DILocation(line: 65, column: 55, scope: !3644)
!3695 = !DILocation(line: 67, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3644, file: !191, line: 67, column: 7)
!3697 = !DILocation(line: 67, column: 7, scope: !3644)
!3698 = !DILocation(line: 68, column: 5, scope: !3696)
!3699 = !DILocation(line: 70, column: 5, scope: !3696)
!3700 = !DILocation(line: 84, column: 3, scope: !3644)
!3701 = !DILocation(line: 86, column: 3, scope: !3644)
!3702 = !DILocation(line: 95, column: 3, scope: !3644)
!3703 = !DILocation(line: 99, column: 7, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3644, file: !191, line: 96, column: 5)
!3705 = !DILocation(line: 102, column: 7, scope: !3704)
!3706 = !DILocation(line: 103, column: 7, scope: !3704)
!3707 = !DILocation(line: 106, column: 7, scope: !3704)
!3708 = !DILocation(line: 107, column: 7, scope: !3704)
!3709 = !DILocation(line: 110, column: 7, scope: !3704)
!3710 = !DILocation(line: 112, column: 7, scope: !3704)
!3711 = !DILocation(line: 117, column: 7, scope: !3704)
!3712 = !DILocation(line: 119, column: 7, scope: !3704)
!3713 = !DILocation(line: 124, column: 7, scope: !3704)
!3714 = !DILocation(line: 126, column: 7, scope: !3704)
!3715 = !DILocation(line: 131, column: 7, scope: !3704)
!3716 = !DILocation(line: 134, column: 7, scope: !3704)
!3717 = !DILocation(line: 139, column: 7, scope: !3704)
!3718 = !DILocation(line: 142, column: 7, scope: !3704)
!3719 = !DILocation(line: 147, column: 7, scope: !3704)
!3720 = !DILocation(line: 151, column: 7, scope: !3704)
!3721 = !DILocation(line: 156, column: 7, scope: !3704)
!3722 = !DILocation(line: 160, column: 7, scope: !3704)
!3723 = !DILocation(line: 167, column: 7, scope: !3704)
!3724 = !DILocation(line: 171, column: 7, scope: !3704)
!3725 = !DILocation(line: 173, column: 1, scope: !3644)
!3726 = distinct !DISubprogram(name: "version_etc_ar", scope: !191, file: !191, line: 180, type: !3727, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3647, !41, !41, !41, !3681}
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735}
!3730 = !DILocalVariable(name: "stream", arg: 1, scope: !3726, file: !191, line: 180, type: !3647)
!3731 = !DILocalVariable(name: "command_name", arg: 2, scope: !3726, file: !191, line: 181, type: !41)
!3732 = !DILocalVariable(name: "package", arg: 3, scope: !3726, file: !191, line: 181, type: !41)
!3733 = !DILocalVariable(name: "version", arg: 4, scope: !3726, file: !191, line: 182, type: !41)
!3734 = !DILocalVariable(name: "authors", arg: 5, scope: !3726, file: !191, line: 182, type: !3681)
!3735 = !DILocalVariable(name: "n_authors", scope: !3726, file: !191, line: 184, type: !63)
!3736 = !DILocation(line: 180, column: 23, scope: !3726)
!3737 = !DILocation(line: 181, column: 29, scope: !3726)
!3738 = !DILocation(line: 181, column: 55, scope: !3726)
!3739 = !DILocation(line: 182, column: 29, scope: !3726)
!3740 = !DILocation(line: 182, column: 59, scope: !3726)
!3741 = !DILocation(line: 184, column: 10, scope: !3726)
!3742 = !DILocation(line: 186, column: 8, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3726, file: !191, line: 186, column: 3)
!3744 = !DILocation(line: 0, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3743, file: !191, line: 186, column: 3)
!3746 = !DILocation(line: 186, column: 23, scope: !3745)
!3747 = !DILocation(line: 186, column: 3, scope: !3743)
!3748 = !DILocation(line: 186, column: 52, scope: !3745)
!3749 = distinct !{!3749, !3747, !3750}
!3750 = !DILocation(line: 187, column: 5, scope: !3743)
!3751 = !DILocation(line: 188, column: 3, scope: !3726)
!3752 = !DILocation(line: 189, column: 1, scope: !3726)
!3753 = distinct !DISubprogram(name: "version_etc_va", scope: !191, file: !191, line: 196, type: !3754, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !3763)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3647, !41, !41, !41, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !188, line: 189, size: 192, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3762}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3757, file: !188, line: 189, baseType: !7, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3757, file: !188, line: 189, baseType: !7, size: 32, offset: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3757, file: !188, line: 189, baseType: !32, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3757, file: !188, line: 189, baseType: !32, size: 64, offset: 128)
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3769, !3770}
!3764 = !DILocalVariable(name: "stream", arg: 1, scope: !3753, file: !191, line: 196, type: !3647)
!3765 = !DILocalVariable(name: "command_name", arg: 2, scope: !3753, file: !191, line: 197, type: !41)
!3766 = !DILocalVariable(name: "package", arg: 3, scope: !3753, file: !191, line: 197, type: !41)
!3767 = !DILocalVariable(name: "version", arg: 4, scope: !3753, file: !191, line: 198, type: !41)
!3768 = !DILocalVariable(name: "authors", arg: 5, scope: !3753, file: !191, line: 198, type: !3756)
!3769 = !DILocalVariable(name: "n_authors", scope: !3753, file: !191, line: 200, type: !63)
!3770 = !DILocalVariable(name: "authtab", scope: !3753, file: !191, line: 201, type: !3771)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !141)
!3772 = !DILocation(line: 196, column: 23, scope: !3753)
!3773 = !DILocation(line: 197, column: 29, scope: !3753)
!3774 = !DILocation(line: 197, column: 55, scope: !3753)
!3775 = !DILocation(line: 198, column: 29, scope: !3753)
!3776 = !DILocation(line: 198, column: 46, scope: !3753)
!3777 = !DILocation(line: 201, column: 3, scope: !3753)
!3778 = !DILocation(line: 201, column: 15, scope: !3753)
!3779 = !DILocation(line: 200, column: 10, scope: !3753)
!3780 = !DILocation(line: 205, column: 35, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !191, line: 203, column: 3)
!3782 = distinct !DILexicalBlock(scope: !3753, file: !191, line: 203, column: 3)
!3783 = !DILocation(line: 205, column: 14, scope: !3781)
!3784 = !DILocation(line: 205, column: 33, scope: !3781)
!3785 = !DILocation(line: 205, column: 67, scope: !3781)
!3786 = !DILocation(line: 203, column: 3, scope: !3782)
!3787 = !DILocation(line: 0, scope: !3781)
!3788 = !DILocation(line: 208, column: 3, scope: !3753)
!3789 = !DILocation(line: 210, column: 1, scope: !3753)
!3790 = distinct !DISubprogram(name: "version_etc", scope: !191, file: !191, line: 227, type: !3791, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !3647, !41, !41, !41, null}
!3793 = !{!3794, !3795, !3796, !3797, !3798}
!3794 = !DILocalVariable(name: "stream", arg: 1, scope: !3790, file: !191, line: 227, type: !3647)
!3795 = !DILocalVariable(name: "command_name", arg: 2, scope: !3790, file: !191, line: 228, type: !41)
!3796 = !DILocalVariable(name: "package", arg: 3, scope: !3790, file: !191, line: 228, type: !41)
!3797 = !DILocalVariable(name: "version", arg: 4, scope: !3790, file: !191, line: 229, type: !41)
!3798 = !DILocalVariable(name: "authors", scope: !3790, file: !191, line: 231, type: !3799)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1798, line: 52, baseType: !3800)
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3801, line: 48, baseType: !3802)
!3801 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !188, line: 231, baseType: !3803)
!3803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3757, size: 192, elements: !766)
!3804 = !DILocation(line: 227, column: 20, scope: !3790)
!3805 = !DILocation(line: 228, column: 26, scope: !3790)
!3806 = !DILocation(line: 228, column: 52, scope: !3790)
!3807 = !DILocation(line: 229, column: 26, scope: !3790)
!3808 = !DILocation(line: 231, column: 3, scope: !3790)
!3809 = !DILocation(line: 231, column: 11, scope: !3790)
!3810 = !DILocation(line: 233, column: 3, scope: !3790)
!3811 = !DILocation(line: 234, column: 3, scope: !3790)
!3812 = !DILocation(line: 235, column: 3, scope: !3790)
!3813 = !DILocation(line: 236, column: 1, scope: !3790)
!3814 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !191, file: !191, line: 239, type: !679, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !54)
!3815 = !DILocation(line: 245, column: 3, scope: !3814)
!3816 = !DILocation(line: 251, column: 3, scope: !3814)
!3817 = !DILocation(line: 256, column: 3, scope: !3814)
!3818 = !DILocation(line: 258, column: 1, scope: !3814)
!3819 = distinct !DISubprogram(name: "xnmalloc", scope: !199, file: !199, line: 99, type: !3820, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!32, !63, !63}
!3822 = !{!3823, !3824}
!3823 = !DILocalVariable(name: "n", arg: 1, scope: !3819, file: !199, line: 99, type: !63)
!3824 = !DILocalVariable(name: "s", arg: 2, scope: !3819, file: !199, line: 99, type: !63)
!3825 = !DILocation(line: 99, column: 18, scope: !3819)
!3826 = !DILocation(line: 99, column: 28, scope: !3819)
!3827 = !DILocation(line: 101, column: 7, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3819, file: !199, line: 101, column: 7)
!3829 = !DILocation(line: 101, column: 7, scope: !3819)
!3830 = !DILocation(line: 102, column: 5, scope: !3828)
!3831 = !DILocation(line: 103, column: 21, scope: !3819)
!3832 = !DILocalVariable(name: "n", arg: 1, scope: !3833, file: !3834, line: 39, type: !63)
!3833 = distinct !DISubprogram(name: "xmalloc", scope: !3834, file: !3834, line: 39, type: !3835, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3837)
!3834 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!32, !63}
!3837 = !{!3832, !3838}
!3838 = !DILocalVariable(name: "p", scope: !3833, file: !3834, line: 41, type: !32)
!3839 = !DILocation(line: 39, column: 17, scope: !3833, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 103, column: 10, scope: !3819)
!3841 = !DILocation(line: 41, column: 13, scope: !3833, inlinedAt: !3840)
!3842 = !DILocation(line: 41, column: 9, scope: !3833, inlinedAt: !3840)
!3843 = !DILocation(line: 42, column: 8, scope: !3844, inlinedAt: !3840)
!3844 = distinct !DILexicalBlock(scope: !3833, file: !3834, line: 42, column: 7)
!3845 = !DILocation(line: 42, column: 15, scope: !3844, inlinedAt: !3840)
!3846 = !DILocation(line: 42, column: 10, scope: !3844, inlinedAt: !3840)
!3847 = !DILocation(line: 43, column: 5, scope: !3844, inlinedAt: !3840)
!3848 = !DILocation(line: 103, column: 3, scope: !3819)
!3849 = !DILocation(line: 39, column: 17, scope: !3833)
!3850 = !DILocation(line: 41, column: 13, scope: !3833)
!3851 = !DILocation(line: 41, column: 9, scope: !3833)
!3852 = !DILocation(line: 42, column: 8, scope: !3844)
!3853 = !DILocation(line: 42, column: 15, scope: !3844)
!3854 = !DILocation(line: 42, column: 10, scope: !3844)
!3855 = !DILocation(line: 43, column: 5, scope: !3844)
!3856 = !DILocation(line: 44, column: 3, scope: !3833)
!3857 = distinct !DISubprogram(name: "xnrealloc", scope: !199, file: !199, line: 112, type: !3858, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3860)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!32, !32, !63, !63}
!3860 = !{!3861, !3862, !3863}
!3861 = !DILocalVariable(name: "p", arg: 1, scope: !3857, file: !199, line: 112, type: !32)
!3862 = !DILocalVariable(name: "n", arg: 2, scope: !3857, file: !199, line: 112, type: !63)
!3863 = !DILocalVariable(name: "s", arg: 3, scope: !3857, file: !199, line: 112, type: !63)
!3864 = !DILocation(line: 112, column: 18, scope: !3857)
!3865 = !DILocation(line: 112, column: 28, scope: !3857)
!3866 = !DILocation(line: 112, column: 38, scope: !3857)
!3867 = !DILocation(line: 114, column: 7, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3857, file: !199, line: 114, column: 7)
!3869 = !DILocation(line: 114, column: 7, scope: !3857)
!3870 = !DILocation(line: 115, column: 5, scope: !3868)
!3871 = !DILocation(line: 116, column: 25, scope: !3857)
!3872 = !DILocalVariable(name: "p", arg: 1, scope: !3873, file: !3834, line: 51, type: !32)
!3873 = distinct !DISubprogram(name: "xrealloc", scope: !3834, file: !3834, line: 51, type: !3874, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!32, !32, !63}
!3876 = !{!3872, !3877}
!3877 = !DILocalVariable(name: "n", arg: 2, scope: !3873, file: !3834, line: 51, type: !63)
!3878 = !DILocation(line: 51, column: 17, scope: !3873, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 116, column: 10, scope: !3857)
!3880 = !DILocation(line: 51, column: 27, scope: !3873, inlinedAt: !3879)
!3881 = !DILocation(line: 53, column: 8, scope: !3882, inlinedAt: !3879)
!3882 = distinct !DILexicalBlock(scope: !3873, file: !3834, line: 53, column: 7)
!3883 = !DILocation(line: 53, column: 13, scope: !3882, inlinedAt: !3879)
!3884 = !DILocation(line: 53, column: 10, scope: !3882, inlinedAt: !3879)
!3885 = !DILocation(line: 57, column: 7, scope: !3886, inlinedAt: !3879)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !3834, line: 54, column: 5)
!3887 = !DILocation(line: 58, column: 7, scope: !3886, inlinedAt: !3879)
!3888 = !DILocation(line: 61, column: 7, scope: !3873, inlinedAt: !3879)
!3889 = !DILocation(line: 62, column: 8, scope: !3890, inlinedAt: !3879)
!3890 = distinct !DILexicalBlock(scope: !3873, file: !3834, line: 62, column: 7)
!3891 = !DILocation(line: 62, column: 13, scope: !3890, inlinedAt: !3879)
!3892 = !DILocation(line: 62, column: 10, scope: !3890, inlinedAt: !3879)
!3893 = !DILocation(line: 63, column: 5, scope: !3890, inlinedAt: !3879)
!3894 = !DILocation(line: 0, scope: !3873, inlinedAt: !3879)
!3895 = !DILocation(line: 116, column: 3, scope: !3857)
!3896 = !DILocation(line: 51, column: 17, scope: !3873)
!3897 = !DILocation(line: 51, column: 27, scope: !3873)
!3898 = !DILocation(line: 53, column: 8, scope: !3882)
!3899 = !DILocation(line: 53, column: 13, scope: !3882)
!3900 = !DILocation(line: 53, column: 10, scope: !3882)
!3901 = !DILocation(line: 57, column: 7, scope: !3886)
!3902 = !DILocation(line: 58, column: 7, scope: !3886)
!3903 = !DILocation(line: 61, column: 7, scope: !3873)
!3904 = !DILocation(line: 62, column: 8, scope: !3890)
!3905 = !DILocation(line: 62, column: 13, scope: !3890)
!3906 = !DILocation(line: 62, column: 10, scope: !3890)
!3907 = !DILocation(line: 63, column: 5, scope: !3890)
!3908 = !DILocation(line: 0, scope: !3873)
!3909 = !DILocation(line: 65, column: 1, scope: !3873)
!3910 = !DILocation(line: 174, column: 19, scope: !200)
!3911 = !DILocation(line: 174, column: 30, scope: !200)
!3912 = !DILocation(line: 174, column: 41, scope: !200)
!3913 = !DILocation(line: 176, column: 14, scope: !200)
!3914 = !DILocation(line: 176, column: 10, scope: !200)
!3915 = !DILocation(line: 178, column: 9, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !200, file: !199, line: 178, column: 7)
!3917 = !DILocation(line: 178, column: 7, scope: !200)
!3918 = !DILocation(line: 180, column: 13, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !199, line: 180, column: 11)
!3920 = distinct !DILexicalBlock(scope: !3916, file: !199, line: 179, column: 5)
!3921 = !DILocation(line: 180, column: 11, scope: !3920)
!3922 = !DILocation(line: 188, column: 30, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !199, line: 181, column: 9)
!3924 = !DILocation(line: 189, column: 16, scope: !3923)
!3925 = !DILocation(line: 189, column: 13, scope: !3923)
!3926 = !DILocation(line: 190, column: 9, scope: !3923)
!3927 = !DILocation(line: 0, scope: !3923)
!3928 = !DILocation(line: 191, column: 11, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3920, file: !199, line: 191, column: 11)
!3930 = !DILocation(line: 191, column: 11, scope: !3920)
!3931 = !DILocation(line: 206, column: 7, scope: !200)
!3932 = !DILocation(line: 207, column: 25, scope: !200)
!3933 = !DILocation(line: 51, column: 17, scope: !3873, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 207, column: 10, scope: !200)
!3935 = !DILocation(line: 51, column: 27, scope: !3873, inlinedAt: !3934)
!3936 = !DILocation(line: 53, column: 10, scope: !3882, inlinedAt: !3934)
!3937 = !DILocation(line: 192, column: 9, scope: !3929)
!3938 = !DILocation(line: 200, column: 69, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !199, line: 200, column: 11)
!3940 = distinct !DILexicalBlock(scope: !3916, file: !199, line: 195, column: 5)
!3941 = !DILocation(line: 201, column: 11, scope: !3939)
!3942 = !DILocation(line: 200, column: 11, scope: !3940)
!3943 = !DILocation(line: 202, column: 9, scope: !3939)
!3944 = !DILocation(line: 203, column: 14, scope: !3940)
!3945 = !DILocation(line: 203, column: 18, scope: !3940)
!3946 = !DILocation(line: 203, column: 9, scope: !3940)
!3947 = !DILocation(line: 53, column: 8, scope: !3882, inlinedAt: !3934)
!3948 = !DILocation(line: 57, column: 7, scope: !3886, inlinedAt: !3934)
!3949 = !DILocation(line: 58, column: 7, scope: !3886, inlinedAt: !3934)
!3950 = !DILocation(line: 61, column: 7, scope: !3873, inlinedAt: !3934)
!3951 = !DILocation(line: 62, column: 8, scope: !3890, inlinedAt: !3934)
!3952 = !DILocation(line: 62, column: 13, scope: !3890, inlinedAt: !3934)
!3953 = !DILocation(line: 62, column: 10, scope: !3890, inlinedAt: !3934)
!3954 = !DILocation(line: 63, column: 5, scope: !3890, inlinedAt: !3934)
!3955 = !DILocation(line: 0, scope: !3873, inlinedAt: !3934)
!3956 = !DILocation(line: 207, column: 3, scope: !200)
!3957 = distinct !DISubprogram(name: "xcharalloc", scope: !199, file: !199, line: 216, type: !2930, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3958)
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "n", arg: 1, scope: !3957, file: !199, line: 216, type: !63)
!3960 = !DILocation(line: 216, column: 20, scope: !3957)
!3961 = !DILocation(line: 39, column: 17, scope: !3833, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 218, column: 10, scope: !3957)
!3963 = !DILocation(line: 41, column: 13, scope: !3833, inlinedAt: !3962)
!3964 = !DILocation(line: 41, column: 9, scope: !3833, inlinedAt: !3962)
!3965 = !DILocation(line: 42, column: 8, scope: !3844, inlinedAt: !3962)
!3966 = !DILocation(line: 42, column: 15, scope: !3844, inlinedAt: !3962)
!3967 = !DILocation(line: 42, column: 10, scope: !3844, inlinedAt: !3962)
!3968 = !DILocation(line: 43, column: 5, scope: !3844, inlinedAt: !3962)
!3969 = !DILocation(line: 218, column: 3, scope: !3957)
!3970 = distinct !DISubprogram(name: "x2realloc", scope: !3834, file: !3834, line: 74, type: !3971, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!32, !32, !203}
!3973 = !{!3974, !3975}
!3974 = !DILocalVariable(name: "p", arg: 1, scope: !3970, file: !3834, line: 74, type: !32)
!3975 = !DILocalVariable(name: "pn", arg: 2, scope: !3970, file: !3834, line: 74, type: !203)
!3976 = !DILocation(line: 74, column: 18, scope: !3970)
!3977 = !DILocation(line: 74, column: 29, scope: !3970)
!3978 = !DILocation(line: 174, column: 19, scope: !200, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 76, column: 10, scope: !3970)
!3980 = !DILocation(line: 174, column: 30, scope: !200, inlinedAt: !3979)
!3981 = !DILocation(line: 174, column: 41, scope: !200, inlinedAt: !3979)
!3982 = !DILocation(line: 176, column: 14, scope: !200, inlinedAt: !3979)
!3983 = !DILocation(line: 176, column: 10, scope: !200, inlinedAt: !3979)
!3984 = !DILocation(line: 178, column: 9, scope: !3916, inlinedAt: !3979)
!3985 = !DILocation(line: 178, column: 7, scope: !200, inlinedAt: !3979)
!3986 = !DILocation(line: 180, column: 13, scope: !3919, inlinedAt: !3979)
!3987 = !DILocation(line: 180, column: 11, scope: !3920, inlinedAt: !3979)
!3988 = !DILocation(line: 191, column: 11, scope: !3929, inlinedAt: !3979)
!3989 = !DILocation(line: 191, column: 11, scope: !3920, inlinedAt: !3979)
!3990 = !DILocation(line: 206, column: 7, scope: !200, inlinedAt: !3979)
!3991 = !DILocation(line: 51, column: 17, scope: !3873, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 207, column: 10, scope: !200, inlinedAt: !3979)
!3993 = !DILocation(line: 51, column: 27, scope: !3873, inlinedAt: !3992)
!3994 = !DILocation(line: 53, column: 10, scope: !3882, inlinedAt: !3992)
!3995 = !DILocation(line: 192, column: 9, scope: !3929, inlinedAt: !3979)
!3996 = !DILocation(line: 201, column: 11, scope: !3939, inlinedAt: !3979)
!3997 = !DILocation(line: 200, column: 11, scope: !3940, inlinedAt: !3979)
!3998 = !DILocation(line: 202, column: 9, scope: !3939, inlinedAt: !3979)
!3999 = !DILocation(line: 203, column: 14, scope: !3940, inlinedAt: !3979)
!4000 = !DILocation(line: 203, column: 18, scope: !3940, inlinedAt: !3979)
!4001 = !DILocation(line: 203, column: 9, scope: !3940, inlinedAt: !3979)
!4002 = !DILocation(line: 53, column: 8, scope: !3882, inlinedAt: !3992)
!4003 = !DILocation(line: 57, column: 7, scope: !3886, inlinedAt: !3992)
!4004 = !DILocation(line: 58, column: 7, scope: !3886, inlinedAt: !3992)
!4005 = !DILocation(line: 61, column: 7, scope: !3873, inlinedAt: !3992)
!4006 = !DILocation(line: 62, column: 8, scope: !3890, inlinedAt: !3992)
!4007 = !DILocation(line: 62, column: 13, scope: !3890, inlinedAt: !3992)
!4008 = !DILocation(line: 62, column: 10, scope: !3890, inlinedAt: !3992)
!4009 = !DILocation(line: 63, column: 5, scope: !3890, inlinedAt: !3992)
!4010 = !DILocation(line: 0, scope: !3873, inlinedAt: !3992)
!4011 = !DILocation(line: 76, column: 3, scope: !3970)
!4012 = distinct !DISubprogram(name: "xzalloc", scope: !3834, file: !3834, line: 84, type: !3835, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !4013)
!4013 = !{!4014}
!4014 = !DILocalVariable(name: "s", arg: 1, scope: !4012, file: !3834, line: 84, type: !63)
!4015 = !DILocation(line: 84, column: 17, scope: !4012)
!4016 = !DILocation(line: 39, column: 17, scope: !3833, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 86, column: 18, scope: !4012)
!4018 = !DILocation(line: 41, column: 13, scope: !3833, inlinedAt: !4017)
!4019 = !DILocation(line: 41, column: 9, scope: !3833, inlinedAt: !4017)
!4020 = !DILocation(line: 42, column: 8, scope: !3844, inlinedAt: !4017)
!4021 = !DILocation(line: 42, column: 15, scope: !3844, inlinedAt: !4017)
!4022 = !DILocation(line: 42, column: 10, scope: !3844, inlinedAt: !4017)
!4023 = !DILocation(line: 43, column: 5, scope: !3844, inlinedAt: !4017)
!4024 = !DILocation(line: 86, column: 10, scope: !4012)
!4025 = !DILocation(line: 86, column: 3, scope: !4012)
!4026 = distinct !DISubprogram(name: "xcalloc", scope: !3834, file: !3834, line: 93, type: !3820, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !4027)
!4027 = !{!4028, !4029, !4030}
!4028 = !DILocalVariable(name: "n", arg: 1, scope: !4026, file: !3834, line: 93, type: !63)
!4029 = !DILocalVariable(name: "s", arg: 2, scope: !4026, file: !3834, line: 93, type: !63)
!4030 = !DILocalVariable(name: "p", scope: !4026, file: !3834, line: 95, type: !32)
!4031 = !DILocation(line: 93, column: 17, scope: !4026)
!4032 = !DILocation(line: 93, column: 27, scope: !4026)
!4033 = !DILocation(line: 100, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4026, file: !3834, line: 100, column: 7)
!4035 = !DILocation(line: 101, column: 7, scope: !4034)
!4036 = !DILocation(line: 101, column: 18, scope: !4034)
!4037 = !DILocation(line: 95, column: 9, scope: !4026)
!4038 = !DILocation(line: 101, column: 16, scope: !4034)
!4039 = !DILocation(line: 100, column: 7, scope: !4026)
!4040 = !DILocation(line: 102, column: 5, scope: !4034)
!4041 = !DILocation(line: 103, column: 3, scope: !4026)
!4042 = distinct !DISubprogram(name: "xmemdup", scope: !3834, file: !3834, line: 111, type: !4043, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !4047)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!32, !4045, !63}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4047 = !{!4048, !4049}
!4048 = !DILocalVariable(name: "p", arg: 1, scope: !4042, file: !3834, line: 111, type: !4045)
!4049 = !DILocalVariable(name: "s", arg: 2, scope: !4042, file: !3834, line: 111, type: !63)
!4050 = !DILocation(line: 111, column: 22, scope: !4042)
!4051 = !DILocation(line: 111, column: 32, scope: !4042)
!4052 = !DILocation(line: 39, column: 17, scope: !3833, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 113, column: 18, scope: !4042)
!4054 = !DILocation(line: 41, column: 13, scope: !3833, inlinedAt: !4053)
!4055 = !DILocation(line: 41, column: 9, scope: !3833, inlinedAt: !4053)
!4056 = !DILocation(line: 42, column: 8, scope: !3844, inlinedAt: !4053)
!4057 = !DILocation(line: 42, column: 15, scope: !3844, inlinedAt: !4053)
!4058 = !DILocation(line: 42, column: 10, scope: !3844, inlinedAt: !4053)
!4059 = !DILocation(line: 43, column: 5, scope: !3844, inlinedAt: !4053)
!4060 = !DILocation(line: 113, column: 10, scope: !4042)
!4061 = !DILocation(line: 113, column: 3, scope: !4042)
!4062 = distinct !DISubprogram(name: "xstrdup", scope: !3834, file: !3834, line: 119, type: !3134, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !4063)
!4063 = !{!4064}
!4064 = !DILocalVariable(name: "string", arg: 1, scope: !4062, file: !3834, line: 119, type: !41)
!4065 = !DILocation(line: 119, column: 22, scope: !4062)
!4066 = !DILocation(line: 121, column: 27, scope: !4062)
!4067 = !DILocation(line: 121, column: 43, scope: !4062)
!4068 = !DILocation(line: 111, column: 22, scope: !4042, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 121, column: 10, scope: !4062)
!4070 = !DILocation(line: 111, column: 32, scope: !4042, inlinedAt: !4069)
!4071 = !DILocation(line: 39, column: 17, scope: !3833, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 113, column: 18, scope: !4042, inlinedAt: !4069)
!4073 = !DILocation(line: 41, column: 13, scope: !3833, inlinedAt: !4072)
!4074 = !DILocation(line: 41, column: 9, scope: !3833, inlinedAt: !4072)
!4075 = !DILocation(line: 42, column: 8, scope: !3844, inlinedAt: !4072)
!4076 = !DILocation(line: 42, column: 15, scope: !3844, inlinedAt: !4072)
!4077 = !DILocation(line: 42, column: 10, scope: !3844, inlinedAt: !4072)
!4078 = !DILocation(line: 43, column: 5, scope: !3844, inlinedAt: !4072)
!4079 = !DILocation(line: 113, column: 10, scope: !4042, inlinedAt: !4069)
!4080 = !DILocation(line: 121, column: 3, scope: !4062)
!4081 = distinct !DISubprogram(name: "xalloc_die", scope: !4082, file: !4082, line: 32, type: !679, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !212, retainedNodes: !54)
!4082 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4083 = !DILocation(line: 34, column: 10, scope: !4081)
!4084 = !DILocation(line: 34, column: 33, scope: !4081)
!4085 = !DILocation(line: 34, column: 3, scope: !4081)
!4086 = !DILocation(line: 40, column: 3, scope: !4081)
!4087 = distinct !DISubprogram(name: "xnumtoumax", scope: !4088, file: !4088, line: 36, type: !4089, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !4091)
!4088 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!791, !41, !44, !791, !791, !41, !41, !44}
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4101}
!4092 = !DILocalVariable(name: "n_str", arg: 1, scope: !4087, file: !4088, line: 36, type: !41)
!4093 = !DILocalVariable(name: "base", arg: 2, scope: !4087, file: !4088, line: 36, type: !44)
!4094 = !DILocalVariable(name: "min", arg: 3, scope: !4087, file: !4088, line: 36, type: !791)
!4095 = !DILocalVariable(name: "max", arg: 4, scope: !4087, file: !4088, line: 36, type: !791)
!4096 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4087, file: !4088, line: 37, type: !41)
!4097 = !DILocalVariable(name: "err", arg: 6, scope: !4087, file: !4088, line: 37, type: !41)
!4098 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4087, file: !4088, line: 37, type: !44)
!4099 = !DILocalVariable(name: "s_err", scope: !4087, file: !4088, line: 39, type: !4100)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !218, line: 39, baseType: !217)
!4101 = !DILocalVariable(name: "tnum", scope: !4087, file: !4088, line: 41, type: !791)
!4102 = !DILocation(line: 36, column: 26, scope: !4087)
!4103 = !DILocation(line: 36, column: 37, scope: !4087)
!4104 = !DILocation(line: 36, column: 57, scope: !4087)
!4105 = !DILocation(line: 36, column: 76, scope: !4087)
!4106 = !DILocation(line: 37, column: 26, scope: !4087)
!4107 = !DILocation(line: 37, column: 48, scope: !4087)
!4108 = !DILocation(line: 37, column: 57, scope: !4087)
!4109 = !DILocation(line: 41, column: 3, scope: !4087)
!4110 = !DILocation(line: 41, column: 17, scope: !4087)
!4111 = !DILocation(line: 42, column: 11, scope: !4087)
!4112 = !DILocation(line: 39, column: 16, scope: !4087)
!4113 = !DILocation(line: 44, column: 7, scope: !4087)
!4114 = !DILocation(line: 69, column: 50, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !4088, line: 67, column: 5)
!4116 = distinct !DILexicalBlock(scope: !4087, file: !4088, line: 66, column: 7)
!4117 = !DILocation(line: 46, column: 11, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !4088, line: 46, column: 11)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !4088, line: 45, column: 5)
!4120 = distinct !DILexicalBlock(scope: !4087, file: !4088, line: 44, column: 7)
!4121 = !DILocation(line: 46, column: 16, scope: !4118)
!4122 = !DILocation(line: 46, column: 29, scope: !4118)
!4123 = !DILocation(line: 46, column: 22, scope: !4118)
!4124 = !DILocation(line: 51, column: 20, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !4088, line: 51, column: 15)
!4126 = distinct !DILexicalBlock(scope: !4118, file: !4088, line: 47, column: 9)
!4127 = !DILocation(line: 0, scope: !4125)
!4128 = !DILocation(line: 51, column: 15, scope: !4126)
!4129 = !DILocation(line: 52, column: 19, scope: !4125)
!4130 = !DILocation(line: 52, column: 13, scope: !4125)
!4131 = !DILocation(line: 58, column: 19, scope: !4125)
!4132 = !DILocation(line: 62, column: 5, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4120, file: !4088, line: 61, column: 12)
!4134 = !DILocation(line: 62, column: 11, scope: !4133)
!4135 = !DILocation(line: 64, column: 5, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !4088, line: 63, column: 12)
!4137 = !DILocation(line: 64, column: 11, scope: !4136)
!4138 = !DILocation(line: 69, column: 14, scope: !4115)
!4139 = !DILocation(line: 69, column: 56, scope: !4115)
!4140 = !DILocation(line: 70, column: 29, scope: !4115)
!4141 = !DILocation(line: 69, column: 7, scope: !4115)
!4142 = !DILocation(line: 73, column: 10, scope: !4087)
!4143 = !DILocation(line: 71, column: 5, scope: !4115)
!4144 = !DILocation(line: 74, column: 1, scope: !4087)
!4145 = !DILocation(line: 73, column: 3, scope: !4087)
!4146 = distinct !DISubprogram(name: "xdectoumax", scope: !4088, file: !4088, line: 82, type: !4147, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !214, retainedNodes: !4149)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!791, !41, !791, !791, !41, !41, !44}
!4149 = !{!4150, !4151, !4152, !4153, !4154, !4155}
!4150 = !DILocalVariable(name: "n_str", arg: 1, scope: !4146, file: !4088, line: 82, type: !41)
!4151 = !DILocalVariable(name: "min", arg: 2, scope: !4146, file: !4088, line: 82, type: !791)
!4152 = !DILocalVariable(name: "max", arg: 3, scope: !4146, file: !4088, line: 82, type: !791)
!4153 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4146, file: !4088, line: 83, type: !41)
!4154 = !DILocalVariable(name: "err", arg: 5, scope: !4146, file: !4088, line: 83, type: !41)
!4155 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4146, file: !4088, line: 83, type: !44)
!4156 = !DILocation(line: 82, column: 26, scope: !4146)
!4157 = !DILocation(line: 82, column: 47, scope: !4146)
!4158 = !DILocation(line: 82, column: 66, scope: !4146)
!4159 = !DILocation(line: 83, column: 26, scope: !4146)
!4160 = !DILocation(line: 83, column: 48, scope: !4146)
!4161 = !DILocation(line: 83, column: 57, scope: !4146)
!4162 = !DILocation(line: 85, column: 10, scope: !4146)
!4163 = !DILocation(line: 85, column: 3, scope: !4146)
!4164 = distinct !DISubprogram(name: "xstrtoumax", scope: !4165, file: !4165, line: 88, type: !4166, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !4169)
!4165 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!4100, !41, !727, !44, !4168, !41}
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!4169 = !{!4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4182, !4183, !4186, !4187}
!4170 = !DILocalVariable(name: "s", arg: 1, scope: !4164, file: !4165, line: 88, type: !41)
!4171 = !DILocalVariable(name: "ptr", arg: 2, scope: !4164, file: !4165, line: 88, type: !727)
!4172 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4164, file: !4165, line: 88, type: !44)
!4173 = !DILocalVariable(name: "val", arg: 4, scope: !4164, file: !4165, line: 89, type: !4168)
!4174 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4164, file: !4165, line: 89, type: !41)
!4175 = !DILocalVariable(name: "t_ptr", scope: !4164, file: !4165, line: 91, type: !30)
!4176 = !DILocalVariable(name: "p", scope: !4164, file: !4165, line: 92, type: !727)
!4177 = !DILocalVariable(name: "tmp", scope: !4164, file: !4165, line: 93, type: !791)
!4178 = !DILocalVariable(name: "err", scope: !4164, file: !4165, line: 94, type: !4100)
!4179 = !DILocalVariable(name: "q", scope: !4180, file: !4165, line: 104, type: !41)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !4165, line: 103, column: 5)
!4181 = distinct !DILexicalBlock(scope: !4164, file: !4165, line: 102, column: 7)
!4182 = !DILocalVariable(name: "ch", scope: !4180, file: !4165, line: 105, type: !33)
!4183 = !DILocalVariable(name: "base", scope: !4184, file: !4165, line: 141, type: !44)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !4165, line: 140, column: 5)
!4185 = distinct !DILexicalBlock(scope: !4164, file: !4165, line: 139, column: 7)
!4186 = !DILocalVariable(name: "suffixes", scope: !4184, file: !4165, line: 142, type: !44)
!4187 = !DILocalVariable(name: "overflow", scope: !4184, file: !4165, line: 143, type: !4100)
!4188 = !DILocation(line: 88, column: 24, scope: !4164)
!4189 = !DILocation(line: 88, column: 34, scope: !4164)
!4190 = !DILocation(line: 88, column: 43, scope: !4164)
!4191 = !DILocation(line: 89, column: 24, scope: !4164)
!4192 = !DILocation(line: 89, column: 41, scope: !4164)
!4193 = !DILocation(line: 91, column: 3, scope: !4164)
!4194 = !DILocation(line: 94, column: 16, scope: !4164)
!4195 = !DILocation(line: 96, column: 3, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !4165, line: 96, column: 3)
!4197 = distinct !DILexicalBlock(scope: !4164, file: !4165, line: 96, column: 3)
!4198 = !DILocation(line: 98, column: 8, scope: !4164)
!4199 = !DILocation(line: 92, column: 10, scope: !4164)
!4200 = !DILocation(line: 100, column: 3, scope: !4164)
!4201 = !DILocation(line: 100, column: 9, scope: !4164)
!4202 = !DILocation(line: 104, column: 19, scope: !4180)
!4203 = !DILocation(line: 105, column: 21, scope: !4180)
!4204 = !DILocation(line: 106, column: 14, scope: !4180)
!4205 = !DILocation(line: 106, column: 7, scope: !4180)
!4206 = !DILocation(line: 0, scope: !4180)
!4207 = !DILocation(line: 107, column: 15, scope: !4180)
!4208 = distinct !{!4208, !4205, !4209}
!4209 = !DILocation(line: 107, column: 17, scope: !4180)
!4210 = !DILocation(line: 108, column: 14, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4180, file: !4165, line: 108, column: 11)
!4212 = !DILocalVariable(name: "nptr", arg: 1, scope: !4213, file: !4214, line: 336, type: !62)
!4213 = distinct !DISubprogram(name: "strtoumax", scope: !4214, file: !4214, line: 336, type: !4215, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !4218)
!4214 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!791, !62, !4217, !44}
!4217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !727)
!4218 = !{!4212, !4219, !4220}
!4219 = !DILocalVariable(name: "endptr", arg: 2, scope: !4213, file: !4214, line: 336, type: !4217)
!4220 = !DILocalVariable(name: "base", arg: 3, scope: !4213, file: !4214, line: 336, type: !44)
!4221 = !DILocation(line: 336, column: 1, scope: !4213, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 112, column: 9, scope: !4164)
!4223 = !DILocation(line: 339, column: 10, scope: !4213, inlinedAt: !4222)
!4224 = !DILocation(line: 93, column: 14, scope: !4164)
!4225 = !DILocation(line: 114, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4164, file: !4165, line: 114, column: 7)
!4227 = !DILocation(line: 114, column: 10, scope: !4226)
!4228 = !DILocation(line: 114, column: 7, scope: !4164)
!4229 = !DILocation(line: 118, column: 11, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !4165, line: 118, column: 11)
!4231 = distinct !DILexicalBlock(scope: !4226, file: !4165, line: 115, column: 5)
!4232 = !DILocation(line: 118, column: 26, scope: !4230)
!4233 = !DILocation(line: 118, column: 29, scope: !4230)
!4234 = !DILocation(line: 118, column: 33, scope: !4230)
!4235 = !DILocation(line: 118, column: 36, scope: !4230)
!4236 = !DILocation(line: 118, column: 11, scope: !4231)
!4237 = !DILocation(line: 123, column: 12, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4226, file: !4165, line: 123, column: 12)
!4239 = !DILocation(line: 123, column: 12, scope: !4226)
!4240 = !DILocation(line: 128, column: 5, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4238, file: !4165, line: 124, column: 5)
!4242 = !DILocation(line: 0, scope: !4164)
!4243 = !DILocation(line: 133, column: 8, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4164, file: !4165, line: 133, column: 7)
!4245 = !DILocation(line: 133, column: 7, scope: !4164)
!4246 = !DILocation(line: 135, column: 12, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !4165, line: 134, column: 5)
!4248 = !DILocation(line: 136, column: 7, scope: !4247)
!4249 = !DILocation(line: 139, column: 7, scope: !4185)
!4250 = !DILocation(line: 139, column: 11, scope: !4185)
!4251 = !DILocation(line: 139, column: 7, scope: !4164)
!4252 = !DILocation(line: 141, column: 11, scope: !4184)
!4253 = !DILocation(line: 142, column: 11, scope: !4184)
!4254 = !DILocation(line: 145, column: 12, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4184, file: !4165, line: 145, column: 11)
!4256 = !DILocation(line: 145, column: 11, scope: !4184)
!4257 = !DILocation(line: 147, column: 16, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4255, file: !4165, line: 146, column: 9)
!4259 = !DILocation(line: 148, column: 22, scope: !4258)
!4260 = !DILocation(line: 148, column: 11, scope: !4258)
!4261 = !DILocation(line: 151, column: 7, scope: !4184)
!4262 = !DILocation(line: 163, column: 15, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !4165, line: 163, column: 15)
!4264 = distinct !DILexicalBlock(scope: !4184, file: !4165, line: 152, column: 9)
!4265 = !DILocation(line: 163, column: 15, scope: !4264)
!4266 = !DILocation(line: 164, column: 21, scope: !4263)
!4267 = !DILocation(line: 164, column: 13, scope: !4263)
!4268 = !DILocation(line: 167, column: 21, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !4165, line: 167, column: 21)
!4270 = distinct !DILexicalBlock(scope: !4263, file: !4165, line: 165, column: 15)
!4271 = !DILocation(line: 167, column: 29, scope: !4269)
!4272 = !DILocation(line: 167, column: 21, scope: !4270)
!4273 = !DILocation(line: 175, column: 17, scope: !4270)
!4274 = !DILocation(line: 179, column: 7, scope: !4184)
!4275 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4276, file: !4165, line: 60, type: !44)
!4276 = distinct !DISubprogram(name: "bkm_scale", scope: !4165, file: !4165, line: 60, type: !4277, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!4100, !4168, !44}
!4279 = !{!4280, !4275}
!4280 = !DILocalVariable(name: "x", arg: 1, scope: !4276, file: !4165, line: 60, type: !4168)
!4281 = !DILocation(line: 60, column: 31, scope: !4276, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 182, column: 22, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4184, file: !4165, line: 180, column: 9)
!4284 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4282)
!4285 = distinct !DILexicalBlock(scope: !4276, file: !4165, line: 67, column: 7)
!4286 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4282)
!4287 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4282)
!4288 = !DILocation(line: 143, column: 20, scope: !4184)
!4289 = !DILocation(line: 183, column: 11, scope: !4283)
!4290 = !DILocation(line: 60, column: 31, scope: !4276, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 189, column: 22, scope: !4283)
!4292 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4291)
!4293 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4291)
!4294 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4291)
!4295 = !DILocation(line: 190, column: 11, scope: !4283)
!4296 = !DILocalVariable(name: "power", arg: 3, scope: !4297, file: !4165, line: 77, type: !44)
!4297 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4165, file: !4165, line: 77, type: !4298, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !225, retainedNodes: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!4100, !4168, !44, !44}
!4300 = !{!4301, !4302, !4296, !4303}
!4301 = !DILocalVariable(name: "x", arg: 1, scope: !4297, file: !4165, line: 77, type: !4168)
!4302 = !DILocalVariable(name: "base", arg: 2, scope: !4297, file: !4165, line: 77, type: !44)
!4303 = !DILocalVariable(name: "err", scope: !4297, file: !4165, line: 79, type: !4100)
!4304 = !DILocation(line: 77, column: 50, scope: !4297, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 197, column: 22, scope: !4283)
!4306 = !DILocation(line: 79, column: 16, scope: !4297, inlinedAt: !4305)
!4307 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 81, column: 12, scope: !4297, inlinedAt: !4305)
!4309 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4308)
!4310 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4308)
!4311 = !DILocation(line: 81, column: 9, scope: !4297, inlinedAt: !4305)
!4312 = !DILocation(line: 241, column: 11, scope: !4184)
!4313 = !DILocation(line: 77, column: 50, scope: !4297, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 202, column: 22, scope: !4283)
!4315 = !DILocation(line: 79, column: 16, scope: !4297, inlinedAt: !4314)
!4316 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 81, column: 12, scope: !4297, inlinedAt: !4314)
!4318 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4317)
!4319 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4317)
!4320 = !DILocation(line: 81, column: 9, scope: !4297, inlinedAt: !4314)
!4321 = !DILocation(line: 77, column: 50, scope: !4297, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 207, column: 22, scope: !4283)
!4323 = !DILocation(line: 79, column: 16, scope: !4297, inlinedAt: !4322)
!4324 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 81, column: 12, scope: !4297, inlinedAt: !4322)
!4326 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4325)
!4327 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4325)
!4328 = !DILocation(line: 77, column: 50, scope: !4297, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 212, column: 22, scope: !4283)
!4330 = !DILocation(line: 79, column: 16, scope: !4297, inlinedAt: !4329)
!4331 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 81, column: 12, scope: !4297, inlinedAt: !4329)
!4333 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4332)
!4334 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4332)
!4335 = !DILocation(line: 81, column: 9, scope: !4297, inlinedAt: !4329)
!4336 = !DILocation(line: 77, column: 50, scope: !4297, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 216, column: 22, scope: !4283)
!4338 = !DILocation(line: 79, column: 16, scope: !4297, inlinedAt: !4337)
!4339 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 81, column: 12, scope: !4297, inlinedAt: !4337)
!4341 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4340)
!4342 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4340)
!4343 = !DILocation(line: 81, column: 9, scope: !4297, inlinedAt: !4337)
!4344 = !DILocation(line: 77, column: 50, scope: !4297, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 221, column: 22, scope: !4283)
!4346 = !DILocation(line: 79, column: 16, scope: !4297, inlinedAt: !4345)
!4347 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 81, column: 12, scope: !4297, inlinedAt: !4345)
!4349 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4348)
!4350 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4348)
!4351 = !DILocation(line: 81, column: 9, scope: !4297, inlinedAt: !4345)
!4352 = !DILocation(line: 60, column: 31, scope: !4276, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 225, column: 22, scope: !4283)
!4354 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4353)
!4355 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4353)
!4356 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4353)
!4357 = !DILocation(line: 226, column: 11, scope: !4283)
!4358 = !DILocation(line: 77, column: 50, scope: !4297, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 229, column: 22, scope: !4283)
!4360 = !DILocation(line: 79, column: 16, scope: !4297, inlinedAt: !4359)
!4361 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 81, column: 12, scope: !4297, inlinedAt: !4359)
!4363 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4362)
!4364 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4362)
!4365 = !DILocation(line: 81, column: 9, scope: !4297, inlinedAt: !4359)
!4366 = !DILocation(line: 77, column: 50, scope: !4297, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 233, column: 22, scope: !4283)
!4368 = !DILocation(line: 79, column: 16, scope: !4297, inlinedAt: !4367)
!4369 = !DILocation(line: 67, column: 39, scope: !4285, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 81, column: 12, scope: !4297, inlinedAt: !4367)
!4371 = !DILocation(line: 72, column: 6, scope: !4276, inlinedAt: !4370)
!4372 = !DILocation(line: 67, column: 7, scope: !4276, inlinedAt: !4370)
!4373 = !DILocation(line: 81, column: 9, scope: !4297, inlinedAt: !4367)
!4374 = !DILocation(line: 237, column: 16, scope: !4283)
!4375 = !DILocation(line: 238, column: 22, scope: !4283)
!4376 = !DILocation(line: 238, column: 11, scope: !4283)
!4377 = !DILocation(line: 0, scope: !4230)
!4378 = !DILocation(line: 0, scope: !4283)
!4379 = !DILocation(line: 242, column: 10, scope: !4184)
!4380 = !DILocation(line: 243, column: 11, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4184, file: !4165, line: 243, column: 11)
!4382 = !DILocation(line: 244, column: 13, scope: !4381)
!4383 = !DILocation(line: 243, column: 11, scope: !4184)
!4384 = !DILocation(line: 119, column: 13, scope: !4230)
!4385 = !DILocation(line: 247, column: 8, scope: !4164)
!4386 = !DILocation(line: 248, column: 3, scope: !4164)
!4387 = !DILocation(line: 0, scope: !4211)
!4388 = !DILocation(line: 249, column: 1, scope: !4164)
!4389 = distinct !DISubprogram(name: "rpl_calloc", scope: !4390, file: !4390, line: 42, type: !3820, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !229, retainedNodes: !4391)
!4390 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4391 = !{!4392, !4393, !4394, !4395}
!4392 = !DILocalVariable(name: "n", arg: 1, scope: !4389, file: !4390, line: 42, type: !63)
!4393 = !DILocalVariable(name: "s", arg: 2, scope: !4389, file: !4390, line: 42, type: !63)
!4394 = !DILocalVariable(name: "result", scope: !4389, file: !4390, line: 44, type: !32)
!4395 = !DILocalVariable(name: "bytes", scope: !4396, file: !4390, line: 56, type: !63)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !4390, line: 53, column: 5)
!4397 = distinct !DILexicalBlock(scope: !4389, file: !4390, line: 47, column: 7)
!4398 = !DILocation(line: 42, column: 20, scope: !4389)
!4399 = !DILocation(line: 42, column: 30, scope: !4389)
!4400 = !DILocation(line: 47, column: 9, scope: !4397)
!4401 = !DILocation(line: 47, column: 19, scope: !4397)
!4402 = !DILocation(line: 47, column: 14, scope: !4397)
!4403 = !DILocation(line: 56, column: 24, scope: !4396)
!4404 = !DILocation(line: 56, column: 14, scope: !4396)
!4405 = !DILocation(line: 57, column: 17, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4396, file: !4390, line: 57, column: 11)
!4407 = !DILocation(line: 57, column: 21, scope: !4406)
!4408 = !DILocation(line: 57, column: 11, scope: !4396)
!4409 = !DILocation(line: 59, column: 11, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !4390, line: 58, column: 9)
!4411 = !DILocation(line: 59, column: 17, scope: !4410)
!4412 = !DILocation(line: 65, column: 12, scope: !4389)
!4413 = !DILocation(line: 44, column: 9, scope: !4389)
!4414 = !DILocation(line: 72, column: 3, scope: !4389)
!4415 = !DILocation(line: 0, scope: !4410)
!4416 = !DILocation(line: 73, column: 1, scope: !4389)
!4417 = distinct !DISubprogram(name: "rpl_fclose", scope: !4418, file: !4418, line: 58, type: !4419, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !231, retainedNodes: !4455)
!4418 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!44, !4421}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !735, line: 7, baseType: !4423)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !737, line: 49, size: 1728, elements: !4424)
!4424 = !{!4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4423, file: !737, line: 51, baseType: !44, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4423, file: !737, line: 54, baseType: !30, size: 64, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4423, file: !737, line: 55, baseType: !30, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4423, file: !737, line: 56, baseType: !30, size: 64, offset: 192)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4423, file: !737, line: 57, baseType: !30, size: 64, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4423, file: !737, line: 58, baseType: !30, size: 64, offset: 320)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4423, file: !737, line: 59, baseType: !30, size: 64, offset: 384)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4423, file: !737, line: 60, baseType: !30, size: 64, offset: 448)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4423, file: !737, line: 61, baseType: !30, size: 64, offset: 512)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4423, file: !737, line: 64, baseType: !30, size: 64, offset: 576)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4423, file: !737, line: 65, baseType: !30, size: 64, offset: 640)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4423, file: !737, line: 66, baseType: !30, size: 64, offset: 704)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4423, file: !737, line: 68, baseType: !752, size: 64, offset: 768)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4423, file: !737, line: 70, baseType: !4439, size: 64, offset: 832)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4423, file: !737, line: 72, baseType: !44, size: 32, offset: 896)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4423, file: !737, line: 73, baseType: !44, size: 32, offset: 928)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4423, file: !737, line: 74, baseType: !759, size: 64, offset: 960)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4423, file: !737, line: 77, baseType: !134, size: 16, offset: 1024)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4423, file: !737, line: 78, baseType: !75, size: 8, offset: 1040)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4423, file: !737, line: 79, baseType: !765, size: 8, offset: 1048)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4423, file: !737, line: 81, baseType: !769, size: 64, offset: 1088)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4423, file: !737, line: 89, baseType: !772, size: 64, offset: 1152)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4423, file: !737, line: 91, baseType: !774, size: 64, offset: 1216)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4423, file: !737, line: 92, baseType: !777, size: 64, offset: 1280)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4423, file: !737, line: 93, baseType: !4439, size: 64, offset: 1344)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4423, file: !737, line: 94, baseType: !32, size: 64, offset: 1408)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4423, file: !737, line: 95, baseType: !63, size: 64, offset: 1472)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4423, file: !737, line: 96, baseType: !44, size: 32, offset: 1536)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4423, file: !737, line: 98, baseType: !784, size: 160, offset: 1568)
!4455 = !{!4456, !4457, !4458, !4459}
!4456 = !DILocalVariable(name: "fp", arg: 1, scope: !4417, file: !4418, line: 58, type: !4421)
!4457 = !DILocalVariable(name: "saved_errno", scope: !4417, file: !4418, line: 60, type: !44)
!4458 = !DILocalVariable(name: "fd", scope: !4417, file: !4418, line: 61, type: !44)
!4459 = !DILocalVariable(name: "result", scope: !4417, file: !4418, line: 62, type: !44)
!4460 = !DILocation(line: 58, column: 19, scope: !4417)
!4461 = !DILocation(line: 60, column: 7, scope: !4417)
!4462 = !DILocation(line: 62, column: 7, scope: !4417)
!4463 = !DILocation(line: 65, column: 8, scope: !4417)
!4464 = !DILocation(line: 61, column: 7, scope: !4417)
!4465 = !DILocation(line: 66, column: 10, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4417, file: !4418, line: 66, column: 7)
!4467 = !DILocation(line: 66, column: 7, scope: !4417)
!4468 = !DILocation(line: 67, column: 12, scope: !4466)
!4469 = !DILocation(line: 67, column: 5, scope: !4466)
!4470 = !DILocation(line: 72, column: 9, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4417, file: !4418, line: 72, column: 7)
!4472 = !DILocation(line: 72, column: 23, scope: !4471)
!4473 = !DILocation(line: 72, column: 33, scope: !4471)
!4474 = !DILocation(line: 72, column: 26, scope: !4471)
!4475 = !DILocation(line: 72, column: 59, scope: !4471)
!4476 = !DILocation(line: 73, column: 7, scope: !4471)
!4477 = !DILocation(line: 73, column: 10, scope: !4471)
!4478 = !DILocation(line: 72, column: 7, scope: !4417)
!4479 = !DILocation(line: 100, column: 12, scope: !4417)
!4480 = !DILocation(line: 105, column: 7, scope: !4417)
!4481 = !DILocation(line: 74, column: 19, scope: !4471)
!4482 = !DILocation(line: 105, column: 19, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4417, file: !4418, line: 105, column: 7)
!4484 = !DILocation(line: 107, column: 13, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4483, file: !4418, line: 106, column: 5)
!4486 = !DILocation(line: 109, column: 5, scope: !4485)
!4487 = !DILocation(line: 0, scope: !4417)
!4488 = !DILocation(line: 112, column: 1, scope: !4417)
!4489 = distinct !DISubprogram(name: "rpl_fflush", scope: !4490, file: !4490, line: 129, type: !4491, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !4527)
!4490 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!44, !4493}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !735, line: 7, baseType: !4495)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !737, line: 49, size: 1728, elements: !4496)
!4496 = !{!4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4495, file: !737, line: 51, baseType: !44, size: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4495, file: !737, line: 54, baseType: !30, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4495, file: !737, line: 55, baseType: !30, size: 64, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4495, file: !737, line: 56, baseType: !30, size: 64, offset: 192)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4495, file: !737, line: 57, baseType: !30, size: 64, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4495, file: !737, line: 58, baseType: !30, size: 64, offset: 320)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4495, file: !737, line: 59, baseType: !30, size: 64, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4495, file: !737, line: 60, baseType: !30, size: 64, offset: 448)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4495, file: !737, line: 61, baseType: !30, size: 64, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4495, file: !737, line: 64, baseType: !30, size: 64, offset: 576)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4495, file: !737, line: 65, baseType: !30, size: 64, offset: 640)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4495, file: !737, line: 66, baseType: !30, size: 64, offset: 704)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4495, file: !737, line: 68, baseType: !752, size: 64, offset: 768)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4495, file: !737, line: 70, baseType: !4511, size: 64, offset: 832)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4495, file: !737, line: 72, baseType: !44, size: 32, offset: 896)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4495, file: !737, line: 73, baseType: !44, size: 32, offset: 928)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4495, file: !737, line: 74, baseType: !759, size: 64, offset: 960)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4495, file: !737, line: 77, baseType: !134, size: 16, offset: 1024)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4495, file: !737, line: 78, baseType: !75, size: 8, offset: 1040)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4495, file: !737, line: 79, baseType: !765, size: 8, offset: 1048)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4495, file: !737, line: 81, baseType: !769, size: 64, offset: 1088)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4495, file: !737, line: 89, baseType: !772, size: 64, offset: 1152)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4495, file: !737, line: 91, baseType: !774, size: 64, offset: 1216)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4495, file: !737, line: 92, baseType: !777, size: 64, offset: 1280)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4495, file: !737, line: 93, baseType: !4511, size: 64, offset: 1344)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4495, file: !737, line: 94, baseType: !32, size: 64, offset: 1408)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4495, file: !737, line: 95, baseType: !63, size: 64, offset: 1472)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4495, file: !737, line: 96, baseType: !44, size: 32, offset: 1536)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4495, file: !737, line: 98, baseType: !784, size: 160, offset: 1568)
!4527 = !{!4528}
!4528 = !DILocalVariable(name: "stream", arg: 1, scope: !4489, file: !4490, line: 129, type: !4493)
!4529 = !DILocation(line: 129, column: 19, scope: !4489)
!4530 = !DILocation(line: 150, column: 14, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4489, file: !4490, line: 150, column: 7)
!4532 = !DILocation(line: 150, column: 22, scope: !4531)
!4533 = !DILocation(line: 150, column: 27, scope: !4531)
!4534 = !DILocation(line: 150, column: 7, scope: !4489)
!4535 = !DILocation(line: 151, column: 12, scope: !4531)
!4536 = !DILocation(line: 151, column: 5, scope: !4531)
!4537 = !DILocalVariable(name: "fp", arg: 1, scope: !4538, file: !4490, line: 41, type: !4493)
!4538 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4490, file: !4490, line: 41, type: !4539, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !4493}
!4541 = !{!4537}
!4542 = !DILocation(line: 41, column: 48, scope: !4538, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 156, column: 3, scope: !4489)
!4544 = !DILocation(line: 43, column: 11, scope: !4545, inlinedAt: !4543)
!4545 = distinct !DILexicalBlock(scope: !4538, file: !4490, line: 43, column: 7)
!4546 = !DILocation(line: 43, column: 18, scope: !4545, inlinedAt: !4543)
!4547 = !DILocation(line: 43, column: 7, scope: !4538, inlinedAt: !4543)
!4548 = !DILocation(line: 45, column: 5, scope: !4545, inlinedAt: !4543)
!4549 = !DILocation(line: 158, column: 10, scope: !4489)
!4550 = !DILocation(line: 158, column: 3, scope: !4489)
!4551 = !DILocation(line: 0, scope: !4489)
!4552 = !DILocation(line: 232, column: 1, scope: !4489)
!4553 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4554, file: !4554, line: 28, type: !4555, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !4591)
!4554 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!44, !4557, !1797, !44}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !735, line: 7, baseType: !4559)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !737, line: 49, size: 1728, elements: !4560)
!4560 = !{!4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4559, file: !737, line: 51, baseType: !44, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4559, file: !737, line: 54, baseType: !30, size: 64, offset: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4559, file: !737, line: 55, baseType: !30, size: 64, offset: 128)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4559, file: !737, line: 56, baseType: !30, size: 64, offset: 192)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4559, file: !737, line: 57, baseType: !30, size: 64, offset: 256)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4559, file: !737, line: 58, baseType: !30, size: 64, offset: 320)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4559, file: !737, line: 59, baseType: !30, size: 64, offset: 384)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4559, file: !737, line: 60, baseType: !30, size: 64, offset: 448)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4559, file: !737, line: 61, baseType: !30, size: 64, offset: 512)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4559, file: !737, line: 64, baseType: !30, size: 64, offset: 576)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4559, file: !737, line: 65, baseType: !30, size: 64, offset: 640)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4559, file: !737, line: 66, baseType: !30, size: 64, offset: 704)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4559, file: !737, line: 68, baseType: !752, size: 64, offset: 768)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4559, file: !737, line: 70, baseType: !4575, size: 64, offset: 832)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4559, file: !737, line: 72, baseType: !44, size: 32, offset: 896)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4559, file: !737, line: 73, baseType: !44, size: 32, offset: 928)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4559, file: !737, line: 74, baseType: !759, size: 64, offset: 960)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4559, file: !737, line: 77, baseType: !134, size: 16, offset: 1024)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4559, file: !737, line: 78, baseType: !75, size: 8, offset: 1040)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4559, file: !737, line: 79, baseType: !765, size: 8, offset: 1048)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4559, file: !737, line: 81, baseType: !769, size: 64, offset: 1088)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4559, file: !737, line: 89, baseType: !772, size: 64, offset: 1152)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4559, file: !737, line: 91, baseType: !774, size: 64, offset: 1216)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4559, file: !737, line: 92, baseType: !777, size: 64, offset: 1280)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4559, file: !737, line: 93, baseType: !4575, size: 64, offset: 1344)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4559, file: !737, line: 94, baseType: !32, size: 64, offset: 1408)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4559, file: !737, line: 95, baseType: !63, size: 64, offset: 1472)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4559, file: !737, line: 96, baseType: !44, size: 32, offset: 1536)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4559, file: !737, line: 98, baseType: !784, size: 160, offset: 1568)
!4591 = !{!4592, !4593, !4594, !4595}
!4592 = !DILocalVariable(name: "fp", arg: 1, scope: !4553, file: !4554, line: 28, type: !4557)
!4593 = !DILocalVariable(name: "offset", arg: 2, scope: !4553, file: !4554, line: 28, type: !1797)
!4594 = !DILocalVariable(name: "whence", arg: 3, scope: !4553, file: !4554, line: 28, type: !44)
!4595 = !DILocalVariable(name: "pos", scope: !4596, file: !4554, line: 117, type: !1797)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !4554, line: 113, column: 5)
!4597 = distinct !DILexicalBlock(scope: !4553, file: !4554, line: 52, column: 7)
!4598 = !DILocation(line: 28, column: 15, scope: !4553)
!4599 = !DILocation(line: 28, column: 25, scope: !4553)
!4600 = !DILocation(line: 28, column: 37, scope: !4553)
!4601 = !DILocation(line: 52, column: 11, scope: !4597)
!4602 = !{!972, !673, i64 16}
!4603 = !DILocation(line: 52, column: 31, scope: !4597)
!4604 = !{!972, !673, i64 8}
!4605 = !DILocation(line: 52, column: 24, scope: !4597)
!4606 = !DILocation(line: 53, column: 7, scope: !4597)
!4607 = !DILocation(line: 53, column: 14, scope: !4597)
!4608 = !DILocation(line: 53, column: 35, scope: !4597)
!4609 = !{!972, !673, i64 32}
!4610 = !DILocation(line: 53, column: 28, scope: !4597)
!4611 = !DILocation(line: 54, column: 7, scope: !4597)
!4612 = !DILocation(line: 54, column: 14, scope: !4597)
!4613 = !{!972, !673, i64 72}
!4614 = !DILocation(line: 54, column: 28, scope: !4597)
!4615 = !DILocation(line: 52, column: 7, scope: !4553)
!4616 = !DILocation(line: 117, column: 26, scope: !4596)
!4617 = !DILocation(line: 117, column: 19, scope: !4596)
!4618 = !DILocation(line: 117, column: 13, scope: !4596)
!4619 = !DILocation(line: 118, column: 15, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4596, file: !4554, line: 118, column: 11)
!4621 = !DILocation(line: 118, column: 11, scope: !4596)
!4622 = !DILocation(line: 129, column: 11, scope: !4596)
!4623 = !DILocation(line: 129, column: 18, scope: !4596)
!4624 = !DILocation(line: 130, column: 11, scope: !4596)
!4625 = !DILocation(line: 130, column: 19, scope: !4596)
!4626 = !{!972, !933, i64 144}
!4627 = !DILocation(line: 161, column: 7, scope: !4596)
!4628 = !DILocation(line: 163, column: 10, scope: !4553)
!4629 = !DILocation(line: 163, column: 3, scope: !4553)
!4630 = !DILocation(line: 0, scope: !4553)
!4631 = !DILocation(line: 164, column: 1, scope: !4553)
!4632 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4633, file: !4633, line: 385, type: !4634, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !4648)
!4633 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!63, !4636, !41, !63, !4637}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2094, line: 6, baseType: !4639)
!4639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2096, line: 21, baseType: !4640)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2096, line: 13, size: 64, elements: !4641)
!4641 = !{!4642, !4643}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4640, file: !2096, line: 15, baseType: !44, size: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4640, file: !2096, line: 20, baseType: !4644, size: 32, offset: 32)
!4644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4640, file: !2096, line: 16, size: 32, elements: !4645)
!4645 = !{!4646, !4647}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4644, file: !2096, line: 18, baseType: !7, size: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4644, file: !2096, line: 19, baseType: !2105, size: 32)
!4648 = !{!4649, !4650, !4651, !4652, !4653, !4654, !4655}
!4649 = !DILocalVariable(name: "pwc", arg: 1, scope: !4632, file: !4633, line: 385, type: !4636)
!4650 = !DILocalVariable(name: "s", arg: 2, scope: !4632, file: !4633, line: 385, type: !41)
!4651 = !DILocalVariable(name: "n", arg: 3, scope: !4632, file: !4633, line: 385, type: !63)
!4652 = !DILocalVariable(name: "ps", arg: 4, scope: !4632, file: !4633, line: 385, type: !4637)
!4653 = !DILocalVariable(name: "ret", scope: !4632, file: !4633, line: 387, type: !63)
!4654 = !DILocalVariable(name: "wc", scope: !4632, file: !4633, line: 388, type: !2110)
!4655 = !DILocalVariable(name: "uc", scope: !4656, file: !4633, line: 449, type: !33)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !4633, line: 448, column: 5)
!4657 = distinct !DILexicalBlock(scope: !4632, file: !4633, line: 447, column: 7)
!4658 = !DILocation(line: 385, column: 23, scope: !4632)
!4659 = !DILocation(line: 385, column: 40, scope: !4632)
!4660 = !DILocation(line: 385, column: 50, scope: !4632)
!4661 = !DILocation(line: 385, column: 64, scope: !4632)
!4662 = !DILocation(line: 388, column: 3, scope: !4632)
!4663 = !DILocation(line: 404, column: 9, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4632, file: !4633, line: 404, column: 7)
!4665 = !DILocation(line: 404, column: 7, scope: !4632)
!4666 = !DILocation(line: 439, column: 9, scope: !4632)
!4667 = !DILocation(line: 387, column: 10, scope: !4632)
!4668 = !DILocation(line: 447, column: 19, scope: !4657)
!4669 = !DILocation(line: 447, column: 31, scope: !4657)
!4670 = !DILocation(line: 447, column: 26, scope: !4657)
!4671 = !DILocation(line: 447, column: 41, scope: !4657)
!4672 = !DILocation(line: 447, column: 7, scope: !4632)
!4673 = !DILocation(line: 449, column: 26, scope: !4656)
!4674 = !DILocation(line: 449, column: 21, scope: !4656)
!4675 = !DILocation(line: 450, column: 14, scope: !4656)
!4676 = !DILocation(line: 450, column: 12, scope: !4656)
!4677 = !DILocation(line: 0, scope: !4656)
!4678 = !DILocation(line: 456, column: 1, scope: !4632)
!4679 = distinct !DISubprogram(name: "close_stream", scope: !4680, file: !4680, line: 56, type: !4681, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !240, retainedNodes: !4717)
!4680 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!44, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !735, line: 7, baseType: !4685)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !737, line: 49, size: 1728, elements: !4686)
!4686 = !{!4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4685, file: !737, line: 51, baseType: !44, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4685, file: !737, line: 54, baseType: !30, size: 64, offset: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4685, file: !737, line: 55, baseType: !30, size: 64, offset: 128)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4685, file: !737, line: 56, baseType: !30, size: 64, offset: 192)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4685, file: !737, line: 57, baseType: !30, size: 64, offset: 256)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4685, file: !737, line: 58, baseType: !30, size: 64, offset: 320)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4685, file: !737, line: 59, baseType: !30, size: 64, offset: 384)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4685, file: !737, line: 60, baseType: !30, size: 64, offset: 448)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4685, file: !737, line: 61, baseType: !30, size: 64, offset: 512)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4685, file: !737, line: 64, baseType: !30, size: 64, offset: 576)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4685, file: !737, line: 65, baseType: !30, size: 64, offset: 640)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4685, file: !737, line: 66, baseType: !30, size: 64, offset: 704)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4685, file: !737, line: 68, baseType: !752, size: 64, offset: 768)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4685, file: !737, line: 70, baseType: !4701, size: 64, offset: 832)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4685, file: !737, line: 72, baseType: !44, size: 32, offset: 896)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4685, file: !737, line: 73, baseType: !44, size: 32, offset: 928)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4685, file: !737, line: 74, baseType: !759, size: 64, offset: 960)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4685, file: !737, line: 77, baseType: !134, size: 16, offset: 1024)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4685, file: !737, line: 78, baseType: !75, size: 8, offset: 1040)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4685, file: !737, line: 79, baseType: !765, size: 8, offset: 1048)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4685, file: !737, line: 81, baseType: !769, size: 64, offset: 1088)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4685, file: !737, line: 89, baseType: !772, size: 64, offset: 1152)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4685, file: !737, line: 91, baseType: !774, size: 64, offset: 1216)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4685, file: !737, line: 92, baseType: !777, size: 64, offset: 1280)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4685, file: !737, line: 93, baseType: !4701, size: 64, offset: 1344)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4685, file: !737, line: 94, baseType: !32, size: 64, offset: 1408)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4685, file: !737, line: 95, baseType: !63, size: 64, offset: 1472)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4685, file: !737, line: 96, baseType: !44, size: 32, offset: 1536)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4685, file: !737, line: 98, baseType: !784, size: 160, offset: 1568)
!4717 = !{!4718, !4719, !4721, !4722}
!4718 = !DILocalVariable(name: "stream", arg: 1, scope: !4679, file: !4680, line: 56, type: !4683)
!4719 = !DILocalVariable(name: "some_pending", scope: !4679, file: !4680, line: 58, type: !4720)
!4720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!4721 = !DILocalVariable(name: "prev_fail", scope: !4679, file: !4680, line: 59, type: !4720)
!4722 = !DILocalVariable(name: "fclose_fail", scope: !4679, file: !4680, line: 60, type: !4720)
!4723 = !DILocation(line: 56, column: 21, scope: !4679)
!4724 = !DILocation(line: 58, column: 30, scope: !4679)
!4725 = !DILocalVariable(name: "__stream", arg: 1, scope: !4726, file: !963, line: 135, type: !4683)
!4726 = distinct !DISubprogram(name: "ferror_unlocked", scope: !963, file: !963, line: 135, type: !4681, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !240, retainedNodes: !4727)
!4727 = !{!4725}
!4728 = !DILocation(line: 135, column: 1, scope: !4726, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 59, column: 27, scope: !4679)
!4730 = !DILocation(line: 137, column: 10, scope: !4726, inlinedAt: !4729)
!4731 = !DILocation(line: 59, column: 43, scope: !4679)
!4732 = !DILocation(line: 60, column: 29, scope: !4679)
!4733 = !DILocation(line: 60, column: 45, scope: !4679)
!4734 = !DILocation(line: 70, column: 17, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4679, file: !4680, line: 70, column: 7)
!4736 = !DILocation(line: 58, column: 50, scope: !4679)
!4737 = !DILocation(line: 70, column: 33, scope: !4735)
!4738 = !DILocation(line: 70, column: 53, scope: !4735)
!4739 = !DILocation(line: 70, column: 59, scope: !4735)
!4740 = !DILocation(line: 70, column: 7, scope: !4679)
!4741 = !DILocation(line: 72, column: 11, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4735, file: !4680, line: 71, column: 5)
!4743 = !DILocation(line: 73, column: 9, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4742, file: !4680, line: 72, column: 11)
!4745 = !DILocation(line: 73, column: 15, scope: !4744)
!4746 = !DILocation(line: 0, scope: !4679)
!4747 = !DILocation(line: 78, column: 1, scope: !4679)
!4748 = distinct !DISubprogram(name: "hard_locale", scope: !4749, file: !4749, line: 38, type: !4750, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !242, retainedNodes: !4752)
!4749 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!94, !44}
!4752 = !{!4753, !4754, !4755}
!4753 = !DILocalVariable(name: "category", arg: 1, scope: !4748, file: !4749, line: 38, type: !44)
!4754 = !DILocalVariable(name: "hard", scope: !4748, file: !4749, line: 40, type: !94)
!4755 = !DILocalVariable(name: "p", scope: !4748, file: !4749, line: 41, type: !41)
!4756 = !DILocation(line: 38, column: 18, scope: !4748)
!4757 = !DILocation(line: 40, column: 8, scope: !4748)
!4758 = !DILocation(line: 41, column: 19, scope: !4748)
!4759 = !DILocation(line: 41, column: 15, scope: !4748)
!4760 = !DILocation(line: 43, column: 7, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4748, file: !4749, line: 43, column: 7)
!4762 = !DILocation(line: 43, column: 7, scope: !4748)
!4763 = !DILocation(line: 47, column: 15, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !4749, line: 47, column: 15)
!4765 = distinct !DILexicalBlock(scope: !4766, file: !4749, line: 46, column: 9)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !4749, line: 45, column: 11)
!4767 = distinct !DILexicalBlock(scope: !4761, file: !4749, line: 44, column: 5)
!4768 = !DILocation(line: 47, column: 31, scope: !4764)
!4769 = !DILocation(line: 47, column: 36, scope: !4764)
!4770 = !DILocation(line: 47, column: 39, scope: !4764)
!4771 = !DILocation(line: 47, column: 59, scope: !4764)
!4772 = !DILocation(line: 47, column: 15, scope: !4765)
!4773 = !DILocation(line: 48, column: 13, scope: !4764)
!4774 = !DILocation(line: 71, column: 3, scope: !4748)
!4775 = distinct !DISubprogram(name: "locale_charset", scope: !4776, file: !4776, line: 687, type: !4777, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !244, retainedNodes: !4779)
!4776 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!41}
!4779 = !{!4780}
!4780 = !DILocalVariable(name: "codeset", scope: !4775, file: !4776, line: 689, type: !41)
!4781 = !DILocation(line: 696, column: 13, scope: !4775)
!4782 = !DILocation(line: 689, column: 15, scope: !4775)
!4783 = !DILocation(line: 754, column: 15, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4775, file: !4776, line: 754, column: 7)
!4785 = !DILocation(line: 754, column: 7, scope: !4775)
!4786 = !DILocation(line: 907, column: 13, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !4776, line: 907, column: 13)
!4788 = distinct !DILexicalBlock(scope: !4789, file: !4776, line: 897, column: 7)
!4789 = distinct !DILexicalBlock(scope: !4775, file: !4776, line: 856, column: 3)
!4790 = !DILocation(line: 907, column: 24, scope: !4787)
!4791 = !DILocation(line: 907, column: 13, scope: !4788)
!4792 = !DILocation(line: 995, column: 3, scope: !4775)
